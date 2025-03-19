unit uRecoverBlob;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.MSAccDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSAcc, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Winapi.ShellAPI, Data.DB;

type
  TfrmRecoverBlob = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    btn_ptBR: TSpeedButton;
    btn_en: TSpeedButton;
    StatusBar1: TStatusBar;
    btnBrowse: TButton;
    edtBD: TEdit;
    cbbTable: TComboBox;
    cbbField: TComboBox;
    btnRecover: TButton;
    btnBrowse2: TButton;
    edtSaved: TEdit;
    ProgressBar1: TProgressBar;
    OpenDialog1: TOpenDialog;
    FDConnection1: TFDConnection;
    FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink;
    FDTable1: TFDTable;
    FileOpenDialog1: TFileOpenDialog;
    procedure btnBrowseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBrowse2Click(Sender: TObject);
    procedure btnRecoverClick(Sender: TObject);
    procedure cbbTableChange(Sender: TObject);
    procedure btn_ptBRClick(Sender: TObject);
    procedure btn_enClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure clean;
    procedure checkTable;
    procedure SaveToBlob;
  public
    { Public declarations }
  end;

var
  frmRecoverBlob: TfrmRecoverBlob;
  path1, path2:string;

implementation

uses
   uMultiLanguage;


{$R *.dfm}

procedure TfrmRecoverBlob.FormShow(Sender: TObject);
begin
   clean;
   FileOpenDialog1.Options := [fdoPickFolders];
   path1 := EmptyStr;
   path2 := EmptyStr;
   ptBR;
end;

procedure TfrmRecoverBlob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FDTable1.Close;
end;

procedure TfrmRecoverBlob.clean;
begin
   edtBD.Clear;
   cbbTable.Clear;
   cbbField.clear;
   btnBrowse2.Enabled := False;
   edtSaved.Clear;
   btnRecover.Enabled := False;
end;

procedure TfrmRecoverBlob.btnBrowse2Click(Sender: TObject);
begin
   edtSaved.Clear;
   btnRecover.Enabled := False;

   if path2 <> EmptyStr then
      FileOpenDialog1.DefaultFolder := path2;

   FileOpenDialog1.FileName := EmptyStr;

   if FileOpenDialog1.Execute then
   begin
      edtSaved.Text := FileOpenDialog1.FileName;
      path2 := FileOpenDialog1.FileName;
      btnRecover.Enabled := True;
   end;
end;

procedure TfrmRecoverBlob.cbbTableChange(Sender: TObject);
begin
   checkTable;
end;

procedure TfrmRecoverBlob.checkTable;
var i:Integer;
begin
   btnBrowse2.Enabled := False;

   FDTable1.Close;
   FDTable1.TableName := cbbTable.Text;
   FDTable1.Open;
   FDTable1.Last;
   FDTable1.First;

   if FDTable1.RecordCount = 0 then
    begin
       ShowMessage(strMsg[0]); // The table is empty.
       Exit;
    end;

    try
       cbbField.Clear;
       for i:=0 to FDTable1.Fields.Count -1 do
       begin
            if FDTable1.Fields[i].DataType = ftBlob then
               cbbField.Items.Add(FDTable1.Fields[i].FieldName);
       end;
    except
       ShowMessage(strMsg[1]); // The table has field type(s) incompatible with the FireDAC standard
       Exit;
    end;

    if cbbField.GetCount = 0 then
    begin
       ShowMessage(strMsg[2]); // There are no BLOB type fields in this table.
       Exit;
    end;

   btnBrowse2.Enabled := True;

end;

procedure TfrmRecoverBlob.btnBrowseClick(Sender: TObject);
begin
   clean;

   if path1 <> EmptyStr then
      OpenDialog1.InitialDir := path1;

   OpenDialog1.FileName := EmptyStr;

   if OpenDialog1.Execute then
   begin
      edtBD.Text := OpenDialog1.FileName;
      if ExtractFileExt(OpenDialog1.FileName) <> '.mdb' then
      begin
         ShowMessage(strMsg[3]); // It is not a MS-Access .mdb database
         clean;
         Exit;
      end;

      path1 := ExtractFilePath(OpenDialog1.FileName);

      try
         FDConnection1.Connected := False;
         FDConnection1.Params.Clear;
         FDConnection1.Params.Add('DriverID=MSAcc');
         FDConnection1.Params.Add('Database=' + edtBD.Text);
         FDConnection1.Connected := True;
         ShowMessage(strMsg[4]); // Database connected.
         FDConnection1.GetTableNames('', '', '', cbbTable.Items);
         cbbTable.ItemIndex := 0;
         cbbTable.Enabled := True;

         if cbbTable.Text = EmptyStr then
         begin
            ShowMessage(strMsg[5]); // here are no tables in the database.
            FDTable1.Close;
            clean;
            Exit;
         end
         else
            checkTable;
      except
         ShowMessage(strMsg[6]); // Unable to connect to the database.
         clean;
      end;
   end;
end;

procedure TfrmRecoverBlob.btnRecoverClick(Sender: TObject);
var i, c, n, e :Integer;
    s, arq1, arq2 : string;
    FileStream : TFileStream;
    BlobStream : TStream;
begin
   FDTable1.Last;
   FDTable1.First;
   ProgressBar1.Min := 0;
   ProgressBar1.Max := FDTable1.RecordCount -1;

   i := 0;
   c := 0;
   n := 0;
   e := 0;
   arq1 := FileOpenDialog1.FileName + '\' + cbbTable.Text + cbbField.Text;
   while not FDTable1.EOF do
   begin
      try
         if FDTable1.FieldByName(cbbField.Text).Value = null then
         begin
            Inc(n);
         end
         else
         begin
            // Blob Field Data Recovery Routine
            arq2 := arq1 + IntToStr(c+1);
            FileStream := TFileStream.Create(arq2, fmCreate);
            BlobStream := FDTable1.CreateBlobStream(FDTable1.FieldByName(cbbField.Text), bmRead);
            FileStream.CopyFrom(BlobStream, BlobStream.Size-BlobStream.Position);
            BlobStream.Free;
            FileStream.Free;
            Inc(c);
         end;
      except
         Inc(e);
      end;
      ProgressBar1.Position := i;
      Inc(i);
      FDTable1.Next;
   end;

   ShowMessage(strMsg[7] + #13#10 + #13#10 + // Task completed:
               strMsg[8] + IntToStr(n) + #13#10 + // Blank fields:
               strMsg[9] + IntToStr(e) + #13#10 + // Unrecovered fields:
               strMsg[10] + IntToStr(c)); // Recovered fields:
   ProgressBar1.Position := 0;
   ShellExecute(Application.Handle, 'open', PChar(FileOpenDialog1.FileName),nil, nil, SW_SHOWDEFAULT);
   FDTable1.Close;
   clean;
end;

procedure TfrmRecoverBlob.SaveToBlob;
var
FileStream : TFileStream;
BlobStream : TStream;

// BONUS: routine to save data in blob fields
begin
if (OpenDialog1.Execute) then
   begin
   FDTable1.Edit;
   try
      BlobStream := FDTable1.CreateBlobStream(FDTable1.FieldByName(cbbField.Text), bmWrite);
      FileStream := TFileStream.Create(OpenDialog1.FileName, fmOpenRead or fmShareDenyNone);
      BlobStream.CopyFrom(FileStream, FileStream.Size);
      FileStream.Free;
      BlobStream.Free;
      FDTable1.Post;
      FDTable1.Close;
   except
      FDTable1.Cancel;
   end;
end;
end;

procedure TfrmRecoverBlob.btn_enClick(Sender: TObject);
begin
   en;
end;

procedure TfrmRecoverBlob.btn_ptBRClick(Sender: TObject);
begin
   ptBR;
end;


end.

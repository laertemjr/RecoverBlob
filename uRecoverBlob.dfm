object frmRecoverBlob: TfrmRecoverBlob
  Left = 0
  Top = 0
  Caption = 
    'Recupera dados de campos BLOB do MS-Access para arquivos em disc' +
    'o'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 34
    Width = 212
    Height = 15
    Caption = 'Selecionar Banco de Dados MS-Access'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 135
    Width = 110
    Height = 15
    Caption = 'Selecionar a tabela :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 199
    Width = 387
    Height = 15
    Caption = 
      'Selecionar o campo BLOB que cont'#233'm os dados a serem recuperados ' +
      ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 7
    Top = 271
    Width = 339
    Height = 15
    Caption = 'Selecionar o local onde os arquivos recuperados ser'#227'o salvos :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn_ptBR: TSpeedButton
    Left = 523
    Top = 8
    Width = 32
    Height = 26
    ImageIndex = 0
    Flat = True
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C40E0000C40E00000000000000000001FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDF9F8F8
      F7F6F6F8F6F7F8F6F7F7F6F6F8F6F7F8F6F7F8F6F7F8F6F7F8F6F7F8F6F7F8F6
      F7F8F6F7F8F6F7F8F6F7F8F6F7F8F6F7F8F6F7F8F6F7F8F6F7F8F6F7F8F6F7F8
      F6F7F8F6F7F7F6F7F8F6F7F8F6F7F8F6F7F8F7F7FBFAFAFEFEFECCD2CF95ADA1
      8EAA9C8EAA9C8FAB9D8FAB9D8FAB9D8FAB9D90AB9D8FAA9D8FAA9D8FAA9D8FAA
      9D8FAA9D8FAA9D8FAA9D8FAA9D8FAA9D8FAA9D8FAA9D8FAA9D8FAA9D8FAA9D90
      AB9D8FAB9D8FAB9D8FAB9D8FAB9D8EAA9C8EAA9CA1B5AAE4E6E57BC59B4FD087
      51D28A51D28A52D28B52D38B52D38B52D38B53D38B53D38B53D38B53D38B53D3
      8B53D38B53D38B53D38B53D38B53D38B53D38B53D38B53D38B53D38B53D38B53
      D38B52D38B52D38B52D28B52D28B51D28A50D28952CB88ABD2BC6ACB8A51D57D
      53D67D53D67E54D67E55D67E55D67F55D67F56D67F56D67F56D67F56D67F56D6
      7F56D67F56D67F56D67E56D67F56D67F56D67F56D67F56D67F56D67F56D67F56
      D67F55D67F55D67F55D67E54D67E53D67E53D67D4FD37C9CD9B368C17B4FC969
      51CA6952CA6A53CB6B53CB6B53CB6B53CB6C54CB6C54CB6C54CB6C54CB6C54CB
      6C54CB6C54CB6A4FCE7B50CD7654CB6A54CB6C54CB6C54CB6C54CB6C54CB6C53
      CB6C53CB6C53CB6B53CB6B52CB6A51CA6A50CA694DC7689BD2A966B86C4CBC54
      4FBE5550BE5650BE5751BF5751BF5852BF5852BF5852BF5852BF5852BF5853BF
      5651C05E3FCA9525D8DE2AD6D045C78252BF5953BF5752BF5952BF5852BF5852
      BF5852BF5851BF5851BF5750BE5750BE564EBE554BBA549ACCA065B05E4AB140
      4DB3414EB4424EB4444FB44450B44550B44550B44550B54551B44551B44447BB
      672CCCBC19D7F616D9FD16D9FD1CD6ED33C8A64BB85851B44350B44550B54550
      B44550B44550B4454FB4444EB4434DB4424CB34148AE3F99C79763A85148A72D
      4BA92F4BAA304DAB314DAB324EAB334EAB334EAB334FAB314CAD3E37BC8A1CCF
      E315D3FB1EC7EB25BDDE24BEE01BCBF014D4FB21CBD23DB7724EAC364FAB324E
      AB334EAB334EAB324DAB324CAA314BAA304AA92E46A42D98C18E62A045469D1D
      48A01F49A1204BA2214BA2224CA2234DA2224DA22341AC5525C1BB13CEF725B4
      DB4E79916854647149566F4A57635A6B4487A21DC0EA15CDF02CBCA246A8414D
      A2214CA2234CA2234BA2224AA22149A12048A01E449A1C97BD86609B3D449611
      479913489A14499A154A9B164B9B14479F2A30B28818C5E411CBFC309BC06A42
      55792B38792C39792E3B792D3B7D323F7F374462596E23AFD911CBFC1CC2D437
      AC6C499D1F4B9B14499A16499A15479A1346991242931096B9815F983844920A
      46960C47960E49960D4897123AA5521FBCC211C7F810C9FC25A8D36A3A4E7A26
      367E31407725367928387929397E304081344384344260576F19BBE911C9FB13
      C6F225B7A83FA03B49960E48960D46960D45950B418F0996B77E5F983745930A
      48960C48950A419C2A29B29214C4EA10C8FB12C7F813C5F65267847A23348134
      437B2B3B7724357E30407B2B3B7724357724357D2D3D8439493D88AC11C9FA11
      C7F910C8FB17C1DC30AB7545991B47950945950B418E0996B77E609837479309
      49991337A85D1ABECD0FC7FA11C7F911C7F811C8F91EB4E16C3E538233427B2B
      3B7725367825367F31417F304078253677233477233589414B81A4AE18C9F911
      C7F811C7F810C7FA10C7F61FB8B53AA04245950B418E0896B77E609835419924
      26B6A012C7F111C9FB11C8F811C7F811C7F811C9FB27A5CF712C3F7825367825
      367C2C3D7725367A28397826377723347B2A3A936261B2A68F8A90911BBDEB11
      C8F911C7F811C7F80FC7F80DC6FB12C0E52AAB7D3F901296B77D609835439921
      2AB59514C7EC12CAFB13CAF812C9F812C7F811C9FB27A5CF7430437824367621
      33772335762133782536823845986968AB9B87AB9C878E4F5465425919BCEA11
      C8F911C7F811C7F80FC7F90DC6FB13BFDE2CA9733F901196B77D6098374A960A
      4E9C123EA95521C0C513CBF914CBF914CAF813CAF922BDE98E858A9B6F6B9466
      63996D6AA88380B79D96B1A792B09F8E9360617B2B3B781F3057587214C4F412
      C7F811C7F810C8FA11C6F322B6AA3C9E39469409418E0896B77E6098374B970D
      509D10529D0F4DA22834B5891BC8E615CCFB16CBF819CCFA70ACB7A58678A38A
      7BA28579A47A7A965E64823C467C2B3C772335772334762637398AAD11C9FB11
      C7F910C8FA19C0D433A96946981747950A45940B418E0996B77E6098374C980D
      529E11539E13549E12559F1547AA4D29C0BA18CCF616CEFC29B0D971455C8129
      3B7C283B79253777233577233577243577243579213259567018BDEC10C8FC13
      C5EE28B49C419E3249960D49960E49970E4A980D44900A96B77E6098374E990D
      549F1155A01356A01456A01558A01454A3253DB47C20C7DF17CEFD34A6CB714C
      62852F41842F40832F40822D3E812B3C7E2C3D5F587122B4DF13CBFB22C0CB3F
      AB5E509D19529C12529D13539E12539F12539E1047920B95B67D6098374F9A0D
      55A01256A11357A11458A11658A21759A2175AA2174EAA4330BEAD1ACEF527B9
      E2517E9B6E546B78465A77485C695C74478DAD20C3EF1DCCEB38B99153A6305A
      A11559A21758A21758A11557A11456A01355A01148930B95B67D5F9836509A0D
      57A11257A21359A21459A2165AA3175AA3185AA3185BA31659A52143B36E23C9
      D818D0FD1FC6F026BCE425BEE61CC9F418D0FB2AC4C24AAE545AA31A5BA3175A
      A3185AA31859A21659A21558A21457A11357A11048930A95B67D5F9836509B0D
      58A21159A21359A3145AA3155BA3165BA4175BA4175BA4185BA4175CA31552AA
      3934BD9F1BCDF016D0FD16D0FD1FCAE33CB88357A7295CA3155BA4185BA4185B
      A4175BA3175BA4165AA31559A31359A21258A11048930A95B67D5F9836519B0C
      59A2105AA3125AA3135AA4145BA4155BA4165CA4165CA4165CA4165CA4165CA4
      145BA51B48B25E27C5C62EC1B24FAD465CA4165CA4155CA4165CA4165CA4165C
      A4165BA4165BA4155AA4145AA3135AA31159A20F49940995B67D5F9835529C0C
      59A30E5AA30F5AA3115BA4125BA4125BA4135BA4135BA4135BA4135BA4135BA4
      145BA4135CA41157A72458A61E5CA4115BA4135BA4135BA4135BA4135BA4135B
      A4135BA4135BA4125BA4125AA31159A30F59A30E49940995B67C6199385BA01D
      76B33875B23775B23876B33976B33977B33A77B33A77B33A77B33A77B33A77B3
      3A77B33A77B33A77B33977B33977B33A77B33A77B33A77B33A77B33A77B33A77
      B33A76B33A76B33976B33875B23775B23772B1344A930F98BA8095BA7A529422
      62A03265A03565A03665A13665A13665A13665A13665A13665A13665A13665A1
      3665A13665A13665A13665A13665A13665A13665A13665A13665A13665A13665
      A13665A13665A13665A13665A03665A0355C9C2C59972CC5D9B7F6F9F4DFEAD7
      DAE7D1DBE8D2DBE8D2DBE8D1DBE8D2DBE8D2DBE8D2DBE8D2DBE8D2DBE8D2DBE8
      D2DBE8D2DBE8D2DBE8D2DBE8D2DBE8D2DBE8D2DBE8D2DBE8D2DBE8D2DBE8D2DB
      E8D2DBE8D2DBE8D2DBE8D1DBE8D2DBE7D1DBE7D1E6EEDFFCFDFBFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Transparent = False
    OnClick = btn_ptBRClick
  end
  object btn_en: TSpeedButton
    Left = 577
    Top = 8
    Width = 32
    Height = 26
    ImageIndex = 1
    Flat = True
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C40E0000C40E00000000000000000001FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDF8F9F7
      F7F7F5F7F7F6F7F7F5F7F7F5F7F7F5F7F7F6F7F7F6F6F7F5F6F7F5F6F7F5F6F7
      F5F6F7F5F6F7F5F6F7F5F6F7F5F6F7F5F6F7F5F6F7F5F6F7F5F6F7F5F6F7F5F7
      F7F6F7F7F6F7F7F5F7F7F5F6F7F5F7F7F5F7F7F5FAFAF9FEFEFEC8C7CD8C87A1
      847E9C85809D85809D86809D86809D86809E86809E86809E86809E86809E8680
      9E86809E86809E86809E86809E86809E86809E86809E86809E86809E86809E86
      809E86809D86809D86809D857F9D85809D847E9C9A96AAE2E2E36A5AAA2D0FA4
      2E0FAA2F10AB2F11AB3011AB3012AB3112AB3112AB3112AB3112AB3112AB3112
      AB3112AB3112AB3112AB3112AB3112AB3112AB3112AB3112AB3112AB3112AB31
      12AB3112AB3012AB3011AB2F11AB2F10AA2D0EAA3319A1A199C36A56B95135C2
      5337C75437C75538C75538C75539C75539C75539C75639C75639C75639C75639
      C75639C75639C75639C75639C75639C75639C75639C75639C75639C75639C755
      39C75539C75539C75538C75538C75437C75336C74F33BD9B8FCAD5D2DDE9E6F4
      EEEBF9EDEBF9EEEBF9EEEBF9EEEBF9EEEBF9EEEBF9EEEBF9EEEBF9EEEBF9EEEB
      F9EEEBF9EEEBF9EEEBF9EEEBF9EEEBF9EEEBF9EEEBF9EEEBF9EEEBF9EEEBF9EE
      EBF9EEEBF9EEEBF9EEEBF9EEEBF9EDEBF9EDEBF9E3E0EEDAD9DFE2E2E1FBFBFA
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F5E3E3E28D7FC58370D2
      8772D78773D78873D78874D78974D88974D88975D88975D88975D88975D88975
      D88975D88975D88975D88975D88975D88975D88975D88975D88975D88975D889
      75D88974D88874D88873D78873D78773D78672D7806DCDAFA7D15139B32D0BB9
      2F0CBD310DBD320DBD320EBE330FBE3410BE3410BE3410BE3410BE3410BE3410
      BE3410BE3410BE3410BE3410BE3410BE3410BE3410BE3410BE3410BE3410BE34
      10BE330FBE330FBE320EBE320DBD300CBD2F0CBD2C0BB48C7DC6705EBB593FC4
      5C41C95D42C95E42C95F43C95F44C96044C96045C96045C96045C96045C96045
      C96045C96045C96045C96045C96045C96045C96045C96045C96045C96045C960
      45C96044C95F44C95E43C95E42C95D41C95C41C8573DBF9E93CBD8D6DEEDEBF5
      F2F0FAF2F0F9F2F0F9F2F0F9F2F0F9F2F0F9F2F0F9F2F0F9F2F0F9F2F0F9F2F0
      F9F2F0F9F2F0F9F2F0F9F2F0F9F2F0F9F2F0F9F2F0F9F2F0F9F2F0F9F2F0F9F2
      F0F9F2F0F9F2F0F9F2F0F9F2F0F9F2F0F9F2F0F9E8E6EFDCDCDFE0E1E0F9F9F9
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4E1E2E19D82749A7460
      9E76629E78649E78659F78659E77649F7966A07966A07A669F7865A07A67A07A
      669F7A669F7865A07A66A07A66A07A669F7865A07A65937497826CD6826CD582
      6CD5816CD5816BD5816BD4806AD47F69D47E68D47863CAACA3D0794C337F4C2E
      986F5870330F6C2D097E492C9A725D7135146D2F0C7C46289C75607439196D2F
      0C7941229D7762763D1D6D2F0C763D1D9D77627A411F55225B3512C13612BF36
      12BF3511BE3410BE330FBE320EBE310DBD300CBD2C0BB48C7DC67D523A88593D
      A88671773D1A75391488573AA98875773D1D723715835033AB8C797A42227337
      157F4B2DAD8D7B7C46277337157D4628AC8D7B7F49286C3F64694FD0694ECE69
      4ECE694ECE684DCE684DCE674CCD664BCD654ACD5F46C4A297CD9C8172723713
      72340E8F6042B29381793F1C72361188563AB29584773E1E703311834F32B497
      867A42246F33117E492BB598887E482A7034126E300EA98778F7F6FEF6F5FCF6
      F5FCF6F5FCF6F5FCF6F5FCF6F5FCF6F5FCF6F4FCECEAF1DEDDE08A665278401D
      804826855130986D527E4724824D2B85502F996F567A42227C47297C4628966C
      547A42237D47297B4425976C557B43257D472A723614AC8A78FDFEFFFCFDFEFC
      FDFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEF1F2F3E0E1E1794D3492664C
      B99E8E7A3F1974370D936648BDA4957E46227639118E5E40BDA6987B44256D2F
      0C824F33BDA5997D482A6D2E0B7E482BBCA598824E2F7347657A63D57A63D379
      62D37962D27962D27861D27760D2765FD2755FD2705AC8A9A0CF8B69557B4420
      88533085502D946748824B268A583686512E976A4D834C288C5A39844F2C9569
      4D7E47268654357B44258F6349794224835033753A1756255E3511C03511BF35
      11BE3411BE3410BE330FBE330EBE330EBE340FBF2F0DB68C7DC69C8071773D16
      77390D966848B89C897F4720793D13926344BCA190834C277A3E148E5D3CBEA4
      9387512D7A3E14895633BDA393865231763913773A12754868735AD2735AD173
      5AD1745AD1745AD1755BD2765BD3775BD3775AD46C53C8A59ACD7B51388B5A3B
      A8826A7F461D7F461C8F5E3CAB8972834B248149218C5A37AD8B75844E288249
      21895532AF8C7787512C82492287512DAE8D7787512DB2917CFBFBFFFAF9FDFA
      F9FDFAF9FDFAF9FDFAF9FDFAF9FDFAF9FDFAF9FDEFEEF3DFDFE17F543D8D5D3D
      AA856D82481F80461C91603EAD8B74854E268249208E5C39AF8D7787502B8249
      218C5834B08F7989542F82492189542FB08F7989532EB3927DFBFBFFFAFAFDFA
      FAFDFAFAFDFAFAFDFAFAFDFAFAFDFAFAFDFAFAFDF0EFF2DFDFE19D83747A3F14
      7B3D0E976A48BA9D8A82491F7D4113956543BDA290864E267E4215905F3BBFA5
      9388532B7E42158C5933BFA5958C58337F43167F44147F526D8064D88063D680
      63D67F63D67F62D67F62D67E62D67D60D67D5FD67056C9A59BCD87624D804921
      8C572F8B562D9A6C4A8750278E5B348B562E9C704F8851298F5C368A542C9D71
      5088522A905D3789532B9D725189532A905D37854C1C673466471CCB471DC947
      1CC9471CC9471BC9461BC9451AC94418C84316C8350FBA8A7CC6794C32976C4F
      BDA2908146187C3D0C996A48C1A796854C207D3F0E946340C3AB9B8851277D3F
      0E905D37C4AC9D8B562E7D3F0E8C562EC4AC9D905C3381536A8569DB8568D985
      68D98568D98568D98467D98466D88365D88364D8755BCBA79DCD8E6C5A855230
      9E724F9C6F4AA780609969449F72509C6E4AA98264996A459F73529B6D48A983
      65996A459F74529A6C47A983659A6B46A0745394623AC0A38FFCFCFFFCFBFDFC
      FBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFBFBFDEFEFF1E4E3E4BFAEA4754328
      8150339C7A64B8A1948B5E438456389A745FBBA5998D6248845639967058BBA7
      9B8F654C855639926B52BCA89C926A5285563A845639B49A8BF2F2F2F1F1F0F1
      F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F0F0F0E9E9E8F3F3F2F8F5F4E2D9D4
      DDD2CCDFD4CFE2D8D3DED3CDDED3CDDFD5CFE2D9D4DED3CEDED3CDDFD4CEE2D9
      D4DED3CEDED3CDDFD4CEE2D9D4DFD4CEDED3CDDED3CDE9E3E0F9F9F9F8F8F8F8
      F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9FEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Transparent = False
    OnClick = btn_enClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 422
    Width = 624
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Desenvolvido em Delphi 12.1 - vers'#227'o 0.1 (2025)'
        Width = 50
      end>
  end
  object btnBrowse: TButton
    Left = 8
    Top = 55
    Width = 75
    Height = 25
    Caption = '&Procurar'
    TabOrder = 0
    OnClick = btnBrowseClick
  end
  object edtBD: TEdit
    Left = 8
    Top = 86
    Width = 609
    Height = 23
    ReadOnly = True
    TabOrder = 1
  end
  object cbbTable: TComboBox
    Left = 8
    Top = 156
    Width = 233
    Height = 23
    Style = csDropDownList
    TabOrder = 2
    OnChange = cbbTableChange
  end
  object cbbField: TComboBox
    Left = 8
    Top = 220
    Width = 233
    Height = 23
    Style = csDropDownList
    TabOrder = 3
  end
  object btnRecover: TButton
    Left = 7
    Top = 363
    Width = 75
    Height = 25
    Caption = '&Recuperar'
    TabOrder = 6
    OnClick = btnRecoverClick
  end
  object btnBrowse2: TButton
    Left = 7
    Top = 292
    Width = 75
    Height = 25
    Caption = '&Procurar'
    TabOrder = 4
    OnClick = btnBrowse2Click
  end
  object edtSaved: TEdit
    Left = 7
    Top = 323
    Width = 609
    Height = 23
    ReadOnly = True
    TabOrder = 5
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 394
    Width = 624
    Height = 28
    Align = alBottom
    TabOrder = 7
  end
  object OpenDialog1: TOpenDialog
    Left = 135
    Top = 368
  end
  object FDConnection1: TFDConnection
    Left = 319
    Top = 368
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    Left = 455
    Top = 368
  end
  object FDTable1: TFDTable
    Connection = FDConnection1
    Left = 567
    Top = 368
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 223
    Top = 368
  end
end

object FrmEnviarCorreo: TFrmEnviarCorreo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Enviar correo electr'#243'nico'
  ClientHeight = 397
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ly1: TdxLayoutControl
    Left = 0
    Top = 87
    Width = 582
    Height = 310
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = UDMConection.dxStyleForms
    object cxTextDireccionCorreo: TcxTextEdit
      Left = 63
      Top = 11
      Style.HotTrack = False
      TabOrder = 0
      Width = 507
    end
    object cxmMensaje: TcxMemo
      Left = 11
      Top = 86
      Style.HotTrack = False
      TabOrder = 2
      Height = 212
      Width = 479
    end
    object cxTextAsunto: TcxTextEdit
      Left = 63
      Top = 38
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object dxLyLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxlytmly1Item1: TdxLayoutItem
      Parent = dxLyLayoutControl1Group_Root
      CaptionOptions.Text = 'Destino:'
      Control = cxTextDireccionCorreo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytmly1Item2: TdxLayoutItem
      Parent = dxLyLayoutControl1Group_Root
      CaptionOptions.Text = 'Mensaje'
      CaptionOptions.Layout = clTop
      Control = cxmMensaje
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxlytmly1Item3: TdxLayoutItem
      Parent = dxLyLayoutControl1Group_Root
      CaptionOptions.Text = 'Asunto:'
      Control = cxTextAsunto
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object pnlAdjuntos: TPanel
    Left = 0
    Top = 58
    Width = 582
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = UDMConection.cxImage16
    ImageOptions.LargeImages = UDMConection.cxImage342
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 88
    Top = 296
    DockControlHeights = (
      0
      0
      58
      0)
    object dxbrManager1Bar: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 665
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnEnviar'
        end
        item
          Visible = True
          ItemName = 'btnAdjuntar'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btnEnviar: TdxBarLargeButton
      Caption = '&Enviar'
      Category = 0
      Hint = 'Enviar'
      Visible = ivAlways
      LargeImageIndex = 32
      OnClick = btnEnviarClick
      AutoGrayScale = False
    end
    object btnCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      OnClick = btnCancelarClick
    end
    object btnAdjuntar: TdxBarLargeButton
      Caption = '&Adjuntar Archivo'
      Category = 0
      Hint = 'Adjuntar Archivo'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001000000040000000F0000001D000000280000002D000000250000
        00190000000A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000060D0703511D0E03A62A1405DD321806FB2A1406DD1D0D03AA0D07
        0365000000260000001200000006000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0006140A046D3F1F09E0723C16FF935526FFA5602AFF935423FF713D16FF401E
        09E1170B03930704024D00000024000000060000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000030F09
        05474B250BDF92501CFF835026D04D301882472C16775B391D94895529D4985B
        27FF663815FF391C08E80704024D000000230000000600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000052E19
        0A988F4C17FF804D21D0180F083F000000070000000500000007170F0832482E
        1878845228CC98561FFF391D08E80704024D0000002200000005000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000075E33
        11D5A3591DFF442B158A0000000A000000010000000000000001000000020000
        00061D130A3D87562CCB995720FF391D08E80704014C00000021000000050000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000079254
        1FFAA65D1FFF160E074E0000000C000000000000000000000000000000000000
        0001000000030705031887582DCB995822FF3A1D08E80704014A000000200000
        0005000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000068D56
        27D4A86020FF26180C7900000010000000000000000000000000000000000000
        000000000000000000020705031788592ECA9A5B22FF3B1D08E7070402490000
        001F000000050000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000045D3D
        2095AD6729FF3E240F9D00000018000000050000000000000000000000000000
        000000000000000000000000000208050317895B30CA9B5C23FF3B1E09E70804
        02470000001E0000000500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000022519
        0F4397602CDA724217E2150D0658000000140000000300000000000000000000
        00000000000100000006000000130000001D0704022F8A5A2FCE9D5E24FF3C20
        0BE7080402450000001E00000005000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000464442794AA692CFF5E3716E50B0703390000001200000002000000000000
        0001090604202314078E3A200BDD371E0ADD321B09C6190E05508B5C30CE9E5F
        24FF3F210BE7080402440000001D000000050000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00010805031294673AC7AD6D2EFF573416E50C07033700000011000000020000
        00032F1D0D887C481AFFA96C33FFAF7844FF965B26FF4B290FE6190F06508C5F
        30CEA16126FF41220CE7080502430000001B0000000400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010906041296693BC7B07032FF5D3817E40C080435000000100000
        000772461ED8B56D2AFF604124910906041A936538C8A9682CFF4E2C10E61A0F
        064D8D6033CEA36328FF44240DE6090502420000001A00000004000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000109060411986D40C6B47536FF613C1AE40D0904340000
        0013925E2CD8B8742EFF120B053A000000140806041694683BC8AC6B2DFF502F
        12E61A10064B906134CDA4652AFF45260EE60905024000000019000000040000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001090604119B7043C6B87939FF65401DE40E09
        0435825D36B9BE7E3BFF5E3A18E40C0804360000001208060416966A3DC7AD6E
        31FF543215E51A10074B916436CCA6662BFF48290FE60A06023F000000180000
        0004000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001090704109D7445C6BA7D3DFF6A44
        1FE41C12093E9A6F41C9B77A3BFF613E1CE40D0904350000001109060415976C
        3FC7B07134FF593516E51B110749926638CCAA692DFF4B2A10E60A06033E0000
        0017000000030000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001090704109E7648C5BD81
        42FF704921E31E140A3D9B7243C9BA7D3FFF66411EE40E090434000000100906
        0415986F42C7B37536FF5C3817E51F160E45956A3EC8AB6C30FF4F2D12E50A06
        033C000000160000000300000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000109070410A178
        4AC5C08544FF744C24E31E150A3C9D7446C8BC8042FF6A451FE40E0A05320000
        000F090704149B7345C7C28E58FF0000000609060413976B3FC7AD6E31FF5330
        13E50B07033A0000001500000003000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010907
        050FA17B4DC5C38847FF774F26E31F150B3B9F7649C8BF8343FF6D4721E40F0A
        05310000000D0000000500000004000000010000000109060413976D42C7AE6F
        33FF553316E50B07033900000013000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000A07050FA27C4FC5C58A4BFF7A5127E31F150B39A0784AC7C18646FF7049
        23E30F0B05300000000B0000000200000000000000000000000109060412986F
        42C7B07034FF593516E50C080437000000120000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000A07050EA47E51C4C88D4CFF7E552AE31F160B37A27A4CC7C288
        48FF744D24E3100B052E0000000A000000010000000000000000000000010907
        041297693CC7B27337FF5C3818E40E0A06340000000900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000A08050EA58053C4C98F4DFF80562BE320160C36A27B
        4CC7C58A4AFF774E26E3100B062D000000090000000100000000000000000000
        00013B2C1C55946537C7AE6C2EFF382512880000000F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000A08050EA68155C4CB9151FF825A2BE2221B
        1234A37E53C5C58C4CFF7A5128E3110B062B0000000900000001000000000000
        00000000000361462A89BB7734FF6F451ECC0000001100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000A08050DA88358C4D4A76EFF0000
        00020A08050EA48054C4C68C4DFF7D5329E3110C062B00000008000000010000
        000000000001251A0F3EBE7A37FFAB7038F90000000D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0000000000000A08050EA58055C4C78A4AFF7E562AE2110C062A000000080000
        0005000000044A31198AC07E3AFF996B3BCB0000000800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000A08050EBD915EE1C98E4FFF875B2EEE462F17891E14
        0A41442D168A8F5E2DE1C88C4CFF5E462D810000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000231B132BA98255C8CF985CFFB17C44FF9966
        33FFAE7941FFC79054FF876541A817120C230000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001A150E216952377CA88358C7D2A2
        6DF8A78155C7674F347D19130D22000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnAdjuntarClick
      AutoGrayScale = False
    end
  end
  object zCorreo: TZQuery
    Params = <>
    Left = 24
    Top = 296
  end
  object dlgOpen1: TOpenDialog
    Left = 136
    Top = 200
  end
end

object FrmCapturaFolio: TFrmCapturaFolio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Captura Folio'
  ClientHeight = 385
  ClientWidth = 403
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
  object dxLayControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 403
    Height = 345
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = UDMConection.dxStyleForms
    ExplicitWidth = 399
    ExplicitHeight = 274
    object cxTextFolio: TcxDBTextEdit
      Tag = -1
      Left = 94
      Top = 38
      DataBinding.DataField = 'Folio'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxMaskTelefono: TcxDBMaskEdit
      Tag = -1
      Left = 94
      Top = 65
      DataBinding.DataField = 'Telefono'
      DataBinding.DataSource = dsDatos
      Properties.EditMask = '!\(999\)000-0000;1;_'
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxTextArea: TcxDBTextEdit
      Tag = -1
      Left = 94
      Top = 200
      DataBinding.DataField = 'Area'
      DataBinding.DataSource = dsDatos
      Enabled = False
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDateFecha: TcxDBDateEdit
      Tag = -1
      Left = 94
      Top = 11
      DataBinding.DataField = 'FechaCreacion'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cbbEstatus: TcxDBComboBox
      Tag = -1
      Left = 94
      Top = 308
      DataBinding.DataField = 'Estatus'
      DataBinding.DataSource = dsDatos
      Properties.Items.Strings = (
        'Liquidada'
        'Objetada'
        'Queja')
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxTextFolioPrincipal: TcxDBTextEdit
      Tag = -1
      Left = 94
      Top = 173
      DataBinding.DataField = 'FolioPrincipal'
      DataBinding.DataSource = dsDatos
      Enabled = False
      Style.HotTrack = False
      TabOrder = 6
      Width = 290
    end
    object cbbVale: TcxDBLookupComboBox
      Left = 94
      Top = 146
      DataBinding.DataField = 'IdVale'
      DataBinding.DataSource = dsDatos
      Properties.KeyFieldNames = 'IdVale'
      Properties.ListColumns = <
        item
          FieldName = 'NoVale'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsVales
      Properties.OnEditValueChanged = cbbValePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 5
      Width = 145
    end
    object cxTextDivision: TcxDBTextEdit
      Left = 94
      Top = 281
      DataBinding.DataField = 'division'
      DataBinding.DataSource = dsDatos
      Enabled = False
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxTextContratista: TcxDBTextEdit
      Left = 94
      Top = 254
      DataBinding.DataField = 'Contratista'
      DataBinding.DataSource = dsDatos
      Enabled = False
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDateFechaVale: TcxDBDateEdit
      Left = 94
      Top = 227
      DataBinding.DataField = 'FechaVale'
      DataBinding.DataSource = dsDatos
      Enabled = False
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxTextPrincipal: TcxDBTextEdit
      Tag = -1
      Left = 94
      Top = 92
      DataBinding.DataField = 'Principal'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxTextSecundario: TcxDBTextEdit
      Tag = -1
      Left = 94
      Top = 119
      DataBinding.DataField = 'Secundario'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object dxLayControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lyFolio: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Folio:'
      Control = cxTextFolio
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lyTelefono: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Tel'#233'fono:'
      Control = cxMaskTelefono
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lyArea: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = #193'rea:'
      Control = cxTextArea
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 7
    end
    object lyFecha: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Fecha:'
      Control = cxDateFecha
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lyEstatus: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Estatus:'
      Control = cbbEstatus
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object lyFolioPrincipal: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Folio Maestro:'
      Control = cxTextFolioPrincipal
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 6
    end
    object lyVale: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'No. Vale:'
      Control = cbbVale
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lyDivision: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Divisi'#243'n:'
      Control = cxTextDivision
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 10
    end
    object lyContratista: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Contratista:'
      Control = cxTextContratista
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 9
    end
    object lyFechaVale: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Fecha Vale:'
      Control = cxDateFechaVale
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 8
    end
    object lyPrincipal: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Principal:'
      Control = cxTextPrincipal
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lySecundario: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Secundario:'
      Control = cxTextSecundario
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object pnlBotonera: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 348
    Width = 397
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 277
    ExplicitWidth = 393
    object btnGuardar: TcxButton
      AlignWithMargins = True
      Left = 238
      Top = 3
      Width = 75
      Height = 28
      Align = alRight
      Caption = '&Guardar'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = UDMConection.cxImage16
      TabOrder = 0
      OnClick = btnGuardarClick
      ExplicitLeft = 234
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 319
      Top = 3
      Width = 75
      Height = 28
      Align = alRight
      Caption = '&Cancelar'
      ModalResult = 2
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = UDMConection.cxImage16
      TabOrder = 1
      OnClick = btnCancelarClick
      ExplicitLeft = 315
    end
  end
  object dsDatos: TDataSource
    DataSet = zDatos
    Left = 16
    Top = 344
  end
  object zDatos: TZQuery
    Params = <>
    Left = 56
    Top = 352
  end
  object zMaterial: TZQuery
    Params = <>
    Left = 240
    Top = 360
  end
  object dsMaterial: TDataSource
    DataSet = zMaterial
    Left = 88
    Top = 352
  end
  object zVales: TZQuery
    Params = <>
    Left = 192
    Top = 352
  end
  object dsVales: TDataSource
    DataSet = zVales
    Left = 128
    Top = 344
  end
end
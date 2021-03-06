object FrmCapturaFolio: TFrmCapturaFolio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Captura Folio'
  ClientHeight = 519
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
    Height = 479
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = UDMConection.dxStyleForms
    object cxTextFolio: TcxDBTextEdit
      Tag = -1
      Left = 83
      Top = 65
      DataBinding.DataField = 'Folio'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 2
      Width = 302
    end
    object cxMaskTelefono: TcxDBMaskEdit
      Tag = -1
      Left = 83
      Top = 92
      DataBinding.DataField = 'Telefono'
      DataBinding.DataSource = dsDatos
      Properties.EditMask = '!\(999\)000-0000;1;_'
      Style.HotTrack = False
      TabOrder = 3
      Width = 302
    end
    object cxDateFecha: TcxDBDateEdit
      Tag = -1
      Left = 83
      Top = 38
      DataBinding.DataField = 'FechaCreacion'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 1
      Width = 302
    end
    object cxTextPrincipal: TcxDBTextEdit
      Tag = -1
      Left = 83
      Top = 119
      DataBinding.DataField = 'Principal'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 4
      Width = 302
    end
    object cxTextSecundario: TcxDBTextEdit
      Tag = -1
      Left = 83
      Top = 146
      DataBinding.DataField = 'Secundario'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 5
      Width = 302
    end
    object cbbEstatus: TcxDBComboBox
      Tag = -1
      Left = 83
      Top = 11
      DataBinding.DataField = 'Estatus'
      DataBinding.DataSource = dsDatos
      Properties.Items.Strings = (
        'Liquidada'
        'Objetada'
        'Queja'
        'Retornada')
      Properties.OnChange = cbbEstatusPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Width = 302
    end
    object cbbContratista: TcxDBLookupComboBox
      Left = 83
      Top = 173
      DataBinding.DataField = 'IdContratista'
      DataBinding.DataSource = dsDatos
      Properties.KeyFieldNames = 'IdContratista'
      Properties.ListColumns = <
        item
          FieldName = 'Contratista'
        end>
      Properties.ListSource = dsContratistas
      Style.HotTrack = False
      TabOrder = 6
      Width = 302
    end
    object cbbTipoOrden: TcxDBLookupComboBox
      Left = 83
      Top = 200
      DataBinding.DataField = 'Idtipo'
      DataBinding.DataSource = dsDatos
      Properties.KeyFieldNames = 'idTipo'
      Properties.ListColumns = <
        item
          FieldName = 'TipoOrden'
        end>
      Properties.ListSource = dsTipoOrden
      Style.HotTrack = False
      TabOrder = 7
      Width = 302
    end
    object cbbCentral: TcxDBLookupComboBox
      Left = 83
      Top = 227
      DataBinding.DataField = 'Central'
      DataBinding.DataSource = dsDatos
      Properties.KeyFieldNames = 'Codigo'
      Properties.ListColumns = <
        item
          FieldName = 'Central'
        end>
      Properties.ListSource = dsCentral
      Style.HotTrack = False
      TabOrder = 8
      Width = 302
    end
    object cxMemoComentarios: TcxDBMemo
      Left = 11
      Top = 356
      DataBinding.DataField = 'Comentarios'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 12
      Height = 104
      Width = 374
    end
    object cxTextPuerto: TcxDBTextEdit
      Left = 83
      Top = 308
      DataBinding.DataField = 'Puerto'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 11
      Width = 302
    end
    object cxTextTerminal: TcxDBTextEdit
      Left = 83
      Top = 281
      DataBinding.DataField = 'Terminal'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 10
      Width = 302
    end
    object cxTextDistrito: TcxDBTextEdit
      Left = 83
      Top = 254
      DataBinding.DataField = 'Distrito'
      DataBinding.DataSource = dsDatos
      Style.HotTrack = False
      TabOrder = 9
      Width = 302
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
      Index = 2
    end
    object lyTelefono: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Tel'#233'fono:'
      Control = cxMaskTelefono
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lyFecha: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Fecha:'
      Control = cxDateFecha
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lyPrincipal: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Principal:'
      Control = cxTextPrincipal
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lySecundario: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Secundario:'
      Control = cxTextSecundario
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lyEstatus: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Estatus:'
      Control = cbbEstatus
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lyContratista: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Contratista:'
      Control = cbbContratista
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object lyTipoOrden: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Tipo Orden:'
      Control = cbbTipoOrden
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object lyCentral: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Central:'
      Control = cbbCentral
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object lyComentarios: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Comentarios:'
      CaptionOptions.Layout = clTop
      Control = cxMemoComentarios
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object lyPuerto: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Puerto:'
      Control = cxTextPuerto
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object lyTerminal: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Terminal:'
      Control = cxTextTerminal
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object lyDistrito: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Distrito:'
      Control = cxTextDistrito
      ControlOptions.ShowBorder = False
      Index = 9
    end
  end
  object pnlBotonera: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 482
    Width = 397
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
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
    end
  end
  object dsDatos: TDataSource
    DataSet = zDatos
    Left = 224
    Top = 296
  end
  object zDatos: TZQuery
    Params = <>
    Left = 216
    Top = 344
  end
  object zMaterial: TZQuery
    Params = <>
    Left = 168
    Top = 344
  end
  object dsMaterial: TDataSource
    DataSet = zMaterial
    Left = 168
    Top = 296
  end
  object zVales: TZQuery
    Params = <>
    Left = 120
    Top = 344
  end
  object dsVales: TDataSource
    DataSet = zVales
    Left = 120
    Top = 296
  end
  object zContratistas: TZQuery
    Params = <>
    Left = 272
    Top = 344
  end
  object dsContratistas: TDataSource
    DataSet = zContratistas
    Left = 272
    Top = 296
  end
  object zTipoOrden: TZQuery
    Params = <>
    Left = 328
    Top = 344
  end
  object dsTipoOrden: TDataSource
    DataSet = zTipoOrden
    Left = 328
    Top = 296
  end
  object zCentral: TZQuery
    Params = <>
    Left = 40
    Top = 416
  end
  object dsCentral: TDataSource
    DataSet = zCentral
    Left = 56
    Top = 368
  end
end

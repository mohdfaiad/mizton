object FrmCatalogo: TFrmCatalogo
  Left = 0
  Top = 0
  Caption = 'FrmCatalogo'
  ClientHeight = 472
  ClientWidth = 913
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxDockSite1: TdxDockSite
    Left = 0
    Top = 95
    Width = 913
    Height = 377
    Align = alClient
    DockingType = 5
    OriginalWidth = 913
    OriginalHeight = 377
    object dxlytdckst1: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 913
      Height = 377
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
    end
    object dxHorizContainerDockSite2: TdxHorizContainerDockSite
      Left = 0
      Top = 0
      Width = 913
      Height = 377
      ActiveChildIndex = -1
      AllowFloating = True
      AutoHide = False
      CustomCaptionButtons.Buttons = <>
      DockingType = 0
      OriginalWidth = 185
      OriginalHeight = 140
      object dxDockGrid: TdxDockPanel
        Left = 0
        Top = 0
        Width = 632
        Height = 377
        AllowFloating = False
        AutoHide = False
        Caption = 'Tabla de registros'
        CaptionButtons = [cbMaximize]
        CustomCaptionButtons.Buttons = <>
        TabsProperties.CustomButtons.Buttons = <>
        ExplicitHeight = 0
        DockingType = 1
        OriginalWidth = 632
        OriginalHeight = 140
        object cxGridGral: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 618
          Height = 341
          Align = alClient
          TabOrder = 0
          object cxGridDatos: TcxGridDBTableView
            PopupMenu = dxPopupGrid
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = '< Clic aqu'#237' para definir un filtro >'
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = '<No hay informaci'#243'n disponible>'
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.Content = UDMConection.cxstylContent
            Styles.Header = UDMConection.cxstylHeader
          end
          object GridLevel1: TcxGridLevel
            GridView = cxGridDatos
          end
        end
      end
      object dxDockDatos: TdxDockPanel
        Left = 632
        Top = 0
        Width = 281
        Height = 377
        AllowFloating = True
        AutoHide = False
        Caption = 'Insertar / Editar Registros'
        CaptionButtons = [cbHide]
        CustomCaptionButtons.Buttons = <>
        TabsProperties.CustomButtons.Buttons = <>
        ExplicitTop = 140
        ExplicitHeight = 140
        DockingType = 1
        OriginalWidth = 281
        OriginalHeight = 140
        object cxPageDatos: TcxPageControl
          Left = 0
          Top = 0
          Width = 273
          Height = 347
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = cxTsDatos
          Properties.CustomButtons.Buttons = <>
          Properties.NavigatorPosition = npRightBottom
          ClientRectBottom = 341
          ClientRectLeft = 2
          ClientRectRight = 267
          ClientRectTop = 27
          object cxTsDatos: TcxTabSheet
            Caption = 'Datos'
            ImageIndex = 0
            object dxLYCDatos: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 265
              Height = 314
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = UDMConection.dxStyleForms
              object dxLyDatos: TdxLayoutGroup
                AlignHorz = ahLeft
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
            end
          end
        end
      end
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 913
    Height = 95
    BarManager = dxBarManager1
    ColorSchemeName = 'VS2010'
    ShowTabHeaders = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Nombre Cat'#225'logo'
      Groups = <
        item
        end
        item
          ToolbarName = 'dxbrManager1Bar'
        end>
      Index = 0
    end
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
    ImageOptions.Images = UDMConection.cxMizton16
    ImageOptions.LargeImages = UDMConection.cxMizton32
    LookAndFeel.SkinName = ''
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 600
    Top = 432
    DockControlHeights = (
      0
      0
      0
      0)
    object dxbrManager1Bar: TdxBar
      Caption = 'Opciones'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 664
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxButtonNuevo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBButtonEditar'
        end
        item
          Visible = True
          ItemName = 'dxBButtonBuscar'
        end
        item
          Visible = True
          ItemName = 'dxBButtonEliminar'
        end
        item
          Visible = True
          ItemName = 'dxButtonDetalle'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonGuardar'
        end
        item
          Visible = True
          ItemName = 'dxButtonCancelar'
        end
        item
          Visible = True
          ItemName = 'dxButtonActualizar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxButtonExportar'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 543
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxButtonNuevo'
        end
        item
          Visible = True
          ItemName = 'dxBButtonEditar'
        end
        item
          Visible = True
          ItemName = 'dxBButtonBuscar'
        end
        item
          Visible = True
          ItemName = 'dxBButtonEliminar'
        end
        item
          Visible = True
          ItemName = 'dxButtonGuardar'
        end
        item
          Visible = True
          ItemName = 'dxButtonActualizar'
        end
        item
          Visible = True
          ItemName = 'dxButtonCancelar'
        end
        item
          Visible = True
          ItemName = 'dxButtonSalir'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxButtonNuevo: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      LargeImageIndex = 4
      ShortCut = 16462
      OnClick = dxButtonNuevoClick
    end
    object dxBButtonEditar: TdxBarButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      ImageIndex = 3
      LargeImageIndex = 3
      ShortCut = 16453
      OnClick = dxBButtonEditarClick
    end
    object dxBButtonBuscar: TdxBarButton
      Caption = '&Buscar'
      Category = 0
      Hint = 'Buscar'
      Visible = ivAlways
      ImageIndex = 10
      ShortCut = 16450
      OnClick = dxBButtonBuscarClick
    end
    object dxBButtonEliminar: TdxBarButton
      Caption = 'Eli&minar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
      ImageIndex = 11
      LargeImageIndex = 11
      ShortCut = 46
      OnClick = dxBButtonEliminarClick
    end
    object dxButtonGuardar: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Hint = 'Guardar'
      Visible = ivAlways
      LargeImageIndex = 9
      ShortCut = 16455
      OnClick = dxButtonGuardarClick
      SyncImageIndex = False
      ImageIndex = 8
    end
    object dxButtonActualizar: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 12
      ShortCut = 116
      OnClick = dxButtonActualizarClick
    end
    object dxButtonCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 14
      ShortCut = 115
      OnClick = dxButtonCancelarClick
    end
    object dxButtonSalir: TdxBarLargeButton
      Caption = '&Salir'
      Category = 0
      Hint = 'Salir'
      Visible = ivAlways
      LargeImageIndex = 15
      ShortCut = 16499
      OnClick = dxButtonSalirClick
    end
    object dxButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxButtonExportar: TdxBarLargeButton
      Caption = '&Exportar a Excel'
      Category = 0
      Hint = 'Exportar a Excel'
      Visible = ivAlways
      LargeImageIndex = 15
      ShortCut = 16464
      OnClick = dxButtonExportarClick
    end
    object dxButtonOpcional: TdxBarLargeButton
      Caption = 'Opcional'
      Category = 0
      Hint = 'Opcional'
      Visible = ivNever
    end
    object dxButtonDetalle: TdxBarLargeButton
      Caption = '&Ver Informaci'#243'n Adicional'
      Category = 0
      Hint = 'Ver Informaci'#243'n Adicional'
      Visible = ivAlways
      LargeImageIndex = 13
      OnClick = dxButtonDetalleClick
    end
  end
  object dsDatos: TDataSource
    DataSet = zDatos
    Left = 440
    Top = 432
  end
  object zDatos: TZQuery
    ReadOnly = True
    Params = <>
    Left = 440
    Top = 384
  end
  object zDatosUpt: TZQuery
    Params = <>
    Left = 504
    Top = 384
  end
  object dsDatosUpt: TDataSource
    DataSet = zDatosUpt
    Left = 504
    Top = 432
  end
  object dxPopupGrid: TdxRibbonPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxButtonNuevo'
      end
      item
        Visible = True
        ItemName = 'dxBButtonEditar'
      end
      item
        Visible = True
        ItemName = 'dxBButtonEliminar'
      end>
    Ribbon = dxRibbon1
    UseOwnFont = False
    Left = 680
    Top = 384
  end
  object dlgSave1: TSaveDialog
    Filter = 'Documento de Microsoft Excel|*.xls'
    Left = 600
    Top = 384
  end
  object dxDockingManager1: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.TabsProperties.CustomButtons.Buttons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 360
    Top = 384
    PixelsPerInch = 96
  end
  object cxHintStyleController: TcxHintStyleController
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <
      item
      end>
    HintStyle.ScreenTipActionLinks = <>
    HintHidePause = 10000
    Left = 136
    Top = 200
  end
end
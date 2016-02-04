unit UFrmMaterialesxFolios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, dxBarBuiltInMenu, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter,
  dxSkinsdxDockControlPainter, dxScreenTip, dxCustomHint, cxHint, cxClasses,
  dxDockControl, dxBar, dxRibbon, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, dxLayoutContainer, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxDockPanel,
  UConection, umsgbox, ExtCtrls, cxContainer, ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGroupBox, dxLayoutControlAdapters, Menus, StdCtrls, cxButtons, DateUtils,
  cxImage, cxDBEdit, cxLabel, cxDBLabel, cxGridChartView, cxGridDBChartView;

type
  TFrmMaterialesxFolios = class(TForm)
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxlytdckst1: TdxLayoutDockSite;
    dxDockGrid: TdxDockPanel;
    cxGridGral: TcxGrid;
    cxGridDatos: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    dxDockDatos: TdxDockPanel;
    cxPageDatos: TcxPageControl;
    cxTsDatos: TcxTabSheet;
    dxLYCDatos: TdxLayoutControl;
    dxLyDatos: TdxLayoutGroup;
    dxBarManager1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxButtonNuevo: TdxBarLargeButton;
    dxBButtonEditar: TdxBarButton;
    dxBButtonBuscar: TdxBarButton;
    dxBButtonEliminar: TdxBarButton;
    dxButtonGuardar: TdxBarLargeButton;
    dxButtonActualizar: TdxBarLargeButton;
    dxButtonCancelar: TdxBarLargeButton;
    dxButtonSalir: TdxBarLargeButton;
    dxButton2: TdxBarLargeButton;
    dxButtonExportar: TdxBarLargeButton;
    dxButtonOpcional: TdxBarLargeButton;
    dxButtonDetalle: TdxBarLargeButton;
    dsDatos: TDataSource;
    zDatos: TZQuery;
    zDatosUpt: TZQuery;
    dsDatosUpt: TDataSource;
    dxPopupGrid: TdxRibbonPopupMenu;
    dlgSave1: TSaveDialog;
    dxDockingManager1: TdxDockingManager;
    cxHintStyleController: TcxHintStyleController;
    pnlFiltro: TPanel;
    cxGboxFiltro: TcxGroupBox;
    dxLayControl1: TdxLayoutControl;
    dxLayControl1Group_Root: TdxLayoutGroup;
    cxDateDesde: TcxDateEdit;
    lyLayControl1Item1: TdxLayoutItem;
    cxDateHasta: TcxDateEdit;
    lyHasta: TdxLayoutItem;
    btnAplicar: TcxButton;
    lyAplicar: TdxLayoutItem;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cxColFolioPrincipal: TcxGridDBColumn;
    cxColFolio: TcxGridDBColumn;
    cxColTelefono: TcxGridDBColumn;
    cxColPrincipal: TcxGridDBColumn;
    cxColSecundario: TcxGridDBColumn;
    cxColArea: TcxGridDBColumn;
    cxColContratista: TcxGridDBColumn;
    cxColNoVale: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxColmaterial: TcxGridDBColumn;
    cxColUMedida: TcxGridDBColumn;
    cxColCantidad: TcxGridDBColumn;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxDockBar1: TdxBarDockControl;
    dxbrManager1Bar1: TdxBar;
    btnadd: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    btnEdit: TdxBarLargeButton;
    btnRefresh: TdxBarLargeButton;
    zPersonal: TZQuery;
    dsPersonal: TDataSource;
    imgFoto: TcxDBImage;
    lyFoto: TdxLayoutItem;
    LblCodigo: TcxDBLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    LblNombre: TcxDBLabel;
    lyNombre: TdxLayoutItem;
    LblApPat: TcxDBLabel;
    lyApPat: TdxLayoutItem;
    LblApMat: TcxDBLabel;
    lyApMat: TdxLayoutItem;
    LblNoCarro: TcxDBLabel;
    lyBNocarro: TdxLayoutItem;
    zMaterial: TZQuery;
    dsMaterial: TDataSource;
    cxLvlGrafico: TcxGridLevel;
    cxChartProductividad: TcxGridDBChartView;
    cxSerieProductividad: TcxGridDBChartSeries;
    cxDataEstatus: TcxGridDBChartDataGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure cxGridGralActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
  private

    { Private declarations }
  public
    IdPersonal: integer;
    constructor CreateByParam(Personal: Integer; Modal: Boolean = False);
    { Public declarations }
  end;

var
  FrmMaterialesxFolios: TFrmMaterialesxFolios;

implementation

{$R *.dfm}

procedure TFrmMaterialesxFolios.btnAplicarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if not FiltrarDataset(zDatos, 'IdPersonal,Desde,Hasta', [Idpersonal]) then
        raise Exception.Create(pErrorFiltrar + '[mt_foliosxtecnicos]');

      if zDatos.Active then
        zDatos.Refresh
      else
        zDatos.Open;

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: Exception do
    begin
      MsgBox.ShowModal('Error.', 'Ha ocurrido el siguiente error: ' + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

constructor TFrmMaterialesxFolios.CreateByParam(Personal: integer; Modal: Boolean = False);
begin
  if Not Modal then
  begin
    IdPersonal := Personal;
  end;
end;

procedure TFrmMaterialesxFolios.cxGridGralActiveTabChanged(
  Sender: TcxCustomGrid; ALevel: TcxGridLevel);
begin
  try
    if cxGridGral.ActiveLevel = cxLvlGrafico then
    begin
      if not FiltrarDataset(zDatos, 'IdPersonal,Desde,Hasta,Grafica', [intTostr(Idpersonal), FechaSQl(cxDateDesde.Date), FechaSQL(cxDateHasta.Date), 'Si']) then
        raise Exception.Create(pErrorFiltrar + '[mt_foliosxtecnicos]');
    end
    else
    begin
       if not FiltrarDataset(zDatos, 'IdPersonal,Desde,Hasta', [intTostr(Idpersonal), FechaSQl(cxDateDesde.Date), FechaSQL(cxDateHasta.Date)]) then
        raise Exception.Create(pErrorFiltrar + '[mt_foliosxtecnicos]');
    end;

    if zDatos.Active then
      zDatos.Refresh
    else
      zDatos.Open;
  Except
    raise;
  end;
end;

procedure TFrmMaterialesxFolios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TFrmMaterialesxFolios.FormCreate(Sender: TObject);
begin
  if NOT AsignarSQL(zPersonal, 'master_personal', pReadOnly) then
    raise Exception.Create(pErrorConsulta + '[master_personal]');

  if NOT AsignarSQL(zDatos, 'mt_foliosxtecnicos', pReadOnly) then
    raise Exception.Create(pErrorConsulta + '[mt_foliosxtecnicos]');

end;

procedure TFrmMaterialesxFolios.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      cxDateDesde.Date := StartOfTheWeek(Now);
      cxDateHasta.Date := EndOfTheWeek(Now);

      if not FiltrarDataset(zPersonal, 'IdPersonal', [Idpersonal]) then
        raise Exception.Create(pErrorFiltrar + '[master_personal]');

      if zPersonal.Active then
        zPersonal.Refresh
      else
        zPersonal.Open;

      if not FiltrarDataset(zDatos, 'IdPersonal,Desde,Hasta', [intTostr(Idpersonal), FechaSQl(cxDateDesde.Date), FechaSQL(cxDateHasta.Date)]) then
        raise Exception.Create(pErrorFiltrar + '[mt_foliosxtecnicos]');

      if zDatos.Active then
        zDatos.Refresh
      else
        zDatos.Open;

    finally
      AplicarTema(TForm(Self));
      AutoFocus(TForm(Self));
      Screen.Cursor := Cursor;
    end;
  Except
    on e: Exception do
    begin
      MsgBox.ShowModal('Error.', 'Ha ocurrido el siguiente error: ' + e.Message, cmtError, [cmbOK]);
      PostMessage(self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

end.

unit UFrmCatalogoMateriales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmMiniCatalogo, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, dxBarBuiltInMenu, dxSkinsdxBarPainter, dxBar,
  dxRibbon, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxSplitter,
  dxLayoutContainer, dxLayoutControl, cxPC, ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar,
  UConection;

type
  TFrmCatalogoMateriales = class(TFrmMiniCatalogo)
    cxColCodigo: TcxGridDBColumn;
    cxColMaterial: TcxGridDBColumn;
    cxColUMedida: TcxGridDBColumn;
    cxColFecha: TcxGridDBColumn;
    cxTextCodigo: TcxDBTextEdit;
    lyCodigo: TdxLayoutItem;
    cxTextMaterial: TcxDBTextEdit;
    lyMaterial: TdxLayoutItem;
    cbbUMedida: TcxDBLookupComboBox;
    lyUMedida: TdxLayoutItem;
    cxDateFecha: TcxDBDateEdit;
    lyFecha: TdxLayoutItem;
    zUMedida: TZQuery;
    dsUMedida: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCatalogoMateriales: TFrmCatalogoMateriales;

implementation

{$R *.dfm}

procedure TFrmCatalogoMateriales.dxButtonNuevoClick(Sender: TObject);
begin
  inherited;
  if zDatosUPt.Active and (zDatosUpt.State in [dsInsert]) then
  begin
    zDatosUPT.FieldByName('Fecharegistro').AsDateTime := NOW();
    zDatosUpt.FieldByName('Tipo').AsString := 'MATERIAL';
  end;
end;

procedure TFrmCatalogoMateriales.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'factura_servicios';
  PKField := 'IdServicio';
  CampoMostrar := 'Servicio';

  pCondiciones := '~(IdServicio)&(Codigo)';
  pCampos := 'IdServicio,Codigo';
end;

procedure TFrmCatalogoMateriales.FormShow(Sender: TObject);
begin
  inherited;
  AsignarSQL(zUMedida, 'master_unidadmedida', pReadOnly);
  FiltrarDataset(zUMedida, 'IdUnidadMedida', ['-1']);

  if zUMedida.Active then
    zUMedida.Refresh
  else
    zUMedida.Open;
end;

end.

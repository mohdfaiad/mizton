unit UFrmConsultas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxTextEdit, StdCtrls, cxRadioGroup, dxLayoutContainer, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, cxGroupBox, ExtCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox;

type
  TForm1 = class(TForm)
    pnlFiltros: TPanel;
    cxGboxFecha: TcxGroupBox;
    dxLayControl1Group_Root: TdxLayoutGroup;
    dxLayControl1: TdxLayoutControl;
    cxDateEdit1: TcxDateEdit;
    lyDesde: TdxLayoutItem;
    cxDateEdit2: TcxDateEdit;
    lyHasta: TdxLayoutItem;
    rbFecha: TcxRadioButton;
    cxRadioButton1: TcxRadioButton;
    cxGboxFolio: TcxGroupBox;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cxTextFolio: TcxTextEdit;
    lyFolio: TdxLayoutItem;
    cxRadioButton2: TcxRadioButton;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl2: TdxLayoutControl;
    cxTextTelefono: TcxTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    CxGrdFoliosDBTableView1: TcxGridDBTableView;
    cxLvl1: TcxGridLevel;
    CxGrdFolios: TcxGrid;
    cxTextEdit1: TcxTextEdit;
    lyExpediente: TdxLayoutItem;
    cxCheckExpediente: TcxCheckBox;
    lyExpedienteChk: TdxLayoutItem;
    cxCheckOrign: TcxCheckBox;
    lyOrigen: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
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
  cxImage, cxDBEdit, cxLabel, cxDBLabel, cxGridChartView, cxGridDBChartView,
  ExportaExcel, ComObj, strUtils, cxSpinEdit, ZSqlUpdate, cxSplitter, cxGridExportLink,
  ShellAPI, cxCurrencyEdit;

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
    cxColContratista: TcxGridDBColumn;
    cxColNoVale: TcxGridDBColumn;
    CxGrdMat: TcxGrid;
    cxGridMateriales: TcxGridDBTableView;
    cxLvl1: TcxGridLevel;
    cxColmaterial: TcxGridDBColumn;
    cxColUMedida: TcxGridDBColumn;
    cxColCantidad: TcxGridDBColumn;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxDockBar1: TdxBarDockControl;
    dxbrMateriales: TdxBar;
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
    DbLblTelefono: TcxDBLabel;
    lyTelefono: TdxLayoutItem;
    DbLblCorreo: TcxDBLabel;
    lyCorreo: TdxLayoutItem;
    zDeleteFolio: TZQuery;
    cxColEstatus: TcxGridDBColumn;
    zUMateriales: TZQuery;
    cxColCreado: TcxGridDBColumn;
    zUptMateriales: TZUpdateSQL;
    pnl1: TPanel;
    btnSaveChanges: TcxButton;
    cxSplitter1: TcxSplitter;
    cxColTipoInstalacion: TcxGridDBColumn;
    cxColCostoCobrar: TcxGridDBColumn;
    btnExport2: TdxBarLargeButton;
    cxColTipo: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxstylSPago: TcxStyle;
    cxGboxLeyendas: TcxGroupBox;
    Panel1: TPanel;
    LblSinpago: TcxLabel;
    LblLeyendaVale: TcxLabel;
    btnParElectricos: TdxBarLargeButton;
    cxColestatusCobro: TcxGridDBColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxstylPendiente: TcxStyle;
    cxstylAutorizada: TcxStyle;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    dxPopupTipo: TdxBarPopupMenu;
    dxButtonCObre: TdxBarButton;
    dxButtonFIBRa: TdxBarButton;
    btnDatosGrales: TdxBarLargeButton;
    zConceptos: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure cxGridGralActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure dxButtonActualizarClick(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure dxBButtonBuscarClick(Sender: TObject);
    procedure dxBButtonEliminarClick(Sender: TObject);
    procedure cxDateDesdePropertiesChange(Sender: TObject);
    procedure btnaddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure zDatosAfterScroll(DataSet: TDataSet);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure dxButtonExportarClick(Sender: TObject);
    procedure cxGridMaterialesEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure btnExport2Click(Sender: TObject);
    procedure cxGridDatosStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure btnParElectricosClick(Sender: TObject);
    procedure dxButtonCObreClick(Sender: TObject);
    procedure dxButtonFIBRaClick(Sender: TObject);
    procedure btnDatosGralesClick(Sender: TObject);
  private
    ExApp: Variant;
    Procedure ActionButtons;
    { Private declarations }
  public
    IdPersonal: integer;
    constructor CreateByParam(Personal: Integer; Modal: Boolean = False);
    { Public declarations }
  protected
    insert, edit, delete: Boolean;
  end;

var
  FrmMaterialesxFolios: TFrmMaterialesxFolios;

implementation

{$R *.dfm}

uses UfrmCapturaFolio, UfrmFolioMAterial, UfrmInicio;


procedure TFrmMaterialesxFolios.ActionButtons;
var Estado: Boolean;
begin
  dxButtonNuevo.Enabled := Insert;
  dxBButtonEditar.Enabled := Edit;
  dxBButtonEliminar.Enabled := delete;
end;

procedure TFrmMaterialesxFolios.btnaddClick(Sender: TObject);
begin
  try
    if zDatos.FieldByName('Estatus').AsString <> 'Liquidada' then
      raise eWarning.Create('No puedes asignar materiales a folios con estatus diferente de "Liquidada"');

    if zDatos.FieldByName('EstatusCobro').AsString = 'Autorizado' then
      raise eWarning.Create('No est� permitido editar una orden que ya est� autorizada.');

    try
      application.CreateForm(TFrmFolioMaterial, FrmFolioMaterial);
      FrmFolioMaterial.Id := -9;
      FrmFolioMaterial.IdFolio := zDatos.FieldByName('IdFolio').AsInteger;
      FrmFolioMaterial.ShowModal;
    finally
      btnRefresh.Click;
    end;
  except
    on e: eWarning do
    begin
      MsgBox.ShowModal('Validaci�n.',e.Message, cmtWarning, [cmbOK]);
    end;
  end;
end;

procedure TFrmMaterialesxFolios.btnAplicarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

       if not FiltrarDataset(zDatos, 'IdPersonal,Desde,Hasta', [intTostr(Idpersonal), FechaSQl(cxDateDesde.Date), FechaSQL(cxDateHasta.Date)]) then
        raise Exception.Create(pErrorFiltrar + '[mt_foliosxtecnicos]');

      try
        zDatos.AfterScroll := Nil;

        if zDatos.Active then
          zDatos.Refresh
        else
          zDatos.Open;
      finally
        zDatos.AfterScroll := zDatosAfterScroll;
        if zDatos.Active then
          zdatos.first;
      end;

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

procedure TFrmMaterialesxFolios.btnDatosGralesClick(Sender: TObject);
Var
  cursor: TCursor;
  Continuar: Boolean;
  Rango: Variant;
  zMat: TZQuery;
  iniFila, iniCol, recFila, recCol, rc, i, k: Integer;
  ListaMaterial: TStringList;
  tipo:String;
begin
  try

    zDatos.AfterScroll := nil;
    zDatos.Filtered := False;
    zDatos.Filter := 'Estatus=' + QuotedStr('Liquidada');
    zDatos.Filtered := True;

    Try
      Continuar     := True;
      ExApp := CreateOleObject('Excel.Application');
      ExApp.Visible := True;
      ExApp.DisplayAlerts := False;
      ExApp.Workbooks.Add;
    Except
      on e:Exception do
      begin
        Continuar := False;
        msgBox.ShowModal('Ha ocurrido un error.','Al parecer no el equipo no tiene instalado Microsoft Excel, Contacte a su administrador de sistema para poder utilizar esta caracter�stica', cmtError, [cmbOK]);
      end;
    End;

    //Si no se v� al chorizo, continuar
    if Continuar then
    begin
      //encabezado y datos generales
      ExApp.Range['A1:K1'] := 'FORMATO DE ENTREGA Y CONTROL DE TRABAJOS DE A0.';
      ExApp.Range['A1:K1'].MergeCells := true;
      FormatoTexto(ExApp.Range['A1'], 'Arial', 22, True, True);

      ExApp.Range['G6:G6'] := 'DIVISION';
      ExApp.Range['H6:K6'] := zDatos.FieldByName('Division').AsString;
      ExApp.Range['H6:K6'].mergeCells := True;

      ExApp.Range['G7:G7'] := 'AREA';
      ExApp.Range['H7:K7'] := zDatos.FieldByName('Area').AsString;
      ExApp.Range['H7:K7'].mergeCells := True;

      ExApp.Range['G8:G8'] := 'CONTRATISTA';
      ExApp.Range['H8:K8'] := zDatos.FieldByName('Contratista').AsString;
      ExApp.Range['H8:K8'].mergeCells := True;

      ExApp.Range['G9:G9'] := 'COPE';
      ExApp.Range['H9:K9'] := zDatos.FieldByName('NoVale').AsString;
      ExApp.Range['H9:K9'].mergeCells := True;

      ExApp.Range['G10:G10'] := 'SEMANA';
      ExApp.Range['H10:K10'] := zDatos.FieldByName('FechaVale').AsString;
      ExApp.Range['H10:K10'].mergeCells := True;
      FormatoTexto(ExApp.Range['G6:K10'], 'Arial', 9,false,True);




      SetBorders(Exapp.Range['G6:k10'], xlThin, xlContinuous);

      ExApp.Range['A13'] := 'NO.';
      ExApp.Columns['A:A'].ColumnWidth := 9;
      ExApp.Range['B13'] := 'NUMERO DE FACTURA';
      ExApp.Columns['B:B'].ColumnWidth := 12.14;
      ExApp.Range['C13'] := 'No. FACTURA CABLEADO';
      ExApp.Columns['C:C'].ColumnWidth := 12.14;
      ExApp.Range['D13'] := 'FOLIO VALIDACION';
      ExApp.Columns['D:D'].ColumnWidth := 12.14;
      ExApp.Range['E13'] := 'FOLIO OS';
      ExApp.Columns['E:E'].ColumnWidth := 12.14;
      ExApp.Range['F13'] := 'TELEFONO CON CLAVE LADA 10 DIG';
      ExApp.Columns['F:F'].ColumnWidth := 19;
      ExApp.Range['G13'] := 'TIPO DE OS';
      ExApp.Columns['G:G'].ColumnWidth := 12.14;
      ExApp.Range['H13'] := 'CTL';
      ExApp.Columns['H:H'].ColumnWidth := 9;
      ExApp.Range['I13'] := 'DTO';
      ExApp.Columns['I:I'].ColumnWidth := 9;
      ExApp.Range['J13'] := 'PRINC';
      ExApp.Columns['J:J'].ColumnWidth := 9;
      ExApp.Range['K13'] := 'SEC';
      ExApp.Columns['K:K'].ColumnWidth := 9;
      ExApp.Range['L13'] := 'FECHA INSTALACION';
      ExApp.Columns['L:L'].ColumnWidth := 12.14;
      EXApp.Range['A13:L13'].wrapText := True;

      //Esto es para que no me desmadre el formato de principal y secundario
      ExApp.Columns['E:F'].NumberFormat := '@';

      Cursor := Screen.Cursor;
      try
        Screen.Cursor := crAppStart;

        iniFila := 12;
        InicOl := 13;
        recFila := 0;
        recCol := 0;
        k := 1;

        //UNiverso de materiales utilizados en la semana
        if not FiltrarDataset(zConceptos, 'IdConcepto', ['-1']) then
          raise Exception.Create(pErrorFiltrar + '[mt_foliosxtecnicos]');

        if zConceptos.Active then
          zConceptos.Refresh
        else
          zConceptos.Open;

        //Formato color encabezados
        Rango := EXApp.Range['A13:' + ColumnaNombre(12 + zConceptos.RecordCount)+ '13'];
        FormatoTexto(Rango, 'Arial Narrow', 9, True);
        Rango.interior.color := rgb(217,217,217);


        rc := 0;
        zConceptos.First;
        tipo := zConceptos.FieldByName('Tipo').AsString;
        while not zConceptos.Eof do
        begin
          if ((zConceptos.RecNo > 1) and (Tipo <> zConceptos.FieldByName('Tipo').AsString)) or (zconceptos.RecordCount = zConceptos.RecNo) then
          begin
            if (zconceptos.RecordCount = zConceptos.RecNo) then
              Rango := ExApp.Range[ColumnaNombre(IniCol + recCol-rc) + IntToStr(3) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(3)]
            else
              Rango := ExApp.Range[ColumnaNombre(IniCol + recCol-rc) + IntToStr(3) + ':' + ColumnaNombre(IniCol + recCol-1) + IntToStr(3)];

            Rango.MergeCells := True;
            if (zconceptos.RecordCount = zConceptos.RecNo) then
              Rango := ExApp.Range[ColumnaNombre(IniCol + recCol-rc) + IntToStr(4) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(4)]
            else
              Rango := ExApp.Range[ColumnaNombre(IniCol + recCol-rc) + IntToStr(4) + ':' + ColumnaNombre(IniCol + recCol-1) + IntToStr(4)];

            if k = 1 then
              rango.Interior.color := RGB(255,255,153);
            if k = 2 then
              rango.Interior.color := RGB(153,255,102);
            if k = 3 then
              rango.Interior.color := RGB(197,217,241);
            tipo := zConceptos.FieldByName('Tipo').AsString;
            rc := 0;
            inc(k)
          end;


          ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(3)] := UpperCase(zConceptos.FieldByName('Tipo').AsString);
          ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(4)] := zConceptos.FieldByName('Concepto').AsString;
          ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(4)].mergeCells := True;
          ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(4)].Orientation := 90;
          ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(4)].wraptext := true;
          FormatoTexto(ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(1)], 'Arial Narrow', 9, true, False);
          ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila+1)] := zConceptos.FieldByName('codigo').AsString;
          FormatoTexto(ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila+1)], 'Arial Narrow', 8, true, True);

          inc(RecCol);
          inc(rc);
          zConceptos.Next;

        end;
        SetBorders(ExApp.Range[ColumnaNombre(IniCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol-1) + IntToStr(3)], xlThin, xlContinuous);

        //Color y bordes a encabezado tipo de concepto
        ExApp.Range[ColumnaNombre(IniCol) + IntToStr(3) + ':' + ColumnaNombre(IniCol + recCol-1) + IntToStr(3)].interior.color := Rgb(150,150,150);
        FormatoTexto(ExApp.Range[ColumnaNombre(IniCol) + IntToStr(3) + ':' + ColumnaNombre(IniCol + recCol-1) + IntToStr(3)],'Arial', 18, True, True);


        //Agregando folios de la semana
        iniFila := 14;
        InicOl := 0;
        recFila := 0;

        zDatos.First;
        while Not zDatos.Eof do
        begin
          ExApp.Range[ColumnaNombre(IniCol + 1) + IntToStr(IniFila + recFila)] := zDatos.recNo;
          ExApp.Range[ColumnaNombre(IniCol + 5) + IntToStr(IniFila + recFila)] := Chr(39) +UpperCase(zDatos.FieldByName('Folio').AsString);
          ExApp.Range[ColumnaNombre(IniCol + 6) + IntToStr(IniFila + recFila)] := Chr(39) +UpperCase(zDatos.FieldByName('Telefono').AsString);
          ExApp.Range[ColumnaNombre(IniCol + 7) + IntToStr(IniFila + recFila)] := UpperCase(zDatos.FieldByName('TipoOs').AsString);
          ExApp.Range[ColumnaNombre(IniCol + 8) + IntToStr(IniFila + recFila)] := UpperCase(zDatos.FieldByName('Central').AsString);
          ExApp.Range[ColumnaNombre(IniCol + 9) + IntToStr(IniFila + recFila)] := upperCase(zDatos.FieldByName('Distrito').AsString);

          ExApp.Range[ColumnaNombre(IniCol + 10) + IntToStr(IniFila + recFila)].numberFormat := '@';
          ExApp.Range[ColumnaNombre(IniCol + 10) + IntToStr(IniFila + recFila)].FormulaR1C1 := Chr(39) +  UpperCase(zDatos.FieldByName('Principal').AsString);
          ExApp.Range[ColumnaNombre(IniCol + 11) + IntToStr(IniFila + recFila)].NumberFormat := '@';
          ExApp.Range[ColumnaNombre(IniCol + 11) + IntToStr(IniFila + recFila)].FormulaR1C1 := Chr(39)  + UpperCase(zDatos.FieldByName('Secundario').AsString) + ' ';
          ExApp.Range[ColumnaNombre(IniCol + 12) + IntToStr(IniFila + recFila)] := UpperCase(zDatos.FieldByName('FechaCreacion').AsString);


          inc(RecFila);
          zDatos.Next;
        end;

        //Colocar las Formulas Sumatoria
        ExApp.Range['A'+intToStr(IniFila +RecFila)] := 'TOTAL UNIDADES';
        ExApp.Range['A'+intToStr(IniFila +RecFila) + ':L'+intToStr(IniFila +RecFila)].MergeCells := True;

        for i := 0 to ZConceptos.RecordCount-1 do
        begin
          ExApp.Range[ColumnaNombre(13+i) +intToStr(IniFila + RecFila)].FormulaR1C1 := '=SUM(R[-' + intToStr(zDatos.RecordCount) + ']C:R[-1]C)'
        end;

        //Borders a cuerpo del excel
        Rango := ExApp.Range[ColumnaNombre(IniCol + 1) + IntToStr(IniFila-1) + ':' + ColumnaNombre(12 + zConceptos.RecordCount) + IntToStr(IniFila + recFila)];
        SetBorders(Rango, xlThin, xlContinuous);
        FormatoTexto(Rango, 'Arial', 10, True);


        ExApp.Range['A'+IntToStr(IniFila + recFila+2)] := 'TIPO DE SERVICIO';
        ExApp.Range['A'+IntToStr(IniFila + recFila+2)].MergeCells := True;
        FormatoTexto(ExApp.Range['A'+IntToStr(IniFila + recFila+2)], 'Arial', 12, False, True);


        ExApp.Range['F'+IntToStr(IniFila + recFila+2)] := 'A0';
        ExApp.Range['F'+IntToStr(IniFila + recFila+3)] := 'A5';
        ExApp.Range['F'+IntToStr(IniFila + recFila+4)] := 'N3';
        FormatoTexto(ExApp.Range['F'+IntToStr(IniFila + recFila+2)+':F'+IntToStr(IniFila + recFila+4)], 'Arial', 12, true, True);

        ExApp.Range['J'+IntToStr(IniFila + recFila+2)] := 'A7';
        ExApp.Range['J'+IntToStr(IniFila + recFila+3)] := 'A9';
        ExApp.Range['J'+IntToStr(IniFila + recFila+4)] := 'A4';
        FormatoTexto(ExApp.Range['J'+IntToStr(IniFila + recFila+2)+':J'+IntToStr(IniFila + recFila+4)], 'Arial', 12, true, True);

        ExApp.Range['G'+IntToStr(IniFila + recFila+2)] := 'Alta nueva';
        ExApp.Range['G'+IntToStr(IniFila + recFila+3)] := 'Alta con prioridad';
        ExApp.Range['G'+IntToStr(IniFila + recFila+4)] := 'Conver Inalamb/Cobre';
        FormatoTexto(ExApp.Range['G'+IntToStr(IniFila + recFila+2)+':G'+IntToStr(IniFila + recFila+4)], 'Arial', 12, false, false);

        ExApp.Range['K'+IntToStr(IniFila + recFila+2)] := 'Alta l�nea m�s adicional (alta nueva m�s adicional)';
        ExApp.Range['K'+IntToStr(IniFila + recFila+3)] := 'Alta sin costo FP (l�nea telef�nica nueva e Infinitum)';
        ExApp.Range['K'+IntToStr(IniFila + recFila+4)] := 'Alta por baja sin costo';
        FormatoTexto(ExApp.Range['K'+IntToStr(IniFila + recFila+2)+':K'+IntToStr(IniFila + recFila+4)], 'Arial', 12, false, false);

        //pie de pagina
        Inc(recFila,4);

        ExApp.Range['A'+ IntToStr(IniFila + recFila+2)+':' +'I' +IntToStr(IniFila + recFila+2)].select;
        ExApp.selection.Borders[xlDiagonalDown].lineStyle := xlNone;
        ExApp.selection.Borders[xlDiagonalUp].lineStyle := xlNone;
        ExApp.selection.Borders[xlEdgeLeft].lineStyle := xlNone;
        ExApp.selection.Borders[xlEdgeTop].lineStyle := xlNone;
        ExApp.selection.Borders[xlEdgeBottom].lineStyle := xlContinuous;
        ExApp.selection.Borders[xlEdgeBottom].weight := xlThin;

        ExApp.selection.Borders[xlEdgeRight].lineStyle := xlNone;
        ExApp.selection.Borders[xlInsideVertical].lineStyle := xlNone;
        ExApp.selection.Borders[xlInsideHorizontal].lineStyle := xlNone;

        ExApp.Range['A'+ IntToStr(IniFila + recFila+3)] := 'NOMBRE Y FIRMA DE QUIEN RECIBE Y AUTORIZA LOS TRABAJOS EJECUTADOS (TELMEX)';
        ExApp.Range['A'+ IntToStr(IniFila + recFila+3) + ':I'+ IntToStr(IniFila + recFila+3)].mergeCells := True;

        FormatoTexto(ExApp.Range['A'+ IntToStr(IniFila + recFila+3)],'Arial', 9, False, True);

        ExApp.Range['A'+ IntToStr(IniFila + recFila+5)+':' +'A' +IntToStr(IniFila + recFila+5)] := 'NOMBRE';
        ExApp.Range['B'+ IntToStr(IniFila + recFila+5)+':' +'G' +IntToStr(IniFila + recFila+5)].select;
        ExApp.Selection.mergeCells := True;

        ExApp.Range['H'+ IntToStr(IniFila + recFila+5)+':' +'I' +IntToStr(IniFila + recFila+5)].MergeCells := True;

        ExApp.Range['H'+ IntToStr(IniFila + recFila+5)+':' +'H' +IntToStr(IniFila + recFila+5)].MergeCells := True;
        ExApp.Range['A'+ IntToStr(IniFila + recFila+6)+':' +'A' +IntToStr(IniFila + recFila+6)] := 'PUESTO';
        ExApp.Range['B'+ IntToStr(IniFila + recFila+6)+':' +'E' +IntToStr(IniFila + recFila+6)].mergeCells := True;
        ExApp.Range['F'+ IntToStr(IniFila + recFila+6)+':' +'G' +IntToStr(IniFila + recFila+6)] := 'FECHA';
        ExApp.Range['F'+ IntToStr(IniFila + recFila+6)+':' +'G' +IntToStr(IniFila + recFila+6)].MergeCells := True;


        ExApp.Range['H'+ IntToStr(IniFila + recFila+6)+':' +'I' +IntToStr(IniFila + recFila+6)].MergeCells := True;

        SetBorders(ExApp.Range['A' + IntToStr(IniFila + recFila+5)+':' +'I' +IntToStr(IniFila + recFila+6)], xlThin, xlContinuous);
        FormatoTexto(ExApp.Range['A' + IntToStr(IniFila + recFila+5)+':' +'I' +IntToStr(IniFila + recFila+6)],'Arial', 11, False);


        //Segunda seccion de firmantes

        ExApp.Range['K'+ IntToStr(IniFila + recFila+5)+':' +'K' +IntToStr(IniFila + recFila+5)] := 'NOMBRE';
        ExApp.Range['L'+ IntToStr(IniFila + recFila+5)+':' +'O' +IntToStr(IniFila + recFila+5)].select;
        ExApp.Selection.mergeCells := True;

        ExApp.Range['P'+ IntToStr(IniFila + recFila+5)+':' +'Q' +IntToStr(IniFila + recFila+5)] := 'NO. EXP.';
        ExApp.Range['P'+ IntToStr(IniFila + recFila+5)+':' +'Q' +IntToStr(IniFila + recFila+5)].MergeCells := True;

        ExApp.Range['H'+ IntToStr(IniFila + recFila+5)+':' +'H' +IntToStr(IniFila + recFila+5)].MergeCells := True;
        ExApp.Range['K'+ IntToStr(IniFila + recFila+6)+':' +'K' +IntToStr(IniFila + recFila+6)] := 'PUESTO';
        ExApp.Range['L'+ IntToStr(IniFila + recFila+6)+':' +'O' +IntToStr(IniFila + recFila+6)].mergeCells := True;
        ExApp.Range['P'+ IntToStr(IniFila + recFila+6)+':' +'Q' +IntToStr(IniFila + recFila+6)] := 'FECHA';
        ExApp.Range['P'+ IntToStr(IniFila + recFila+6)+':' +'Q' +IntToStr(IniFila + recFila+6)].MergeCells := True;


        ExApp.Range['H'+ IntToStr(IniFila + recFila+6)+':' +'I' +IntToStr(IniFila + recFila+6)].MergeCells := True;

        SetBorders(ExApp.Range['k' + IntToStr(IniFila + recFila+5)+':' +'Q' +IntToStr(IniFila + recFila+6)], xlThin, xlContinuous);
        FormatoTexto(ExApp.Range['K' + IntToStr(IniFila + recFila+5)+':' +'Q' +IntToStr(IniFila + recFila+6)],'Arial', 11, False);


        ExApp.Columns['L:L'].WrapText := True;


        TBlobField(FrmInicio.zEmpresa.FieldByName('logotipo')).SaveToFile(ExtractFilePath(Application.ExeName) + 'Temp.bmp');
        ExApp.ActiveSheet.Pictures.Insert(ExtractFilePath(Application.ExeName) + 'Temp.bmp').Select;
        ExApp.Selection.ShapeRange.LockAspectRatio := False;
        ExApp.Selection.ShapeRange.Width := 180;
        ExApp.Selection.ShapeRange.Height :=100;
        ExApp.Selection.ShapeRange.Left := 50;
        ExApp.Selection.ShapeRange.top := 50;


        ExApp.ActiveSheet.name := 'DATOS GENERALES';
        ExApp.ActiveWindow.DisplayGridlines := False;
      finally
        zDatos.AfterScroll := zDatosAfterScroll;
        Screen.Cursor := Cursor;
      end;
    end;
  finally
    zDatos.Filtered := False;
  end;
end;

procedure TFrmMaterialesxFolios.btnDeleteClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;

    if zDatos.FieldByName('Estatus').AsString <> 'Liquidada' then
      raise eWarning.Create('No puedes asignar materiales a folios con estatus diferente de "Liquidada"');

    if zDatos.FieldByName('EstatusCobro').AsString = 'Autorizado' then
      raise eWarning.Create('No est� permitido editar una orden que ya est� autorizada.');

    try
      Screen.Cursor := crAppStart;
      if (MsgBox.ShowModal('Confirmar acci�n.', '�Est� seguro que deseas eliminar este folio [' + zDatos.FieldByName('Folio').AsString + '] juntos con los materiales asignados?', cmtInformation, [cMbDelete, cMbNo]) = mrYes) then
      begin
        zDeleteFolio.SQL.Text := 'DELETE FROM mt_materialxfolio WHERE IdMaterialxFolio = :IdMaterialxFolio';
        zDeleteFolio.ParamByName('IdMaterialxFolio').AsInteger := zMaterial.FieldByName('IdMaterialxFolio').AsInteger;
        zDeleteFolio.ExecSQL;
        btnRefresh.Click;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: eWarning do
    begin
      MsgBox.ShowModal('Validaci�n.',e.Message, cmtWarning, [cmbOK]);
    end;

    on e: Exception do
    begin
      MsgBox.ShowModal('Error.', 'Ha ocurrido el siguiente error: ' + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmMaterialesxFolios.btnEditClick(Sender: TObject);
begin
  try
    if zDatos.FieldByName('Estatus').AsString <> 'Liquidada' then
      raise eWarning.Create('No puedes asignar materiales a folios con estatus diferente de "Liquidada"');

    if zDatos.FieldByName('EstatusCobro').AsString = 'Autorizado' then
      raise eWarning.Create('No est� permitido editar una orden que ya est� autorizada.');

    try
      application.CreateForm(TFrmFolioMaterial, FrmFolioMaterial);
      FrmFolioMaterial.Id := zMaterial.fieldByName('IdMaterialxFolio').asinteger;
      FrmFolioMaterial.ShowModal;
    finally
      btnRefresh.Click;
    end;

  except
    on e: eWarning do
    begin
      MsgBox.ShowModal('Validaci�n.',e.Message, cmtWarning, [cmbOK]);
    end;
  end;
end;

procedure TFrmMaterialesxFolios.btnExport2Click(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
begin
  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
    rutaArchivo := dlgSave1.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, cxGridGral);


     if MsgBox.ShowModal('Confirmaci�n.','�Desea abrir el documento exportado?', cmtConfirmation, [cMbOpen, cmbNo]) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmMaterialesxFolios.btnParElectricosClick(Sender: TObject);
Var
  cursor: TCursor;
  Continuar: Boolean;
  Rango: Variant;
  zMat: TZQuery;
  iniFila, iniCol, recFila, recCol, i: Integer;
  ListaMaterial: TStringList;
begin
  try
    zDatos.Filtered := False;
    zDatos.Filter := 'Estatus=' + QuotedStr('Liquidada');
    zDatos.Filtered := True;

    Try
      Continuar     := True;
      ExApp := CreateOleObject('Excel.Application');
      ExApp.Visible := True;
      ExApp.DisplayAlerts := False;
      ExApp.Workbooks.Add;
    Except
      on e:Exception do
      begin
        Continuar := False;
        msgBox.ShowModal('Ha ocurrido un error.','Al parecer no el equipo no tiene instalado Microsoft Excel, Contacte a su administrador de sistema para poder utilizar esta caracter�stica', cmtError, [cmbOK]);
      end;
    End;

    //Si no se v� al chorizo, continuar
    if Continuar then
    begin
      //encabezado y datos generales


      ExApp.Range['A2:Q2'] := 'PAR�METROS EL�CTRICOS';
      ExApp.Range['A2:Q2'].MergeCells := true;

      FormatoTexto(ExApp.Range['A2:Q2'], 'Baskerville Old Face', 26, True, True);


      //Columnas
      ExApp.Range['A4:A5'] := 'No.';
      ExApp.Range['A4:A5'].mergeCells := true;

      ExApp.Range['B4:B5'] := 'FOLIO';
      ExApp.Range['B4:B5'].mergeCells := true;

      ExApp.Range['C4:C5'] := 'TEL�FONO';
      ExApp.Range['C4:C5'].mergeCells := true;

      ExApp.Range['D4:D5'] := 'TIPO DE TRABAJO';
      ExApp.Range['D4:D5'].mergeCells := true;
      ExApp.Range['D4:D5'].wraptext := True;

      ExApp.Range['E4:G4'] := 'VOLTAJE';
      ExApp.Range['E4:G4'].mergeCells := true;

      //A-B	A-T	B-T
      ExApp.Range['E5:E5'] := 'A-B';
      ExApp.Range['F5:F5'] := 'A-T';
      ExApp.Range['G5:G5'] := 'B-T';



      ExApp.Range['H4:J4'] := 'RESISTENCIA Gohms';
      ExApp.Range['H4:J4'].mergeCells := true;

      //A-B	A-T	B-T
      ExApp.Range['H5:H5'] := 'A-B';
      ExApp.Range['I5:I5'] := 'A-T';
      ExApp.Range['J5:J5'] := 'B-T';


      ExApp.Range['K4:M4'] := 'LONGITUD (mts)';
      ExApp.Range['K4:M4'].mergeCells := true;

      //A-B	A-T	B-T
      ExApp.Range['K5:K5'] := 'A-B';
      ExApp.Range['L5:L5'] := 'A-T';
      ExApp.Range['M5:M5'] := 'B-T';


      ExApp.Range['N4:N5'] := 'PLANO';
      ExApp.Range['N4:N5'].mergeCells := true;

      ExApp.Range['O4:O5'] := 'B.L.';
      ExApp.Range['O4:O5'].mergeCells := true;

      ExApp.Range['P4:Q5'] := 'DIAGN�STICOS';
      ExApp.Range['P4:Q5'].mergeCells := true;


      FormatoTexto(ExApp.Range['A4:Q5'], 'Calibri', 11, True, True);
      SetBorders(ExApp.Range['A4:Q5'], xlContinuous,xlThin);


      Cursor := Screen.Cursor;
      try
        Screen.Cursor := crAppStart;

        iniFila := 6;
        InicOl := 0;
        recFila := 0;
        recCol := 0;

        zDatos.First;
        while Not zDatos.Eof do
        begin
          ExApp.Range[ColumnaNombre(IniCol + 1) + IntToStr(IniFila + recFila)] := zDatos.recNo;
          ExApp.Range[ColumnaNombre(IniCol + 1) + IntToStr(IniFila + recFila)  + ':' + ColumnaNombre(IniCol+1) + IntToStr(IniFila + recFila+1)].mergeCells := True;

          ExApp.Range[ColumnaNombre(IniCol + 2) + IntToStr(IniFila + recFila)] := zDatos.FieldByName('Folio').AsString;
          ExApp.Range[ColumnaNombre(IniCol + 2) + IntToStr(IniFila + recFila)+ ':' + ColumnaNombre(IniCol+2) + IntToStr(IniFila + recFila+1)].mergeCells := True;

          ExApp.Range[ColumnaNombre(IniCol + 3) + IntToStr(IniFila + recFila)] := zDatos.FieldByName('Telefono').AsString;
          ExApp.Range[ColumnaNombre(IniCol + 3) + IntToStr(IniFila + recFila)+ ':' + ColumnaNombre(IniCol+3) + IntToStr(IniFila + recFila+1)].mergeCells := True;

          ExApp.Range[ColumnaNombre(IniCol + 4) + IntToStr(IniFila + recFila)] := '';
          ExApp.Range[ColumnaNombre(IniCol + 4) + IntToStr(IniFila + recFila)+ ':' + ColumnaNombre(IniCol+4) + IntToStr(IniFila + recFila+1)].mergeCells := True;

          //Voltaje

          ExApp.Range[ColumnaNombre(IniCol + 5) + IntToStr(IniFila + recFila)] := 0;
          ExApp.Range[ColumnaNombre(IniCol + 5) + IntToStr(IniFila + recFila+1)] := 0;
          ExApp.Range[ColumnaNombre(IniCol + 6) + IntToStr(IniFila + recFila)] := 0;
          ExApp.Range[ColumnaNombre(IniCol + 6) + IntToStr(IniFila + recFila+1)] := 0;
          ExApp.Range[ColumnaNombre(IniCol + 7) + IntToStr(IniFila + recFila)] := 0;
          ExApp.Range[ColumnaNombre(IniCol + 7) + IntToStr(IniFila + recFila+1)] := 0;

          //Resistencia
          ExApp.Range[ColumnaNombre(IniCol + 8) + IntToStr(IniFila + recFila)] := 99;
          ExApp.Range[ColumnaNombre(IniCol + 8) + IntToStr(IniFila + recFila+1)] := 99;
          ExApp.Range[ColumnaNombre(IniCol + 9) + IntToStr(IniFila + recFila)] := 99;
          ExApp.Range[ColumnaNombre(IniCol + 9) + IntToStr(IniFila + recFila+1)] := 99;
          ExApp.Range[ColumnaNombre(IniCol + 10) + IntToStr(IniFila + recFila)] := 99;
          ExApp.Range[ColumnaNombre(IniCol + 10) + IntToStr(IniFila + recFila+1)] := 99;


          ExApp.Range[ColumnaNombre(IniCol + 16) + IntToStr(IniFila + recFila)] := 'PAR BUENO';
          ExApp.Range[ColumnaNombre(IniCol + 16) + IntToStr(IniFila + recFila)+ ':' + ColumnaNombre(IniCol+17) + IntToStr(IniFila + recFila)].mergeCells := True;
          ExApp.Range[ColumnaNombre(IniCol + 16) + IntToStr(IniFila + recFila+1)] := 'PAR BUENO';
          ExApp.Range[ColumnaNombre(IniCol + 16) + IntToStr(IniFila + recFila+1)+ ':' + ColumnaNombre(IniCol+17) + IntToStr(IniFila + recFila+1)].mergeCells := True;

          inc(RecFila,2);
          zDatos.Next;
        end;

        SetBorders(ExApp.Range['A4:Q'+inttostr((zDatos.RecordCount*2) +5)], xlThin, xlContinuous);

        //pie de pagina

        ExApp.Range['A'+ IntToStr(IniFila + recFila+2)+':' +'I' +IntToStr(IniFila + recFila+2)].select;
        ExApp.selection.Borders[xlDiagonalDown].lineStyle := xlNone;
        ExApp.selection.Borders[xlDiagonalUp].lineStyle := xlNone;
        ExApp.selection.Borders[xlEdgeLeft].lineStyle := xlNone;
        ExApp.selection.Borders[xlEdgeTop].lineStyle := xlNone;
        ExApp.selection.Borders[xlEdgeBottom].lineStyle := xlContinuous;
        ExApp.selection.Borders[xlEdgeBottom].weight := xlThin;

        ExApp.selection.Borders[xlEdgeRight].lineStyle := xlNone;
        ExApp.selection.Borders[xlInsideVertical].lineStyle := xlNone;
        ExApp.selection.Borders[xlInsideHorizontal].lineStyle := xlNone;

        ExApp.Range['A'+ IntToStr(IniFila + recFila+3)] := 'NOMBRE Y FIRMA DE QUIEN RECIBE Y AUTORIZA LOS TRABAJOS EJECUTADOS (TELMEX)';
        ExApp.Range['A'+ IntToStr(IniFila + recFila+3) + ':I'+ IntToStr(IniFila + recFila+3)].mergeCells := True;

        FormatoTexto(ExApp.Range['A'+ IntToStr(IniFila + recFila+3)],'Arial', 9, False, True);

        ExApp.Range['A'+ IntToStr(IniFila + recFila+5)+':' +'A' +IntToStr(IniFila + recFila+5)] := 'NOMBRE';
        ExApp.Range['B'+ IntToStr(IniFila + recFila+5)+':' +'G' +IntToStr(IniFila + recFila+5)].select;
        ExApp.Selection.mergeCells := True;

        ExApp.Range['H'+ IntToStr(IniFila + recFila+5)+':' +'I' +IntToStr(IniFila + recFila+5)].MergeCells := True;

        ExApp.Range['H'+ IntToStr(IniFila + recFila+5)+':' +'H' +IntToStr(IniFila + recFila+5)].MergeCells := True;
        ExApp.Range['A'+ IntToStr(IniFila + recFila+6)+':' +'A' +IntToStr(IniFila + recFila+6)] := 'PUESTO';
        ExApp.Range['B'+ IntToStr(IniFila + recFila+6)+':' +'E' +IntToStr(IniFila + recFila+6)].mergeCells := True;
        ExApp.Range['F'+ IntToStr(IniFila + recFila+6)+':' +'G' +IntToStr(IniFila + recFila+6)] := 'FECHA';
        ExApp.Range['F'+ IntToStr(IniFila + recFila+6)+':' +'G' +IntToStr(IniFila + recFila+6)].MergeCells := True;


        ExApp.Range['H'+ IntToStr(IniFila + recFila+6)+':' +'I' +IntToStr(IniFila + recFila+6)].MergeCells := True;

        SetBorders(ExApp.Range['A' + IntToStr(IniFila + recFila+5)+':' +'I' +IntToStr(IniFila + recFila+6)], xlThin, xlContinuous);
        FormatoTexto(ExApp.Range['A' + IntToStr(IniFila + recFila+5)+':' +'I' +IntToStr(IniFila + recFila+6)],'Arial', 11, True, True);


        //Segunda seccion de firmantes

        ExApp.Range['K'+ IntToStr(IniFila + recFila+5)+':' +'K' +IntToStr(IniFila + recFila+5)] := 'NOMBRE';
        ExApp.Range['L'+ IntToStr(IniFila + recFila+5)+':' +'O' +IntToStr(IniFila + recFila+5)].select;
        ExApp.Selection.mergeCells := True;

        ExApp.Range['P'+ IntToStr(IniFila + recFila+5)+':' +'Q' +IntToStr(IniFila + recFila+5)] := 'NO. EXP.';
        ExApp.Range['P'+ IntToStr(IniFila + recFila+5)+':' +'Q' +IntToStr(IniFila + recFila+5)].MergeCells := True;

        ExApp.Range['H'+ IntToStr(IniFila + recFila+5)+':' +'H' +IntToStr(IniFila + recFila+5)].MergeCells := True;
        ExApp.Range['K'+ IntToStr(IniFila + recFila+6)+':' +'K' +IntToStr(IniFila + recFila+6)] := 'PUESTO';
        ExApp.Range['L'+ IntToStr(IniFila + recFila+6)+':' +'O' +IntToStr(IniFila + recFila+6)].mergeCells := True;
        ExApp.Range['P'+ IntToStr(IniFila + recFila+6)+':' +'Q' +IntToStr(IniFila + recFila+6)] := 'FECHA';
        ExApp.Range['P'+ IntToStr(IniFila + recFila+6)+':' +'Q' +IntToStr(IniFila + recFila+6)].MergeCells := True;


        ExApp.Range['H'+ IntToStr(IniFila + recFila+6)+':' +'I' +IntToStr(IniFila + recFila+6)].MergeCells := True;

        SetBorders(ExApp.Range['k' + IntToStr(IniFila + recFila+5)+':' +'Q' +IntToStr(IniFila + recFila+6)], xlThin, xlContinuous);
        FormatoTexto(ExApp.Range['K' + IntToStr(IniFila + recFila+5)+':' +'Q' +IntToStr(IniFila + recFila+6)],'Arial', 11, True, True);

        ExApp.ActiveSheet.name := 'PAR�METROS EL�CTRICOS';
        ExApp.ActiveWindow.DisplayGridlines := False;
      finally
        Screen.Cursor := Cursor;
      end;
    end;
  finally
    zDatos.Filtered := False;
  end;
end;

procedure TFrmMaterialesxFolios.btnRefreshClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;
    if zMaterial.Active then
      zMaterial.Refresh
    else
      zMaterial.Open;
  finally
    Screen.Cursor := Cursor;
  end;
end;

constructor TFrmMaterialesxFolios.CreateByParam(Personal: integer; Modal: Boolean = False);
begin
  if Not Modal then
  begin
    IdPersonal := Personal;
  end;
end;

procedure TFrmMaterialesxFolios.cxDateDesdePropertiesChange(Sender: TObject);
begin
  cxDateDesde.Date := StartOfTheWeek(cxDateDesde.Date);
  cxDateHasta.Date := EndOfTheWeek(cxDateDesde.Date);
end;

procedure TFrmMaterialesxFolios.cxGridDatosStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  try
    if VarTostr(ARecord.values[cxColestatusCobro.Index]) = 'Pendiente' then
      AStyle := cxstylPendiente
    else
      AStyle := cxstylAutorizada;
  except
    ;
  end;
end;

procedure TFrmMaterialesxFolios.cxGridGralActiveTabChanged(
  Sender: TcxCustomGrid; ALevel: TcxGridLevel);
var
   Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      cxChartProductividad.DataController.DataSource := Nil;
      cxGridDatos.DataController.DataSource := nil;
      Screen.Cursor := CrAppstart;
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
    finally
      if cxGridGral.ActiveLevel = cxLvlGrafico then
      begin
        cxChartProductividad.DataController.DataSource := dsDatos;
      end
      else
      begin
        cxGridDatos.DataController.DataSource := dsDatos;
      end;
      Screen.Cursor := Cursor;
    end;
  Except
    raise;
  end;
end;

procedure TFrmMaterialesxFolios.cxGridMaterialesEditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
  begin
    zUptMateriales.Params.ParamByName('Cantidad').AsFloat := zMaterial.FieldByName('Cantidad').AsFloat;
    zUptMateriales.Params.ParamByName('idMaterialxfolio').AsInteger := zMaterial.FieldByName('idMaterialxfolio').AsInteger;

    if not zMaterial.Connection.Ping then
      zMaterial.Connection.Reconnect;

    zUptMateriales.SQL[ukModify];

    if Not zMaterial.Eof then
      zMaterial.Next
    else
      zMaterial.First;

  end;
end;

procedure TFrmMaterialesxFolios.dxBButtonBuscarClick(Sender: TObject);
begin
  cxgridDatos.FilterRow.Visible := Not cxGridDatos.FilterRow.Visible;
end;

procedure TFrmMaterialesxFolios.dxBButtonEditarClick(Sender: TObject);
begin
  try
    if zDatos.FieldByName('EstatusVale').AsString <> 'Abierto' then
      raise eWarning.Create('No est� permitido editar una orden cuyo vale ya ha sido cerrado.');

    if zDatos.FieldByName('EstatusCobro').AsString = 'Autorizado' then
      raise eWarning.Create('No est� permitido editar una orden que ya est� autorizada.');

    try
      application.CreateForm(TFrmCapturaFolio, FrmCapturaFolio);
      FrmCapturaFolio.lyEstatus.Enabled := (zmaterial.RecordCount = 0);
      FrmCapturaFolio.IdFolio := zDatos.FieldByName('IdFolio').AsInteger;
      if zDatos.FieldByName('TipoInstalacion').AsString = 'FO' then
        FrmCapturaFolio.TipoInstalacion := 2;          
        
      FrmCapturaFolio.IdPersonal := zPersonal.FieldByName('IdPersonal').AsInteger;
      If FrmCapturaFolio.ShowModal <> mrCancel then
        dxButtonActualizar.Click;
    finally

    end;
  Except
    on e: eWarning do
    begin
      MsgBox.ShowModal('Validaci�n.',e.Message, cmtWarning, [cmbOK]);
    end;
  end;
end;

procedure TFrmMaterialesxFolios.dxBButtonEliminarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;

    if zDatos.FieldByName('Estatus').AsString <> 'Liquidada' then
      raise eWarning.Create('No puedes asignar materiales a folios con estatus diferente de "Liquidada"');

    if zDatos.FieldByName('EstatusCobro').AsString = 'Autorizado' then
      raise eWarning.Create('No est� permitido editar una orden que ya est� autorizada.');

    try
      Screen.Cursor := crAppStart;
      if (MsgBox.ShowModal('Confirmar acci�n.', '�Est� seguro que deseas eliminar este folio [' + zDatos.FieldByName('Folio').AsString + '] juntos con los materiales asignados?', cmtInformation, [cMbDelete, cMbNo]) = mrYes) then
      begin
        zDeleteFolio.Active := False;
        zDeleteFolio.Connection.StartTransaction;
        zDeleteFolio.SQL.Text := 'DELETE FROM mt_materialxfolio WHERE IdFolio = :IdFolio';

        zDeleteFolio.ParamByName('IdFolio').AsInteger := zDatos.FieldByName('IdFolio').AsInteger;
        zDeleteFolio.ExecSQL;

        zDeleteFolio.SQL.Text := 'DELETE FROM mt_foliosxtecnicos WHERE IdFolio = :IdFolio';
        zDeleteFolio.ParamByName('IdFolio').AsInteger := zDatos.FieldByName('IdFolio').AsInteger;
        zDeleteFolio.ExecSQL;


        zDeleteFolio.Connection.Commit;
      end;
    finally
      If zDeleteFolio.Connection.InTransaction then
        zDeleteFolio.Connection.Rollback;

      Screen.Cursor := Cursor;
    end;
  Except
    on e: eWarning do
    begin
      MsgBox.ShowModal('Validaci�n.',e.Message, cmtWarning, [cmbOK]);
    end;

    on e: Exception do
    begin
      If zDeleteFolio.Connection.InTransaction then
        zDeleteFolio.Connection.Rollback;
      MsgBox.ShowModal('Error.', 'Ha ocurrido el siguiente error: ' + e.Message, cmtError, [cmbOK]);
      PostMessage(self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMaterialesxFolios.dxButtonActualizarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      try
        zDatos.AfterScroll := Nil;

        if zDatos.Active then
          zDatos.Refresh
        else
          zDatos.Open;
      finally
        zDatos.AfterScroll := zDatosAfterScroll;
        if zDatos.Active then
          zdatos.first;
      end;

    finally
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

procedure TFrmMaterialesxFolios.dxButtonCObreClick(Sender: TObject);
begin
  application.CreateForm(TFrmCapturaFolio, FrmCapturaFolio);
  FrmCapturaFolio.IdFolio := -9;
  FrmCapturaFolio.IdPersonal := zPersonal.FieldByName('IdPersonal').AsInteger;

  If FrmCapturaFolio.ShowModal <> mrCancel then
    dxButtonActualizar.Click;
end;

procedure TFrmMaterialesxFolios.dxButtonExportarClick(Sender: TObject);
Var
  cursor: TCursor;
  Continuar: Boolean;
  Rango: Variant;
  zMat: TZQuery;
  iniFila, iniCol, recFila, recCol, i: Integer;
  ListaMaterial: TStringList;
begin
  try
    zDatos.Filtered := False;
    zDatos.Filter := 'Estatus=' + QuotedStr('Liquidada');
    zDatos.Filtered := True;

    Try
      Continuar     := True;
      ExApp := CreateOleObject('Excel.Application');
      ExApp.Visible := True;
      ExApp.DisplayAlerts := False;
      ExApp.Workbooks.Add;
    Except
      on e:Exception do
      begin
        Continuar := False;
        msgBox.ShowModal('Ha ocurrido un error.','Al parecer no el equipo no tiene instalado Microsoft Excel, Contacte a su administrador de sistema para poder utilizar esta caracter�stica', cmtError, [cmbOK]);
      end;
    End;

    //Si no se v� al chorizo, continuar
    if Continuar then
    begin
      //encabezado y datos generales
      ExApp.Range['A2'] := 'EXP.';
      FormatoTexto(ExApp.Range['A2'], 'Arial Narrow', 11, True, True);

      ExApp.Range['B5:C5'] := 'DIVISION';
      ExApp.Range['B5:C5'].mergeCells := True;
      ExApp.Range['D5:E5'] := zDatos.FieldByName('Division').AsString;
      ExApp.Range['D5:E5'].mergeCells := True;

      ExApp.Range['B6:C6'] := 'AREA';
      ExApp.Range['B6:C6'].mergeCells := True;
      ExApp.Range['D6:E6'] := zDatos.FieldByName('Area').AsString;
      ExApp.Range['D6:E6'].mergeCells := True;

      ExApp.Range['B7:C7'] := 'CONTRATISTA';
      ExApp.Range['B7:C7'].mergeCells := True;
      ExApp.Range['D7:E7'] := zDatos.FieldByName('Contratista').AsString;
      ExApp.Range['D7:E7'].mergeCells := True;

      ExApp.Range['B9:C9'] := 'No. VALE';
      ExApp.Range['B9:C9'].mergeCells := True;
      ExApp.Range['D9:E9'] := zDatos.FieldByName('NoVale').AsString;
      ExApp.Range['D9:E9'].mergeCells := True;

      ExApp.Range['B10:C10'] := 'FECHA VALE';
      ExApp.Range['B10:C10'].mergeCells := True;
      ExApp.Range['D10:E10'] := zDatos.FieldByName('FechaVale').AsString;
      ExApp.Range['D10:E10'].mergeCells := True;

      ExApp.Range['B11:C11'] := 'DEL MES';
      ExApp.Range['B11:C11'].mergeCells := True;

      ExApp.Range['D11:E11'].mergeCells := True;

      SetBorders(Exapp.Range['B5:E7'], xlThin, xlContinuous);
      SetBorders(Exapp.Range['B9:E11'], xlThin, xlContinuous);

      ExApp.Range['C12'] := 'FOLIO';
      ExApp.Range['D12'] :=  zDatos.FieldByName('FoliOPrincipal').AsString;
      SetBorders(Exapp.Range['C12'], xlThin, xlContinuous);

      ExApp.Range['A13'] := 'NO.';
      ExApp.Range['B13'] := 'FOLIO';
      ExApp.Range['C13'] := 'TELEFONO';
      ExApp.Range['D13'] := 'DIRECCION';
      ExApp.Range['E13'] := 'PPRINC';
      ExApp.Range['F13'] := 'PSEC';

      Rango := EXApp.Range['A1:F13'];
      FormatoTexto(Rango, 'Arial Narrow', 10, True, True);

      //Esto es para que no me desmadre el formato de principal y secundario
      ExApp.Columns['E:F'].NumberFormat := '@';


      Cursor := Screen.Cursor;
      try
        Screen.Cursor := crAppStart;

        iniFila := 12;
        InicOl := 7;
        recFila := 0;
        recCol := 0;

        //UNiverso de materiales utilizados en la semana
        if not FiltrarDataset(zUMateriales, 'IdPersonal,Desde,Hasta', [intTostr(Idpersonal), FechaSQl(cxDateDesde.Date), FechaSQL(cxDateHasta.Date)]) then
          raise Exception.Create(pErrorFiltrar + '[mt_foliosxtecnicos]');

        if zUMateriales.Active then
          zUMateriales.Refresh
        else
          zUMateriales.Open;

        zUMateriales.First;
        while not zUMateriales.Eof do
        begin
          //Material
          ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(1)] := zUMateriales.FieldByName('Material').AsString;
          ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(1)].mergeCells := True;
          ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(1)].Orientation := 90;
          FormatoTexto(ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(1)], 'Arial Narrow', 10, true, False);

          //Unidad Medida
          ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila+1)] := zUMateriales.FieldByName('Unidad').AsString;
          FormatoTexto(ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila+1)], 'Arial Narrow', 9, true, True);

          inc(RecCol);
          zUMateriales.Next;
        end;
        //Bordes de Materiales
        SetBorders(ExApp.Range[ColumnaNombre(IniCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol-1) + IntToStr(1)], xlThin, xlContinuous);

        //Agregando folios de la semana
        iniFila := 14;
        InicOl := 0;
        recFila := 0;

        zDatos.First;
        while Not zDatos.Eof do
        begin
          ExApp.Range[ColumnaNombre(IniCol + 1) + IntToStr(IniFila + recFila)] := zDatos.recNo;
          ExApp.Range[ColumnaNombre(IniCol + 2) + IntToStr(IniFila + recFila)] := zDatos.FieldByName('Folio').AsString;
          ExApp.Range[ColumnaNombre(IniCol + 3) + IntToStr(IniFila + recFila)] := zDatos.FieldByName('Telefono').AsString;
          ExApp.Range[ColumnaNombre(IniCol + 4) + IntToStr(IniFila + recFila)] := zDatos.FieldByName('Direccion').AsString;
          ExApp.Range[ColumnaNombre(IniCol + 5) + IntToStr(IniFila + recFila)].numberFormat := '@';
          ExApp.Range[ColumnaNombre(IniCol + 5) + IntToStr(IniFila + recFila)].FormulaR1C1 := Chr(39) +  zDatos.FieldByName('Principal').AsString ;
          ExApp.Range[ColumnaNombre(IniCol + 6) + IntToStr(IniFila + recFila)].NumberFormat := '@';
          ExApp.Range[ColumnaNombre(IniCol + 6) + IntToStr(IniFila + recFila)].FormulaR1C1 := Chr(39)  + zDatos.FieldByName('Secundario').AsString + ' ';

          recCol := 0;
          zUMateriales.First;
          while not zUMateriales.Eof do
          begin
            //Cantidad de Material
            try
              //Filtrar por material seleccionado en el universo de materiales
              zMaterial.Filtered := False;
              zMaterial.Filter := 'IdMaterial=' + zUMateriales.FieldByName('IdMaterial').AsString;
              zMaterial.Filtered := True;

              zMaterial.First;
              while not zMaterial.Eof do
              begin
                //Esto lo puse por si el ususario la cagotea se suman la cantidades que sean del mismo material
                ExApp.Range[ColumnaNombre(7 + recCol) + IntToStr(IniFila + RecFila)].value :=  ExApp.Range[ColumnaNombre(7 + recCol) + IntToStr(IniFila + RecFila)].value +
                                                                                               zMaterial.FieldByName('Cantidad').AsString;
                zMaterial.Next;
              end;

            finally
              zMaterial.Filtered := False;
            end;
            inc(RecCol);
            zUMateriales.Next;
          end;
          inc(RecFila);
          zDatos.Next;
        end;

        //Colocar las Formulas Sumatoria
        ExApp.Range['F'+intToStr(IniFila +RecFila)] := 'TOTAL';
        for i := 0 to zUMateriales.RecordCount-1 do
        begin
          //=SUM(R[-5]C:R[-1]C)
          ExApp.Range[ColumnaNombre(7+i) +intToStr(IniFila + RecFila)].FormulaR1C1 := '=SUM(R[-' + intToStr(zDatos.RecordCount) + ']C:R[-1]C)'
        end;

        //Borders a cuerpo del excel
        Rango := ExApp.Range[ColumnaNombre(IniCol + 1) + IntToStr(IniFila-1) + ':' + ColumnaNombre(6 + zUMateriales.RecordCount) + IntToStr(IniFila + recFila)];
        SetBorders(Rango, xlThin, xlContinuous);
        FormatoTexto(Rango, 'Arial Narrow', 10, True, True);

        //Firmantes
        Rango := ExApp.Range['D' + IntToStr(IniFila+recFila+2) + ':' + 'G' + IntToStr(IniFila + recFila + 6)];
        Rango.MergeCells := True;
        Rango := ExApp.Range['D' + IntToStr(IniFila+recFila + 7) + ':' + 'G' + IntToStr(IniFila + recFila + 7)];
        Rango.MergeCells := True;
        Rango.Value := 'NOMBRE Y FIRMA';
        Rango := ExApp.Range['D' + IntToStr(IniFila+recFila+2) + ':' + 'G' + IntToStr(IniFila + recFila + 7)];
        FormatoTexto(Rango, 'Arial Narrow', 10, True);
        SetBorders(Rango, xlThin, xlContinuous);
        Rango := ExApp.Range['D' + IntToStr(IniFila+recFila + 9) + ':' + 'G' + IntToStr(IniFila + recFila + 9)];
        Rango.MergeCells := True;
        Rango.Value := 'CONTRATISTA';
        FormatoTexto(Rango, 'Arial Narrow', 10, True, True);

        Rango := ExApp.Range['M' + IntToStr(IniFila+recFila+2) + ':' + 'R' + IntToStr(IniFila + recFila + 6)];
        Rango.MergeCells := True;
        Rango := ExApp.Range['M' + IntToStr(IniFila+recFila + 7) + ':' + 'R' + IntToStr(IniFila + recFila + 7)];
        Rango.MergeCells := True;
        Rango.Value := 'NOMBRE Y FIRMA';
        Rango := ExApp.Range['M' + IntToStr(IniFila+recFila+2) + ':' + 'R' + IntToStr(IniFila + recFila + 7)];
        FormatoTexto(Rango, 'Arial Narrow', 10, True);
        SetBorders(Rango, xlThin, xlContinuous);
        Rango := ExApp.Range['M' + IntToStr(IniFila+recFila + 9) + ':' + 'R' + IntToStr(IniFila + recFila + 9)];
        Rango.MergeCells := True;
        Rango.Value := 'SUPERVISOR';
        FormatoTexto(Rango, 'Arial Narrow', 10, True, True);

        Exapp.range['G:Z'].Columnwidth := 6;

        ExApp.ActiveSheet.name := 'MATERIALES';
        ExApp.ActiveWindow.DisplayGridlines := False;
      finally
        Screen.Cursor := Cursor;
      end;
    end;
  finally
    zDatos.Filtered := False;
  end;
end;

procedure TFrmMaterialesxFolios.dxButtonFIBRaClick(Sender: TObject);
begin
  application.CreateForm(TFrmCapturaFolio, FrmCapturaFolio);
  FrmCapturaFolio.IdFolio := -9;
  FrmCapturaFolio.TipoInstalacion := 2;
  FrmCapturaFolio.IdPersonal := zPersonal.FieldByName('IdPersonal').AsInteger;

  If FrmCapturaFolio.ShowModal <> mrCancel then
    dxButtonActualizar.Click;
end;

procedure TFrmMaterialesxFolios.dxButtonNuevoClick(Sender: TObject);
begin
  try

  finally

  end;
end;

procedure TFrmMaterialesxFolios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //self.Destroy;
  action := Cafree;
  //self.destroy;
end;

procedure TFrmMaterialesxFolios.FormCreate(Sender: TObject);
begin
  if NOT AsignarSQL(zPersonal, 'master_personal', pReadOnly) then
    raise Exception.Create(pErrorConsulta + '[master_personal]');

  if NOT AsignarSQL(zDatos, 'mt_foliosxtecnicos', pReadOnly) then
    raise Exception.Create(pErrorConsulta + '[mt_foliosxtecnicos]');

  if NOT AsignarSQL(zMaterial, 'mt_materialxfolio', pReadOnly) then
    raise Exception.Create(pErrorConsulta + '[mt_materialxfolio]');

  if NOT AsignarSQL(zUMateriales, 'mt_universomateriales', pReadOnly) then
    raise Exception.Create(pErrorConsulta + '[mt_universomateriales]');

  if NOT AsignarSQL(zConceptos, 'mt_conceptos_ot', pReadOnly) then
    raise Exception.Create(pErrorConsulta + '[mt_conceptos_ot]');


end;

procedure TFrmMaterialesxFolios.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      LeerPermisos(self.Name,insert,edit,delete);

      cxGridGral.OnActiveTabChanged := nil;

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

      try
        zDatos.AfterScroll := Nil;

        if zDatos.Active then
          zDatos.Refresh
        else
          zDatos.Open;
      finally
        zDatos.AfterScroll := zDatosAfterScroll;
        if zDatos.Active then
          zdatos.first;
      end;

      self.Caption := 'Actividades: [' + zPersonal.FieldByName('CodigoPersonal').AsString + ']';
      ActionButtons;

    finally
      cxGridGral.OnActiveTabChanged := cxGridGralActiveTabChanged;
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

procedure TFrmMaterialesxFolios.zDatosAfterScroll(DataSet: TDataSet);
begin
  try
    cxGridMateriales.OnEditKeyDown := nil;
    zMaterial.UpdateObject := nil;


    if not FiltrarDataset(zMaterial, 'IdFolio', [zDatos.FieldByName('IdFOlio').AsString]) then
      raise Exception.Create(pErrorFiltrar + '[mt_materialxfolio]');

    if zMaterial.Active then
      zMaterial.Refresh
    else
      zMaterial.Open;


    dxbrMateriales.Visible := (Not (zDatos.Active and (zDatos.FieldByName('EstatusVale').AsString <> 'Abierto')));
    cxColCantidad.Properties.ReadOnly :=  (zDatos.Active and (zDatos.FieldByName('EstatusVale').AsString <> 'Abierto')) or (zDatos.Active and (zDatos.FieldByName('EstatusCobro').AsString = 'Autorizado'));
    LblLeyendaVale.Visible :=   (zDatos.Active and (zDatos.FieldByName('EstatusVale').AsString <> 'Abierto'));


  finally
    zMaterial.UpdateObject := zUptMateriales;
    cxGridMateriales.OnEditKeyDown := cxGridMaterialesEditKeyDown;
  end;
end;

end.

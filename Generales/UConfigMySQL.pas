unit UConfigMySQL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxMaskEdit, cxSpinEdit,
  cxTextEdit, Menus, StdCtrls, cxButtons, ExtCtrls, UnitRegistroWindows, UConection,
  cxDropDownEdit, dxGDIPlusClasses, cxImage, cxMemo, UMsgBox, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxClasses, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmConfigMySQL = class(TForm)
    dxLayControl1Group_Root: TdxLayoutGroup;
    dxLayControl1: TdxLayoutControl;
    cxTextUsuario: TcxTextEdit;
    dxLayitemLayControl1Item1: TdxLayoutItem;
    cxTextPassword: TcxTextEdit;
    dxLayitemLayControl1Item11: TdxLayoutItem;
    cxSpinPuerto: TcxSpinEdit;
    dxLayitemLayControl1Item12: TdxLayoutItem;
    cxTextProtocolo: TcxTextEdit;
    dxLayitemLayControl1Item13: TdxLayoutItem;
    pnl1: TPanel;
    btnGuardar: TcxButton;
    btnCancelar: TcxButton;
    cxTextHost: TcxTextEdit;
    dxlytmLayControl1Item2: TdxLayoutItem;
    pnl2: TPanel;
    cxImage1: TcxImage;
    cxmDescripcion: TcxMemo;
    dxlytmLayControl1Item3: TdxLayoutItem;
    cxImage2: TcxImage;
    zBaseDatos: TZQuery;
    dsBaseDatos: TDataSource;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxTextNombreCon: TcxTextEdit;
    dxlytmLayControl1Item4: TdxLayoutItem;
    btnTest: TcxButton;
    cbbBd: TcxLookupComboBox;
    dxlytmLayControl1Item1: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure cxSpinPuertoEnter(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
    procedure cxTextNombreConKeyPress(Sender: TObject; var Key: Char);
    procedure cbbBdPropertiesInitPopup(Sender: TObject);
  private
    { Private declarations }
    procedure MostrarDb;
    procedure GuardarEnRegistro;
    Function RealizarConexion(IgnoraError: Boolean = False): Boolean;
  public
    Host, OldHost: string;
    { Public declarations }
  end;

var
  FrmConfigMySQL: TFrmConfigMySQL;

implementation

{$R *.dfm}

procedure TFrmConfigMySQL.btnGuardarClick(Sender: TObject);
var
  Existe: Boolean;
begin
  try
    Host := cxTextNombreCOn.Text;

    if Length(Trim(cxTextUsuario.Text)) = 0 then
    begin
      if cxTextUsuario.CanFocus then
        cxTextUsuario.SetFocus;

      raise eWarning.Create('Escribe el usuario de tu MySQL.');
    end;

    if Length(Trim(cxSpinPuerto.Text)) = 0 then
    begin
      if cxSpinPuerto.CanFocus then
        cxSpinPuerto.SetFocus;

      raise eWarning.Create('Escribe el puerto de tu MySQL.');
    end;

    if Length(Trim(cxTextHost.Text)) = 0 then
    begin
      if cxTextHost.CanFocus then
        cxTextHost.SetFocus;

      raise eWarning.Create('Escribe la direcci�n Ip a la que deseas conectarte.');
    end;

    if Length(Trim(cbbBd.Text)) = 0 then
    begin
      if cbbBd.CanFocus then
        cbbBd.SetFocus;

      raise eWarning.Create('Selecciona la base de datos a la que deseas ingresar.');
    end;

    if OldHost = Host then
      //Si estamos sobre el mismo host no validar la sobrescritura del registro en windows
      GuardarEnRegistro
    else //Si no, hay que validar y avisarle al chango que va a remplazar cambios
    begin
      Existe := False;
      VarRegistry('\Settings','\' + Host + '', 'MysqlUser', Existe);
      if Existe then
      begin
        if MsgBox.ShowModal('Confirmaci�n.', 'La conexi�n que intentas registrar o editar ya se encuentra dada de alta, deseas sobreescribir modificaciones?', cmtConfirmation, [cMbYes, cMbNo]) = mrYes   then
        begin
          GuardarEnRegistro;
        end
        else
          raise eException.Create('***');
      end
      else
        GuardarEnRegistro;
    end;

    MsgBox.ShowModal('Informaci�n de Conexi�n guardada.','Se guard� la configuraci�n de conexi�n a la base de datos.', cmtConection, [cmbOK]);
    Self.Close;
  except
    on e: Eexception do
      ;
    on e: eWarning do
       MsgBox.ShowModal('Precauci�n',e.Message, cmtWarning, [cmbOK]);

    on e: Exception do
       MsgBox.ShowModal('Error',pMensajeError + e.Message, cmtError, [cmbOK]);
  end;
end;

procedure TFrmConfigMySQL.btnTestClick(Sender: TObject);
begin
  if RealizarConexion then
    MsgBox.ShowModal('Conexi�n exitosa.', 'Se ha realiz� exitosamente la conexi�n a la base de datos.', cmtConection, [cMbOK]);
end;

procedure TFrmConfigMySQL.cbbBdPropertiesInitPopup(Sender: TObject);
begin
  RealizarConexion;
end;

procedure TFrmConfigMySQL.cxSpinPuertoEnter(Sender: TObject);
begin
  if (cxSpinPuerto.Value = 0) or (cxSpinPuerto.Value = '') then
    cxSpinPuerto.Value := 3306;
end;

procedure TFrmConfigMySQL.cxTextNombreConKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not( key in ['a'..'z','A'..'Z','_','-', '0'..'9', '.',#8,#13,#127]) then
  begin
    key := #0;
    MsgBox.ShowModal('Informaci�n', 'Para este campo solo se permite los siguientes caracteres:'  + #13 + 'a..z, A..Z, _,-, 0..9, ., Retroceso, Enter y Suprimir', cmtInformation, [cMbOK]);
  end;
end;

procedure TFrmConfigMySQL.FormShow(Sender: TObject);
begin
  try
    try
      OldHost := Host;
      if Host = '' then
      begin
        cxTextNombreCon.Text := '';
        cxTextHost.Text := '';
        cxTextUsuario.Text := '';
        cxTextPassword.Text := '';
        cxSpinPuerto.Text := '';
        cxmDescripcion.Text := '';
        cbbBd.Text := '';
        cxTextProtocolo.Text := 'mysql-5';
      end
      else
      begin
        cxTextNombreCOn.Text := VarRegistry('\Settings','\' + Host + '', 'ConnectionName');
        cxTextHost.Text := VarRegistry('\Settings','\' + Host + '', 'Host');
        cxTextUsuario.Text := VarRegistry('\Settings','\' + Host + '', 'MysqlUser');
        cxTextPassword.Text := VarRegistry('\Settings','\' + Host + '', 'MysqlPass');
        cxSpinPuerto.Text := VarRegistry('\Settings','\' + Host  +'', 'MysqlPort');
        cxmDescripcion.Text := VarRegistry('\Settings','\' + Host + '', 'Description');
        RealizarConexion(True);
        cbbBd.Text := VarRegistry('\Settings','\' + Host + '', 'Database');
        cxTextProtocolo.Text := 'mysql-5';
      end;

      if cxTextNombreCon.CanFocus then
        cxTextNombreCon.SetFocus;
    finally
      AutoFocus(TForm(Self));
    end;
  except
    on e: Exception do
      MsgBox.ShowModal('Error',pMensajeError + e.Message, cmtError, [cmbOK]);
  end;
end;

procedure TFrmConfigMySQL.GuardarEnRegistro;
 var
  Lista: TStringList;
  i: Integer;
begin
  SetRegistry('\Settings','\' + cxTextNombreCOn.Text + '', 'ConnectionName', cxTextNombreCOn.Text);
  SetRegistry('\Settings','\' + cxTextNombreCOn.Text + '', 'MysqlUser', cxTextUsuario.Text);
  SetRegistry('\Settings','\' + cxTextNombreCOn.Text + '', 'MysqlPass', cxTextPassword.Text);
  SetRegistry('\Settings','\' + cxTextNombreCOn.Text + '', 'MysqlPort', cxSpinPuerto.Text);
  SetRegistry('\Settings','\' + cxTextNombreCOn.Text + '', 'MysqlProtocol', cxTextProtocolo.Text);
  SetRegistry('\Settings','\' + cxTextNombreCOn.Text + '', 'Host', cxTextHost.Text);
  SetRegistry('\Settings','\' + cxTextNombreCOn.Text + '', 'Database', cbbBd.Text);
  SetRegistry('\Settings','\' + cxTextNombreCOn.Text + '', 'Description', cxmDescripcion.Text);
  SetRegistry('\Settings','\' + cxTextNombreCOn.Text + '', 'Default', 'False');

  //Establecer como predeterminada
  i := 0;
  Lista := LeerGrupos('\Settings');
  while i < Lista.Count do
  begin
    if cxTextNombreCOn.Text= Lista[i] then
    begin
      SetRegistry('\Settings','\' + Lista[i] + '', 'Default', 'True');
    end
    else
      SetRegistry('\Settings','\' + Lista[i] + '', 'Default', 'False');

    inc(i);
  end;

end;

procedure TFrmConfigMySQL.MostrarDb;
begin
  zBaseDatos.Active := False;
  zBaseDatos.Connection := UDMConection.conBD;
  zBaseDatos.SQL.Text := 'Show Databases;';
  zBaseDatos.Open;
end;

Function TFrmConfigMySQL.RealizarConexion(IgnoraError: Boolean = False):Boolean;
var
  Cursor : TCursor;
  Existe, HuboError: Boolean;
  ASkinName: string;
begin
  try
    Result := False;
    Cursor := Screen.Cursor;

     if Length(Trim(cxTextUsuario.Text)) = 0 then
    begin
      if cxTextUsuario.CanFocus then
        cxTextUsuario.SetFocus;

      raise eWarning.Create('Escribe el usuario de tu MySQL.');
    end;

    if Length(Trim(cxSpinPuerto.Text)) = 0 then
    begin
      if cxSpinPuerto.CanFocus then
        cxSpinPuerto.SetFocus;

      raise eWarning.Create('Escribe el puerto de tu MySQL.');
    end;

    if Length(Trim(cxTextHost.Text)) = 0 then
    begin
      if cxTextHost.CanFocus then
        cxTextHost.SetFocus;

      raise eWarning.Create('Escribe la direcci�n Ip a la que deseas conectarte.');
    end;

    try
      Result := False;
      HuboError := False;
      Screen.Cursor := crAppStart;
      try
        if UDMConection.conBD.Connected then
          UDMConection.conBD.Disconnect;

        with UDMConection.conBD do
        begin
          Database := '';
          HostName := cxTextHost.Text;
          User := cxTextUsuario.Text;
          Password := cxTextPassword.Text;
          Port := (cxSpinPuerto.Value);
          Connect;
        end;
      except
        on e: exception do
          if e.message <> '***' then
          begin
            HuboError := True;
            if Not IgnoraError then
              msgBox.ShowModal('Error al conectar.','No se ha podido establecer la conexi�n debido al siguiente error: ' + e.Message, cmtConection, [cmbOK]);
          end;
      end;
      if not HuboError then
      begin
        MostrarDb;
        Result := True;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: eWarning do
       MsgBox.ShowModal('Precauci�n',e.Message, cmtWarning, [cmbOK]);

    on e: exception do
      if e.message <> '***' then
        MessageDlg(pMensajeError + e.Message, mtError, [mbOK], 0);
  end;
end;

end.

program NoilFacturacion;

uses
  Forms,
  UConection in 'UConection.pas' {UDMConection: TDataModule},
  ULogin in 'Generales\ULogin.pas' {FrmLogin},
  UConsultasSQL in 'Generales\UConsultasSQL.pas' {FrmConsultasSQL},
  UnitRegistroWindows in 'Generales\UnitRegistroWindows.pas',
  UConfigMySQL in 'Generales\UConfigMySQL.pas' {FrmConfigMySQL},
  UFrmCatalogo in 'Generales\UFrmCatalogo.pas' {FrmCatalogo},
  UFrmMiniCatalogo in 'Generales\UFrmMiniCatalogo.pas' {FrmMiniCatalogo},
  UFrmUsuarios in 'Facturacion\UFrmUsuarios.pas' {FrmUsuarios},
  UFrmInicio in 'UFrmInicio.pas' {FrmInicio},
  UFrmCatalogoClientes in 'Facturacion\UFrmCatalogoClientes.pas' {frmCatalogoClientes},
  UFrmPais in 'Generales\UFrmPais.pas' {FrmPais},
  UFrmCiudad in 'Generales\UFrmCiudad.pas' {FrmCiudad},
  UFrmEstado in 'Generales\UFrmEstado.pas' {FrmEstado},
  UFrmMonedas in 'Generales\UFrmMonedas.pas' {FrmMonedas},
  UFrmEmpresas in 'Generales\UFrmEmpresas.pas' {FrmEmpresas},
  UFrmCondicionPago in 'Facturacion\UFrmCondicionPago.pas' {FrmCondicionPago},
  UFrmFormaPago in 'Facturacion\UFrmFormaPago.pas' {FrmFormaPago},
  UFrmGiroEmpresa in 'Generales\UFrmGiroEmpresa.pas' {FrmGiroEmpresa},
  UFrmUnidadMedida in 'Generales\UFrmUnidadMedida.pas' {FrmUnidadMedida},
  UFrmCatalogoProveedores in 'Facturacion\UFrmCatalogoProveedores.pas' {FrmCatalogoProveedores},
  UFrmAbrirEmpresa in 'Generales\UFrmAbrirEmpresa.pas' {FrmAbrirEmpresa},
  UFrmSplash in 'UFrmSplash.pas' {FrmSplash},
  UFrmServicio in 'Facturacion\UFrmServicio.pas' {FrmServicio},
  UFrmFacturas in 'Facturacion\UFrmFacturas.pas' {FrmFacturas},
  UMsgBox in 'Generales\UMsgBox.pas' {MsgBox},
  UHostManager in 'Generales\UHostManager.pas' {FrmHostManager},
  UFrmUsuario in 'UFrmUsuario.pas' {FrmUsuario},
  UFrmBancos in 'Generales\UFrmBancos.pas' {FrmBancos},
  UFrmAEmpresas in 'Generales\UFrmAEmpresas.pas' {FrmAEmpresas},
  NewFactura in 'Facturacion\NewFactura.pas' {FrmNewFactura},
  UFrmCatalogoImpuestos in 'Facturacion\UFrmCatalogoImpuestos.pas' {FrmCatalogoImpuestos},
  UWebBrowser in 'Generales\UWebBrowser.pas' {FrmWebBrowser},
  UCreadorFormulas in 'Generales\UCreadorFormulas.pas' {Form1},
  CFDI in 'PFE\CFDI.pas',
  PFacturaElectronica in 'PFE\PFacturaElectronica.pas',
  PFacturaElectronica_PAC in 'PFE\PFacturaElectronica_PAC.pas',
  PFacturaElectronica_Reglamentaciones in 'PFE\PFacturaElectronica_Reglamentaciones.pas',
  PACFo in 'PFE\PAC\FO\PACFo.pas',
  wsFO in 'PFE\PAC\FO\wsFO.pas',
  ClaseCertificadoSellos in 'PFE\GeneradorSello\ClaseCertificadoSellos.pas',
  ClaseOpenSSL in 'PFE\GeneradorSello\ClaseOpenSSL.pas',
  libeay32 in 'PFE\GeneradorSello\libeay32.pas',
  LibEay32Plus in 'PFE\GeneradorSello\LibEay32Plus.pas',
  OpenSSLUtils in 'PFE\GeneradorSello\OpenSSLUtils.pas',
  SelloDigital in 'PFE\GeneradorSello\SelloDigital.pas',
  GeneradorCBB in 'PFE\GeneradorCBB\GeneradorCBB.pas',
  QuricolAPI in 'PFE\GeneradorCBB\QuricolAPI.pas',
  QuricolCode in 'PFE\GeneradorCBB\QuricolCode.pas',
  UFrmParcialidad in 'Generales\UFrmParcialidad.pas' {FrmParcialidad},
  Progreso in 'Generales\Progreso.pas' {FrmProgreso},
  UFrmEnviarCorreo in 'Generales\UFrmEnviarCorreo.pas' {FrmEnviarCorreo},
  UFrmConfigCorreo in 'Generales\UFrmConfigCorreo.pas' {FrmConfigCorreo},
  UFrmImportarNomina in 'Nomina\UFrmImportarNomina.pas' {FrmImportarNomina},
  UFrmCuentaBancaria in 'Generales\UFrmCuentaBancaria.pas' {FrmCuentaBancaria},
  UFrmMovimientos in 'Inventarios\UFrmMovimientos.pas' {FrmMovimientos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Noil � Facturas';
  Application.CreateForm(TUDMConection, UDMConection);
  Application.CreateForm(TFrmInicio, FrmInicio);
  Application.CreateForm(TFrmSplash, FrmSplash);
  Application.CreateForm(TMsgBox, MsgBox);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrmMovimientos, FrmMovimientos);
  Application.Run;
end.

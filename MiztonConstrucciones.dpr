program MiztonConstrucciones;

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
  UFrmPais in 'Generales\UFrmPais.pas' {FrmPais},
  UFrmCiudad in 'Generales\UFrmCiudad.pas' {FrmCiudad},
  UFrmEstado in 'Generales\UFrmEstado.pas' {FrmEstado},
  UFrmMonedas in 'Generales\UFrmMonedas.pas' {FrmMonedas},
  UFrmEmpresas in 'Generales\UFrmEmpresas.pas' {FrmEmpresas},
  UFrmUnidadMedida in 'Generales\UFrmUnidadMedida.pas' {FrmUnidadMedida},
  UFrmAbrirEmpresa in 'Generales\UFrmAbrirEmpresa.pas' {FrmAbrirEmpresa},
  UFrmSplash in 'UFrmSplash.pas' {FrmSplash},
  UMsgBox in 'Generales\UMsgBox.pas' {MsgBox},
  UHostManager in 'Generales\UHostManager.pas' {FrmHostManager},
  UFrmUsuario in 'UFrmUsuario.pas' {FrmUsuario},
  UFrmAEmpresas in 'Generales\UFrmAEmpresas.pas' {FrmAEmpresas},
  UFrmEnviarCorreo in 'Generales\UFrmEnviarCorreo.pas' {FrmEnviarCorreo},
  UFrmConfigCorreo in 'Generales\UFrmConfigCorreo.pas' {FrmConfigCorreo},
  wsFO in 'PFE\PAC\FO\wsFO.pas',
  CFDI in 'PFE\CFDI.pas',
  PFacturaElectronica in 'PFE\PFacturaElectronica.pas',
  PFacturaElectronica_PAC in 'PFE\PFacturaElectronica_PAC.pas',
  PFacturaElectronica_Reglamentaciones in 'PFE\PFacturaElectronica_Reglamentaciones.pas',
  PACFo in 'PFE\PAC\FO\PACFo.pas',
  ClaseCertificadoSellos in 'PFE\GeneradorSello\ClaseCertificadoSellos.pas',
  ClaseOpenSSL in 'PFE\GeneradorSello\ClaseOpenSSL.pas',
  libeay32 in 'PFE\GeneradorSello\libeay32.pas',
  LibEay32Plus in 'PFE\GeneradorSello\LibEay32Plus.pas',
  OpenSSLUtils in 'PFE\GeneradorSello\OpenSSLUtils.pas',
  SelloDigital in 'PFE\GeneradorSello\SelloDigital.pas',
  GeneradorCBB in 'PFE\GeneradorCBB\GeneradorCBB.pas',
  QuricolAPI in 'PFE\GeneradorCBB\QuricolAPI.pas',
  QuricolCode in 'PFE\GeneradorCBB\QuricolCode.pas',
  PAddenda_PEP in 'PFE\Addendas\PAddenda_PEP.pas',
  UFrmPersonal in 'RecursosHumanos\UFrmPersonal.pas' {FrmPersonal},
  USelExpediente in 'USelExpediente.pas' {FrmSelExpediente},
  UFrmMaterialesxFolios in 'RecursosHumanos\UFrmMaterialesxFolios.pas' {FrmMaterialesxFolios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Mizton Construcciones � ';
  Application.CreateForm(TUDMConection, UDMConection);
  Application.CreateForm(TFrmInicio, FrmInicio);
  Application.CreateForm(TFrmSplash, FrmSplash);
  Application.CreateForm(TMsgBox, MsgBox);
  Application.Run;
end.

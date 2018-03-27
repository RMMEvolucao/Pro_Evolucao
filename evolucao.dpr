program evolucao;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {FormPrincipal},
  UFrmUsuarios in 'UFrmUsuarios.pas' {FormUsuarios},
  UfrmCadpadrao in 'UfrmCadpadrao.pas' {FormCadPadrao},
  UDmCadastro in 'UDmCadastro.pas' {DMcadastro: TDataModule},
  UFrmEmpresa in 'UFrmEmpresa.pas' {FormCadEmpresa},
  uFrmLogin in 'uFrmLogin.pas' {FormLogin},
  UFrmFornecedor in 'UFrmFornecedor.pas' {FormFornecedor},
  UFrmCategoria in 'UFrmCategoria.pas' {FormCategoria},
  UFrmFamProduto in 'UFrmFamProduto.pas' {FormFamProduto},
  UFrmCep in 'UFrmCep.pas' {FormCep},
  Vcl.Themes,
  Vcl.Styles,
  UFrmRepresentante in 'UFrmRepresentante.pas' {FormRepresentante},
  UFuncoes in 'UFuncoes.pas',
  UFrameCep in 'UFrameCep.pas' {FrameCep: TFrame},
  UFrmSplash in 'UFrmSplash.pas' {FormSplash},
  UFrmGruProduto in 'UFrmGruProduto.pas' {FormGruProduto},
  UFrmVendedor in 'UFrmVendedor.pas' {FormVendedor},
  UFrmMetaVen in 'UFrmMetaVen.pas' {FormMetaVenda},
  uFrmLocalCobranca in 'uFrmLocalCobranca.pas' {FormLocalCobranca},
  UFrmUsuario in 'UFrmUsuario.pas' {FormUsuario},
  UFrmGeneroItem in 'UFrmGeneroItem.pas' {FormGeneroItem},
  uFrmUnidadeProduto in 'uFrmUnidadeProduto.pas' {FormUnidadeProduto},
  UFrmEmbalagem in 'UFrmEmbalagem.pas' {FormEmbalagem},
  UFrmTransportadora in 'UFrmTransportadora.pas' {FormTrasportadora},
  UFrmSetor in 'UFrmSetor.pas' {FormCadSetor},
  UFrmFuncionario in 'UFrmFuncionario.pas' {FormFuncionario},
  UFrmPais in 'UFrmPais.pas' {FormPaises},
  UFrmUniFederativa in 'UFrmUniFederativa.pas' {FormUnidadeFederativa},
  UFrmCidades in 'UFrmCidades.pas' {FormCidades},
  uFrmClientes in 'uFrmClientes.pas' {FormClientes},
  UFrmCFOP in 'UFrmCFOP.pas' {FormCFOP},
  UFrmAlicota in 'UFrmAlicota.pas' {FormAliquota},
  UFrmCest in 'UFrmCest.pas' {FormCest},
  UFrmNBM in 'UFrmNBM.pas' {FormNBM},
  uFrmConsultaCest in 'uFrmConsultaCest.pas' {FormConsultaCest},
  uFrmCores in 'uFrmCores.pas' {FormCores},
  uFrmChqPdt in 'uFrmChqPdt.pas' {FormChqPdt},
  uFrmContasPagar in 'uFrmContasPagar.pas' {FormContasPagar},
  UFrmHistCons in 'UFrmHistCons.pas' {FormHistCons},
  UFrmConsultaCNPJ in 'UFrmConsultaCNPJ.pas' {FormConsultaCNPJ},
  uFrmContasReceber in 'uFrmContasReceber.pas' {FormContasReceber},
  UFrmCadProduto in 'UFrmCadProduto.pas' {FormCadProduto},
  UFrmRelCtarec in 'UFrmRelCtarec.pas' {FormRelatorioCTAREC},
  UFrmObsNTF in 'UFrmObsNTF.pas' {FormObsNTF},
  UFrmCadPlanoPagamento in 'UFrmCadPlanoPagamento.pas' {FormCadPlanoPagamento},
  UFrmCadRotas in 'UFrmCadRotas.pas' {FormCadRotas},
  UfrmTransChqBxparaPD in 'UfrmTransChqBxparaPD.pas' {FormTransBXparaPD},
  UfrmTransChqPDparaBX in 'UfrmTransChqPDparaBX.pas' {FormTransPDparaBX},
  UfrmTransChqBxparaDV in 'UfrmTransChqBxparaDV.pas' {FormTransBXparaDV},
  UFrmTransDVparaDB in 'UFrmTransDVparaDB.pas' {FormTransDVparaDB},
  UFrmTransPPparaDV in 'UFrmTransPPparaDV.pas' {FormTransPPparaDV},
  UFrmRlt_Chq_PD in 'UFrmRlt_Chq_PD.pas' {FormRlt_Chq_PD};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadPadrao, FormCadPadrao);
  Application.CreateForm(TDMcadastro, DMcadastro);
  Application.CreateForm(TFormUsuario, FormUsuario);
  Application.Run;
end.

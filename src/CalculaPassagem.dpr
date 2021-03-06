program CalculaPassagem;

uses
  Forms,
  uMain in 'core\uMain.pas' {FPassagens},
  uPassagemCliente in 'core\uPassagemCliente.pas' {FPassagemCliente},
  uPagamento in 'core\uPagamento.pas' {FPagamento},
  uPassagemFacade in 'core\uPassagemFacade.pas',
  uFactoryCidades in 'core\uFactoryCidades.pas',
  uMaringa in 'core\uMaringa.pas',
  uTipoCidade in 'core\uTipoCidade.pas',
  uCuritiba in 'core\uCuritiba.pas',
  uManaus in 'core\uManaus.pas',
  uSaoPaulo in 'core\uSaoPaulo.pas',
  uCidade in 'core\uCidade.pas',
  uTipoPassagem in 'core\uTipoPassagem.pas',
  uTipoClassePassagem in 'core\uTipoClassePassagem.pas',
  uBoleto in 'core\uBoleto.pas',
  uTipoPagamento in 'core\uTipoPagamento.pas',
  uFactoryFormaPagamento in 'core\uFactoryFormaPagamento.pas',
  uFormaDePagamento in 'core\uFormaDePagamento.pas',
  uTransferencia in 'core\uTransferencia.pas',
  uCartao in 'core\uCartao.pas',
  uValorAhPagar in 'core\uValorAhPagar.pas',
  uFactoryTipoClassePassagem in 'core\uFactoryTipoClassePassagem.pas',
  uCabinePrincipal in 'core\uCabinePrincipal.pas',
  uExecutiva in 'core\uExecutiva.pas',
  uPrimeiraClasse in 'core\uPrimeiraClasse.pas',
  uEconomica in 'core\uEconomica.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPassagens, FPassagens);
  Application.Run;
end.

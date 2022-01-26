# Decorator :paintbrush:

É um padrão de projeto de software que permite que você acople novos comportamentos nos objetos em tempo de execução.
Diagrama do projeto:

![DiagramaProjeto](https://github.com/thiagoslovak/Compra-Passagem-2.0/blob/master/3dparty/DiagramaProjeto.png)

## Exemplo em Delphi

Neste exemplo foi feito um sistema de compra de passagem onde é possível adicionar uma origem e um destino, calcular o valor, adicionar um valor adicional para o tipo de passagem. 

![TelaOrigemDestino](https://github.com/thiagoslovak/Compra-Passagem-2.0/blob/master/3dparty/TelaOrigemDestino.png)

O Decorator foi implementado ao clicar em pagar, abre a tela de pagamento e imprime o valor a pagar + origem + destino. E as subclasses que decora com as opções de Boleto, Transferência e Cartão.

![TelaPagamento](https://github.com/thiagoslovak/Compra-Passagem-2.0/blob/master/3dparty/TelaPagamento.png)


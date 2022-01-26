unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CurvyControls, AdvGlowButton, AdvReflectionImage, jpeg, ExtCtrls,
  ComCtrls, AdvMetroButton;

type
  TFPassagens = class(TForm)
    imgPassagens: TImage;
    btnCompraPassagem: TAdvGlowButton;
    procedure btnCompraPassagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPassagens: TFPassagens;

implementation

uses
  uPassagemCliente;

{$R *.dfm}

procedure TFPassagens.btnCompraPassagemClick(Sender: TObject);
begin
  FPassagemCliente := TFPassagemCliente.Create(Application);
  FPassagemCliente.Show;
end;

end.

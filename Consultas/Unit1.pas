unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    opcoes: TRadioGroup;
    txtConsulta: TEdit;
    lblConsulta: TLabel;
    btRealizarConsulta: TButton;
    DBGrid1: TDBGrid;
    procedure opcoesClick(Sender: TObject);
    procedure btRealizarConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses unitDM;

procedure TForm1.btRealizarConsultaClick(Sender: TObject);
begin
  DM.sqlConsulta.Close;
  DM.sqlConsulta.SQL.Clear;

  if opcoes.ItemIndex = 0 then
       begin
         DM.sqlConsulta.SQL.Add('SELECT * FROM clientes WHERE nome LIKE :pConsulta');
         DM.sqlConsulta.ParamByName('pConsulta').aSstring := txtConsulta.Text+'%';
       end;

       if opcoes.ItemIndex = 1 then
       begin
         DM.sqlConsulta.SQL.Add('SELECT * FROM clientes WHERE bairro LIKE :pConsulta');
         DM.sqlConsulta.ParamByName('pConsulta').aSstring := txtConsulta.Text+'%';
       end;

  DM.sqlConsulta.Open;
end;

procedure TForm1.opcoesClick(Sender: TObject);
begin

  if opcoes.ItemIndex = 0 then
    begin
      lblConsulta.Caption := 'Digite o Nome';
    end;

    if opcoes.ItemIndex = 1 then
      begin
        lblConsulta.Caption := 'Digite o Bairro';
      end;
end;

end.

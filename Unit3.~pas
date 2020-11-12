unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses Unit2, Unit1, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TMainForm.N5Click(Sender: TObject);
begin
FormFirma.Show;
//MainForm.Close;
end;

procedure TMainForm.N4Click(Sender: TObject);
begin
  TovarForm.Show;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
  ProdazhaForm.Show;
end;

procedure TMainForm.N3Click(Sender: TObject);
begin
OtchetForm.show;
end;

end.

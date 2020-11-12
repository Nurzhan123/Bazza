unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
 Code1, Code2: string;
 Code3: string;
implementation

uses Unit1, Unit4, Unit5, Unit2;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
FormFirma.Show;
FormFirma.Button1.Enabled:=true;
FormFirma.IBQuery1.Prior;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
TovarForm.show;
TovarForm.Button1.Enabled:=true;
TovarForm.IBQuery1.Prior;
end;

procedure TForm6.Button3Click(Sender: TObject);
var
s: string;

begin
s:=InputBox('Введите данные!','Введите коммeнтарий','');
  ProdazhaForm.IBQuery3.Params.ParamByName('NAME').Value := Code1;
  ProdazhaForm.IBQuery3.Params.ParamByName('TOVARKOD').Value := Code2;
  ProdazhaForm.IBQuery3.Params.ParamByName('FIRMKOD').AsInteger := StrToInt(Code3);
  ProdazhaForm.IBQuery3.Params.ParamByName('REM').Value := s;

  try
     ProdazhaForm.IBQuery3.ExecSQL;

  except
    MessageBox(handle,'Ошибка добавления записи' + #13 +
    'Попытайтесь добавить запись снова!!',
    'Ошибка!',
    MB_OK + MB_ICONERROR);
    DM.IBT1.RollbackRetaining;
    exit;
  end;

  ProdazhaForm.IBQuery1.Close;
  ProdazhaForm.IBQuery1.Open;
  DM.IBT1.CommitRetaining;
  Close;
end;

end.
 
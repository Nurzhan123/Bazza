unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, DB, IBCustomDataSet, IBQuery,
  Menus;

type
  TFormFirma = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    IBQuery5: TIBQuery;
    IBQuery1FIRMID_24: TIntegerField;
    IBQuery1NAME_24: TIBStringField;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Button1: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure CheckPosition;
    procedure FormActivate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFirma: TFormFirma;

implementation

uses Unit3, Unit2, Unit6;

{$R *.dfm}

procedure TFormFirma.Button3Click(Sender: TObject);
var
 s : string;
begin
  s:=InputBox('Ввидите данные', 'Ввидите название фирмы','');
 IBQuery3.Params.ParamByName('Name_24').Value:= s;

 try
     IBQuery3.ExecSQL;
 except
      ShowMessage('Ошибка при добавлении данных!' + #13 +
                          'Попробуте еще раз!');
      DM.IBT1.RollbackRetaining;
      exit;
 end;

 DM.IBT1.CommitRetaining;
 IBQuery1.Close;
 IBQuery1.Open;
end;


procedure TFormFirma.Button4Click(Sender: TObject);
var
 sk:string;
begin
  sk:= InputBox('Измените данные', 'Фамилия:', IBQuery1Name_24.Value);
 IBQuery4.Params.ParamByName('ID').Value := IBQuery1FIRMID_24.Value;
 IBQuery4.Params.ParamByName('Name_24').Value:= sk;

 try
     IBQuery4.ExecSQL;//запрос на метод ExecSQL т.к запрос не будет возвращать данные

 except
      MessageBox( Handle, 'Ошибка : Изменения данных' + #13 +
                          'Попытайтесь изменить данные еще раз!',
                          'Ошибка!',
                          MB_OK + MB_ICONERROR);
      DM.IBT1.RollbackRetaining;////откат
      exit;//выход
 end;
 DM.IBT1.CommitRetaining;
 IBQuery1.Close;
 IBQuery1.Open;
end;

procedure TFormFirma.Button6Click(Sender: TObject);
begin
 IBQuery1.Close;
 IBQuery1.Open;
end;

procedure TFormFirma.Button5Click(Sender: TObject);
begin
  if Application.MessageBox('Вы уверены что хотите удалить запись?','Внимания!!!',
    MB_DEFBUTTON2 + MB_ICONEXCLAMATION + MB_OKCANCEL) = IDOK then
    begin
      IBQuery5.Params.ParamByName('Par1').Value:= IBQuery1FIRMID_24.Value;

    try
     IBQuery5.ExecSQL;//запрос на вставку записи через ExecSQL т.к запрос не будет возвращать данные
    except
      ShowMessage('Удаление не прошло.' + #13 +
                  'Запись уже удалена!');
      DM.IBT1.RollbackRetaining;//откат
      exit;//выход
    end;
    DM.IBT1.CommitRetaining;
    IBQuery1.Close;
    IBQuery1.Open
    end;
end;

procedure TFormFirma.SpeedButton3Click(Sender: TObject);
begin
IBQuery1.Next;
CheckPosition;
end;

procedure TFormFirma.SpeedButton4Click(Sender: TObject);
begin
IBQuery1.Prior;
CheckPosition;
end;

procedure TFormFirma.CheckPosition;
begin
  if IBQuery1.EOF then SpeedButton3.Enabled:=false
    else SpeedButton3. Enabled:=true;
  if IBQuery1.BOF then SpeedButton4.Enabled:=false
    else SpeedButton4.Enabled:=true;
end;

procedure TFormFirma.FormActivate(Sender: TObject);
begin
IBQuery1.Active:=true;
end;

procedure TFormFirma.N2Click(Sender: TObject);
begin
 if IBQuery1.Active then begin
IBQuery1.Close;
//Application.Terminate;
 FormFirma.Close;
   MainForm.Show;
 end;
end;
procedure TFormFirma.Button1Click(Sender: TObject);
var
i: string;

begin
{if edit1.Text='' then begin
ShowMessage('Вы не выбрали поле!,'+#13+'Выберите поле!  ');
exit;
end;    }

i:=DBGrid1.DataSource.DataSet.Fields.Fields[1].Value;
Form6.Edit1.Text:=i;
FormFirma.Close;
Form6.Show;
Button1.Enabled:=False;
Code1:= DBGrid1.DataSource.DataSet.Fields.Fields[0].Value;
end;

end.

unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons,
  Menus;

type
  TTovarForm = class(TForm)
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
    DBGrid1: TDBGrid;
    IBQuery1TOVARID_24: TIntegerField;
    IBQuery1NAME_24: TIBStringField;
    IBQuery1PRICE_24: TIntegerField;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Button1: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckPosition;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TovarForm: TTovarForm;

implementation

uses Unit2, Unit3, Unit1, Unit6;

{$R *.dfm}

procedure TTovarForm.Button3Click(Sender: TObject);
var
 s : string;
begin
s:=InputBox('Ввидите данные', 'Ввидите наименование','');
 IBQuery3.Params.ParamByName('Name_24').Value:= s;

s:=InputBox('Ввидите данные', 'Ввидите цену','');
IBQuery3.Params.ParamByName('PRICE_24').Value:= s;
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

procedure TTovarForm.Button4Click(Sender: TObject);
var
 sk:string;
begin
  sk:= InputBox('Измените данные', 'Наименование:', IBQuery1Name_24.Value);
 IBQuery4.Params.ParamByName('ID').Value := IBQuery1TOVARID_24.Value;
 IBQuery4.Params.ParamByName('Name_24').Value:= sk;

  sk:= InputBox('Измените данные', 'Цену:', IBQuery1PRICE_24.AsVariant);
  IBQuery4.Params.ParamByName('PRICE_24').Value:= sk;
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

procedure TTovarForm.Button5Click(Sender: TObject);
begin
  if Application.MessageBox('Вы уверены что хотите удалить запись?','Внимания!!!',
    MB_DEFBUTTON2 + MB_ICONEXCLAMATION + MB_OKCANCEL) = IDOK then
    begin
      IBQuery5.Params.ParamByName('Par1').Value:= IBQuery1TOVARID_24.Value;

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

procedure TTovarForm.FormActivate(Sender: TObject);
begin
IBQuery1.Active:=true;
end;

procedure TTovarForm.Button6Click(Sender: TObject);
begin
 IBQuery1.Close;
 IBQuery1.Open;
end;

procedure TTovarForm.N2Click(Sender: TObject);
begin
 if IBQuery1.Active then begin
IBQuery1.Close;
//Application.Terminate;
 TovarForm.Close;
  MainForm.Show;
end;

end;

procedure TTovarForm.SpeedButton1Click(Sender: TObject);
begin
IBQuery1.Next;
CheckPosition;
end;

procedure TTovarForm.SpeedButton2Click(Sender: TObject);
begin
IBQuery1.Prior;
CheckPosition;
end;

procedure TTovarForm.CheckPosition;
begin
  if IBQuery1.EOF then SpeedButton1.Enabled:=false
    else SpeedButton1.Enabled:=true;
  if IBQuery1.BOF then SpeedButton2.Enabled:=false
    else SpeedButton2.Enabled:=true;
end;
procedure TTovarForm.Button1Click(Sender: TObject);
var
i: string;

begin
{if edit1.Text='' then begin
ShowMessage('Вы не выбрали поле!,'+#13+'Выберите поле!  ');
exit;
end;   }

i:=DBGrid1.DataSource.DataSet.Fields.Fields[1].Value;
Form6.Edit2.Text:=i;
TovarForm.Close;
form6.Show;
Button1.Enabled:=False;
Code2:= DBGrid1.DataSource.DataSet.Fields.Fields[0].Value;
Code3:= DBGrid1.DataSource.DataSet.Fields.Fields[2].Value;
end;

end.




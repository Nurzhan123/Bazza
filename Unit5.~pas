unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, DB, IBCustomDataSet, IBQuery;

type
  TProdazhaForm = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
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
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    IBQuery1SALEID_24: TIntegerField;
    IBQuery1NAME_241: TIBStringField;
    IBQuery1FIRMKOD_24: TIntegerField;
    IBQuery1REM_24: TIBStringField;
    IBQuery1NAME_24: TIBStringField;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckPosition;
    procedure Button6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProdazhaForm: TProdazhaForm;

implementation

uses Unit6, Unit2;

{$R *.dfm}

procedure TProdazhaForm.Button3Click(Sender: TObject);
begin
Form6.show;
end;

procedure TProdazhaForm.Button4Click(Sender: TObject);
var
 sk:string;
begin
 sk:= InputBox('Измените данные', 'Комментарии:', IBQuery1REM_24.Value);
 IBQuery4.Params.ParamByName('ID').Value := IBQuery1SALEID_24.Value;
 IBQuery4.Params.ParamByName('REM_24').Value:= sk;

 try
     IBQuery4.ExecSQL;
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

procedure TProdazhaForm.Button5Click(Sender: TObject);
begin
  if Application.MessageBox('Вы уверены что хотите удалить запись?','Внимания!!!',
    MB_DEFBUTTON2 + MB_ICONEXCLAMATION + MB_OKCANCEL) = IDOK then
    begin
      IBQuery5.Params.ParamByName('Par1').Value:= IBQuery1SALEID_24.Value;

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

procedure TProdazhaForm.SpeedButton1Click(Sender: TObject);
begin
IBQuery1.Next;
CheckPosition;
end;

procedure TProdazhaForm.SpeedButton2Click(Sender: TObject);
begin
IBQuery1.Prior;
CheckPosition;
end;

procedure TProdazhaForm.CheckPosition;
begin
  if IBQuery1.EOF then SpeedButton1.Enabled:=false
    else SpeedButton1. Enabled:=true;
  if IBQuery1.BOF then SpeedButton2.Enabled:=false
    else SpeedButton2.Enabled:=true;
end;

procedure TProdazhaForm.Button6Click(Sender: TObject);
begin
 IBQuery1.Close;
 IBQuery1.Open;
end;

procedure TProdazhaForm.FormActivate(Sender: TObject);
begin
IBQuery1.Active:=true;
end;

end.

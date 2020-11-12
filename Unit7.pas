unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, StdCtrls, DB, IBCustomDataSet, IBQuery, ActiveX, ComObj, ExtCtrls, clipbrd, OleServer, ExcelXP;

type
  TOtchetForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OtchetForm: TOtchetForm;

   Mydir: String;
  i: integer;
  ExcelApp: Variant;
  AppProgID        : String;
  ServerIsRunning  : boolean;
  Resultw          : HResult;
  Unknown          : IUnknown;
  App              : Variant;   // ���������� � ������� �������� ������ EXCEL
  Ke, Abc, Kx      : Variant;
  ExelOtch         : String;    // ���� � ����� ���������� �����

implementation

uses Unit4, Unit5, Unit1, Unit2, Unit3, Unit6;

{$R *.dfm}

procedure TOtchetForm.Button1Click(Sender: TObject);
var
col,row: integer;

begin
AppProgID := 'Excel.Application';
  ServerIsRunning := False;
  Resultw:=GetActiveObject(ProgIDToClassID(AppProgID),nil,Unknown);

  if (Resultw = MK_E_UNAVAILABLE) then
    // ������� ���� ��������� �������
    App := CreateOleObject(AppProgID)

   else

    begin
    // ����������� � ��� ���������� ������ �������
    App := GetActiveOleObject(AppProgID);
    ServerIsRunning := True;
  end;

    // �������  ��������
 ExelOtch:=ExtractFilePath(Application.EXEName)+'����� �1.xls';
  App.WorkBooks.Add;
  Ke:=App.WorkBooks[1];
  Abc:=Ke.WorkSheets[1];
  Abc.Name:='�������� 1';  // ��� �������� ���������� ���������

  App.DisplayAlerts:=False;
  Abc.Range['A1:C1'].Merge;
  Abc.Cells[1,1].HorizontalAlignment := 3;
  Abc.Cells[1,1]:='������';
  Abc.Cells[1,1].Font.Bold:=True;
  Abc.Cells[1,1].Font.Size:=14;
  Abc.Cells[2,1]:='� ������';
  Abc.Cells[2,1].Font.Bold:=True;
  Abc.Cells[2,1].Font.Size:=12;
   Abc.Cells[2,2]:='��������';
  Abc.Cells[2,2].Font.Bold:=True;
  Abc.Cells[2,2].Font.Size:=12;
   Abc.Cells[2,3]:='����';
  Abc.Cells[2,3].Font.Bold:=True;
  Abc.Cells[2,3].Font.Size:=12;
  Abc.Cells[3,1].ColumnWidth:=15;
  Abc.Cells[3,2].ColumnWidth:=25;
  Abc.Cells[3,3].ColumnWidth:=25;

  for row :=0 to TovarForm.DBGrid1.DataSource.DataSet.RecordCount -1 do

  begin

  for col :=1 to TovarForm.DBGrid1.Columns.Count -1 do

  begin
Abc.Cells[row+3,col+1].HorizontalAlignment := 3;
app.WorkBooks[1].WorkSheets[1].cells[row+3,col+1].value:=TovarForm.dbgrid1.DataSource.DataSet.Fields[col].AsString;
app.WorkBooks[1].WorkSheets[1].cells[row+3,1]:=row+1;
end;

TovarForm.IBQuery1.Next;
// app.Visible := True;
end;

 App.WorkBooks[1].WorkSheets[1].Range['A1:'+'C'+IntToStr(row+2)].Borders.LineStyle := 1;
 // �������-------------------------------------------------------------
 Abc.Cells[1,6]:='�������';
 Abc.Cells[1,6].Font.Bold:=True;
 Abc.Cells[1,6].Font.Size:=14;
 Abc.Cells[1,6].HorizontalAlignment := 3;
 Abc.Range['F1:J1'].Merge;
 Abc.Cells[2,6]:='� ������';
  Abc.Cells[2,6].Font.Bold:=True;
  Abc.Cells[2,6].Font.Size:=12;
   Abc.Cells[2,7]:='�������� �����a';
  Abc.Cells[2,7].Font.Bold:=True;
  Abc.Cells[2,7].Font.Size:=12;
   Abc.Cells[2,8]:='����';
  Abc.Cells[2,8].Font.Bold:=True;
  Abc.Cells[2,8].Font.Size:=12;
  Abc.Cells[2,9]:='K����������';
  Abc.Cells[2,9].Font.Bold:=True;
  Abc.Cells[2,9].Font.Size:=12;
  Abc.Cells[2,10]:='�������� �����';
  Abc.Cells[2,10].Font.Bold:=True;
  Abc.Cells[2,10].Font.Size:=12;
  Abc.Cells[3,6].ColumnWidth:=15;
  Abc.Cells[3,7].ColumnWidth:=25;
  Abc.Cells[3,8].ColumnWidth:=25;
   Abc.Cells[3,9].ColumnWidth:=25;
  Abc.Cells[3,10].ColumnWidth:=25;

   for row :=0 to ProdazhaForm.DBGrid1.DataSource.DataSet.RecordCount -1 do

  begin

  for col :=1 to ProdazhaForm.DBGrid1.Columns.Count -1 do

  begin
  Abc.Cells[row+3,col+6].HorizontalAlignment := 3;
  app.WorkBooks[1].WorkSheets[1].cells[row+3,col+6].value:=ProdazhaForm.dbgrid1.DataSource.DataSet.Fields[col].AsString;
  app.WorkBooks[1].WorkSheets[1].cells[row+3,6]:=row+1;
  end;

  ProdazhaForm.IBQuery1.Next;

  end;

    App.WorkBooks[1].WorkSheets[1].Range['F1:'+'J'+IntToStr(row+2)].Borders.LineStyle := 1;

  (*   ���� ����� ��������� ���������   *)

  // ��������� ��������
 App.ActiveWorkBook.SaveAs(ExelOtch);
  App.Quit;
  App:=Unassigned;

  Label1.Caption:='��� ����� ��� ������� �����������';
end;

procedure TOtchetForm.Button2Click(Sender: TObject);
begin
    // ������� ����������� ������������� ����������-�������
  AppProgID := 'Excel.Application';
    // ������� ���� ��������� �������
  App := CreateOleObject(AppProgID);
    // �������� ���� ���������� �� ������
  App.Visible := True;
    // ���������  ��������
  ExelOtch:=ExtractFilePath(Application.EXEName)+'����� �1.xls';
  App.WorkBooks.Open(ExelOtch);
end;

procedure TOtchetForm.FormActivate(Sender: TObject);
begin
i:=0;
TovarForm.IBQuery1.Active:=true;
 TovarForm.DBGrid1.DataSource.DataSet.Last;
  TovarForm.DBGrid1.DataSource.DataSet.First;
ProdazhaForm.IBQuery1.Active:=true;
 ProdazhaForm.DBGrid1.DataSource.DataSet.Last;
  ProdazhaForm.DBGrid1.DataSource.DataSet.First;
end;

procedure TOtchetForm.FormCreate(Sender: TObject);
begin
i:=0;
TovarForm.IBQuery1.Active:=true;
 TovarForm.DBGrid1.DataSource.DataSet.Last;
  TovarForm.DBGrid1.DataSource.DataSet.First;
ProdazhaForm.IBQuery1.Active:=true;
 ProdazhaForm.DBGrid1.DataSource.DataSet.Last;
  ProdazhaForm.DBGrid1.DataSource.DataSet.First;;
end;

procedure TOtchetForm.Button3Click(Sender: TObject);
begin
 AppProgID := 'Excel.Application';
  ServerIsRunning := False;
  Resultw:=GetActiveObject(ProgIDToClassID(AppProgID),nil,Unknown);

  if (Resultw = MK_E_UNAVAILABLE) then
    // ������� ���� ��������� �������
    App := CreateOleObject(AppProgID)

   else

    begin
    // ����������� � ��� ���������� ������ �������
    App := GetActiveOleObject(AppProgID);
    ServerIsRunning := True;
  end;
        // �������  ��������
  ExelOtch:=ExtractFilePath(Application.EXEName)+'����� �1.xls';
  App.WorkBooks.Add;
  Ke:=App.WorkBooks[1];
  Abc:=Ke.WorkSheets[1];
  Abc.Name:='�������� 1';  // ��� �������� ���������� ���������

  Abc.Range['A1:l50'].ClearContents;// ������� ������ �� ������
  App.DisplayAlerts:=False;
  Abc.Range['A1:C1'].Merge;
  Abc.Cells[1,1].HorizontalAlignment := 3;
  Abc.Cells[1,1]:='������';
  Abc.Cells[1,1].Font.Bold:=True;
  Abc.Cells[1,1].Font.Size:=14;
  Abc.Cells[2,1]:='� ������';
  Abc.Cells[2,1].Font.Bold:=True;
  Abc.Cells[2,1].Font.Size:=12;
   Abc.Cells[2,2]:='��������';
  Abc.Cells[2,2].Font.Bold:=True;
  Abc.Cells[2,2].Font.Size:=12;
   Abc.Cells[2,3]:='����';
  Abc.Cells[2,3].Font.Bold:=True;
  Abc.Cells[2,3].Font.Size:=12;
  Abc.Cells[3,1].ColumnWidth:=15;
  Abc.Cells[3,2].ColumnWidth:=25;
  Abc.Cells[3,3].ColumnWidth:=25;

   Abc.Cells[1,6]:='�������';
 Abc.Cells[1,6].Font.Bold:=True;
 Abc.Cells[1,6].Font.Size:=14;
 Abc.Cells[1,6].HorizontalAlignment := 3;
 Abc.Range['F1:J1'].Merge;
 Abc.Cells[2,6]:='� ������';
  Abc.Cells[2,6].Font.Bold:=True;
  Abc.Cells[2,6].Font.Size:=12;
   Abc.Cells[2,7]:='�������� �����a';
  Abc.Cells[2,7].Font.Bold:=True;
  Abc.Cells[2,7].Font.Size:=12;
   Abc.Cells[2,8]:='����';
  Abc.Cells[2,8].Font.Bold:=True;
  Abc.Cells[2,8].Font.Size:=12;
  Abc.Cells[2,9]:='K����������';
  Abc.Cells[2,9].Font.Bold:=True;
  Abc.Cells[2,9].Font.Size:=12;
  Abc.Cells[2,10]:='�������� �����';
  Abc.Cells[2,10].Font.Bold:=True;
  Abc.Cells[2,10].Font.Size:=12;
  Abc.Cells[3,6].ColumnWidth:=15;
  Abc.Cells[3,7].ColumnWidth:=25;
  Abc.Cells[3,8].ColumnWidth:=25;
   Abc.Cells[3,9].ColumnWidth:=25;
  Abc.Cells[3,10].ColumnWidth:=25;

  (*   ���� ����� ��������� ���������   *)

     // ��������� ��������
  App.ActiveWorkBook.SaveAs(ExelOtch);
  App.Quit;
  App:=Unassigned;

  Label1.Caption:='��� ����� ��� ������� ������';
end;
end.



unit Unit2;

interface

uses
  SysUtils, Classes, IBDatabase, DB;

type
  TDM = class(TDataModule)
    IBDb1: TIBDatabase;
    IBT1: TIBTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses Unit1, Unit3;

{$R *.dfm}

end.

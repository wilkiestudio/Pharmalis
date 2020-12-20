unit splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Imaging.jpeg;

type
  TFsplash = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ADOTable1: TADOTable;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsplash: TFsplash;

implementation

{$R *.dfm}

uses login, mainmenu;

procedure TFsplash.FormActivate(Sender: TObject);
var app_status : string;
begin
  app_status := ADOTable1.FieldValues['lisence'];
  label3.Caption:=app_status;
end;

procedure TFsplash.Timer1Timer(Sender: TObject);
var time : integer;
begin
  ProgressBar1.Position:=progressbar1.Position+1;
  if ProgressBar1.Position=5 then
     Label1.Caption:='Silahkan Tunggu'
  else if ProgressBar1.Position=10 then
     Label1.Caption:='Silahkan Tunggu.'
  else if ProgressBar1.Position=15 then
     Label1.Caption:='Silahkan Tunggu..'
  else if ProgressBar1.Position=20 then
     Label1.Caption:='Silahkan Tunggu...'
  else if ProgressBar1.Position=25 then
     Label1.Caption:='Silahkan Tunggu'
  else if ProgressBar1.Position=30 then
     Label1.Caption:='Silahkan Tunggu.'
  else if ProgressBar1.Position=35 then
     Label1.Caption:='Silahkan Tunggu..'
  else if ProgressBar1.Position=40 then
     Label1.Caption:='Silahkan Tunggu...'
  else if ProgressBar1.Position=45 then
     Label1.Caption:='Silahkan Tunggu'
  else if ProgressBar1.Position=50 then
     Label1.Caption:='Silahkan Tunggu.'
  else if ProgressBar1.Position=55 then
     Label1.Caption:='Silahkan Tunggu..'
  else if ProgressBar1.Position=60 then
     Label1.Caption:='Silahkan Tunggu...'
  else if ProgressBar1.Position=65 then
     Label1.Caption:='User Interface Loading'
  else if ProgressBar1.Position=70 then
     Label1.Caption:='User Interface Loading.'
  else if ProgressBar1.Position=75 then
     Label1.Caption:='User Interface Loading..'
  else if ProgressBar1.Position=80 then
     Label1.Caption:='User Interface Loading...'
  else if ProgressBar1.Position=85 then
     Label1.Caption:='User Interface Loading Loaded...'
  else if ProgressBar1.Position=90 then
     Label1.Caption:='Database Loading.'
  else if ProgressBar1.Position=95 then
     Label1.Caption:='Database Loaded..'
  else if ProgressBar1.Position=100 then
    begin
      fsplash.Hide;
      fsplash.Free;
      Flogin.Showmodal;
    end;
end;

end.

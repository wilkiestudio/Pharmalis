unit surat_pesanan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFsurat_pesanan = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    Edit7: TEdit;
    Panel2: TPanel;
    ADOQuery1: TADOQuery;
    Panel1: TPanel;
    Edit1: TEdit;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure kodeotomatis;
  end;

var
  Fsurat_pesanan: TFsurat_pesanan;

  hour, min, sec, msec: word;
  hari,bulan,tahun, tahun1 : string;

implementation

{$R *.dfm}

uses mainmenu;

procedure TFsurat_pesanan.kodeotomatis;
var Kode,Nourut : string;
    i : integer;
begin
  hari := FormatDateTime('DD',Date);
  bulan := FormatDateTime('MM',Date);
  tahun := FormatDateTime('YYYY',Date);
  DecodeTime(time, hour, min, sec, msec );
  kode:='SP-'+hari+bulan+tahun;
  With ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select Max(right(no_sp, 4)) from surat_pesanan ' +
              'Where left(no_sp, 2) = "'+kode+'";');
      Open;
    end;
  if ADOQuery1.Fields[0].AsString = '' then
    Nourut := '0001'
  else
    Nourut := IntToStr(ADOQuery1.Fields[0].AsInteger + 1);

  if length(Nourut) < 4 then
    begin
      for i := length(Nourut) to 3 do
        Nourut := '0' + Nourut;
    end;
  edit7.Text:= kode + Nourut;

end;

procedure TFsurat_pesanan.Edit1Change(Sender: TObject);
begin
  if edit1.Text<>'' then
    dbgrid2.Visible:=true
  else
    dbgrid2.Visible:=false;
end;

procedure TFsurat_pesanan.FormActivate(Sender: TObject);
begin
  kodeotomatis;
  with ADOQuery1 do
    begin
      active:=false;
      sql.Clear;
      sql.Text:='SELECT * FROM mst_supplier WHERE status=0';
      active:=true;
      while not EoF do
        begin
          ComboBox1.Items.Add(FieldByName('nama_supplier').AsString);
          Next;
        end;
    end;
end;

procedure TFsurat_pesanan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

end.

unit mst_barang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, ZAbstractTable, ZDataset, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Imaging.pngimage,
  Vcl.Buttons, Data.Win.ADODB;

type
  Tfmst_barang = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    GroupBox3: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    S: TLabel;
    DateTimePicker2: TDateTimePicker;
    Button4: TButton;
    DBEdit3: TDBEdit;
    Button5: TButton;
    Image1: TImage;
    BitBtn1: TBitBtn;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Panel3: TPanel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmst_barang: Tfmst_barang;

implementation

{$R *.dfm}

uses mainmenu, add_barang, edit_barang;

procedure Tfmst_barang.BitBtn1Click(Sender: TObject);
begin
  with ADOQuery1 do
    begin
      active:=false;
      sql.Clear;
      sql.Text:='SELECT * FROM mst_barang WHERE status="0"';
      active:=true;
    end;
    DateTimePicker1.Date:=Now;
    DateTimePicker2.Date:=Now;
    ADOQuery1.Active:=false;
    ADOQuery1.Active:=true;
end;

procedure Tfmst_barang.Button1Click(Sender: TObject);
begin
  //Application.CreateForm(Tfadd_barang, fadd_barang);
  TFadd_barang.Create(Application);
end;

procedure Tfmst_barang.Button2Click(Sender: TObject);
begin
  fedit_barang.Edit9.Text:=dbedit3.Text;
  //Tfedit_barang.Create(Application);
  fedit_barang.ShowModal;
end;

procedure Tfmst_barang.Button3Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah anda yakin ingin menghapus obat tersebut?','Konfirmasi Ulang',MB_YESNO or MB_ICONQUESTION)=ID_YES) then
    begin
      with ADOQuery2 do
        begin
          active:=false;
          sql.Clear;
          sql.Text:='UPDATE mst_barang SET status="1" WHERE id='+QuotedStr(dbedit3.Text);
          execSQL;
        end;
      ShowMessage('Data barang dengan id '+dbedit3.Text+' berhasil dihapus.');
      ADOQuery1.Refresh;
    end;
end;

procedure Tfmst_barang.Button4Click(Sender: TObject);
begin
  ShowMessage('fitur ini belum berfungsi. Aplikasi masih dalam versi DEMO');
end;

procedure Tfmst_barang.Button5Click(Sender: TObject);
begin
  ShowMessage('fitur ini belum berfungsi. Aplikasi masih dalam versi DEMO');
end;

procedure Tfmst_barang.ComboBox1Change(Sender: TObject);
begin
  edit1.Clear;
end;

procedure Tfmst_barang.Edit1Change(Sender: TObject);
begin
  if edit1.Text<>'' then
    begin
      //Pencarian berdasarkan Nama Perusahaan
      if ComboBox1.ItemIndex=0 then
        begin
          with ADOQuery1 do
            begin
              active:=false;
              sql.clear;
              sql.Text:='SELECT * FROM mst_barang WHERE nama_barang LIKE "%'+edit1.Text+'%" AND (status="0" AND kategori="OBAT")';
              active:=true;
           end;
        end
      else if ComboBox1.ItemIndex=1 then
        begin
          with ADOQuery1 do
            begin
              active:=false;
              sql.clear;
              sql.Text:='SELECT * FROM mst_barang WHERE nama_barang LIKE "%'+edit1.Text+'%" AND (status="0" AND kategori="ALKES")';
              active:=true;
           end;
        end;
    end
  else
    begin
      with ADOQuery1 do
        begin
          active:=false;
          sql.Clear;
          sql.Text:='SELECT * FROM mst_barang WHERE status="0"';
          active:=true;
        end;
    end;
end;

procedure Tfmst_barang.FormActivate(Sender: TObject);
begin
  with ADOQuery1 do
    begin
      active:=false;
      sql.Clear;
      sql.Text:='SELECT * FROM mst_barang WHERE status="0"';
      active:=true;
    end;
    DateTimePicker1.Date:=Now;
    DateTimePicker2.Date:=Now;
end;

procedure Tfmst_barang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure Tfmst_barang.FormShow(Sender: TObject);
begin
  with ADOQuery1 do
    begin
      active:=false;
      sql.Clear;
      sql.Text:='SELECT * FROM mst_barang WHERE status="0"';
      active:=true;
    end;
    DateTimePicker1.Date:=Now;
    DateTimePicker2.Date:=Now;

end;

end.

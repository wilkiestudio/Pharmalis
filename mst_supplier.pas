unit mst_supplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, ZAbstractTable, ZDataset, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Imaging.pngimage,
  Vcl.Buttons, Data.Win.ADODB;

type
  Tfmst_supplier = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    Button3: TButton;
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
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
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
  fmst_supplier: Tfmst_supplier;

implementation

{$R *.dfm}

uses mainmenu, add_supplier, edit_supplier;

procedure Tfmst_supplier.BitBtn1Click(Sender: TObject);
begin
  with ADOQuery1 do
    begin
      active:=false;
      sql.Clear;
      sql.Text:='SELECT * FROM mst_supplier WHERE status="0"';
      active:=true;
    end;
    DateTimePicker1.Date:=Now;
    DateTimePicker2.Date:=Now;
    ADOQuery1.Active:=false;
    ADOQuery1.Active:=true;
end;

procedure Tfmst_supplier.Button1Click(Sender: TObject);
begin
  fadd_supplier.ShowModal;
end;

procedure Tfmst_supplier.Button2Click(Sender: TObject);
begin
  fedit_supplier.Edit7.Text:=dbedit3.Text;
  Tfedit_supplier.Create(Application);
end;

procedure Tfmst_supplier.Button3Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah anda yakin ingin menghapus supplier tersebut?','Konfirmasi Ulang',MB_YESNO or MB_ICONQUESTION)=ID_YES) then
    begin
      with ADOQuery2 do
        begin
          active:=false;
          sql.Clear;
          sql.Text:='UPDATE mst_supplier SET status="1" WHERE id='+QuotedStr(dbedit3.Text);
          execSQL;
        end;
      ShowMessage('Data supplier dengan id '+dbedit3.Text+' berhasil dihapus.');
      ADOQuery1.Refresh;
    end;
end;

procedure Tfmst_supplier.Button4Click(Sender: TObject);
begin
  ShowMessage('fitur ini belum berfungsi. Aplikasi masih dalam versi DEMO');
end;

procedure Tfmst_supplier.Button5Click(Sender: TObject);
begin
  ShowMessage('fitur ini belum berfungsi. Aplikasi masih dalam versi DEMO');
end;

procedure Tfmst_supplier.ComboBox1Change(Sender: TObject);
begin
  edit1.Clear;
end;

procedure Tfmst_supplier.Edit1Change(Sender: TObject);
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
              sql.Text:='SELECT * FROM mst_supplier WHERE nama_supplier LIKE "%'+edit1.Text+'%" AND status="0"';
              active:=true;
           end;
        end
      else if ComboBox1.ItemIndex=1 then
        begin
          with ADOQuery1 do
            begin
              active:=false;
              sql.clear;
              sql.Text:='SELECT * FROM mst_supplier WHERE id LIKE "%'+edit1.Text+'%" AND status="0"';
              active:=true;
           end;
        end
      else if ComboBox1.ItemIndex=2 then
        begin
          with ADOQuery1 do
            begin
              active:=false;
              sql.clear;
              sql.Text:='SELECT * FROM mst_supplier WHERE nama_sales LIKE "%'+edit1.Text+'%" AND status="0"';
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
          sql.Text:='SELECT * FROM mst_supplier WHERE status="0"';
          active:=true;
        end;
    end;
end;

procedure Tfmst_supplier.FormActivate(Sender: TObject);
begin
  with ADOQuery1 do
    begin
      active:=false;
      sql.Clear;
      sql.Text:='SELECT * FROM mst_supplier WHERE status="0"';
      active:=true;
    end;
    DateTimePicker1.Date:=Now;
    DateTimePicker2.Date:=Now;
end;

procedure Tfmst_supplier.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure Tfmst_supplier.FormShow(Sender: TObject);
begin
  with ADOQuery1 do
    begin
      active:=false;
      sql.Clear;
      sql.Text:='SELECT * FROM mst_supplier WHERE status="0"';
      active:=true;
    end;
end;

end.

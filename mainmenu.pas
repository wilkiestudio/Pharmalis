unit mainmenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ImgList, Data.DB, Data.Win.ADODB, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, ZDataset, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable;

type
  TFmenu = class(TForm)
    HeaderControl1: THeaderControl;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Logout1: TMenuItem;
    Keluar1: TMenuItem;
    N1: TMenuItem;
    Registrasi1: TMenuItem;
    entang1: TMenuItem;
    StatusBar1: TStatusBar;
    Image1: TImage;
    Pengaturan1: TMenuItem;
    Mas1: TMenuItem;
    Supplier1: TMenuItem;
    Barang1: TMenuItem;
    Laporan1: TMenuItem;
    DataSupplier1: TMenuItem;
    DataBarang1: TMenuItem;
    DataUser1: TMenuItem;
    User1: TMenuItem;
    Resep1: TMenuItem;
    PembelianPanel1: TMenuItem;
    Faktur1: TMenuItem;
    MasterBarang1: TMenuItem;
    N2: TMenuItem;
    StokBarang1: TMenuItem;
    ADOConnection1: TADOConnection;
    SPkePBFSuratPesanan1: TMenuItem;
    procedure Keluar1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ambahAkun1Click(Sender: TObject);
    procedure EditAkun1Click(Sender: TObject);
    procedure HapusAkun1Click(Sender: TObject);
    procedure Report1Click(Sender: TObject);
    procedure entang1Click(Sender: TObject);
    procedure Supplier1Click(Sender: TObject);
    procedure MasterBarang1Click(Sender: TObject);
    procedure Faktur1Click(Sender: TObject);
    procedure SPkePBFSuratPesanan1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmenu: TFmenu;

implementation

{$R *.dfm}

uses login, tentang, mst_supplier, mst_barang, surat_pesanan;
procedure TFmenu.ambahAkun1Click(Sender: TObject);
begin
 ShowMessage('fitur ini belum berfungsi. Aplikasi masih dalam versi DEMO');
end;

procedure TFmenu.EditAkun1Click(Sender: TObject);
begin
  ShowMessage('fitur ini belum berfungsi. Aplikasi masih dalam versi DEMO');
end;

procedure TFmenu.entang1Click(Sender: TObject);
begin
  TFtentang.Create(Application);
end;

procedure TFmenu.Faktur1Click(Sender: TObject);
begin
    //Application.CreateForm(TFsurat_pesanan, Fsurat_pesanan);
  //TFfaktur_pembelian.Create(Application);
end;

procedure TFmenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if (Application.MessageBox('Apakah anda yakin ingin keluar dari aplikasi ini dan otomatis Logout?','Konfirmasi Ulang',MB_YESNO or MB_ICONQUESTION)=ID_YES) then
    begin
      Application.MessageBox('Semoga hari anda menyenangkan.','PHARMALIS',MB_OK);
      Application.Terminate;
    end
else
  CanClose:=false;
end;

procedure TFmenu.HapusAkun1Click(Sender: TObject);
begin
  ShowMessage('fitur ini belum berfungsi. Aplikasi masih dalam versi DEMO');
end;

procedure TFmenu.Keluar1Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah anda ingin keluar dari aplikasi ini?','Konfirmasi Ulang',MB_YESNO or MB_ICONQUESTION)=ID_YES) then
    begin
      Application.MessageBox('Semoga hari anda menyenangkan.','PHARMALIS',MB_OK);
      Application.Terminate;
    end;
end;

procedure TFmenu.Logout1Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah anda ingin Logout?','Konfirmasi Ulang',MB_YESNO or MB_ICONQUESTION)=ID_YES) then
    begin
      flogin.show;
      Flogin.edit1.clear;
      Flogin.edit2.clear;
      flogin.edit1.setfocus;
      hide;
    end;
end;

procedure TFmenu.MasterBarang1Click(Sender: TObject);
begin
  Application.CreateForm(Tfmst_barang, fmst_barang);
  //TFmst_barang.Create(Application);
end;

procedure TFmenu.Report1Click(Sender: TObject);
begin
  ShowMessage('fitur ini belum berfungsi. Aplikasi masih dalam versi DEMO');
end;

procedure TFmenu.SPkePBFSuratPesanan1Click(Sender: TObject);
begin
  Application.CreateForm(Tfsurat_pesanan, fsurat_pesanan);
end;

procedure TFmenu.Supplier1Click(Sender: TObject);
begin
  Application.CreateForm(Tfmst_supplier, fmst_supplier);
  //TFmst_supplier.Create(Application);
end;

procedure TFmenu.ToolButton4Click(Sender: TObject);
begin
ShowMessage('fitur ini belum berfungsi. Aplikasi masih dalam versi DEMO');
end;

procedure TFmenu.ToolButton5Click(Sender: TObject);
begin
ShowMessage('fitur ini belum berfungsi. Aplikasi masih dalam versi DEMO');
end;

procedure TFmenu.ToolButton6Click(Sender: TObject);
begin
ShowMessage('fitur ini belum berfungsi. Aplikasi masih dalam versi DEMO');
end;

end.

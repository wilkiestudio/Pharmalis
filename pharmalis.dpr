program pharmalis;

uses
  Vcl.Forms,
  login in 'login.pas' {Flogin},
  mainmenu in 'mainmenu.pas' {Fmenu},
  splash in 'splash.pas' {Fsplash},
  Vcl.Themes,
  Vcl.Styles,
  tentang in 'tentang.pas' {Ftentang},
  mst_supplier in 'mst_supplier.pas' {fmst_supplier},
  add_supplier in 'add_supplier.pas' {fadd_supplier},
  edit_supplier in 'edit_supplier.pas' {fedit_supplier},
  mst_barang in 'mst_barang.pas' {fmst_barang},
  add_barang in 'add_barang.pas' {fadd_barang},
  edit_barang in 'edit_barang.pas' {fedit_barang},
  surat_pesanan in 'surat_pesanan.pas' {Fsurat_pesanan};

{$R *.res}

begin
  Fsplash:=TFsplash.Create(Application);
  Fsplash.Show;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFmenu, Fmenu);
  Application.CreateForm(TFlogin, Flogin);
  Application.CreateForm(Tfadd_supplier, fadd_supplier);
  Application.CreateForm(Tfedit_supplier, fedit_supplier);
  Application.CreateForm(Tfedit_barang, fedit_barang);
  Application.ShowMainForm:=false;
  Application.Run;
end.

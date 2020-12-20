unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, Vcl.Buttons, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFlogin = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    ADOQuery1: TADOQuery;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flogin: TFlogin;

implementation

{$R *.dfm}

uses mainmenu, tools;

procedure TFlogin.Button1Click(Sender: TObject);
begin
  with ADOQuery1 do
    begin
      active:=false;
      sql.Clear;
      sql.Text:='SELECT * FROM user WHERE username ='+QuotedStr(edit1.Text);
      Active:=true;
      if RecordCount=0 then
        begin
          Application.MessageBox('Maaf, Username tersebut tidak terdaftar. Silahkan ulangi kembali.','Kesalahan',MB_OK or MB_ICONWARNING);
          Edit1.SetFocus;
        end
      else
        begin
          if FieldByName('password').AsString<>edit2.Text then
            begin
              Application.MessageBox('Maaf, Password yang anda masukan salah. Silahkan ulangi kembali.','Kesalahan',MB_OK or MB_ICONWARNING);
              Edit2.SetFocus;
            end
          else
            begin
              //sukses login
              Fmenu.Show;
              Fmenu.StatusBar1.Panels[1].Text:=FieldValues['nama_lengkap'];
              Hide;
            end;
        end;
    end;
end;

procedure TFlogin.Button2Click(Sender: TObject);
procedure keluar;
begin
  if (Application.MessageBox('Apakah anda ingin keluar dari aplikasi ini?','Konfirmasi Ulang',MB_YESNO or MB_ICONQUESTION)=ID_YES) then
    begin
      Application.MessageBox('Semoga hari anda menyenangkan.','PHARMALIS',MB_OK);
      Application.Terminate;
    end;
end;
procedure hapus;
begin
  edit1.Clear;
  edit2.Clear;
  edit1.SetFocus;
end;
begin
  if button2.Caption='KELUAR' then
    keluar
  else if Button2.Caption='BATAL' then
       
    hapus;
end;

procedure TFlogin.Edit1Change(Sender: TObject);
begin
//mengaktidkan tombol login
  if (edit1.Text='')or(edit2.Text='') then
    button1.enabled:=false
  else
    button1.Enabled:=true;

//mengubah fungsi tombol batal
  if (edit2.Text='')and(edit1.Text='') then
    button2.Caption:='KELUAR'
  else
    button2.Caption:='BATAL';
end;

procedure TFlogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
    if edit2.Text='' then
      begin
        Application.MessageBox('Maaf Kolom Password masih kosong.','Kesalahan',MB_OK or MB_ICONWARNING);
        edit1.SetFocus;
      end
    else
      button1.Click;
  end;
end;

procedure TFlogin.Edit2Change(Sender: TObject);
begin
 //mengaktidkan tombol login
  if (edit1.Text='')or(edit2.Text='') then
    button1.enabled:=false
  else
    begin
      if label3.Caption='DISCONNECTED' then
        button1.enabled:=false
      else
        button1.Enabled:=true;
    end;

//mengubah fungsi tombol batal
  if (edit2.Text='')and(edit1.Text='') then
    button2.Caption:='KELUAR'
  else
    button2.Caption:='BATAL';
end;

procedure TFlogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
    if edit1.Text='' then
      begin
        Application.MessageBox('Maaf Kolom Username masih kosong.','Kesalahan',MB_OK or MB_ICONWARNING);
        edit1.SetFocus;
      end
    else
      button1.Click;
  end;
end;

procedure TFlogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.MessageBox('Semoga hari anda menyenangkan.','PHARMALIS',MB_OK);
end;

end.

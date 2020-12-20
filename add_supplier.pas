unit add_supplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  ZAbstractTable, ZDataset, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  Vcl.Mask, Data.Win.ADODB;

type
  Tfadd_supplier = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Memo1: TMemo;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    MaskEdit1: TMaskEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    GroupBox3: TGroupBox;
    Edit7: TEdit;
    ADOQuery1: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure kodeotomatis;
    procedure keyboardcek;
  public
    { Public declarations }
  end;

var
  fadd_supplier: Tfadd_supplier;

implementation

{$R *.dfm}

uses mainmenu, mst_supplier;

procedure tfadd_supplier.kodeotomatis;
var Kode,Nourut : string;
    i : integer;
begin
  kode:='SP';
  With ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select Max(right(id, 7)) from mst_supplier ' +
              'Where left(id, 2) = "'+kode+'";');
      Open;
    end;
  if ADOQuery1.Fields[0].AsString = '' then
    Nourut := '0000001'
  else
    Nourut := IntToStr(ADOQuery1.Fields[0].AsInteger + 1);

  if length(Nourut) < 7 then
    begin
      for i := length(Nourut) to 6 do
        Nourut := '0' + Nourut;
    end;
  edit7.Text:= kode + Nourut;
end;

procedure Tfadd_supplier.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then
        button1.Click
      else
        ShowMessage('Ada kolom yang belum diisi. Silahkan periksa kembali.');
    end;
end;

procedure Tfadd_supplier.Memo1Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfadd_supplier.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then
        button1.Click
      else
        ShowMessage('Ada kolom yang belum diisi. Silahkan periksa kembali.');
    end;
end;

procedure tfadd_supplier.keyboardcek;
begin
  //button SIMPAN
  if (edit1.Text<>'')AND(edit2.Text<>'')AND(edit5.Text<>'')AND(edit4.Text<>'') then
    Button1.Enabled:=true
  else
    Button1.Enabled:=false;

  if (edit1.Text<>'')OR(edit2.Text<>'')OR(edit5.Text<>'')OR(maskedit1.Text<>'')OR(edit3.Text<>'')OR(edit4.Text<>'') then
    Button2.Enabled:=true
  else
    Button2.Enabled:=false;
end;

procedure Tfadd_supplier.Button1Click(Sender: TObject);
begin
  with ADOQuery1 do
    begin
      active:=false;
      sql.Clear;
      sql.Text:='INSERT INTO mst_supplier VALUES ('+
                  QuotedStr(edit7.Text)+','+
                  QuotedStr(edit1.Text)+','+
                  QuotedStr(memo1.Text)+','+
                  QuotedStr(edit2.Text)+','+
                  QuotedStr(edit3.Text)+','+
                  QuotedStr(maskedit1.Text)+','+
                  QuotedStr(edit4.Text)+','+
                  QuotedStr(edit5.Text)+','+
                  QuotedStr(Fmenu.StatusBar1.Panels[1].Text)+','+
                  '"0")';
      ExecSQL;
    end;
  ShowMessage('Data supplier dengan id '+edit7.Text+' berhasil disimpan.'+#13+#13+
                  'Apabila data yang telah ditambahkan tidak muncul atau tidak berubah pada tabel data supplier, silahkan klik REFRESH DATA.');

  if (Application.MessageBox('Apakah anda ingin menambahkan supplier baru?','Konfirmasi Ulang',MB_YESNO or MB_ICONQUESTION)=ID_YES) then
    begin
      edit1.Clear;edit2.Clear;edit3.Clear;edit4.Clear;edit5.Clear;
      maskedit1.clear;memo1.Clear;kodeotomatis;edit1.SetFocus;button2.Enabled:=false;
    end
  else
    begin
      fmst_supplier.BitBtn1.click;
      Close;
    end;
end;

procedure Tfadd_supplier.Button2Click(Sender: TObject);
begin
  if (Application.MessageBox('Apakah anda yakin?','Konfirmasi Ulang',MB_YESNO or MB_ICONQUESTION)=ID_YES) then
    begin
      edit1.Clear;edit2.Clear;edit3.Clear;edit4.Clear;edit5.Clear;
      maskedit1.clear;memo1.Clear;kodeotomatis;edit1.SetFocus;button2.Enabled:=false;
    end;
end;

procedure Tfadd_supplier.Edit1Change(Sender: TObject);
begin
  keyboardcek;

end;

procedure Tfadd_supplier.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then
        button1.Click
      else
        ShowMessage('Ada kolom yang belum diisi. Silahkan periksa kembali.');
    end;
end;

procedure Tfadd_supplier.Edit2Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfadd_supplier.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then
        button1.Click
      else
        ShowMessage('Ada kolom yang belum diisi. Silahkan periksa kembali.');
    end;
end;

procedure Tfadd_supplier.Edit3Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfadd_supplier.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then
        button1.Click
      else
        ShowMessage('Ada kolom yang belum diisi. Silahkan periksa kembali.');
    end;
end;

procedure Tfadd_supplier.Edit4Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfadd_supplier.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then
        button1.Click
      else
        ShowMessage('Ada kolom yang belum diisi. Silahkan periksa kembali.');
    end;
end;

procedure Tfadd_supplier.Edit5Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfadd_supplier.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then
        button1.Click
      else
        ShowMessage('Ada kolom yang belum diisi. Silahkan periksa kembali.');
    end;
end;

procedure Tfadd_supplier.FormActivate(Sender: TObject);
begin
  kodeotomatis;
end;

procedure Tfadd_supplier.FormCreate(Sender: TObject);
begin
  kodeotomatis;
end;

end.

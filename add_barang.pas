unit add_barang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.ExtCtrls;

type
  Tfadd_barang = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ADOQuery1: TADOQuery;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    ADOTable1: TADOTable;
    GroupBox5: TGroupBox;
    Label27: TLabel;
    Edit10: TEdit;
    Label28: TLabel;
    Label29: TLabel;
    Edit11: TEdit;
    Label30: TLabel;
    Label31: TLabel;
    Edit12: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    Edit13: TEdit;
    Label34: TLabel;
    Label35: TLabel;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    ComboBox3: TComboBox;
    Edit6: TEdit;
    ComboBox4: TComboBox;
    Edit7: TEdit;
    ComboBox5: TComboBox;
    Edit8: TEdit;
    GroupBox6: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    GroupBox4: TGroupBox;
    Edit9: TEdit;
    Label18: TLabel;
    Label17: TLabel;
    Label39: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
  private
    { Private declarations }
    procedure kodeotomatis;
    procedure keyboardcek;
  public
    { Public declarations }
  end;

var
  fadd_barang: Tfadd_barang;

implementation

{$R *.dfm}

uses mainmenu, mst_barang;

procedure Tfadd_barang.kodeotomatis;
var Kode,Nourut : string;
    i : integer;
begin
  //ID BARANG
  if ComboBox1.ItemIndex=0 then
    begin
      kode:='OB';
      //merubah item hint
      Edit1.TextHint:='Nama Obat... ';
    end
  else
    begin
      kode:='AK';
      //merubah item hint
      Edit1.TextHint:='Nama Alkes...';
    end;
  With ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select Max(right(id, 7)) from mst_barang ' +
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
  edit9.Text:= kode + Nourut;
  //ISI KOMBOBOX jenis
  ComboBox2.Clear;
  with ADOQuery1 do
    begin
      active:=false;
      sql.Clear;
      sql.Text:='SELECT * FROM combobox_list WHERE kategori='+QuotedStr(ComboBox1.Text)+' ORDER BY nama ASC';
      active:=true;
      while not EoF do
        begin
          ComboBox2.Items.Add(FieldByName('nama').AsString);
          Next;
        end;
    end;
  ComboBox3.Clear;ComboBox4.Clear;ComboBox5.Clear;
  with ADOQuery1 do
    begin
      active:=false;
      sql.Clear;
      sql.Text:='SELECT nama_supplier FROM mst_supplier ORDER BY nama_supplier ASC';
      active:=true;
      while not EoF do
        begin
          ComboBox3.Items.Add(FieldByName('nama_supplier').AsString);
          ComboBox4.Items.Add(FieldByName('nama_supplier').AsString);
          ComboBox5.Items.Add(FieldByName('nama_supplier').AsString);
          Next;
        end;
    end;
  ComboBox2.Clear;
  with ADOQuery1 do
    begin
      active:=false;
      sql.Clear;
      sql.Text:='SELECT * FROM combobox_list WHERE kategori='+QuotedStr(ComboBox1.Text)+' ORDER BY nama ASC';
      active:=true;
      while not EoF do
        begin
          ComboBox2.Items.Add(FieldByName('nama').AsString);
          Next;
        end;
    end;

  ComboBox6.Clear;ComboBox7.Clear;ComboBox8.Clear;
  with ADOQuery1 do
    begin
      active:=false;
      sql.Clear;
      sql.Text:='SELECT * FROM storage ORDER BY nama ASC';
      active:=true;
      while not EoF do
        begin
          ComboBox6.Items.Add(FieldByName('nama').AsString);
          ComboBox7.Items.Add(FieldByName('nama').AsString);
          ComboBox8.Items.Add(FieldByName('nama').AsString);
          Next;
        end;
    end;
  ComboBox1.SetFocus;
end;

procedure Tfadd_barang.keyboardcek;
begin
  if (ComboBox2.ItemIndex<>-1)AND(edit1.Text<>'')AND(edit2.Text<>'')AND(edit3.Text<>'')AND(edit4.Text<>'')AND(edit6.Text<>'')AND(edit10.Text<>'')AND(ComboBox3.ItemIndex<>-1)AND(ComboBox6.ItemIndex<>-1) then
    Button1.Enabled:=true else Button1.Enabled:=false;

end;

procedure Tfadd_barang.Button1Click(Sender: TObject);
begin
  with ADOTable1 do
    begin
      append;
        FieldValues['id']:=edit9.Text;
        FieldValues['nama_barang']:=edit1.Text;
        FieldValues['kategori']:=ComboBox1.Text;
        FieldValues['jenis']:=combobox2.Text;
        FieldValues['satuan_besar']:=edit2.Text;
        FieldValues['isi']:=edit3.Text;
        FieldValues['satuan_kecil']:=edit4.Text;
        if edit5.Text<>'' then
          FieldValues['barcode']:=edit5.Text;
        FieldValues['supplier_1']:=ComboBox3.Text;
        FieldValues['hb_1']:=edit6.Text;
        if ComboBox4.ItemIndex<>-1 then
          FieldValues['supplier_2']:=ComboBox4.Text;
        if edit7.Text<>'' then
          FieldValues['hb_2']:=edit7.Text;
        if ComboBox5.ItemIndex<>-1 then
          FieldValues['supplier_3']:=ComboBox5.Text;
        if edit8.Text<>'' then
          FieldValues['hb_3']:=edit8.Text;

        FieldValues['margin_1']:=edit10.Text;
        if edit11.Text<>'' then
          FieldValues['margin_2']:=edit11.Text;
        if edit12.Text<>'' then
          FieldValues['margin_3']:=edit12.Text;
        if edit13.Text<>'' then
          FieldValues['margin_4']:=edit13.Text;

        FieldValues['lokasi_1']:=combobox6.text;
        if combobox7.text<>'' then
          FieldValues['lokasi_2']:=combobox7.text;
        if combobox8.text<>'' then
          FieldValues['lokasi_3']:=combobox8.text;

      post;
    end;
  ShowMessage('Data '+ComboBox1.Text+' dengan id '+edit7.Text+' berhasil disimpan.'+#13+#13+
                  'Apabila data yang telah ditambahkan tidak muncul atau tidak berubah pada tabel data barang, silahkan klik REFRESH DATA.');

  if (Application.MessageBox('Apakah anda ingin menambahkan master barang baru?','Konfirmasi Ulang',MB_YESNO or MB_ICONQUESTION)=ID_YES) then
    begin
      edit1.Clear;edit2.Clear;edit3.Clear;edit4.Clear;edit5.Clear;edit6.Clear;edit7.Clear;
      edit8.Clear;edit9.Clear;edit10.Clear;edit11.Clear;edit12.Clear;edit13.Clear;
      ComboBox1.SetFocus;button1.Enabled:=false;kodeotomatis;ComboBox1.ItemIndex:=0;
    end
  else
    begin
      fmst_barang.BitBtn1.Click;
      Close;
    end;
end;

procedure Tfadd_barang.Button2Click(Sender: TObject);
begin
  if (Application.MessageBox('Apakah anda yakin?','Konfirmasi Ulang',MB_YESNO or MB_ICONQUESTION)=ID_YES) then
    begin
      edit1.Clear;edit2.Clear;edit3.Clear;edit4.Clear;edit5.Clear;edit6.Clear;edit7.Clear;
      edit8.Clear;edit9.Clear;edit10.Clear;edit11.Clear;edit12.Clear;edit13.Clear;
      ComboBox1.SetFocus;button1.Enabled:=false;kodeotomatis;ComboBox1.ItemIndex:=0;
    end;
end;

procedure Tfadd_barang.ComboBox1Change(Sender: TObject);
begin
  kodeotomatis;
end;

procedure Tfadd_barang.ComboBox2Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfadd_barang.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.ComboBox3Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfadd_barang.ComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.ComboBox4Change(Sender: TObject);
begin
  if ComboBox4.ItemIndex<>-1 then
    begin
      edit7.Enabled:=true;
      edit7.Color:=clWindow;
    end
  else
    begin
      edit7.Enabled:=false;
      edit7.Color:=clmenu;
    end;
end;

procedure Tfadd_barang.ComboBox4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.ComboBox5Change(Sender: TObject);
begin
  if ComboBox5.ItemIndex<>-1 then
    begin
      edit8.Enabled:=true;
      edit8.Color:=clWindow;
    end
  else
    begin
      edit8.Enabled:=false;
      edit8.Color:=clmenu;
    end;
end;

procedure Tfadd_barang.ComboBox5KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.Edit10Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfadd_barang.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.Edit13KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.Edit1Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfadd_barang.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.Edit2Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfadd_barang.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.Edit3Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfadd_barang.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.Edit4Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfadd_barang.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.Edit6Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfadd_barang.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then button1.Click else
        ShowMessage('Masih terdapat kolom yang belum diisi. Silahkan lengkapi data barang tersebut.');
    end;
end;

procedure Tfadd_barang.FormActivate(Sender: TObject);
begin
  kodeotomatis;
  edit1.Clear;edit2.Clear;edit3.Clear;edit4.Clear;edit5.Clear;edit6.Clear;edit7.Clear;
  edit8.Clear;edit9.Clear;edit10.Clear;edit11.Clear;edit12.Clear;edit13.Clear;
  ComboBox1.SetFocus;button1.Enabled:=false;kodeotomatis;ComboBox1.ItemIndex:=0;
end;

end.

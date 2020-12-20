unit edit_supplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  ZAbstractTable, ZDataset, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  Vcl.Mask, Data.Win.ADODB;

type
  Tfedit_supplier = class(TForm)
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
    GroupBox3: TGroupBox;
    Edit7: TEdit;
    ADOQuery1: TADOQuery;
    procedure Button2Click(Sender: TObject);
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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure keyboardcek;
  public
    { Public declarations }
  end;

var
  fedit_supplier: Tfedit_supplier;

implementation

{$R *.dfm}

uses mainmenu, mst_supplier;

procedure Tfedit_supplier.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then
        button1.Click
      else
        ShowMessage('Ada kolom yang belum diisi. Silahkan periksa kembali.');
    end;
end;

procedure Tfedit_supplier.Memo1Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfedit_supplier.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then
        button1.Click
      else
        ShowMessage('Ada kolom yang belum diisi. Silahkan periksa kembali.');
    end;
end;

procedure tfedit_supplier.keyboardcek;
begin
  //button SIMPAN
  if (edit1.Text<>'')AND(edit2.Text<>'')AND(edit5.Text<>'')AND(edit4.Text<>'') then
    Button1.Enabled:=true
  else
    Button1.Enabled:=false;
end;

procedure Tfedit_supplier.Button1Click(Sender: TObject);
begin
  if (Application.MessageBox('Apakah anda yakin?','Konfirmasi Ulang',MB_YESNO or MB_ICONQUESTION)=ID_YES) then
    begin
      with ADOQuery1 do
        begin
          active:=false;
          sql.Clear;
          sql.Text:='UPDATE mst_supplier SET nama_supplier='+
                      QuotedStr(edit1.Text)+', alamat='+
                      QuotedStr(memo1.Text)+', telepon='+
                      QuotedStr(edit2.Text)+', email='+
                      QuotedStr(edit3.Text)+', npwp='+
                      QuotedStr(maskedit1.Text)+', nama_sales='+
                      QuotedStr(edit4.Text)+', tlp='+
                      QuotedStr(edit5.Text)+', user='+
                      QuotedStr(Fmenu.StatusBar1.Panels[1].Text)+
                      ' WHERE id='+QuotedStr(edit7.Text);
          ExecSQL;
        end;
      close;
      fmst_supplier.BitBtn1.click;
      ShowMessage('Data supplier dengan id '+edit7.Text+' berhasil diupdate.'+#13+#13+
                  'Apabila data yang telah diupdate tidak muncul atau tidak berubah pada tabel data supplier, silahkan klik REFRESH DATA.');

    end;
end;

procedure Tfedit_supplier.Button2Click(Sender: TObject);
begin
  if (Application.MessageBox('Apakah anda yakin?','Konfirmasi Ulang',MB_YESNO or MB_ICONQUESTION)=ID_YES) then
    begin
      edit1.Clear;edit2.Clear;edit3.Clear;edit4.Clear;edit5.Clear;
      maskedit1.clear;memo1.Clear;edit1.SetFocus;
    end;
end;

procedure Tfedit_supplier.Edit1Change(Sender: TObject);
begin
  keyboardcek;

end;

procedure Tfedit_supplier.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then
        button1.Click
      else
        ShowMessage('Ada kolom yang belum diisi. Silahkan periksa kembali.');
    end;
end;

procedure Tfedit_supplier.Edit2Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfedit_supplier.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then
        button1.Click
      else
        ShowMessage('Ada kolom yang belum diisi. Silahkan periksa kembali.');
    end;
end;

procedure Tfedit_supplier.Edit3Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfedit_supplier.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then
        button1.Click
      else
        ShowMessage('Ada kolom yang belum diisi. Silahkan periksa kembali.');
    end;
end;

procedure Tfedit_supplier.Edit4Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfedit_supplier.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then
        button1.Click
      else
        ShowMessage('Ada kolom yang belum diisi. Silahkan periksa kembali.');
    end;
end;

procedure Tfedit_supplier.Edit5Change(Sender: TObject);
begin
  keyboardcek;
end;

procedure Tfedit_supplier.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if button1.Enabled=true then
        button1.Click
      else
        ShowMessage('Ada kolom yang belum diisi. Silahkan periksa kembali.');
    end;
end;

procedure Tfedit_supplier.FormShow(Sender: TObject);
begin
  with ADOquery1 do
    begin
      active:=false;
      sql.Clear;
      sql.Text:='SELECT * FROM mst_supplier WHERE id='+QuotedStr(edit7.Text);
      active:=true;
      if RecordCount<>0 then
        begin
          edit1.Text:=FieldValues['nama_supplier'];
          memo1.Text:=FieldValues['alamat'];
          edit2.Text:=FieldValues['telepon'];
          edit3.Text:=FieldValues['email'];
          maskedit1.Text:=FieldValues['npwp'];
          edit4.Text:=FieldValues['nama_sales'];
          edit5.Text:=FieldValues['tlp'];
        end;
    end;
end;

end.

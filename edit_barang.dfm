object fedit_barang: Tfedit_barang
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Tambah Barang Baru'
  ClientHeight = 436
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object Label18: TLabel
    Left = 423
    Top = 351
    Width = 68
    Height = 16
    Caption = ': Wajib diisi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel
    Left = 399
    Top = 351
    Width = 18
    Height = 16
    Caption = '(*)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 57
    Width = 371
    Height = 83
    Caption = ' KATEGORI '
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 21
      Width = 91
      Height = 16
      Caption = 'Kategori Barang'
    end
    object Label2: TLabel
      Left = 14
      Top = 51
      Width = 72
      Height = 16
      Caption = 'Jenis Barang'
    end
    object Label19: TLabel
      Left = 98
      Top = 21
      Width = 28
      Height = 16
      Caption = '  *   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 79
      Top = 51
      Width = 28
      Height = 16
      Caption = '  *   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox2: TComboBox
      Left = 117
      Top = 48
      Width = 245
      Height = 24
      Style = csDropDownList
      TabOrder = 0
      TextHint = 'Pilih salah satu...'
      OnChange = ComboBox2Change
      OnKeyPress = ComboBox2KeyPress
    end
    object Edit14: TEdit
      Left = 117
      Top = 18
      Width = 245
      Height = 24
      Color = clMenu
      ReadOnly = True
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 146
    Width = 371
    Height = 143
    Caption = ' DETAIL BARANG '
    TabOrder = 1
    object Label3: TLabel
      Left = 14
      Top = 21
      Width = 33
      Height = 16
      Caption = 'Nama'
    end
    object Label4: TLabel
      Left = 14
      Top = 51
      Width = 76
      Height = 16
      Caption = 'Satuan Besar'
    end
    object Label5: TLabel
      Left = 264
      Top = 51
      Width = 13
      Height = 16
      Caption = 'Isi'
    end
    object Label6: TLabel
      Left = 14
      Top = 111
      Width = 46
      Height = 16
      Caption = 'Barcode'
    end
    object Label7: TLabel
      Left = 14
      Top = 81
      Width = 70
      Height = 16
      Caption = 'Satuan Kecil'
    end
    object Label21: TLabel
      Left = 40
      Top = 21
      Width = 28
      Height = 16
      Caption = '  *   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 271
      Top = 51
      Width = 28
      Height = 16
      Caption = '  *   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 84
      Top = 51
      Width = 28
      Height = 16
      Caption = '  *   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 78
      Top = 81
      Width = 28
      Height = 16
      Caption = '  *   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 117
      Top = 18
      Width = 245
      Height = 24
      MaxLength = 255
      TabOrder = 0
      TextHint = 'Nama Obat...'
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 117
      Top = 48
      Width = 116
      Height = 24
      Hint = 'Contoh: Box, Karton dll.'
      MaxLength = 20
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TextHint = 'Satuan Terbesar...'
      OnChange = Edit2Change
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 296
      Top = 48
      Width = 66
      Height = 24
      Hint = 'Jumlah dalam Satuan terbesar'
      NumbersOnly = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TextHint = 'Jumlah...'
      OnChange = Edit3Change
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 117
      Top = 78
      Width = 116
      Height = 24
      Hint = 'Contoh: tablet, Fls, Botol dll.'
      MaxLength = 60
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TextHint = 'Satuan terkecil...'
      OnChange = Edit4Change
      OnKeyPress = Edit4KeyPress
    end
    object Edit5: TEdit
      Left = 117
      Top = 108
      Width = 245
      Height = 24
      Hint = 'Barcode id'
      CharCase = ecUpperCase
      MaxLength = 60
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TextHint = 'Id Barcode...'
      OnKeyPress = Edit5KeyPress
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 295
    Width = 371
    Height = 87
    Caption = ' MARGIN PENJUALAN '
    TabOrder = 2
    object Label27: TLabel
      Left = 14
      Top = 24
      Width = 57
      Height = 16
      Caption = 'MARGIN 1'
    end
    object Label28: TLabel
      Left = 135
      Top = 24
      Width = 16
      Height = 16
      Caption = '% '
    end
    object Label29: TLabel
      Left = 211
      Top = 24
      Width = 57
      Height = 16
      Caption = 'MARGIN 2'
    end
    object Label30: TLabel
      Left = 332
      Top = 24
      Width = 16
      Height = 16
      Caption = '% '
    end
    object Label31: TLabel
      Left = 14
      Top = 54
      Width = 57
      Height = 16
      Caption = 'MARGIN 3'
    end
    object Label32: TLabel
      Left = 135
      Top = 54
      Width = 16
      Height = 16
      Caption = '% '
    end
    object Label33: TLabel
      Left = 211
      Top = 54
      Width = 57
      Height = 16
      Caption = 'MARGIN 4'
    end
    object Label34: TLabel
      Left = 332
      Top = 54
      Width = 16
      Height = 16
      Caption = '% '
    end
    object Label35: TLabel
      Left = 63
      Top = 24
      Width = 28
      Height = 16
      Caption = '  *   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit10: TEdit
      Left = 82
      Top = 21
      Width = 47
      Height = 24
      MaxLength = 3
      NumbersOnly = True
      TabOrder = 0
      TextHint = '...'
      OnChange = Edit10Change
      OnKeyPress = Edit10KeyPress
    end
    object Edit11: TEdit
      Left = 279
      Top = 21
      Width = 47
      Height = 24
      MaxLength = 3
      NumbersOnly = True
      TabOrder = 1
      TextHint = '...'
      OnKeyPress = Edit11KeyPress
    end
    object Edit12: TEdit
      Left = 82
      Top = 51
      Width = 47
      Height = 24
      MaxLength = 3
      NumbersOnly = True
      TabOrder = 2
      TextHint = '...'
      OnKeyPress = Edit12KeyPress
    end
    object Edit13: TEdit
      Left = 279
      Top = 51
      Width = 47
      Height = 24
      MaxLength = 3
      NumbersOnly = True
      TabOrder = 3
      TextHint = '...'
      OnKeyPress = Edit13KeyPress
    end
  end
  object GroupBox3: TGroupBox
    Left = 385
    Top = 8
    Width = 372
    Height = 212
    Caption = ' SUPPLIER '
    TabOrder = 3
    object Label8: TLabel
      Left = 14
      Top = 23
      Width = 58
      Height = 16
      Caption = 'Supplier 1'
    end
    object Label9: TLabel
      Left = 14
      Top = 53
      Width = 58
      Height = 16
      Caption = 'Harga Beli'
    end
    object Label10: TLabel
      Left = 117
      Top = 53
      Width = 244
      Height = 16
      Caption = 'Rp.                                                      ,-'
    end
    object Label11: TLabel
      Left = 14
      Top = 83
      Width = 58
      Height = 16
      Caption = 'Supplier 2'
    end
    object Label12: TLabel
      Left = 14
      Top = 113
      Width = 58
      Height = 16
      Caption = 'Harga Beli'
    end
    object Label13: TLabel
      Left = 117
      Top = 113
      Width = 244
      Height = 16
      Caption = 'Rp.                                                      ,-'
    end
    object Label14: TLabel
      Left = 14
      Top = 143
      Width = 58
      Height = 16
      Caption = 'Supplier 3'
    end
    object Label15: TLabel
      Left = 14
      Top = 173
      Width = 58
      Height = 16
      Caption = 'Harga Beli'
    end
    object Label16: TLabel
      Left = 117
      Top = 173
      Width = 244
      Height = 16
      Caption = 'Rp.                                                      ,-'
    end
    object Label25: TLabel
      Left = 64
      Top = 23
      Width = 28
      Height = 16
      Caption = '  *   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 66
      Top = 53
      Width = 28
      Height = 16
      Caption = '  *   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox3: TComboBox
      Left = 117
      Top = 20
      Width = 244
      Height = 24
      Style = csDropDownList
      TabOrder = 0
      TextHint = 'Pilih salah satu...'
      OnChange = ComboBox3Change
      OnKeyPress = ComboBox3KeyPress
    end
    object Edit6: TEdit
      Left = 141
      Top = 50
      Width = 204
      Height = 24
      Hint = 'Contoh: Box, Karton dll.'
      MaxLength = 20
      NumbersOnly = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TextHint = 'Nominal Harga Beli..'
      OnChange = Edit6Change
      OnKeyPress = Edit6KeyPress
    end
    object ComboBox4: TComboBox
      Left = 117
      Top = 80
      Width = 244
      Height = 24
      Style = csDropDownList
      TabOrder = 2
      TextHint = 'Pilih salah satu...'
      OnChange = ComboBox4Change
      OnKeyPress = ComboBox4KeyPress
    end
    object Edit7: TEdit
      Left = 141
      Top = 110
      Width = 204
      Height = 24
      Hint = 'Contoh: Box, Karton dll.'
      Color = clMenu
      Enabled = False
      MaxLength = 20
      NumbersOnly = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TextHint = 'Nominal Harga Beli..'
      OnKeyPress = Edit7KeyPress
    end
    object ComboBox5: TComboBox
      Left = 117
      Top = 140
      Width = 244
      Height = 24
      Style = csDropDownList
      TabOrder = 4
      TextHint = 'Pilih salah satu...'
      OnChange = ComboBox5Change
      OnKeyPress = ComboBox5KeyPress
    end
    object Edit8: TEdit
      Left = 141
      Top = 170
      Width = 204
      Height = 24
      Hint = 'Contoh: Box, Karton dll.'
      Color = clMenu
      Enabled = False
      MaxLength = 20
      NumbersOnly = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TextHint = 'Nominal Harga Beli..'
      OnKeyPress = Edit8KeyPress
    end
  end
  object GroupBox6: TGroupBox
    Left = 385
    Top = 226
    Width = 372
    Height = 119
    Caption = ' LOKASI PENYIMPANAN  '
    TabOrder = 4
    object Label36: TLabel
      Left = 14
      Top = 27
      Width = 87
      Height = 16
      Caption = 'Lokasi Pertama'
    end
    object Label37: TLabel
      Left = 14
      Top = 57
      Width = 74
      Height = 16
      Caption = 'Lokasi Kedua'
    end
    object Label38: TLabel
      Left = 14
      Top = 87
      Width = 74
      Height = 16
      Caption = 'Lokasi Ketiga'
    end
    object Label39: TLabel
      Left = 102
      Top = 27
      Width = 8
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox6: TComboBox
      Left = 117
      Top = 24
      Width = 244
      Height = 24
      Style = csDropDownList
      TabOrder = 0
      TextHint = 'Pilih salah satu...'
    end
    object ComboBox7: TComboBox
      Left = 117
      Top = 54
      Width = 244
      Height = 24
      Style = csDropDownList
      TabOrder = 1
      TextHint = 'Pilih salah satu...'
    end
    object ComboBox8: TComboBox
      Left = 117
      Top = 84
      Width = 244
      Height = 24
      Style = csDropDownList
      TabOrder = 2
      TextHint = 'Pilih salah satu...'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 388
    Width = 765
    Height = 48
    Align = alBottom
    TabOrder = 5
    object Button1: TButton
      Left = 385
      Top = 7
      Width = 216
      Height = 33
      Caption = 'SIMPAN DATA BARANG [ENTER]'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 607
      Top = 7
      Width = 150
      Height = 33
      Caption = 'RESET'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 8
    Width = 371
    Height = 43
    Caption = ' ID BARANG '
    TabOrder = 6
    object Edit9: TEdit
      Left = 2
      Top = 18
      Width = 367
      Height = 23
      Cursor = crNo
      Align = alClient
      Alignment = taCenter
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = Edit9Change
      ExplicitHeight = 24
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Fmenu.ADOConnection1
    Parameters = <>
    Left = 336
    Top = 32
  end
  object ADOTable1: TADOTable
    Connection = Fmenu.ADOConnection1
    CursorType = ctStatic
    TableName = 'mst_barang'
    Left = 232
    Top = 32
  end
end

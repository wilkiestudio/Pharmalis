object fadd_supplier: Tfadd_supplier
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Tambah Supplier Baru'
  ClientHeight = 474
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label13: TLabel
    Left = 8
    Top = 405
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
  object Label14: TLabel
    Left = 32
    Top = 405
    Width = 68
    Height = 16
    Caption = ': Wajib diisi'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 59
    Width = 345
    Height = 245
    Caption = ' DATA SUPPLIER '
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 23
      Width = 84
      Height = 16
      Caption = 'Nama Supplier'
    end
    object Label2: TLabel
      Left = 11
      Top = 53
      Width = 40
      Height = 16
      Caption = 'Alamat'
    end
    object Label3: TLabel
      Left = 11
      Top = 150
      Width = 46
      Height = 16
      Caption = 'Telepon'
    end
    object Label4: TLabel
      Left = 97
      Top = 23
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
    object Label5: TLabel
      Left = 52
      Top = 53
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
    object Label6: TLabel
      Left = 58
      Top = 150
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
    object Label7: TLabel
      Left = 11
      Top = 180
      Width = 35
      Height = 16
      Caption = 'E-Mail'
    end
    object Label8: TLabel
      Left = 11
      Top = 210
      Width = 53
      Height = 16
      Caption = 'No NPWP'
    end
    object Edit1: TEdit
      Left = 122
      Top = 20
      Width = 210
      Height = 24
      Cursor = crIBeam
      Hint = 'Kolom input nama Perusahaan Supplier'
      MaxLength = 255
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TextHint = 'Nama Perusahaan Supplier...'
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Memo1: TMemo
      Left = 122
      Top = 50
      Width = 210
      Height = 91
      Cursor = crIBeam
      Hint = 'Kolom alamat supplier'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnChange = Memo1Change
      OnKeyPress = Memo1KeyPress
    end
    object Edit2: TEdit
      Left = 122
      Top = 147
      Width = 210
      Height = 24
      Cursor = crIBeam
      Hint = 'Kolom input No Telepon Supplier'
      MaxLength = 14
      NumbersOnly = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TextHint = 'No Telepon Supplier...'
      OnChange = Edit2Change
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 122
      Top = 177
      Width = 210
      Height = 24
      Cursor = crIBeam
      Hint = 'Kolom input No Telepon Supplier'
      MaxLength = 255
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TextHint = 'E-Mail Supplier...'
      OnChange = Edit3Change
      OnKeyPress = Edit3KeyPress
    end
    object MaskEdit1: TMaskEdit
      Left = 122
      Top = 207
      Width = 210
      Height = 24
      EditMask = '99.999.999.9-999.000;1;_'
      MaxLength = 20
      TabOrder = 4
      Text = '  .   .   . -   .   '
      OnKeyPress = MaskEdit1KeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 310
    Width = 345
    Height = 89
    Caption = ' NAMA SALES '
    TabOrder = 1
    object Label9: TLabel
      Left = 11
      Top = 23
      Width = 68
      Height = 16
      Caption = 'Nama Sales'
    end
    object Label10: TLabel
      Left = 81
      Top = 23
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
    object Label11: TLabel
      Left = 47
      Top = 53
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
    object Label12: TLabel
      Left = 11
      Top = 53
      Width = 34
      Height = 16
      Caption = 'No HP'
    end
    object Edit4: TEdit
      Left = 122
      Top = 20
      Width = 210
      Height = 24
      MaxLength = 160
      TabOrder = 0
      TextHint = 'Nama Sales Supplier...'
      OnChange = Edit4Change
      OnKeyPress = Edit4KeyPress
    end
    object Edit5: TEdit
      Left = 122
      Top = 50
      Width = 210
      Height = 24
      MaxLength = 14
      NumbersOnly = True
      TabOrder = 1
      TextHint = 'No Telepon Sales...'
      OnChange = Edit5Change
      OnKeyPress = Edit5KeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 424
    Width = 361
    Height = 50
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 8
      Top = 11
      Width = 218
      Height = 32
      Caption = 'SIMPAN DATA [ENTER]'
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
      Left = 232
      Top = 11
      Width = 121
      Height = 32
      Caption = 'RESET'
      Enabled = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 8
    Width = 345
    Height = 45
    Caption = 'ID SUPPLIER'
    TabOrder = 3
    object Edit7: TEdit
      Left = 2
      Top = 18
      Width = 341
      Height = 25
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
      Text = 'SP0000000'
      ExplicitHeight = 24
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Fmenu.ADOConnection1
    Parameters = <>
    Left = 56
    Top = 152
  end
end

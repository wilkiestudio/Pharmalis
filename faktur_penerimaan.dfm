object Fsurat_pesanan: TFsurat_pesanan
  Left = 0
  Top = 0
  Caption = 'Surat Pemesanan ke PBF'
  ClientHeight = 573
  ClientWidth = 1052
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 1036
    Height = 118
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Align = alTop
    Caption = 'DETAIL FAKTUR'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 21
      Height = 16
      Caption = 'PBF'
    end
    object Label2: TLabel
      Left = 16
      Top = 54
      Width = 86
      Height = 16
      Caption = 'Tanggal Faktur'
    end
    object Label3: TLabel
      Left = 16
      Top = 84
      Width = 74
      Height = 16
      Caption = 'Jatuh Tempo'
    end
    object ComboBox1: TComboBox
      Left = 130
      Top = 21
      Width = 191
      Height = 24
      Style = csDropDownList
      TabOrder = 0
      TextHint = 'Pilih Salah Satu...'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 130
      Top = 51
      Width = 191
      Height = 24
      Date = 44170.853003240740000000
      Time = 44170.853003240740000000
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 130
      Top = 81
      Width = 191
      Height = 24
      Date = 44170.853003240740000000
      Time = 44170.853003240740000000
      TabOrder = 2
    end
    object Panel1: TPanel
      Left = 327
      Top = 21
      Width = 3
      Height = 84
      Align = alCustom
      BevelOuter = bvLowered
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 8
    Top = 132
    Width = 1036
    Height = 293
    Margins.Left = 8
    Margins.Right = 8
    Align = alTop
    Caption = ' TABEL BARANG '
    TabOrder = 1
  end
  object ADOQuery1: TADOQuery
    Connection = Fmenu.ADOConnection1
    Parameters = <>
    Left = 352
    Top = 32
  end
end

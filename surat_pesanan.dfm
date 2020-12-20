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
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1052
    Height = 89
    Align = alTop
    Caption = ' Detail Surat Pesanan '
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 34
      Height = 16
      Caption = 'No SP'
    end
    object Label2: TLabel
      Left = 16
      Top = 54
      Width = 65
      Height = 16
      Caption = 'PBF Tujuan'
    end
    object ComboBox1: TComboBox
      Left = 105
      Top = 51
      Width = 201
      Height = 24
      Style = csDropDownList
      TabOrder = 0
      TextHint = '-- PILIH SALAH SATU --'
    end
    object Edit7: TEdit
      Left = 105
      Top = 21
      Width = 201
      Height = 24
      Cursor = crNo
      Align = alCustom
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = 'SP0000000'
    end
  end
  object GroupBox2: TGroupBox
    Left = 169
    Top = 89
    Width = 883
    Height = 484
    Align = alClient
    Caption = ' Detail Barang '
    TabOrder = 1
    ExplicitLeft = 145
    ExplicitWidth = 907
    object GroupBox3: TGroupBox
      Left = 2
      Top = 81
      Width = 879
      Height = 401
      Align = alClient
      Caption = 'Tabel Barang Pesanan '
      TabOrder = 0
      ExplicitWidth = 903
      object DBGrid1: TDBGrid
        Left = 2
        Top = 18
        Width = 875
        Height = 381
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 18
      Width = 879
      Height = 63
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 903
      object Label3: TLabel
        Left = 12
        Top = 3
        Width = 77
        Height = 16
        Caption = 'Nama Barang'
      end
      object Label4: TLabel
        Left = 12
        Top = 33
        Width = 19
        Height = 16
        Caption = 'Qty'
      end
      object Edit1: TEdit
        Left = 101
        Top = 0
        Width = 268
        Height = 24
        TabOrder = 0
        TextHint = 'Nama Barang...'
        OnChange = Edit1Change
      end
      object Edit2: TEdit
        Left = 101
        Top = 30
        Width = 92
        Height = 24
        Hint = 'Masukan satuan terkecil dari barang tersebut.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TextHint = 'Qty Barang...'
      end
      object Button1: TButton
        Left = 280
        Top = 30
        Width = 89
        Height = 24
        Caption = 'Tambahkan'
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 169
    Height = 484
    Align = alLeft
    BevelOuter = bvLowered
    TabOrder = 2
  end
  object DBGrid2: TDBGrid
    Left = 272
    Top = 131
    Width = 268
    Height = 126
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
  end
  object ADOTable1: TADOTable
    Connection = Fmenu.ADOConnection1
    Left = 712
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Connection = Fmenu.ADOConnection1
    Parameters = <>
    Left = 608
    Top = 32
  end
end

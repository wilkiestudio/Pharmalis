object Ftools: TFtools
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pengaturan Database'
  ClientHeight = 205
  ClientWidth = 237
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 25
    Height = 16
    Caption = 'Host'
  end
  object Label2: TLabel
    Left = 8
    Top = 71
    Width = 23
    Height = 16
    Caption = 'Port'
  end
  object Label3: TLabel
    Left = 8
    Top = 101
    Width = 26
    Height = 16
    Caption = 'User'
  end
  object Label4: TLabel
    Left = 8
    Top = 131
    Width = 55
    Height = 16
    Caption = 'Password'
  end
  object Label5: TLabel
    Left = 8
    Top = 41
    Width = 53
    Height = 16
    Caption = 'Database'
  end
  object Edit1: TEdit
    Left = 108
    Top = 8
    Width = 121
    Height = 24
    TabOrder = 0
    TextHint = 'Host...'
  end
  object Edit2: TEdit
    Left = 108
    Top = 38
    Width = 121
    Height = 24
    TabOrder = 1
    TextHint = 'Database...'
  end
  object Edit3: TEdit
    Left = 108
    Top = 68
    Width = 121
    Height = 24
    TabOrder = 2
    TextHint = 'Port...'
  end
  object Edit4: TEdit
    Left = 108
    Top = 98
    Width = 121
    Height = 24
    TabOrder = 3
    TextHint = 'User...'
  end
  object Edit5: TEdit
    Left = 108
    Top = 128
    Width = 121
    Height = 24
    PasswordChar = '*'
    TabOrder = 4
    TextHint = 'Password...'
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 172
    Width = 221
    Height = 25
    Caption = '&Simpan Pengaturan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Kind = bkOK
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 5
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Wilkies\Pharmali' +
      's\db\setting.mdb;Persist Security Info=False;Jet OLEDB:Database ' +
      'Password=wildanauliana;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 21
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 48
    Top = 80
  end
end

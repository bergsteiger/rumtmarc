unit k2LogFont;

{ Библиотека "K-2"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: k2LogFont -     }
{ Начат: 16.01.2006 19:19 }
{ $Id: k2LogFont.pas,v 1.5 2008/02/21 13:48:21 lulin Exp $ }

// $Log: k2LogFont.pas,v $
// Revision 1.5  2008/02/21 13:48:21  lulin
// - cleanup.
//
// Revision 1.4  2007/12/05 12:35:08  lulin
// - вычищен условный код, составлявший разницу ветки и Head'а.
//
// Revision 1.3  2006/11/03 11:00:44  lulin
// - объединил с веткой 6.4.
//
// Revision 1.2.14.1  2006/10/26 09:10:21  lulin
// - используем "родную" директиву.
//
// Revision 1.2  2006/01/18 10:51:18  lulin
// - bug fix: не компилировалось.
//
// Revision 1.1  2006/01/16 16:41:44  lulin
// - сделана возможность работать со строками без теговых оберток (почему-то на производительность не повлияло).
//

{$Include k2Define.inc }

interface

uses
  l3Types,
  l3Base,
  l3Font,

  k2Interfaces,
  k2Base
  ;

type  
  _Parent_ = Tl3LogFont;
  {.$Define k2TagIsList}
  {$Define k2TagIsString}
  {$Include k2Tag.int}
  Tk2LogFont = class(_Tag_)
    public
    // public methods
      constructor Create(aTagType: Tk2Type);
        reintroduce;
        {-}
      procedure AssignString(aStr: Tl3CustomString);
        override;
        {-}
  end;//Tk2LogFont

implementation

uses
  TypInfo,
  Classes,
  
  SysUtils,

  l3String,
  l3Stream,

  k2Const,
  k2Except,
  k2Tags
  ;

{$Include k2Tag.int}

constructor Tk2LogFont.Create(aTagType: Tk2Type);
  //reintroduce;
  {-}
begin
 f_TagType := aTagType;
 inherited Create;
end;

procedure Tk2LogFont.AssignString(aStr: Tl3CustomString);
  //override;
  {-}
begin
 inherited;
 if (f_TagType = nil) AND (aStr Is Tk2LogFont) then
  f_TagType := Tk2LogFont(aStr).TagType;
end;

end.


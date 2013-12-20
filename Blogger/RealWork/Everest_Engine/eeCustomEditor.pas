unit eeCustomEditor;
{* Компонент для импорта редактора. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: eeCustomEditor -      }
{ Начат: 24.12.2008 20:03 }
{ $Id: eeCustomEditor.pas,v 1.1 2010/04/21 16:52:40 lulin Exp $ }

// $Log: eeCustomEditor.pas,v $
// Revision 1.1  2010/04/21 16:52:40  lulin
// {RequestLink:144575972}.
// - переходим к абсолютным путям для включаемых файлов.
//
// Revision 1.1  2009/09/14 11:28:07  lulin
// - выводим пути и для незавершённых модулей.
//
// Revision 1.1  2008/12/24 17:46:52  lulin
// - <K>: 133890630.
//

{$Include eeDefine.inc }

interface

uses
  eeEditor
  ;

type
  TeeCustomEditor = eeEditor.TeeCustomEditor;

implementation

end.


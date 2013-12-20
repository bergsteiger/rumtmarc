unit k2Unknown;

{ Библиотека "K-2"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: k2Unknown -     }
{ Начат: 17.12.2002 14:58 }
{ $Id: k2Unknown.pas,v 1.32 2013/04/08 18:03:18 lulin Exp $ }

// $Log: k2Unknown.pas,v $
// Revision 1.32  2013/04/08 18:03:18  lulin
// - пытаемся отладиться под XE.
//
// Revision 1.31  2009/07/23 08:15:03  lulin
// - вычищаем ненужное использование процессора операций.
//
// Revision 1.30  2009/07/03 16:24:13  lulin
// - шаг к переходу от интерфейсов к объектам.
//
// Revision 1.29  2009/04/07 16:18:33  lulin
// [$140837386]. Чистка кода.
//
// Revision 1.28  2009/04/07 15:11:49  lulin
// [$140837386]. №13. Чистка кода.
//
// Revision 1.27  2009/03/04 18:14:18  lulin
// - <K>: 137470629. Удалён ненужный интерфейс.
//
// Revision 1.26  2008/02/12 12:53:20  lulin
// - избавляемся от излишнего метода на базовом классе.
//
// Revision 1.25  2008/02/05 18:20:40  lulin
// - удалено ненужное свойство строк.
//
// Revision 1.24  2008/02/05 17:39:37  lulin
// - избавляемся от ненужного именованного объекта.
//
// Revision 1.23  2008/02/05 16:13:16  lulin
// - избавляем базовый объект от лишнего свойства.
//
// Revision 1.22  2007/08/10 14:44:46  lulin
// - cleanup.
//
// Revision 1.21  2007/08/09 11:19:27  lulin
// - cleanup.
//
// Revision 1.20  2007/01/11 14:36:21  lulin
// - шрифт и информация о шрифте теперь связаны отношением наследования.
//
// Revision 1.19  2006/04/11 17:55:28  lulin
// - оптимизируем при помощи вынесения строк (по следам того как Вован наиграл в фильтрах 20% производительности).
//
// Revision 1.18  2006/01/18 08:54:36  lulin
// - изыскания на тему прямой установки целочисленных атрибутов, без преобразования их к тегам.
//
// Revision 1.17  2005/04/28 15:04:09  lulin
// - переложил ветку B_Tag_Box в HEAD.
//
// Revision 1.16.4.2  2005/04/22 11:04:30  lulin
// - bug fix: была ошибка при присваивании шрифта.
//
// Revision 1.16.4.1  2005/04/22 10:40:30  lulin
// - cleanup: убраны ненужные параметры.
//
// Revision 1.16  2005/04/04 06:44:07  lulin
// - в связи с появлением механизма событий и фасада библиотеки K-2, удалены глобальные "заплатки" связанные с созданием/уничтожением таблицы тегов.
//
// Revision 1.15  2005/03/31 09:27:12  lulin
// - new unit: k2TagTool.
//
// Revision 1.14  2005/03/30 17:27:57  lulin
// - new method: _Ik2TagTool.IsNull.
//
// Revision 1.13  2005/03/30 15:56:30  lulin
// - TevLocation теперь наследуется от Tk2Tool - базового класса для инструментов тегов.
//
// Revision 1.12  2005/03/30 15:12:24  lulin
// - в QueryTool теперь подаем тег для которого надо сделать инструмент.
//
// Revision 1.11  2005/03/28 11:32:28  lulin
// - интерфейсы переехали в "правильный" модуль.
//
// Revision 1.10  2005/03/25 17:09:17  lulin
// - избавляемся от метода Tk2AtomW.sLong.
//
// Revision 1.9  2005/03/25 12:12:17  lulin
// - используем _Ik2Type вместо Tk2Type.
//
// Revision 1.8  2005/03/22 14:18:15  lulin
// - new method: _Ik2TypeTable.StringToTag.
//
// Revision 1.7  2005/03/22 14:11:38  lulin
// - new method: _Ik2TypeTable.BoolToTag.
//
// Revision 1.6  2005/03/22 14:08:55  lulin
// - new method: _Ik2TypeTable.LongToTag.
//
// Revision 1.5  2005/03/22 12:42:19  lulin
// - bug fix: установка стиля убивала гиперссылки.
//
// Revision 1.4  2004/09/21 12:04:26  lulin
// - Release заменил на Cleanup.
//
// Revision 1.3  2004/06/30 11:42:53  law
// - изменен тип свойства Tk2TagPointer._Target - Ik2TagWrap -> Ik2Tag.
//
// Revision 1.2  2004/06/28 13:34:49  law
// - remove class: Il3Pointer.
//
// Revision 1.1  2002/12/17 12:20:44  law
// - new unit: k2Unknown.
//

{$Include k2Define.inc }

interface

uses
  l3Types,
  l3Base,

  k2Types,
  k2InternalInterfaces,
  k2Interfaces,
  k2BaseIntf,

  k2Base
  ;

type  
  Tk2InterfacedObject = class(Tl3OwnedInterfaceImplementation)
    protected
    // internal methods
      function  GetTagType: Tk2Type;
        virtual;
        {-}
      procedure NoParam(Index: Long);
        {-}
  end;//Tk2InterfacedObject

  Ik2Unknown = class(Tk2InterfacedObject)
    protected
    {property methods}
      procedure GetParam(Index: Long; TK: Tk2TypeKind; var Dest);
        virtual;
      procedure SetParam(Index: Long; const Source: Ik2Tag);
        virtual;
        {-}
      function  GetLongParam(Index: Integer): Long;
      procedure SetLongParam(Index: Integer; Value: Long);
        virtual;
        {-}
      function  GetBoolParam(Index: Integer): Bool;
      procedure SetBoolParam(Index: Integer; Value: Bool);
        {-}
      function  GetStringParam(Index: Integer): AnsiString;
      procedure SetStringParam(Index: Integer; const Value: AnsiString);
        {-}
  end;{Ik2Unknown}

implementation

uses
  TypInfo,

  l3String,

  k2Facade,
  k2Tags,
  k2Strings
  ;

// start class Tk2InterfacedObject

function Tk2InterfacedObject.GetTagType: Tk2Type;
  {virtual;}
  {-}
begin
 Result := nil;
end;

procedure Tk2InterfacedObject.NoParam(Index: Long);
  {-}
begin
 raise Ek2ParamNotDefined.CreateFmt(k2_errParamNotDefined,
                                    [GetEnumName(TypeInfo(Tk2TagID), Index), ClassName]);
end;

// start class Ik2Unknown 

procedure Ik2Unknown.GetParam(Index: Long; TK: Tk2TypeKind; var Dest);
  {-}
begin
 NoParam(Index);
end;

procedure Ik2Unknown.SetParam(Index: Long; const Source: Ik2Tag);
  {-}
begin
 NoParam(Index);
end;

function Ik2Unknown.GetLongParam(Index: Integer): Long;
  {-}
begin
 GetParam(Index, k2_tkInteger, Result);
end;

procedure Ik2Unknown.SetLongParam(Index: Integer; Value: Long);
  {-}
begin
 SetParam(Index, Tk2Type(GetTagType.Prop[Index].AtomType).IntToTag(Value));
end;

function Ik2Unknown.GetBoolParam(Index: Integer): Bool;
  {-}
begin
 GetParam(Index, k2_tkBool, Result);
end;

procedure Ik2Unknown.SetBoolParam(Index: Integer; Value: Bool);
  {-}
begin
 SetParam(Index, Tk2Type(GetTagType.Prop[Index].AtomType).BoolToTag(Value));
end;

function Ik2Unknown.GetStringParam(Index: Integer): AnsiString;
  {-}
var
 O : TObject;
begin
 GetParam(Index, k2_tkObject, O);
 if (O Is Tl3PrimString) then
  Result := Tl3PrimString(O).AsString
 else
  Result := '';
end;

procedure Ik2Unknown.SetStringParam(Index: Integer; const Value: AnsiString);
  {-}
begin
 SetParam(Index, Tk2Type(GetTagType.Prop[Index].AtomType).StrToTag(Value));
end;

end.


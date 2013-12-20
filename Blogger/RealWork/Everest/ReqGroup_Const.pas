unit ReqGroup_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/ReqGroup_Const.pas"
// Начат: 09.06.2008 10:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::ReqGroup
//
// Группа реквизитов
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега ReqGroup - "Группа реквизитов".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idReqGroup = 55;

function k2_typReqGroup: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_ReqGroup : Tk2Type = nil;


// start class ReqGroupTag

function k2_typReqGroup: Tk2Type;
begin
 if (g_ReqGroup = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_ReqGroup := TevNativeSchema(Tk2TypeTable.GetInstance).t_ReqGroup;
 end;//g_ReqGroup = nil
 Result := g_ReqGroup;
end;

end.
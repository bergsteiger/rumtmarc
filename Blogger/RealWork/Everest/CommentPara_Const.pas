unit CommentPara_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/CommentPara_Const.pas"
// Начат: 09.06.2008 10:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::CommentPara
//
// Блок пользовательского комментария
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега CommentPara - "Блок пользовательского комментария".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idCommentPara = 120;

function k2_typCommentPara: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_CommentPara : Tk2Type = nil;


// start class CommentParaTag

function k2_typCommentPara: Tk2Type;
begin
 if (g_CommentPara = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_CommentPara := TevNativeSchema(Tk2TypeTable.GetInstance).t_CommentPara;
 end;//g_CommentPara = nil
 Result := g_CommentPara;
end;

end.
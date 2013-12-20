unit afwAnswer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "AFW"
// Модуль: "w:/common/components/gui/Garant/AFW/afwAnswer.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::AFW::afwScriptingSupport::afwAnswer
//
// Хак для диалогов для скриптов.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\AFW\afwDefine.inc}

interface

{$If defined(nsTest)}
uses
  SysUtils,
  l3ProtoIntegerList
  ;

type
 EvcmTryEnterModalState = class(Exception)
 end;//EvcmTryEnterModalState

{$If defined(InsiderTest) AND defined(nsTest)}
var g_BatchMode : Boolean = false;
{$IfEnd} //InsiderTest AND nsTest

var g_WasWait : Integer = 0;

var g_Answer : Tl3ProtoIntegerList = nil;
procedure AfwSetAnswer(anAnswer: Integer);
function AfwGetAnswer: Integer;
{$IfEnd} //nsTest

implementation

{$If defined(nsTest)}
uses
  Controls
  ;

// unit methods

procedure AfwSetAnswer(anAnswer: Integer);
//#UC START# *4E0312C70245_4E03119F00B2_var*
//#UC END# *4E0312C70245_4E03119F00B2_var*
begin
//#UC START# *4E0312C70245_4E03119F00B2_impl*
 if (g_Answer = nil) then
  g_Answer := Tl3ProtoIntegerList.Create;
 g_Answer.Add(anAnswer);
//#UC END# *4E0312C70245_4E03119F00B2_impl*
end;//AfwSetAnswer

function AfwGetAnswer: Integer;
//#UC START# *4E0321910152_4E03119F00B2_var*
//#UC END# *4E0321910152_4E03119F00B2_var*
begin
//#UC START# *4E0321910152_4E03119F00B2_impl*
 if (g_Answer <> nil) AND
    (g_Answer.Count > 0) AND
    (g_Answer.Last <> mrNone) then
 begin
  Result := g_Answer.Last;
  g_Answer.Delete(g_Answer.Hi);
  //Inc(g_WasWait);
  // - нельзя тут это делать
  // http://mdp.garant.ru/pages/viewpage.action?pageId=337513713
  // http://mdp.garant.ru/pages/viewpage.action?pageId=337513713&focusedCommentId=337514042#comment-337514042
 end // if (g_Answer <> nil) AND (g_Answer.Last <> mrNone) then
 else
  Result := mrNone;
//#UC END# *4E0321910152_4E03119F00B2_impl*
end;//AfwGetAnswer
{$IfEnd} //nsTest

initialization
{$If defined(nsTest)}
//#UC START# *4E0316B20383*
//#UC END# *4E0316B20383*
{$IfEnd} //nsTest

finalization
{$If defined(nsTest)}
//#UC START# *4E0313C702CB*
 FreeAndNil(g_Answer);
//#UC END# *4E0313C702CB*
{$IfEnd} //nsTest

end.
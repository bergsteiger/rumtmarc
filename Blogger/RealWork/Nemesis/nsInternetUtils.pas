unit nsInternetUtils;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Nemesis"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Nemesis/nsInternetUtils.pas"
// Начат: 22.04.2009 14:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi For F1::Nemesis::Internet::nsInternetUtils
//
// Вспомогательные функции для Интернет-агента
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Nemesis\nscDefine.inc}

interface

{$If defined(Nemesis)}
function nsIsGarantURL(const anURL: WideString): Boolean;
   {* Определяет, что адрес в домене Гаранта }
function nsIsLocalDocumentURL(const anURL: WideString): Boolean;
   {* Определяет, что ссылка на внутренний документ }
function nsParseLocalDocumentURL(const anURL: WideString;
  out DocID: Integer;
  out SubID: Integer): Boolean;
   {* Разобрать локальную ссылку на документ }
{$IfEnd} //Nemesis

implementation

{$If defined(Nemesis)}
uses
  l3RegEx,
  l3String,
  l3Const,
  l3Interfaces,
  l3Base,
  l3Types,
  SysUtils
  ;

// unit methods

function nsIsGarantURL(const anURL: WideString): Boolean;
//#UC START# *49EEF1BA019B_49EEF16603C9_var*
const
 cMask = '^(res\:\/\/.+#)*http\:\/\/([^\\\.]+\.)*garant.ru($|\_)';
//#UC END# *49EEF1BA019B_49EEF16603C9_var*
begin
//#UC START# *49EEF1BA019B_49EEF16603C9_impl*
 Result := l3Starts('about:', l3PCharLen(anURL), true) or l3CheckStrByPattern(cMask, l3PCharLen(anURL));
//#UC END# *49EEF1BA019B_49EEF16603C9_impl*
end;//nsIsGarantURL

function nsIsLocalDocumentURL(const anURL: WideString): Boolean;
//#UC START# *4BEBC370007F_49EEF16603C9_var*
const
 cMask = '^(res\:\/\/.+#)*http\:\/\/([^\\\.]+\.)*base.garant.ru($|\_)';
//#UC END# *4BEBC370007F_49EEF16603C9_var*
begin
//#UC START# *4BEBC370007F_49EEF16603C9_impl*
 Result := l3CheckStrByPattern(cMask, l3PCharLen(anURL));
//#UC END# *4BEBC370007F_49EEF16603C9_impl*
end;//nsIsLocalDocumentURL

function nsParseLocalDocumentURL(const anURL: WideString;
  out DocID: Integer;
  out SubID: Integer): Boolean;
//#UC START# *4BEBC4090016_49EEF16603C9_var*
var
 l_Pos: Integer;
 l_URL: Il3CString;
 l_InitedDoc: Boolean;

 function lp_Iterate(const aStr : Tl3PCharLen; IsLast: Bool): Bool;
 var
  l_ID: Integer;
  l_Str: String;
 begin
  Result := True;
  l_Str := l3Str(aStr);
  if not l_InitedDoc then
   if TryStrToInt(l_Str, l_ID) then
   begin
    DocID := l_ID;
    l_InitedDoc := True;
   end;
  if (Length(l_Str) > 1) and (l_Str[1] = '#') then
   if TryStrToInt(Copy(l_Str, 2, Length(l_Str) - 1), l_ID) then
    SubID := l_ID;
 end;

const
 cStart = 'base.garant.ru/';
//#UC END# *4BEBC4090016_49EEF16603C9_var*
begin
//#UC START# *4BEBC4090016_49EEF16603C9_impl*
 Result := nsIsLocalDocumentURL(anURL);
 if Result then
 begin
  l_URL := l3CStr(anURL);
  l_Pos := l3Pos(l_URL, cStart);
  if l_Pos = l3NotFound then
   Result := False
  else
  begin
   l3Delete(l_URL, 0, l_Pos + Length(cStart));
   l_InitedDoc := False;
   DocID := 0;
   SubID := 0;
   l3ParseWordsExF(l_URL.AsWStr, l3L2WA(@lp_Iterate),['/']);
   Result := l_InitedDoc;
  end;
 end;
//#UC END# *4BEBC4090016_49EEF16603C9_impl*
end;//nsParseLocalDocumentURL
{$IfEnd} //Nemesis

end.
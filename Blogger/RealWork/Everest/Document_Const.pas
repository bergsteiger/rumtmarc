unit Document_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/Document_Const.pas"
// Начат: 09.06.2008 10:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::Document
//
// Документ
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега Document - "Документ".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idDocument = 20;
var k2_idDocument_Subs : Integer = -1;
var k2_idDocument_Groups : Integer = -1;
var k2_idDocument_AccGroups : Integer = -1;
var k2_idDocument_Sources : Integer = -1;
var k2_idDocument_Warnings : Integer = -1;
var k2_idDocument_NumANDDates : Integer = -1;
var k2_idDocument_LogRecords : Integer = -1;
var k2_idDocument_SysLogRecords : Integer = -1;
var k2_idDocument_Versions : Integer = -1;
var k2_idDocument_Stages : Integer = -1;
var k2_idDocument_Checks : Integer = -1;
var k2_idDocument_PublishedIn : Integer = -1;
var k2_idDocument_Territory : Integer = -1;
var k2_idDocument_Norm : Integer = -1;
var k2_idDocument_ActiveIntervals : Integer = -1;
var k2_idDocument_Alarms : Integer = -1;
var k2_idDocument_AnnoClasses : Integer = -1;
var k2_idDocument_LinkedDocuments : Integer = -1;
var k2_idDocument_CaseDocParticipants : Integer = -1;

function k2_typDocument: Tk2Type;

//#UC START# *4857B5260267const_intf*
//#UC END# *4857B5260267const_intf*

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_Document : Tk2Type = nil;


// start class DocumentTag

function k2_typDocument: Tk2Type;
begin
 if (g_Document = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_Document := TevNativeSchema(Tk2TypeTable.GetInstance).t_Document;
 end;//g_Document = nil
 Result := g_Document;
end;

end.
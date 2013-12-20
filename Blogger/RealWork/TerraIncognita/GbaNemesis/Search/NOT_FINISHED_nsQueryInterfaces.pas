unit NOT_FINISHED_nsQueryInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Search"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Search/NOT_FINISHED_nsQueryInterfaces.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> F1 Базовые определения предметной области::LegalDomain::Search::nsQueryInterfaces
//
// Интерфейсы прецедента Поиск
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  BaseTreeSupportUnit,
  SearchUnit,
  l3Interfaces,
  nevBase,
  evQueryCardInt
  ;

type
 {$If not defined(Admin)}
 IqaBase = nevBase.InevBase;
  {* Базовый предок. }
 {$IfEnd} //not Admin

{$If not defined(Admin)}
 IqaReq = interface(IqaReqPrim)
  {* Реквизит. }
   ['{B9BA7D8C-0C61-4A22-9EDC-B70335A54A59}']
   function Get_EditorReq: IevReq;
   procedure Set_EditorReq(const aValue: IevReq);
   function Get_TagCaption: Il3CString;
   procedure Set_TagCaption(const aValue: Il3CString);
   function Get_TagName: Il3CString;
   procedure Set_TagName(const aValue: Il3CString);
   property EditorReq: IevReq
     read Get_EditorReq
     write Set_EditorReq;
     {* Ссылка на внутренний атрибут. }
   property TagCaption: Il3CString
     read Get_TagCaption
     write Set_TagCaption;
     {* Заголовок атрибута (имя метки перед полем). }
   property TagName: Il3CString
     read Get_TagName
     write Set_TagName;
 end;//IqaReq
{$IfEnd} //not Admin

{$If not defined(Admin)}
 IqaReqAttribute = interface(IqaBase)
   ['{C11BAF96-0B89-49D1-A817-4FBAB1703FC3}']
 end;//IqaReqAttribute
{$IfEnd} //not Admin

{$If not defined(Admin)}
 IqaDateReq = interface(IqaBase)
   ['{F6258940-B98D-46CD-BCF3-0883F5AD6D75}']
 end;//IqaDateReq
{$IfEnd} //not Admin

{$If not defined(Admin)}
 IqaDateReqDataHolder = interface(IqaBase)
   ['{ED3483B1-9004-4E27-B7E1-8201B5B6ED7E}']
 end;//IqaDateReqDataHolder
{$IfEnd} //not Admin

{$If not defined(Admin)}
 IqaPhoneReq = interface(IqaBase)
   ['{C2D7E151-6854-498E-BD1E-AF69559645B4}']
   function Get_Code: Il3CString;
   procedure Set_Code(const aValue: Il3CString);
   function Get_Number: Il3CString;
   procedure Set_Number(const aValue: Il3CString);
   property Code: Il3CString
     read Get_Code
     write Set_Code;
   property Number: Il3CString
     read Get_Number
     write Set_Number;
 end;//IqaPhoneReq
{$IfEnd} //not Admin

{$If not defined(Admin)}
 IqaMgrSearch = interface(IqaBase)
   ['{9FE88AB2-D21E-42CF-8982-B95BBA19075B}']
   function Get_Query: IQuery;
   procedure Set_Query(const aValue: IQuery);
   property Query: IQuery
     read Get_Query
     write Set_Query;
     {* Запрос. }
 end;//IqaMgrSearch
{$IfEnd} //not Admin

{$If not defined(Admin)}
 IqaHistory = interface(IqaBase)
  {* интерфейс создан для сохранения TasMgrSearch в истории. }
   ['{03B3AFE7-3939-4277-8A11-B6DE67F81E57}']
   function Get_Query: IQuery;
   procedure Set_Query(const aValue: IQuery);
   function Get_Filter: INode;
   procedure Set_Filter(const aValue: INode);
   property Query: IQuery
     read Get_Query
     write Set_Query;
   property Filter: INode
     read Get_Filter
     write Set_Filter;
 end;//IqaHistory
{$IfEnd} //not Admin

 InsQueryFormState = interface(IqaBase)
   ['{641BDCBA-CAB1-4F91-BC99-64E5DAC1CAD4}']
 end;//InsQueryFormState

{$If not defined(Admin)}
 EqaException = class
 end;//EqaException
{$IfEnd} //not Admin

implementation

end.
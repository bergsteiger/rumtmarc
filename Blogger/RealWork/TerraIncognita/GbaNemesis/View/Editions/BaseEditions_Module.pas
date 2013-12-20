unit BaseEditions_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Editions/BaseEditions_Module.pas"
// Начат: 27.07.2009 12:03
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 Пользовательские сервисы::CompareEditions::View::Editions::BaseEditions
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  DocumentUnit
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFactory
  {$IfEnd} //not NoVCM
  ,
  eeInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  EditionsInterfaces,
  PrimLeftEdition_Form,
  PrimRightEdition_Form,
  LeftEdition_Form,
  RightEdition_Form,
  EditionsContainer_Form,
  PrimEditionsContainer_Form,
  l3StringIDEx,
  bsTypesNew,
  PrimLeftEdition_utLeftEdition_UserType,
  PrimRightEdition_utRightEdition_UserType,
  PrimEditionsContainer_utEditionsContainer_UserType
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFormsCollectionItemPrim
  {$IfEnd} //not NoVCM
  ,
  CompareEditions_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  fsCompareEditions,
  vcmExternalInterfaces {a},
  vcmModule {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TBaseEditionsModule = {abstract formspack} class(TvcmModule)
 protected
  class procedure GetEntityForms(aList : TvcmClassList); override;
 public
 // public methods
   class procedure MakeCompareEditions(const aDoc: IDocument;
     const aPara: IeeLeafPara;
     aEditionForCompare: Integer;
     const aDocumentForReturn: TnsDocumentForReturnInfo); overload; 
     {* Создаёт представление прецедента "Сравнение редакций" }
   class procedure MakeCompareEditions(const aDoc: IDocument;
     const aPara: IeeLeafPara); overload; 
   class procedure MakeCompareEditions(const aLeft: IDocument;
     const aRight: IDocument;
     const aPara: IeeLeafPara); overload; 
   class procedure MakeCompareEditions(const aDoc: IDocument;
     const aPara: IeeLeafPara;
     aEditionForCompare: Integer); overload; 
   class procedure MakeCompareEditions(const aLeft: IDocument;
     const aRight: IDocument;
     const aParaForPositionning: IeeLeafPara;
     const aDocumentForReturn: IDocument;
     const aParaForReturn: IeeLeafPara); overload; 
   class procedure MakeCompareEditions(const aLeft: IDocument;
     const aRight: IDocument;
     const aPosition: TbsDocPos;
     const aDocumentForReturn: IDocument;
     const aParaForReturn: IeeLeafPara); overload; 
 end;//TBaseEditionsModule
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  ,
  sdsCompareEditions,
  nsCompareEditionsInfo
  {$If not defined(NoVCM)}
  ,
  vcmMessagesSupport
  {$IfEnd} //not NoVCM
  ,
  l3Base {a},
  l3MessageID,
  SysUtils {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки Local }
  str_NoPrevEdition : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'NoPrevEdition'; rValue : 'Нет редакции для сравнения. У изучаемого Вами документа нет более ранних действовавших когда-либо редакций.');
   { 'Нет редакции для сравнения. У изучаемого Вами документа нет более ранних действовавших когда-либо редакций.' }

// start class TBaseEditionsModule

class procedure TBaseEditionsModule.MakeCompareEditions(const aDoc: IDocument;
  const aPara: IeeLeafPara;
  aEditionForCompare: Integer;
  const aDocumentForReturn: TnsDocumentForReturnInfo);
var
 __WasEnter : Boolean;
//#UC START# *4A71ADFC00B4_4A6D5F3D03A9_var*
//#UC END# *4A71ADFC00B4_4A6D5F3D03A9_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4A71ADFC00B4_4A6D5F3D03A9_impl*
  try
   Tfs_CompareEditions.Make(
    TsdsCompareEditions.Make(TnsCompareEditionsInfo.Make(aDoc, aPara, aEditionForCompare, aDocumentForReturn)),
    DefaultContainer);
  except
   on ERedactionNotFound do
    vcmSay(inf_AnyInformation, [str_NoPrevEdition.AsCStr]);
  end;//try..except
//#UC END# *4A71ADFC00B4_4A6D5F3D03A9_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TBaseEditionsModule.MakeCompareEditions

class procedure TBaseEditionsModule.MakeCompareEditions(const aDoc: IDocument;
  const aPara: IeeLeafPara);
var
 __WasEnter : Boolean;
//#UC START# *4B60761E0096_4A6D5F3D03A9_var*
//#UC END# *4B60761E0096_4A6D5F3D03A9_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4B60761E0096_4A6D5F3D03A9_impl*
 MakeCompareEditions(aDoc, aPara, -1, TnsDocumentForReturnInfo_C(aDoc, aPara));
//#UC END# *4B60761E0096_4A6D5F3D03A9_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TBaseEditionsModule.MakeCompareEditions

class procedure TBaseEditionsModule.MakeCompareEditions(const aLeft: IDocument;
  const aRight: IDocument;
  const aPara: IeeLeafPara);
var
 __WasEnter : Boolean;
//#UC START# *4EC4FB3002FF_4A6D5F3D03A9_var*
var
 l_LeftState : IDocumentState;
//#UC END# *4EC4FB3002FF_4A6D5F3D03A9_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4EC4FB3002FF_4A6D5F3D03A9_impl*
  aLeft.GetCurrentState(l_LeftState);
  TdmStdRes.MakeCompareEditions(aRight,
                                aPara,
                                l_LeftState.Redaction,
                                TnsDocumentForReturnInfo_C(aRight, aPara));
//#UC END# *4EC4FB3002FF_4A6D5F3D03A9_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TBaseEditionsModule.MakeCompareEditions

class procedure TBaseEditionsModule.MakeCompareEditions(const aDoc: IDocument;
  const aPara: IeeLeafPara;
  aEditionForCompare: Integer);
var
 __WasEnter : Boolean;
//#UC START# *4F2BEE7302EB_4A6D5F3D03A9_var*
//#UC END# *4F2BEE7302EB_4A6D5F3D03A9_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4F2BEE7302EB_4A6D5F3D03A9_impl*
 MakeCompareEditions(aDoc, aPara,
                     aEditionForCompare,
                     TnsDocumentForReturnInfo_C(aDoc, aPara));
//#UC END# *4F2BEE7302EB_4A6D5F3D03A9_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TBaseEditionsModule.MakeCompareEditions

class procedure TBaseEditionsModule.MakeCompareEditions(const aLeft: IDocument;
  const aRight: IDocument;
  const aParaForPositionning: IeeLeafPara;
  const aDocumentForReturn: IDocument;
  const aParaForReturn: IeeLeafPara);
var
 __WasEnter : Boolean;
//#UC START# *5211D23D038A_4A6D5F3D03A9_var*
var
 l_LeftState : IDocumentState;
//#UC END# *5211D23D038A_4A6D5F3D03A9_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *5211D23D038A_4A6D5F3D03A9_impl*
 aLeft.GetCurrentState(l_LeftState);
 MakeCompareEditions(aRight,
                     aParaForPositionning,
                     l_LeftState.Redaction,
                     TnsDocumentForReturnInfo_C(aDocumentForReturn, aParaForReturn));
//#UC END# *5211D23D038A_4A6D5F3D03A9_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TBaseEditionsModule.MakeCompareEditions

class procedure TBaseEditionsModule.MakeCompareEditions(const aLeft: IDocument;
  const aRight: IDocument;
  const aPosition: TbsDocPos;
  const aDocumentForReturn: IDocument;
  const aParaForReturn: IeeLeafPara);
var
 __WasEnter : Boolean;
//#UC START# *5214A1820193_4A6D5F3D03A9_var*
var
 l_LeftState: IDocumentState;
//#UC END# *5214A1820193_4A6D5F3D03A9_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *5214A1820193_4A6D5F3D03A9_impl*
  try
   aLeft.GetCurrentState(l_LeftState);
   try
    Tfs_CompareEditions.Make(
     TsdsCompareEditions.Make(TnsCompareEditionsInfo.Make(aRight, aPosition,
      l_LeftState.Redaction,
      TnsDocumentForReturnInfo_C(aDocumentForReturn, aParaForReturn))),
    DefaultContainer);
   finally
    l_LeftState := nil;
   end;
  except
   on ERedactionNotFound do
    vcmSay(inf_AnyInformation, [str_NoPrevEdition.AsCStr]);
  end;//try..except
//#UC END# *5214A1820193_4A6D5F3D03A9_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TBaseEditionsModule.MakeCompareEditions

class procedure TBaseEditionsModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(TLeftEditionForm);
 aList.Add(TRightEditionForm);
 aList.Add(TEditionsContainerForm);
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_NoPrevEdition
 str_NoPrevEdition.Init;
{$IfEnd} //not Admin AND not Monitorings

end.
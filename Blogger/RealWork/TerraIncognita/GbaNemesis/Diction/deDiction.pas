unit deDiction;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Diction"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/Diction/deDiction.pas"
// �����: 08.12.2009
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 ���������� ��������::Diction::Diction::Diction::TdeDiction
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  DocumentUnit,
  l3Interfaces,
  bsTypes,
  DictionInterfaces,
  deCommonDiction,
  DocumentInterfaces
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TdeDiction = class(TdeCommonDiction, IdeDiction)
 private
 // private fields
   f_DictLanguage : TbsLanguage;
 protected
 // realized methods
   function pm_GetDictLanguage: TbsLanguage;
   procedure pm_SetDictLanguage(aValue: TbsLanguage);
 protected
 // overridden protected methods
   function DefaultDocType: TDocumentType; override;
   procedure AssignFromClone(const aData: IdeDocInfo); override;
 public
 // public methods
   class function Make(const aDocument: IDocument;
     aDictLanguage: TbsLanguage = LG_RUSSIAN;
     const aContext: Il3CString = nil): IdeDocInfo;
   class function Convert(const aDocInfo: IdeDocInfo;
     aLang: TbsLanguage): IdeDiction;
 end;//TdeDiction
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils,
  bsDataContainer
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TdeDiction

class function TdeDiction.Make(const aDocument: IDocument;
  aDictLanguage: TbsLanguage = LG_RUSSIAN;
  const aContext: Il3CString = nil): IdeDocInfo;
//#UC START# *4B1E9B7E023E_4925538201C4_var*
var
 lClass: TdeDiction;
//#UC END# *4B1E9B7E023E_4925538201C4_var*
begin
//#UC START# *4B1E9B7E023E_4925538201C4_impl*
 lClass := Create(TbsDocumentContainer.Make(aDocument));
 try
  lClass.f_Context := aContext;
  lClass.f_DictLanguage := aDictLanguage;
  Result := lClass;
 finally
  FreeAndNil(lClass);
 end;
//#UC END# *4B1E9B7E023E_4925538201C4_impl*
end;//TdeDiction.Make

class function TdeDiction.Convert(const aDocInfo: IdeDocInfo;
  aLang: TbsLanguage): IdeDiction;
//#UC START# *4B1E9BA80018_4925538201C4_var*
var
 l_Data: TdeDiction;
//#UC END# *4B1E9BA80018_4925538201C4_var*
begin
//#UC START# *4B1E9BA80018_4925538201C4_impl*
 if Assigned(aDocInfo) then
  l_Data := CreateCloned(aDocInfo)
 else
  l_Data := Create(TbsDocumentContainer.Make(nil));
 try
  l_Data.pm_SetDictLanguage(aLang);
  Result := l_Data;
 finally
  FreeAndNil(l_Data);
 end;
//#UC END# *4B1E9BA80018_4925538201C4_impl*
end;//TdeDiction.Convert

function TdeDiction.pm_GetDictLanguage: TbsLanguage;
//#UC START# *4B1D157B01C9_4925538201C4get_var*
//#UC END# *4B1D157B01C9_4925538201C4get_var*
begin
//#UC START# *4B1D157B01C9_4925538201C4get_impl*
 Result := f_DictLanguage;
//#UC END# *4B1D157B01C9_4925538201C4get_impl*
end;//TdeDiction.pm_GetDictLanguage

procedure TdeDiction.pm_SetDictLanguage(aValue: TbsLanguage);
//#UC START# *4B1D157B01C9_4925538201C4set_var*
//#UC END# *4B1D157B01C9_4925538201C4set_var*
begin
//#UC START# *4B1D157B01C9_4925538201C4set_impl*
 f_DictLanguage := aValue;
//#UC END# *4B1D157B01C9_4925538201C4set_impl*
end;//TdeDiction.pm_SetDictLanguage

function TdeDiction.DefaultDocType: TDocumentType;
//#UC START# *4B1E714A0125_4925538201C4_var*
//#UC END# *4B1E714A0125_4925538201C4_var*
begin
//#UC START# *4B1E714A0125_4925538201C4_impl*
 Result := DT_EXPLANATORY;
//#UC END# *4B1E714A0125_4925538201C4_impl*
end;//TdeDiction.DefaultDocType

procedure TdeDiction.AssignFromClone(const aData: IdeDocInfo);
//#UC START# *4B1E749D033C_4925538201C4_var*
var
 l_Data: IdeDiction;
//#UC END# *4B1E749D033C_4925538201C4_var*
begin
//#UC START# *4B1E749D033C_4925538201C4_impl*
 inherited;
 if Supports(aData, IdeDiction, l_Data) then
  f_DictLanguage := l_Data.DictLanguage;
//#UC END# *4B1E749D033C_4925538201C4_impl*
end;//TdeDiction.AssignFromClone

{$IfEnd} //not Admin AND not Monitorings

end.
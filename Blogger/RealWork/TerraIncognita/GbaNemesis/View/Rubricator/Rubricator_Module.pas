unit Rubricator_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Rubricator/Rubricator_Module.pas"
// �����: 08.09.2009 19:27
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 �������� ����������::Rubricator::View::Rubricator::Rubricator
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
  DynamicTreeUnit,
  l3TreeInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  PrimRubricator_Form,
  Common_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  MainMenuUnit
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  Rubricator_Form,
  vcmExternalInterfaces {a},
  vcmModule {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TRubricatorModule = {formspack} class(TvcmModule)
 protected
  class procedure GetEntityForms(aList : TvcmClassList); override;
 public
 // public methods
   class function OpenRubricator(const aNode: Il3SimpleNode;
     const aRootToKeep: INodeBase;
     const aMenuSectionItemToKeep: ISectionItem;
     aNeedsSheet: Boolean;
     const anAggregate: IvcmAggregate;
     const aContainer: IvcmContainer): IvcmEntityForm;
 end;//TRubricatorModule
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  RubricatorInterfaces,
  Common_Rubricator_Controls,
  Base_Operations_Strange_Controls,
  Base_Operations_Editions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  vcmFormSetFactory {a},
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_Form_Rubricator = class(TtfwControlString)
   {* ����� ������� ��� �������������� ����� Rubricator
----
*������ �������������*:
[code]
'aControl' �����::Rubricator TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_Rubricator

// start class Tkw_Form_Rubricator

{$If not defined(NoScripts)}
function Tkw_Form_Rubricator.GetString: AnsiString;
 {-}
begin
 Result := 'efRubricator';
end;//Tkw_Form_Rubricator.GetString
{$IfEnd} //not NoScripts

type
  Tkw_Rubricator_RubricatorList_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� RubricatorList ����� Rubricator }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Rubricator_RubricatorList_ControlInstance

// start class Tkw_Rubricator_RubricatorList_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Rubricator_RubricatorList_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefRubricator).RubricatorList);
end;//Tkw_Rubricator_RubricatorList_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

class function TRubricatorModule.OpenRubricator(const aNode: Il3SimpleNode;
  const aRootToKeep: INodeBase;
  const aMenuSectionItemToKeep: ISectionItem;
  aNeedsSheet: Boolean;
  const anAggregate: IvcmAggregate;
  const aContainer: IvcmContainer): IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AA691690389_4AA67768038F_var*
//#UC END# *4AA691690389_4AA67768038F_var*
var
 l_Container : IvcmEntityForm;
 l_Navigator : IvcmEntityForm;
 l_Aggregate : IvcmAggregate;
 l_Params : IvcmMakeParams;
 l_RubrExists : Boolean;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AA691690389_4AA67768038F_impl*
 l_Params := vcmMakeParams(anAggregate, aContainer);

 l_Container := CheckContainer(aContainer).AsForm;
 try
  if l_Container.NativeMainForm.HasForm(fm_efRubricator.rFormID, vcm_ztParent, True, @Result) then
   l_Aggregate := Result.Aggregate
  else
  if l_Container.NativeMainForm.HasForm(fm_en_Navigator.rFormID, vcm_ztNavigator, False, @l_Navigator) then
   l_Aggregate := l_Navigator.Aggregate
  else
   l_Aggregate := anAggregate;

  l_RubrExists := (Result <> nil);
  if (l_Aggregate = nil) then
  begin
   if l_RubrExists then
   begin
    Result.MakeAggregate;
    l_Aggregate := Result.Aggregate;
   end//l_RubrExists
   else
   if (l_Navigator <> nil) then
   begin
    l_Navigator.MakeAggregate;
    l_Aggregate := l_Navigator.Aggregate;
   end//l_Navigator <> nil
   else
    l_Aggregate := vcmCheckAggregate(vcmMakeParams).Aggregate;
  end;//l_Aggregate = nil

  if (l_Aggregate <> nil) then
   l_Params := vcmSetAggregate(l_Aggregate, l_Params);

  if not op_Switcher_BecomeActive.Call(l_Aggregate) and aNeedsSheet then
   TdmStdRes.GetNavigator(l_Params.Aggregate, l_Params.Container);

  if not l_RubrExists then
   Result := TefRubricator.MakeSingleChild(l_Container.NativeMainForm,
                                             l_Params,
                                             vcm_ztParent);

  if l_RubrExists then
   Op_Rubricator_SetListRoot.Call(Result, aNode, aRootToKeep, aMenuSectionItemToKeep)
  else
  begin
   Op_Rubricator_InitListRoot.Call(Result, aNode, aRootToKeep, aMenuSectionItemToKeep);
   Op_Rubricator_Synchronize.Call(Result);
  end;//l_RubrExists..

 finally
  l_Container := nil;
 end;//try..finally
//#UC END# *4AA691690389_4AA67768038F_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TRubricatorModule.OpenRubricator

class procedure TRubricatorModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(TefRubricator);
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� Rubricator
 fm_efRubricator.SetFactory(TefRubricator.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_Rubricator
 Tkw_Form_Rubricator.Register('�����::Rubricator', TefRubricator);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Rubricator_RubricatorList_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefRubricator.RubricatorList', Tkw_Rubricator_RubricatorList_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.
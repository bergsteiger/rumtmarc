unit nsWindowsListPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "UserInteraction"
// Автор: Морозов М.А.
// Модуль: "w:/common/components/gui/Garant/VCM/UserInteraction/nsWindowsListPrim.pas"
// Начат: 2005/06/07 11:31:00
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Operations::OfficeLike::UserInteraction::WindowsListSupport::TnsWindowsListPrim
//
// класс управляющий списком окон
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  l3Interfaces
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  l3Core,
  l3Tree_TLB
  {$If not defined(NoVCM)}
  ,
  vcmMainForm
  {$IfEnd} //not NoVCM
  ,
  l3ProtoObject,
  OfficeLikeAppInterfaces
  ;

type
 TnsUniqueName = class(Tl3ProtoObject)
  {* класс позволяющий получать уникальные имена в списке благодаря добавлению в конце повторяющихся слов значение счетчика повторения. Например Слово, Слово (1), Слово (2) и т.д }
 private
 // private fields
   f_Unique : IvcmStrings;
 private
 // private methods
   function MakeName(const aName: Il3CString): Il3CString;
     {* возвращает уникальное имя }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure ClearFields; override;
 public
 // public methods
   constructor Create; reintroduce;
 end;//TnsUniqueName

 TnsWindowsListPrim = class(Tl3ProtoObject)
  {* класс управляющий списком окон }
 private
 // private fields
   f_Root : Il3Node;
    {* Поле для свойства Root}
 private
 // private methods
   function CheckLength(const aName: Il3CString): Il3CString;
     {* проверяет не выходит ли размер имени за допустимые пределы и корректирует при необходимости }
   function NsGetWindowCaption(aForm: TvcmMainForm): Il3CString;
     {* отрезает префикс оставляю только информацию о текущем контенте, а именно _caption формы находящейся в Parent зоне главной формы }
 protected
 // property methods
   function pm_GetRoot: Il3Node;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure ClearFields; override;
 public
 // public methods
   function FindNode(const aForm: IvcmEntityForm): Il3Node;
     {* возвращает Il3Node для формы aForm }
   procedure Remove(const aForm: IvcmEntityForm);
     {* удаляет форму из списка }
   procedure Reload;
     {* перезагружает список }
 public
 // public properties
   property Root: Il3Node
     read pm_GetRoot;
     {* Root дерева окон. Загружается при первом обращении }
 end;//TnsWindowsListPrim

implementation

uses
  l3String
  {$If not defined(NoVCM)}
  ,
  vcmStringList
  {$IfEnd} //not NoVCM
  ,
  l3Nodes,
  SysUtils
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  nsWindowNode,
  l3Chars
  ;

// start class TnsWindowsListPrim

function TnsWindowsListPrim.CheckLength(const aName: Il3CString): Il3CString;
//#UC START# *4ADC538702FA_4ADC5146016D_var*
const
 cMaxWordLength = 70;
   {* - максимальная длинна слова в списке. }
//#UC END# *4ADC538702FA_4ADC5146016D_var*
begin
//#UC START# *4ADC538702FA_4ADC5146016D_impl*
 if (l3Len(aName) > cMaxWordLength) then
  Result := l3Cat(l3Copy(aName, 0, cMaxWordLength - 3), '...')
 else
  Result := aName;
//#UC END# *4ADC538702FA_4ADC5146016D_impl*
end;//TnsWindowsListPrim.CheckLength

function TnsWindowsListPrim.NsGetWindowCaption(aForm: TvcmMainForm): Il3CString;
//#UC START# *4ADC564B01E9_4ADC5146016D_var*
//#UC END# *4ADC564B01E9_4ADC5146016D_var*
begin
//#UC START# *4ADC564B01E9_4ADC5146016D_impl*
 Result := l3StringReplace(aForm.CCaption, l3PCharLen(aForm.CaptionPrefix), l3PCharLen(''), [rfReplaceAll]);
 Result := l3LTrim(Result, cc_AllChars - cc_ANSILetter);
//#UC END# *4ADC564B01E9_4ADC5146016D_impl*
end;//TnsWindowsListPrim.NsGetWindowCaption

function TnsWindowsListPrim.FindNode(const aForm: IvcmEntityForm): Il3Node;
//#UC START# *4ADC54290390_4ADC5146016D_var*
//#UC END# *4ADC54290390_4ADC5146016D_var*
var
 l_Child : Il3Node;
 l_Window : InsWindow;
begin
//#UC START# *4ADC54290390_4ADC5146016D_impl*
 Result := nil;
 if Assigned(f_Root) then
 begin
  l_Child := f_Root.ChildNode;
  while Assigned(l_Child) do
  begin
   if Supports(l_Child, InsWindow, l_Window) then
   try
    if l_Window.Form = aForm then
    begin
     Result := l_Child;
     Break;
    end;
   finally
    l_Window := nil;
   end;
   if l_Child.IsLast then
    l_Child := nil
   else
    l_Child := l_Child.NextNode;
  end;
 end;
//#UC END# *4ADC54290390_4ADC5146016D_impl*
end;//TnsWindowsListPrim.FindNode

procedure TnsWindowsListPrim.Remove(const aForm: IvcmEntityForm);
//#UC START# *4ADC5467036A_4ADC5146016D_var*
//#UC END# *4ADC5467036A_4ADC5146016D_var*
var
 l_Node : Il3Node;
begin
//#UC START# *4ADC5467036A_4ADC5146016D_impl*
 l_Node := FindNode(aForm);
 if Assigned(l_Node) then
  l_Node.Remove;
//#UC END# *4ADC5467036A_4ADC5146016D_impl*
end;//TnsWindowsListPrim.Remove

procedure TnsWindowsListPrim.Reload;
//#UC START# *4ADC54070106_4ADC5146016D_var*
//#UC END# *4ADC54070106_4ADC5146016D_var*
var
 l_Unique : TnsUniqueName;
 l_Index : Integer;
begin
//#UC START# *4ADC54070106_4ADC5146016D_impl*
 f_Root := nil;
 l_Unique := TnsUniqueName.Create;
 try
  f_Root := Tl3PlaceNode.Make;
  for l_Index := 0 to Pred(vcmDispatcher.FormDispatcher.MainFormsCount) do
   with vcmDispatcher.FormDispatcher do
    f_Root.InsertChild(TnsWindowNode.Make(
      MainForm[l_Index],
      l3PCharLen(l_Unique.MakeName(CheckLength(
        nsGetWindowCaption((MainForm[l_Index].VCLWinControl As TvcmMainForm)))))));
 finally
  FreeAndNil(l_Unique);
 end;//try..finally
//#UC END# *4ADC54070106_4ADC5146016D_impl*
end;//TnsWindowsListPrim.Reload
// start class TnsUniqueName

function TnsUniqueName.MakeName(const aName: Il3CString): Il3CString;
//#UC START# *4ADC560A0041_4ADC55470317_var*
//#UC END# *4ADC560A0041_4ADC55470317_var*
var
 l_PInt : PInteger;
 l_Indx : Integer;
begin
//#UC START# *4ADC560A0041_4ADC55470317_impl*
 Result := aName;
 l_Indx := f_Unique.IndexOf(Result);
 if (l_Indx = -1) then
 begin
  New(l_PInt);
  l_PInt^ := 0;
  f_Unique.AddObject(aName, TObject(l_PInt));
 end//l_Indx = -1
 else
 begin
  l_PInt := PInteger(f_Unique.Objects[l_Indx]);
  Inc(l_PInt^);
  Result := l3Fmt('%s (%d)', [aName, l_PInt^]);
 end;//l_Indx = -1
//#UC END# *4ADC560A0041_4ADC55470317_impl*
end;//TnsUniqueName.MakeName

constructor TnsUniqueName.Create;
//#UC START# *4ADC55A200AD_4ADC55470317_var*
//#UC END# *4ADC55A200AD_4ADC55470317_var*
begin
//#UC START# *4ADC55A200AD_4ADC55470317_impl*
 inherited Create;
 f_Unique := TvcmStringList.Make;
//#UC END# *4ADC55A200AD_4ADC55470317_impl*
end;//TnsUniqueName.Create

procedure TnsUniqueName.Cleanup;
//#UC START# *479731C50290_4ADC55470317_var*
var
 lIndex : Integer;
 lPInt  : PInteger;
//#UC END# *479731C50290_4ADC55470317_var*
begin
//#UC START# *479731C50290_4ADC55470317_impl*
 for lIndex := 0 to Pred(f_Unique.Count) do
 begin
  lPInt := PInteger(f_Unique.Objects[lIndex]);
  Dispose(lPInt);
 end;
 f_Unique := nil;
 inherited;
//#UC END# *479731C50290_4ADC55470317_impl*
end;//TnsUniqueName.Cleanup

procedure TnsUniqueName.ClearFields;
 {-}
begin
 f_Unique := nil;
 inherited;
end;//TnsUniqueName.ClearFields

function TnsWindowsListPrim.pm_GetRoot: Il3Node;
//#UC START# *4ADC531F03B4_4ADC5146016Dget_var*
//#UC END# *4ADC531F03B4_4ADC5146016Dget_var*
begin
//#UC START# *4ADC531F03B4_4ADC5146016Dget_impl*
 if not Assigned(f_Root) then
  Reload;
 Result := f_Root;
//#UC END# *4ADC531F03B4_4ADC5146016Dget_impl*
end;//TnsWindowsListPrim.pm_GetRoot

procedure TnsWindowsListPrim.Cleanup;
//#UC START# *479731C50290_4ADC5146016D_var*
//#UC END# *479731C50290_4ADC5146016D_var*
begin
//#UC START# *479731C50290_4ADC5146016D_impl*
 f_Root := nil;
 inherited;
//#UC END# *479731C50290_4ADC5146016D_impl*
end;//TnsWindowsListPrim.Cleanup

procedure TnsWindowsListPrim.ClearFields;
 {-}
begin
 f_Root := nil;
 inherited;
end;//TnsWindowsListPrim.ClearFields

end.
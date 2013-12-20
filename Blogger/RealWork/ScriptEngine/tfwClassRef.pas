unit tfwClassRef;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwClassRef.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::TtfwClassRef
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TtfwClassRef = class(TtfwWord)
 private
 // private fields
   f_Class : TClass;
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // public methods
   constructor Create(aClass: TClass); reintroduce;
   class procedure Register(aClass: TClass);
 end;//TtfwClassRef
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  tfwScriptEngine,
  l3Except,
  l3Base,
  TypInfo,
  StrUtils
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TtfwClassRef

constructor TtfwClassRef.Create(aClass: TClass);
//#UC START# *5085292201A0_508528D10384_var*
//#UC END# *5085292201A0_508528D10384_var*
begin
//#UC START# *5085292201A0_508528D10384_impl*
 inherited Create;
 f_Class := aClass;
//#UC END# *5085292201A0_508528D10384_impl*
end;//TtfwClassRef.Create

class procedure TtfwClassRef.Register(aClass: TClass);
//#UC START# *50853350035F_508528D10384_var*

 procedure RegisterProps(aClass : TClass);
 var
   I, Count: Integer;
   PropInfo: PPropInfo;
   TempList: PPropList;
   l_W     : TtfwClassRef;
   l_Class : TClass;
   l_N     : AnsiString;
 begin//RegisterProps
  if (aClass.ClassInfo = nil) then
   Exit;
  Count := GetPropList(aClass.ClassInfo, TempList);
  if Count > 0 then
  try
    for I := 0 to Count - 1 do
    begin
      PropInfo := TempList^[I];
      if (PropInfo^.PropType^.Kind = tkClass) then
      begin
       l_Class := GetTypeData(PropInfo^.PropType^).ClassType;
       if (l_Class <> aClass) then
       begin
        while (l_Class <> nil) do
        begin
         l_N := l_Class.ClassName;
         if not ANSIStartsStr('_', l_N) then
         // - игнорируем примеси
         begin
          l_W := TtfwClassRef.Create(l_Class);
          try
           try
            TtfwScriptEngine.GlobalAddWord('class::' + l_N, l_W);
           except
            on El3DuplicateItem do
             break;
           end;//try..except
          finally
           FreeAndNil(l_W);
          end;//try..finally
         end;//not ANSIStartsStr('_', l_N)
         l_Class := l_Class.ClassParent;
        end;//while (l_Class <> nil)
       end;//l_Class <> aClass
      end;//PropInfo^.PropType^.Kind = tkClass
    end;
  finally
    FreeMem(TempList);
  end;
 end;//RegisterProps

var
 l_Class : TClass;
 l_W     : TtfwClassRef;
 l_N     : AnsiString;
//#UC END# *50853350035F_508528D10384_var*
begin
//#UC START# *50853350035F_508528D10384_impl*
 l_Class := aClass;
 while (l_Class <> nil) do
 begin
  l_N := l_Class.ClassName;
  if not ANSIStartsStr('_', l_N) then
  // - игнорируем примеси
  begin
   l_W := TtfwClassRef.Create(l_Class);
   try
    try
     TtfwScriptEngine.GlobalAddWord('class::' + l_N, l_W);
    except
     on El3DuplicateItem do
      break;
    end;//try..except
   finally
    FreeAndNil(l_W);
   end;//try..finally
   RegisterProps(l_Class);
  end;//not ANSIStartsStr('_', l_N)
  l_Class := l_Class.ClassParent;
 end;//while (l_Class <> nil)
//#UC END# *50853350035F_508528D10384_impl*
end;//TtfwClassRef.Register

procedure TtfwClassRef.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_508528D10384_var*
//#UC END# *4DAEEDE10285_508528D10384_var*
begin
//#UC START# *4DAEEDE10285_508528D10384_impl*
 aCtx.rEngine.PushClass(f_Class);
//#UC END# *4DAEEDE10285_508528D10384_impl*
end;//TtfwClassRef.DoDoIt

{$IfEnd} //not NoScripts

end.
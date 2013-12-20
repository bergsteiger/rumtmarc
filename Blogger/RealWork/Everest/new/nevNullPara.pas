unit nevNullPara;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// ������: "w:/common/components/gui/Garant/Everest/new/nevNullPara.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParagraphsImplementation::TnevNullPara
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\common\components\gui\Garant\Everest\evDefine.inc}

interface

uses
  nevTools,
  nevParaPrim
  ;

type
 TnevNullPara = class(TnevParaPrim)
 public
 // public methods
   class function Make: InevPara; reintroduce;
   constructor Create; reintroduce;
 end;//TnevNullPara

implementation

// start class TnevNullPara

class function TnevNullPara.Make: InevPara;
var
 l_Inst : TnevNullPara;
begin
 l_Inst := Create;
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

constructor TnevNullPara.Create;
//#UC START# *48E0BD4D0277_48E0BD200269_var*
//#UC END# *48E0BD4D0277_48E0BD200269_var*
begin
//#UC START# *48E0BD4D0277_48E0BD200269_impl*
 inherited Create(nil);
//#UC END# *48E0BD4D0277_48E0BD200269_impl*
end;//TnevNullPara.Create

end.
unit nevFormulaPara;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/new/nevFormulaPara.pas"
// �����: 15.02.2011 18:33
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParagraphsImplementation::TnevFormulaPara
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\common\components\gui\Garant\Everest\evDefine.inc}

interface

uses
  nevTextPara
  ;

type
 TnevFormulaPara = class(TnevTextPara)
 protected
 // overridden protected methods
   function TreatCollapsedAsHidden: Boolean; override;
 end;//TnevFormulaPara

implementation

// start class TnevFormulaPara

function TnevFormulaPara.TreatCollapsedAsHidden: Boolean;
//#UC START# *4D596369028C_4D5A9CA80141_var*
//#UC END# *4D596369028C_4D5A9CA80141_var*
begin
//#UC START# *4D596369028C_4D5A9CA80141_impl*
 Result := false;
//#UC END# *4D596369028C_4D5A9CA80141_impl*
end;//TnevFormulaPara.TreatCollapsedAsHidden

end.
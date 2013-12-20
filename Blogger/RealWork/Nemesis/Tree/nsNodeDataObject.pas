unit nsNodeDataObject;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Nemesis"
// ������: "w:/common/components/gui/Garant/Nemesis/Tree/nsNodeDataObject.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi For F1::Nemesis::TreeDataObjects::TnsNodeDataObject
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\common\components\gui\Garant\Nemesis\nscDefine.inc}

interface

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
uses
  evNodeDataObject
  ;
{$IfEnd} //Nemesis AND not DesignTimeLibrary

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
type
 TnsNodeDataObject = class(TevNodeDataObject)
 protected
 // overridden protected methods
   function DataClass: RStorable; override;
 end;//TnsNodeDataObject
{$IfEnd} //Nemesis AND not DesignTimeLibrary

implementation

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
uses
  nsNodeStorable
  ;
{$IfEnd} //Nemesis AND not DesignTimeLibrary

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}

// start class TnsNodeDataObject

function TnsNodeDataObject.DataClass: RStorable;
//#UC START# *48F8CD5401AD_468270DC0341_var*
//#UC END# *48F8CD5401AD_468270DC0341_var*
begin
//#UC START# *48F8CD5401AD_468270DC0341_impl*
 Result := TnsNodeStorable;
//#UC END# *48F8CD5401AD_468270DC0341_impl*
end;//TnsNodeDataObject.DataClass

{$IfEnd} //Nemesis AND not DesignTimeLibrary

end.
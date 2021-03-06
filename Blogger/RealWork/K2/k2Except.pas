unit k2Except;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/k2Except.pas"
// �����: 13.04.1998 10:17
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi::K2::k2Except
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\K2\k2Define.inc}

interface

uses
  l3Except
  ;

type
 Ek2Error = class(El3Error)
 end;//Ek2Error

 Ek2Warning = class(El3Warning)
 end;//Ek2Warning

 Ek2NotFound = class(El3NotFound)
 end;//Ek2NotFound

 Ek2CannotDefine = class(Ek2Error)
 end;//Ek2CannotDefine

 Ek2TypeAlreadyDefined = class(Ek2CannotDefine)
 end;//Ek2TypeAlreadyDefined

 Ek2PropertyAlreadyDefined = class(Ek2CannotDefine)
 end;//Ek2PropertyAlreadyDefined

 Ek2CannotDefineType = class(Ek2CannotDefine)
 end;//Ek2CannotDefineType

 Ek2ConversionError = class(Ek2Error)
 end;//Ek2ConversionError

 Ek2CannotAddChild = class(El3Exception)
 end;//Ek2CannotAddChild

 Ek2InvalidChildType = class(Ek2CannotAddChild)
 end;//Ek2InvalidChildType

 Ek2ReadOnlyProperty = class(Ek2Warning)
 end;//Ek2ReadOnlyProperty

implementation

end.
unit My_Schema;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// ������: "w:/common/components/gui/Garant/Everest/My_Schema.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<TagTable::Class>> Shared Delphi::Everest::Standard::My
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evNative_Schema,
  k2Base {a},
  l3Interfaces {a},
  k2Interfaces {a}
  ;

type
 TMySchema = class(TevNativeSchema)
 public
   constructor Create; override;
 end;//TMySchema

implementation

uses
  SysUtils {a},
  TypInfo {a},
  k2Const {a},
  k2Tags {a},
  k2BaseStruct {a},
  l3Types {a},
  l3String {a}
  ;


// start class TMySchema

constructor TMySchema.Create;
begin
 inherited;
end;


initialization
 TMySchema.SetAsDefault;

end.
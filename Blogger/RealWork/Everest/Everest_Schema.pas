unit Everest_Schema;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/Everest_Schema.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<TagTable::Class>> Shared Delphi::Everest::Standard::Everest
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evNative_Schema,
  evTextStyle_Const,
  k2Base {a},
  l3Interfaces {a},
  k2Interfaces {a}
  ;

type
 TEverestSchema = class(TevNativeSchema)
 protected
 // определяем стандартные методы схемы
   function  pm_GetTypeByHandle(H: Integer): Tk2Type; override;
   procedure Cleanup; override;
 public
   constructor Create; override;
 end;//TEverestSchema

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


// start class TEverestSchema

constructor TEverestSchema.Create;
begin
 inherited;
 // TextStyle
 with t_TextStyle do
 begin
 end;//TextStyle
 t_TextStyle.Recalc;
end;

// определяем стандартные методы схемы


function TEverestSchema.pm_GetTypeByHandle(H: Integer): Tk2Type;
begin
 Result := inherited pm_GetTypeByHandle(H);
end;

procedure TEverestSchema.Cleanup;
begin
 inherited;
end;


initialization
 TEverestSchema.SetAsDefault;

end.
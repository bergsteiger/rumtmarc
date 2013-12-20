unit NOT_FINISHED_eeInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest Engine"
// Модуль: "w:/common/components/gui/Garant/Everest_Engine/NOT_FINISHED_eeInterfaces.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi For F1::Everest Engine::eeInterfaces
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\Everest_Engine\eeDefine.inc}

interface

uses
  evInternalInterfaces
  ;

type
 IeeTree = interface(IUnknown)
   ['{AFE22594-A88D-4A72-816C-91AAD1347145}']
 end;//IeeTree

 IeeTreeView = interface(IUnknown)
   ['{665E6CFE-7A3C-45EE-AEDA-868F8D47DD77}']
 end;//IeeTreeView

 IeeNode = interface(IUnknown)
   ['{7CEC8F4B-E01D-42D9-BC8C-B6C98B0A820D}']
 end;//IeeNode

 IeePara = interface(IUnknown)
   ['{50FCF7A0-873B-4B9D-82AD-E74F44E8E87A}']
 end;//IeePara

 IeeLeafPara = interface(IUnknown)
   ['{DDC1952D-5A31-4579-BC1F-EDC964F2F7E5}']
 end;//IeeLeafPara

 IeeEditor = interface(IevF1LikeEditor)
   ['{30C8F152-1DA6-4B92-8A76-A4588838F823}']
 end;//IeeEditor

 IeeSub = interface(IUnknown)
   ['{D6B4D665-A330-410A-A2D2-067093332B58}']
 end;//IeeSub

 IeeSubList = interface(IUnknown)
   ['{8F526E93-54F7-4870-B526-49A1BCD5A044}']
 end;//IeeSubList

 IeePicture = interface(IeePara)
   ['{31F256EF-8A06-4440-B46C-254F58983A0A}']
 end;//IeePicture

 TeeMouseButton = (
   
 );//TeeMouseButton

 TeeMouseAction = (
   
 );//TeeMouseAction

 TeeShiftState = (
   
 );//TeeShiftState

 TeeDirection = (
   
 );//TeeDirection

 IeeHotSpot = interface(IUnknown)
   ['{5325BA64-95EF-4AB9-816F-4CA45522F6EB}']
 end;//IeeHotSpot

implementation

end.
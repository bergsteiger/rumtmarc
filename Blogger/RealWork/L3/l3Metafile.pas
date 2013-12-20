unit l3Metafile;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/l3Metafile.pas"
// Начат: 22.10.2004 19:10
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Low Level::L3::l3Canvas::Tl3Metafile
//
// Метафайл
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3Interfaces,
  Graphics
  ;

type
 _l3Unknown_Parent_ = TMetafile;
 {$Include ..\L3\l3Unknown.imp.pas}
 Tl3Metafile = class(_l3Unknown_)
  {* Метафайл }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* функция класса, определяющая могут ли объекты данного класса попадать в кэш повторного использования. }
   {$IfEnd} //not DesignTimeLibrary
 public
 // public methods
   procedure LoadFromIStream(const aStream: IStream);
   procedure SaveToIStream(const aStream: IStream);
 end;//Tl3Metafile

implementation

uses
  l3Stream,
  Classes,
  SysUtils,
  l3Base,
  l3Core,
  Windows
  ;

{$Include ..\L3\l3Unknown.imp.pas}

type
  THackMetafile = class(TGraphic)
  private
  // private fields
   FImage : TMetafileImage;
  end;//THackMetafile

  THackSharedImage = class(TSharedImage)
  end;//THackSharedImage

// start class Tl3Metafile

procedure Tl3Metafile.LoadFromIStream(const aStream: IStream);
//#UC START# *47E14DD00013_47DFD79200BD_var*
var
 l_Stream : TStream;
//#UC END# *47E14DD00013_47DFD79200BD_var*
begin
//#UC START# *47E14DD00013_47DFD79200BD_impl*
 l3IStream2Stream(aStream, l_Stream);
 try
  LoadFromStream(l_Stream);
 finally
  FreeAndNil(l_Stream);
 end;//try..finally
//#UC END# *47E14DD00013_47DFD79200BD_impl*
end;//Tl3Metafile.LoadFromIStream

procedure Tl3Metafile.SaveToIStream(const aStream: IStream);
//#UC START# *47E14DE302A3_47DFD79200BD_var*
var
 l_Stream : TStream;
//#UC END# *47E14DE302A3_47DFD79200BD_var*
begin
//#UC START# *47E14DE302A3_47DFD79200BD_impl*
 l3IStream2Stream(aStream, l_Stream);
 try
  SaveToStream(l_Stream);
 finally
  FreeAndNil(l_Stream);
 end;//try..finally
//#UC END# *47E14DE302A3_47DFD79200BD_impl*
end;//Tl3Metafile.SaveToIStream

procedure Tl3Metafile.Cleanup;
//#UC START# *479731C50290_47DFD79200BD_var*
//#UC END# *479731C50290_47DFD79200BD_var*
begin
//#UC START# *479731C50290_47DFD79200BD_impl*
 THackSharedImage(THackMetafile(Self).FImage).Release;
 THackMetafile(Self).FImage := nil;
 inherited;
//#UC END# *479731C50290_47DFD79200BD_impl*
end;//Tl3Metafile.Cleanup

{$If not defined(DesignTimeLibrary)}
class function Tl3Metafile.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_47DFD79200BD_var*
//#UC END# *47A6FEE600FC_47DFD79200BD_var*
begin
//#UC START# *47A6FEE600FC_47DFD79200BD_impl*
 Result := true;
//#UC END# *47A6FEE600FC_47DFD79200BD_impl*
end;//Tl3Metafile.IsCacheable
{$IfEnd} //not DesignTimeLibrary

end.
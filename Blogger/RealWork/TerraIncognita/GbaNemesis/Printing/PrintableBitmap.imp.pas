{$IfNDef PrintableBitmap_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Printing"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Printing/PrintableBitmap.imp.pas"
// Начат: 10.11.2010 19:48
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Aspects::Printing::Printing::Printing::PrintableBitmap
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define PrintableBitmap_imp}
 Graphics_Bitmap = Graphics.TBitmap;
  {* Переопределение TBitmap, чтобы не нарваться на конфликт с Windows.TBitmap }

 _Printable_Parent_ = _PrintableBitmap_Parent_;
 {$Include ..\Printing\Printable.imp.pas}
 _PrintableBitmap_ = {abstract form} class(_Printable_)
 protected
 // property methods
   function pm_GetBitmapForPrint: Graphics_Bitmap; virtual; abstract;
 protected
 // realized methods
   function pm_GetPreview: IafwDocumentPreview; override;
 protected
 // protected methods
   function Name: Il3CString; virtual; abstract;
   function ShortName: Il3CString; virtual; abstract;
   function DPI: Integer; virtual;
 protected
 // protected properties
   property BitmapForPrint: Graphics_Bitmap
     read pm_GetBitmapForPrint;
 end;//_PrintableBitmap_

{$Else PrintableBitmap_imp}

{$Include ..\Printing\Printable.imp.pas}

// start class _PrintableBitmap_

function _PrintableBitmap_.DPI: Integer;
//#UC START# *4CDAE15C035B_4CDACCDF0368_var*
//#UC END# *4CDAE15C035B_4CDACCDF0368_var*
begin
//#UC START# *4CDAE15C035B_4CDACCDF0368_impl*
 Result := 0;
//#UC END# *4CDAE15C035B_4CDACCDF0368_impl*
end;//_PrintableBitmap_.DPI

function _PrintableBitmap_.pm_GetPreview: IafwDocumentPreview;
//#UC START# *4CDAC5E902FF_4CDACCDF0368get_var*
//#UC END# *4CDAC5E902FF_4CDACCDF0368get_var*
begin
//#UC START# *4CDAC5E902FF_4CDACCDF0368get_impl*
 Result := TnsObjectPreview.Make(TevBitmapDataObject.Make(BitmapForPrint, Self.DPI),
                                 evDefaultPreviewCacheKey,
                                 TnsHAFPainter.Make(TnsFixedHAFMacroReplacer.Make(nil, ShortName, Name)));
//#UC END# *4CDAC5E902FF_4CDACCDF0368get_impl*
end;//_PrintableBitmap_.pm_GetPreview

{$EndIf PrintableBitmap_imp}

unit evControlParaFilter;
{* Фильтр, конвертирующий COntrolPara, ControlParaRow, ControlParaTable. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evBlocksEliminator - }
{ Начат: 29.09.2006 18:30 }
{ $Id: evControlParaFilter.pas,v 1.4 2011/12/26 12:58:25 lulin Exp $ }

// $Log: evControlParaFilter.pas,v $
// Revision 1.4  2011/12/26 12:58:25  lulin
// {RequestLink:302743654}
//
// Revision 1.3  2009/03/04 13:32:45  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.2  2007/12/04 12:46:59  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.1.2.2  2006/09/29 10:59:51  oman
// правильная ссылка на номер ошибки
//
// Revision 1.1.2.1  2006/09/29 10:56:43  oman
// - fix: При вставке из клипборда перемываем контролы из КЗ в
//  обычные параграфы (cq16993)
//
//

{$I evDefine.inc }

interface

uses
 l3Types,

 k2TagFilter
 ;

type
 TevControlParaFilter = class(Tk2TagFilter)
 protected
  // internal methods
  procedure DoStartChild(TypeID: Long);
   override;
    {-}
  procedure DoStartTag(TagID: Long);
   override;
    {-}
 end;//TevControlParaFilter

implementation

uses
 k2Tags,
 
 ControlPara_Const,
 TextPara_Const,
 ReqCell_Const,
 TableCell_Const,
 ReqRow_Const,
 TableRow_Const
 ;

{ TevControlParaFilter }

procedure TevControlParaFilter.DoStartChild(TypeID: Long);
var
 l_Type: Long;
begin
 Case TypeID of
  k2_idControlPara: l_Type := k2_idTextPara;
  k2_idReqCell: l_Type := k2_idTableCell;
  k2_idReqRow: l_Type := k2_idTableRow;
 else
  l_Type := TypeID;
 end;
 inherited DoStartChild(l_Type);
end;

procedure TevControlParaFilter.DoStartTag(TagID: Long);
 //override;
  {-}
begin
 if (TagID = k2_tiAlternateText) then
  StartSkipTags
 else
  inherited;
end;
  
end.


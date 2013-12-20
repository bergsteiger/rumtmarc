unit lgTypes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/lgTypes.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> F1 Базовые определения предметной области::F1 Application Template::View::lgTypes
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

type
 TlgQueryType = (
  {* Тип запроса на поиск }
   lg_qtNone // неопределенный тип запроса
 , lg_qtKeyWord // по ситуации
 , lg_qtAttribute // по реквизитам (новый)
 , lg_qtPublishedSource // по источнику опубликования
 , lg_qtPostingOrder // заказ рассылки
 , lg_qtLegislationReview // обзор законадательства
 , lg_qtSendConsultation // запрос на правовую поддержку, при этом поиск не осуществляется, запрос уходит на обработку в компанию Гарант
 , lg_qtBaseSearch // базовый поиск
 , lg_qtInpharmSearch // лекарственного препарата
 );//TlgQueryType

implementation

end.
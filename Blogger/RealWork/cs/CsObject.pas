unit CsObject;

{ $Id: CsObject.pas,v 1.4 2006/03/10 09:29:12 voba Exp $ }

// $Log: CsObject.pas,v $
// Revision 1.4  2006/03/10 09:29:12  voba
// - enh. убрал CsFree etc.
//
// Revision 1.3  2006/02/08 17:24:29  step
// выполнение запросов перенесено из классов-потомков в процедуры объектов
//

{$I CsDefine.inc}

interface

uses
 l3Base;

type
 TCsObject = Tl3Base;
 TCsObjectClass = class of TCsObject;


implementation
end.


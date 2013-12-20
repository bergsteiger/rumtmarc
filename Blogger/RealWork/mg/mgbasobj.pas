unit mgBasObj;

(*
//
// module:  mgbasobj.pas
// author:  Mickael P. Golovin
//
// Copyright (c) 1997-2000 by Archivarius Team, free for non commercial use.
//
// $Id: mgbasobj.pas,v 1.7 2011/05/18 12:10:47 lulin Exp $
//
*)

// $Log: mgbasobj.pas,v $
// Revision 1.7  2011/05/18 12:10:47  lulin
// {RequestLink:266409354}.
//
// Revision 1.6  2009/03/19 16:28:34  lulin
// [$139443095].
//
// Revision 1.5  2009/03/12 09:58:08  lulin
// - <K>: 138969458. Наследуемся от более простых объектов.
//
// Revision 1.4  2006/04/25 14:03:28  lulin
// - cleanup.
//
// Revision 1.3  2006/04/25 13:23:11  lulin
// - избавляемся от старых архивирующих потоков.
//
// Revision 1.2  2006/04/25 13:17:12  lulin
// - избавляемся от старых архивирующих потоков.
//
// Revision 1.1  2004/09/02 15:17:34  law
// - cleanup.
//
// Revision 1.8  2003/11/27 12:11:02  fireton
// update: форматирование исходников
//
// Revision 1.7  2003/11/26 15:25:56  fireton
// update: исходники частично отформатированы
//
// Revision 1.6  2002/04/24 14:56:52  law
// - cleanup.
//

{$Include m0Define.inc}

interface

uses
  Windows,
  Messages,
  SysUtils,
  Consts,
  Classes,

  l3Types,
  l3ProtoObject,

  m0Const,
  m0AddTyp,
  m0IDPLib
  ;

type
  TmgBaseObject = class(Tl3ProtoObject)
    protected
    // internal fields
      FClaDoneProcHandle: Pm0IDPLibDoneProcHandle;
    protected
    // protected methods
      procedure Cleanup;
        override;
        {-}
    public
      constructor Create;
        reintroduce;
        {-}
  end;//TmgBaseObject

implementation

// start class TmgBaseObject

constructor TmgBaseObject.Create;
begin
 inherited Create;
end;

procedure TmgBaseObject.Cleanup;
begin
 m0IDPDelDoneProc(FClaDoneProcHandle);
 inherited;
end;

end.

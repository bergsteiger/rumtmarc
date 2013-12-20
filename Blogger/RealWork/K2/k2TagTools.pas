unit k2TagTools;
{* ��������������� ������ � ������� ��� ���������� ������������ ��� �����. }

{ ���������� "K-2"        }
{ �����: ����� �.�. �     }
{ ������: k2TagTools -    }
{ �����: 16.06.2000 18:35 }
{ $Id: k2TagTools.pas,v 1.54 2012/11/01 07:09:25 lulin Exp $ }

// $Log: k2TagTools.pas,v $
// Revision 1.54  2012/11/01 07:09:25  lulin
// - �������� �����.
//
// Revision 1.53  2012/10/26 16:44:14  lulin
// - �������� ��������� ����� ���������.
//
// Revision 1.52  2010/04/12 15:12:31  lulin
// {RequestLink:203129570}.
// - ������� �������� ��� �������������� �������.
//
// Revision 1.51  2010/04/09 16:02:39  lulin
// {RequestLink:201493388}.
//
// Revision 1.50  2009/07/23 13:42:34  lulin
// - ��������� ��������� �������� ���� ���� ����.
//
// Revision 1.49  2009/07/23 08:15:03  lulin
// - �������� �������� ������������� ���������� ��������.
//
// Revision 1.48  2009/04/06 17:51:30  lulin
// [$140837386]. �11.
//
// Revision 1.47  2008/12/12 19:19:28  lulin
// - <K>: 129762414.
//
// Revision 1.46  2007/09/14 13:26:19  lulin
// - ��������� � ������ B_Tag_Clean.
//
// Revision 1.45.6.1  2007/09/12 17:08:18  lulin
// - cleanup.
//
// Revision 1.45  2007/08/10 08:30:14  lulin
// - ����������� �� ��������� ������������� �����������, �.�. ������������� ����� ���� ���������� ������� ��������.
//
// Revision 1.44  2006/11/03 11:00:44  lulin
// - ��������� � ������ 6.4.
//
// Revision 1.43.24.1  2006/10/26 11:24:19  lulin
// - ����������� �� ������ �������������� �����.
//
// Revision 1.43  2005/11/09 15:28:38  lulin
// - ������� ���������� ���������� � ���������� ������.
//
// Revision 1.42  2005/04/28 15:04:09  lulin
// - ��������� ����� B_Tag_Box � HEAD.
//
// Revision 1.41.2.5  2005/04/23 16:07:36  lulin
// - ������ ��������� ��������� Ik2TagBox.
//
// Revision 1.41.2.4  2005/04/23 15:19:26  lulin
// - remove method: Ik2Tag._SetSubAtom - ��� ������� � ������� � �������������� ����.
//
// Revision 1.41.2.3  2005/04/22 10:47:20  lulin
// - cleanup: ������ �������� � ���������� ��������.
//
// Revision 1.41.2.2  2005/04/22 09:04:37  lulin
// - cleanup: ������ �������� ���������.
//
// Revision 1.41.2.1  2005/04/21 14:47:03  lulin
// - ����������� �� ������� ��� ������ - ������ ������� ����������� �������� ���� ��������� ��������� Ik2Tag.
//
// Revision 1.41  2005/04/20 17:40:57  lulin
// - ��������� �� �������������� ���������� Ik2TagBoxQT.
//
// Revision 1.40  2005/04/20 14:31:59  lulin
// - ���������� ��� ����� ������������ �����.
//
// Revision 1.39  2005/04/20 13:38:45  lulin
// - new method: Ik2TagBox.InheritsFrom.
//
// Revision 1.38  2005/04/18 17:18:30  lulin
// - ���������� Box, � �� Ik2Tag (���� �������� � ������������������ �� ����).
//
// Revision 1.37  2005/04/15 09:35:58  lulin
// - cleanup.
//
// Revision 1.36  2005/04/15 08:59:57  lulin
// - ������ ������ ������ �� ���, � �� ���������� ���.
//
// Revision 1.35.2.1  2005/04/15 08:21:38  lulin
// - ������ ������ ������ �� ���, � �� ���������� ���.
//
// Revision 1.35  2005/04/07 15:42:08  lulin
// - cleanup.
//
// Revision 1.34  2005/03/30 15:56:30  lulin
// - TevLocation ������ ����������� �� Tk2Tool - �������� ������ ��� ������������ �����.
//
// Revision 1.33  2005/03/28 11:32:28  lulin
// - ���������� ��������� � "����������" ������.
//
// Revision 1.32  2005/03/25 17:09:17  lulin
// - ����������� �� ������ Tk2AtomW.sLong.
//
// Revision 1.31  2005/03/24 13:30:53  lulin
// - ������� ������� �������������� Tk2AtomR � Ik2TagBox.
//
// Revision 1.30  2005/03/23 11:16:32  lulin
// - ������� �������� ����������.
//
// Revision 1.29  2005/03/21 16:28:21  lulin
// - ��������� � Ik2Tag.
//
// Revision 1.28  2005/03/15 12:16:14  lulin
// - remove method: k2TagO.
//
// Revision 1.27  2005/03/09 15:43:14  lulin
// - remove method: Tk2AtomR._AssignCloneParams.
// - new class: Tk2TT - ��������� ������� ��� ������ � ������ (����������� ���������) �� ����������������� ������ ������ (� ��������� ���� ��������� ����� _AssignCloneParams).
//
// Revision 1.26  2005/03/09 15:05:17  lulin
// - �� Tk2AtomR ��������� � Ik2TagWrap.
//
// Revision 1.25  2005/03/04 19:29:51  lulin
// - ��������� �� "������������" ������� ������������ �����.
//
// Revision 1.24  2005/02/18 16:04:55  lulin
// - ������� �� Ik2Tag.
//
// Revision 1.23  2004/11/13 11:28:35  lulin
// - new interface: IevControl.
//
// Revision 1.22  2004/10/13 10:33:37  lulin
// - new behavior: �������������� �������� ������������.
//
// Revision 1.21  2004/06/30 11:32:28  law
// - rename proc: _k2Tag(TObject) -> k2TagO.
//
// Revision 1.20  2004/06/29 16:01:37  law
// - bug fix: ������������ � ��������� ��������� � evNode.
//
// Revision 1.19  2004/06/29 15:36:21  law
// - new method: Ik2Tag.Clone.
//
// Revision 1.18  2004/06/29 15:13:47  law
// - new interface: Ik2Tag.
//
// Revision 1.17  2004/06/29 14:58:13  law
// - new interface: Ik2TagBox.
//
// Revision 1.16  2004/06/29 14:26:52  law
// - ����������� �� ������ Tk2AtomR._Set.
//
// Revision 1.15  2004/05/27 14:32:10  law
// - new methods: Tl3_CBase.IsCacheable, _NeedStoreInPool.
//
// Revision 1.14  2004/04/19 11:53:54  law
// - new: �������� IevNodeDict ������� ����������� ������.
//
// Revision 1.13  2003/11/26 13:49:36  law
// - new interface: IedEditableObject.
//
// Revision 1.12  2002/12/20 16:39:41  law
// - cleanup.
//
// Revision 1.11  2002/10/25 13:41:17  law
// - cleanup.
//
// Revision 1.10  2002/07/16 15:44:51  law
// - some refactoring.
//
// Revision 1.9  2001/09/05 07:22:26  law
// - comments: xHelpGen.
//
// Revision 1.8  2001/06/18 14:32:50  law
// - cleanup.
//
// Revision 1.7  2001/01/31 10:37:31  law
// - �������������� ������������� QueryInterface.
//
// Revision 1.6  2000/12/15 15:18:59  law
// - ��������� ��������� Log.
//

{$Include k2Define.inc }

interface

uses
  l3Interfaces,
  l3Types,
  l3Base,
  l3IID,

  k2BaseIntf,
  k2Interfaces,
  k2InternalInterfaces,
  k2TagTool
  ;

type
  Tk2TagTool = class(k2TagTool.Tk2TagTool)
   {* ������� ����� ��� ���������� ������������ ��� �����. }
  end;//Tk2TagTool

(*  Tk2OpTagTool = class(Tk2TagTool)
   {* ������� ����� ��� ���������� ������������ ��� �����, ���������� � ��������� ��������. }
    private
    // property fields
      f_OpPack : Ik2Op;
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(const aTagWrap : Ik2Tag;
                         const anOpPack : Ik2Op);
        reintroduce;
        virtual;
        {* - ������� ����������. }
    public
    // public properties
      property OpPack: Ik2Op
        read f_OpPack;
        {* - ��������, � ��������� ������� �������� ����������. }
  end;//Tk2OpTagTool*)

  Tk2ProcessorTagTool = class(Tk2TagTool)
   {* ������� ����� ��� ���������� ������������ ��� �����, ���������� � ����������� ��������. }
    protected
    // property fields
      f_Processor : Ik2Processor;
    protected
    // property methods
      function pm_GetProcessor: Ik2Processor;
        virtual;
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
      function StartOp(OpCode : Integer = 0;
                       DoLock : WordBool = true): Ik2Op;
        {-}
    public
    // public methods
      constructor Create(const aTagWrap   : Ik2Tag;
                         const aProcessor : Ik2Processor);
        reintroduce;
        virtual;
        {* - ������� ����������. }
      function COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
        override;
        {-}
    public
    // public properties
      property Processor: Ik2Processor
        read pm_GetProcessor;
        {* - ��������� ��������. }
  end;//Tk2ProcessorTagTool

implementation

uses
  SysUtils,
  
  l3Const,
  l3InterfacesMisc,

  k2Base,
  k2Except
  ;


(*// start class Tk2OpTagTool

constructor Tk2OpTagTool.Create(const aTagWrap : Ik2Tag;
                                const anOpPack : Ik2Op);
  {reintroduce;}
  {-}
begin
 inherited Create(aTagWrap);
 f_OpPack := anOpPack;
end;

procedure Tk2OpTagTool.Cleanup;
  {override;}
  {-}
begin
 f_OpPack := nil;
 inherited;
end;*)

{ start class Tk2ProcessorTagTool }

constructor Tk2ProcessorTagTool.Create(const aTagWrap   : Ik2Tag;
                                       const aProcessor : Ik2Processor);
  {reintroduce;}
  {-}
begin
 inherited Create(aTagWrap);
 f_Processor := aProcessor;
end;

function Tk2ProcessorTagTool.COMQueryInterface(const IID: Tl3GUID; out Obj): Tl3HResult;
  //override;
  {-}
begin
 if IID.EQ(Ik2Processor) then
 begin
  Result.SetOk;
  Ik2Processor(Obj) := Processor;
 end//IID.EQ(Ik2Processor)
 else
  Result := inherited COMQueryInterface(IID, Obj)
end;

procedure Tk2ProcessorTagTool.Cleanup;
  {override;}
  {-}
begin
 f_Processor := nil;
 inherited;
end;

function Tk2ProcessorTagTool.StartOp(OpCode : Integer = 0;
                                     DoLock : WordBool = true): Ik2Op;
  {-}
begin
 if (Processor = nil) then
  Result := nil
 else
  Result := Processor.StartOp(OpCode, DoLock);
end;

function Tk2ProcessorTagTool.pm_GetProcessor: Ik2Processor;
  {-}
begin
 Result := f_Processor;
end;

end.


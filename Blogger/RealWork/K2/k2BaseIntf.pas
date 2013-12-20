unit k2BaseIntf;
{* ������-������� ��� ���������� �����������. }

{ ���������� "L3 (Low Level Library)" }
{ �����: ����� �.�. � }
{ ������: l3BaseIntf - }
{ �����: 25.05.99 14:48 }
{ $Id: k2BaseIntf.pas,v 1.3 2012/11/01 07:09:25 lulin Exp $ }

// $Log: k2BaseIntf.pas,v $
// Revision 1.3  2012/11/01 07:09:25  lulin
// - �������� �����.
//
// Revision 1.2  2009/07/23 13:42:34  lulin
// - ��������� ��������� �������� ���� ���� ����.
//
// Revision 1.1  2009/07/23 08:15:03  lulin
// - �������� �������� ������������� ���������� ��������.
//
// Revision 1.26  2009/07/20 11:22:19  lulin
// - ���������� �������� F1 ����� - {RequestLink:141264340}. �7, 32, 33.
//
// Revision 1.25  2008/02/15 13:22:43  lulin
// - <TDN>: 79.
//
// Revision 1.24  2008/02/14 17:09:14  lulin
// - cleanup.
//
// Revision 1.23  2008/02/07 08:37:59  lulin
// - ������� �������� ������� �� ������������ ������.
//
// Revision 1.22  2005/11/09 15:28:41  lulin
// - ������� ���������� ���������� � ���������� ������.
//
// Revision 1.21  2005/10/20 06:32:25  lulin
// - ������� � ����������� �������� � �������.
//
// Revision 1.20  2005/10/20 05:47:34  lulin
// - cleanup.
//
// Revision 1.18  2004/09/20 12:42:58  lulin
// - ����������� - ����� ����������� ����� �������� � ���, ����� �������� �� (�� ������ ����������) ��������� � 3.5 ��� �� 2.6 ���.
//
// Revision 1.17  2004/08/05 17:40:30  law
// - ��������� �� ���� Warning'�� � Hint'��.
//
// Revision 1.16  2004/07/27 14:53:05  voba
// - ����� Assert.
//
// Revision 1.15  2004/05/27 14:32:14  law
// - new methods: _Tl3_CBase.IsCacheable, _NeedStoreInPool.
//
// Revision 1.14  2003/11/26 13:49:39  law
// - new interface: IedEditableObject.
//
// Revision 1.13  2003/03/13 16:37:20  law
// - change: ������� ����������� �� Builder.
//
// Revision 1.12  2002/01/15 13:52:19  law
// - new behavior: Tl3OwnedProcessorTool ������ ������ ��������� _Il3Processor.
//
// Revision 1.11  2001/08/01 15:08:50  law
// - comments: xHelpGen.
//
// Revision 1.10  2001/01/31 10:37:32  law
// - �������������� ������������� QueryInterface.
//
// Revision 1.9  2000/12/15 15:18:59  law
// - ��������� ��������� Log.
//

{$Include l3Define.inc }

interface

uses
  Classes,

  l3Interfaces,
  l3Types,
  l3IID,
  l3CacheableBase,
  l3_Base,

  k2Prim
  ;

type
  Tl3InterfaceImplementation = class(Tl3CacheableBase)
   {* ������� �����-������ ��� ���������� �����������. }
  end;//Tl3InterfaceImplementation

  _RefOwnedParent_ = Tl3InterfaceImplementation;
  _OwnerType_ = Tl3_Base;
  {$Include l3RefOwned.int}
  Tl3OwnedInterfaceImplementation = class(_RefOwned_)
  end;//Tl3OwnedInterfaceImplementation

  Tl3ProcessorTool = class(Tl3InterfaceImplementation)
   {* �����-������ ��� ���������� ����������� � ����������� ��������. }
    private
    // property fields
      f_Processor : Ik2Processor;
    protected
    // property methods
      function pm_GetProcessor: Ik2Processor;
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(const aProcessor: Ik2Processor);
        reintroduce;
        {* - ������� ��������� ������. }
      class function IsCacheable: Bool;
        override;
        {-}
    public
    {public properties}
      property Processor: Ik2Processor
        read f_Processor;
        {* - ��������� ��������. }
  end;{Tl3ProcessorTool}

implementation

uses
  SysUtils,

  l3InterfacesMisc,
  l3Base
  ;

{$Include l3RefOwned.int}

// start class Tl3ProcessorTool

constructor Tl3ProcessorTool.Create(const aProcessor: Ik2Processor);
  {reintroduce;}
  {-}
begin
 inherited Create;
 f_Processor := aProcessor;
end;

procedure Tl3ProcessorTool.Cleanup;
  {override;}
  {-}
begin
 f_Processor := nil;
 inherited;
end;

class function Tl3ProcessorTool.IsCacheable: Bool;
  {override;}
  {-}
begin
 Result := true;
end;

function Tl3ProcessorTool.pm_GetProcessor: Ik2Processor;
  {-}
begin
 Result := f_Processor;
end;

end.


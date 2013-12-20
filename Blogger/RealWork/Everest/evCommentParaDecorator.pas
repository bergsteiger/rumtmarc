unit evCommentParaDecorator;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/evCommentParaDecorator.pas"
// �����: 14.04.2009 17:07
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Generators::TevCommentParaDecorator
//
// ������, ������������ ������������ ������� ������������� ����������. [$140285546]
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evdLeafParaFilter,
  k2Interfaces
  ;

type
 TevCommentParaDecorator = class(TevdLeafParaFilter)
  {* ������, ������������ ������������ ������� ������������� ����������. [$140285546] }
 private
 // private fields
   f_DecorationWritten : Boolean;
    {* ���������� �������}
 protected
 // overridden protected methods
   procedure OpenStream; override;
     {* ���������� ���� ��� ��� ������ ���������. ��� ���������� � ��������. }
   procedure DoWritePara(const aLeaf: Ik2Tag); override;
     {* ������ ����������� ������ � ���������. ��������� ������� ��������� � ���������� ������ }
 end;//TevCommentParaDecorator

implementation

uses
  evdStyles,
  k2Tags,
  TextPara_Const,
  Graphics,
  nevInterfaces
  ;

// start class TevCommentParaDecorator

procedure TevCommentParaDecorator.OpenStream;
//#UC START# *4836D49800CA_49E48A670254_var*
//#UC END# *4836D49800CA_49E48A670254_var*
begin
//#UC START# *4836D49800CA_49E48A670254_impl*
 inherited;
 f_DecorationWritten := false;
//#UC END# *4836D49800CA_49E48A670254_impl*
end;//TevCommentParaDecorator.OpenStream

procedure TevCommentParaDecorator.DoWritePara(const aLeaf: Ik2Tag);
//#UC START# *49E4883E0176_49E48A670254_var*
//#UC END# *49E4883E0176_49E48A670254_var*
begin
//#UC START# *49E4883E0176_49E48A670254_impl*
 if f_DecorationWritten then
 begin
  if (aLeaf.IntA[k2_tiStyle] <> ev_saTxtComment) then
   f_DecorationWritten := false;
 end//f_DecorationWritten
 else
 begin
  if (aLeaf.IntA[k2_tiStyle] = ev_saTxtComment) then
  begin
   f_DecorationWritten := true;
   Generator.StartChild(k2_idTextPara);
   try
    Generator.AddIntegerAtom(k2_tiStyle, ev_saTxtComment);
    //Generator.AddPCharLenAtom(k2_tiText, str_nevmmJurorCommentDecorate.AsCStr.AsWStr);
    Generator.AddPCharLenAtom(k2_tiText, aLeaf.Attr[k2_tiStyle].PCharLenA[k2_tiShortName]);
    // - http://mdp.garant.ru/pages/viewpage.action?pageId=297712959
    Generator.StartTag(k2_tiFont);
    try
     Generator.AddIntegerAtom(k2_tiForeColor, clBlack);
     Generator.AddIntegerAtom(k2_tiSize, 8);
    finally
     Generator.Finish;
    end;//try..finally
(*    Generator.StartTag(k2_tiFrame);
    try
     Generator.StartTag(k2_tiFrameDown);
     try
     finally
      Generator.Finish;
     end;//try..finally
    finally
     Generator.Finish;
    end;//try..finally*)
   finally
    Generator.Finish;
   end;//try..finally
  end;//aLeaf.IntA[k2_tiStyle] = ev_saTxtComment
 end;//f_DecorationWritten
 inherited;
//#UC END# *49E4883E0176_49E48A670254_impl*
end;//TevCommentParaDecorator.DoWritePara

end.
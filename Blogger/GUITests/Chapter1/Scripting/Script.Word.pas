unit Script.Word;

interface

uses
 Core.Obj,
 Script.WordsInterfaces
 ;

type
 TscriptWord = class(TCoreInterfacedObject, IscriptWord)
  protected
   procedure DoIt(aContext: TscriptContext); virtual; abstract;
    {* - ���������� ��������� ��� ���������� ����� �������. }
  public
   class function Make: IscriptWord;
    {* - ������� }
 end;//TscriptWord
 RscriptWord = class of TscriptWord;

implementation

class function TscriptWord.Make: IscriptWord;
 {* - ������� }
begin
 Result := Create;
end;

end.

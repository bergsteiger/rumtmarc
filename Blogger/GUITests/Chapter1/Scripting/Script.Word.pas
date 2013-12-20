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
    {* - собственно процедура для выполнения слова словаря. }
  public
   class function Make: IscriptWord;
    {* - фабрика }
 end;//TscriptWord
 RscriptWord = class of TscriptWord;

implementation

class function TscriptWord.Make: IscriptWord;
 {* - фабрика }
begin
 Result := Create;
end;

end.

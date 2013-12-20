unit csRequestTask;

interface

uses ddServerTask;

type
  TddRequestTask = class(TddTaskItem)
  protected
  public
  end;

implementation

uses
 CsTaskTypes;


initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csRequestTask.pas initialization enter'); {$EndIf}
 RegisterTaskClass(cs_ttRequest, TddRequestTask, 'запрос');
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csRequestTask.pas initialization leave'); {$EndIf}
end.

// ***************************************************************************
//                                                                            
// Generated by the MTDORB IDL-to-Pascal Translator (1.0.1b1), 21.09.2010 13:26
//                                                                            
// Copyright (c) 2002 - 2004                                                  
// Millennium Group.                                                          
// Samara, Russia                                                             
//                                                                            
// All Rights Reserved                                                        
//                                                                            
// ***************************************************************************
// Compiled with parameters: " -i./ ./\forward.idl" 
//                                                                            
unit forward_int;

{$MINENUMSIZE 4}

interface

uses
  orbtypes, code_int, orb_int;

type

  IA = interface;

  IB = interface
  ['{AFBF24F5-0401-4F2D-B40B-B18971063296}']
    procedure op(const a: IA);
  end;

  IA = interface
  ['{7EC5B20F-97E7-4CF0-B26B-3E8C6E85A1B4}']
    procedure op(const b: IB);
  end;

implementation

end.

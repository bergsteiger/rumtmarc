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
// Compiled with parameters: " -i./ ./\a.idl" 
//                                                                            
unit a_int;

{$MINENUMSIZE 4}

interface

uses
  orbtypes, code_int, orb_int, b_int;

type

// module A types

  TA_S = record
    b : Boolean;
  end;

  TA_BSSeq = Array of TB_S;

  TA_SSeq = Array of TA_S;

  IA_foo = interface
  ['{69A0AC0B-0422-49E0-9A1C-32A89FE789E4}']
    procedure bar(const x: TA_BSSeq);
  end;

implementation

end.

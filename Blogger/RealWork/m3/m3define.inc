(*
//
//
// .Author: Mickael P. Golovin.
// .Copyright: 1997-2001 by Archivarius Team, _free for non commercial use.
//
//
*)
// $Id: m3define.inc,v 1.20 2012/06/09 13:03:31 voba Exp $

// $Log: m3define.inc,v $
// Revision 1.20  2012/06/09 13:03:31  voba
// no message
//
// Revision 1.19  2012/06/05 13:10:52  voba
// no message
//
// Revision 1.18  2012/05/30 14:15:27  voba
// no message
//
// Revision 1.17  2012/05/30 14:14:36  voba
// no message
//
// Revision 1.16  2012/05/05 14:43:48  lulin
// {RequestLink:361038156}
//
// Revision 1.15  2012/05/05 12:21:54  lulin
// {RequestLink:361038156}
//
// Revision 1.13  2012/05/05 11:46:51  lulin
// {RequestLink:361038156}
//
// Revision 1.12  2012/05/05 08:32:37  lulin
// {RequestLink:361038156}
//
// Revision 1.11  2012/05/05 08:22:53  dinishev
// Bug fix: не загруажались документы в АрчиТест.
//
// Revision 1.10  2012/05/04 19:42:49  lulin
// {RequestLink:361038156}
//
// Revision 1.9  2012/01/20 13:16:24  dinishev
// {Requestlink:327822716}
//
// Revision 1.8  2011/12/28 09:29:10  lulin
// {RequestLink:325257155}
// - чистим код.
//
// Revision 1.7  2009/03/19 16:28:30  lulin
// [$139443095].
//
// Revision 1.6  2009/03/19 12:39:33  lulin
// - переносим директиву в правильный файл.
//
// Revision 1.5  2009/03/12 19:08:25  lulin
// - <K>: 138969458. Чистка устаревшего кода.
//
// Revision 1.4  2009/03/12 12:28:45  lulin
// - <K>: 138969458. Удаляем ненужные файлы, методы и классы.
//
// Revision 1.3  2009/03/11 19:27:28  lulin
// - <K>: 138969458. Удалены ненужные классы.
//
// Revision 1.2  2007/08/30 10:09:25  lulin
// - убираем ненужную функцию поиска.
//
// Revision 1.1  2004/09/02 08:09:49  law
// - cleanup.
//
// Revision 1.11  2004/08/17 15:19:00  law
// - убрал лишний inc.
//
// Revision 1.10  2004/06/01 08:04:15  law
// - расставлены define'ы для _ALCU.
//
// Revision 1.9  2002/03/18 16:49:14  law
// - new directive: m3UseSTSorter.
//
// Revision 1.8  2002/03/11 15:09:37  law
// - new directive: m3MultiThreadIndex.
//
// Revision 1.7  2001/12/24 14:44:57  voba
// - bug fix: подключили новый индексатор к Архивариусу.
//
// Revision 1.6  2001/12/20 14:12:11  law
// - new behavior: сделано использование морфологического разбора при поиске и индексации.
//
// Revision 1.5  2001/11/29 17:02:43  law
// - new directive: _m3NeedStorageFixer.
//
// Revision 1.4  2001/11/01 14:57:45  law
// - new directive: m3UseL3StreamAdapter.
//
// Revision 1.3  2001/10/30 13:40:56  law
// - change: вставлены теги CVS.
//

{$IFNDEF _m3DEFINE_INC}{$DEFINE _m3DEFINE_INC}

{$I l3Define.inc}

 {$Define m3UseSTSorter}
 {$Define Median}

 {.$Define m3MultiThreadIndex}
 {.$Define m3MultiThreadSorter}
 
 {$Define m3UseL3Memory}
 {$Define m3UseMorph}

 {$IFNDEF _m3AUTOCREATEHEADER0}
  {.$DEFINE _m3AUTOCREATEHEADER0}
 {$ENDIF}

 {$IFNDEF _m3AUTOCREATEHEADER0}
  {$IFNDEF _m3AUTOCREATEHEADER1}
   {$DEFINE _m3AUTOCREATEHEADER1}
  {$ENDIF}
 {$ENDIF}

{$IfDef ALCU}
  {$Define m3NotMultiThreadStorage}
{$EndIf ALCU}

{$IFDEF nsTest}
 {$Define m3NotMultiThreadStorage}
{$ENDIF nsTest}

{$IfDef nsTest}
 {.$IfNDef InsiderTest}
  {$Define m3UseSplittedFileStream}
 {.$EndIf InsiderTest}
{$Else  nsTest}
 {$IfDef Nemesis}
  {$Define m3UseSplittedFileStream}
 {$Else  Nemesis}
  {$Define m3UseSplittedFileStream}
 {$EndIf Nemesis}
{$EndIf nsTest}

{$IfDef m3NOTUseSplittedFileStream}
 {$UnDef m3UseSplittedFileStream}
{$EndIf m3NOTUseSplittedFileStream}

{$IfDef m3UseSplittedFileStream}
 {$Define m3DBNeedsFork}
{$Else  m3UseSplittedFileStream}
 {$Define m3DBNeedsFork}
{$EndIf m3UseSplittedFileStream}

{$ENDIF}

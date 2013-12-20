unit vcmMenuManager;
{* �������� ����. }

{ ���������� "vcm"        }
{ �����: ����� �.�. �     }
{ ������: vcmMenuManager - }
{ �����: 14.03.2003 17:06 }
{ $Id: vcmMenuManager.pas,v 1.513 2013/07/26 10:32:44 morozov Exp $ }

// $Log: vcmMenuManager.pas,v $
// Revision 1.513  2013/07/26 10:32:44  morozov
// {RequestLink: 471774401}
//
// Revision 1.512  2013/07/05 14:34:52  lulin
// - ������������ �������� ��� ����������� �������������� ������� � ������� ��������� ������ ������� ���������� �������������� �������� �� ���������� ������.
//
// Revision 1.511  2013/07/01 12:28:52  morozov
// {RequestLink:382416588}
//
// Revision 1.510  2013/05/17 13:47:00  lulin
// - ���� �������� ������ � ����� ������.
//
// Revision 1.509  2013/04/05 12:02:37  lulin
// - ���������.
//
// Revision 1.508  2013/03/14 16:09:28  kostitsin
// [$432571670]
//
// Revision 1.507  2013/02/08 15:22:56  kostitsin
// [$427755666]
//
// Revision 1.506  2013/01/28 11:27:27  lulin
// - �������� � ������������� ����������.
//
// Revision 1.505  2013/01/28 09:22:45  kostitsin
// [$425042879]
//
// Revision 1.504  2012/11/02 11:01:10  lulin
// - ���������� ������.
//
// Revision 1.503  2012/11/02 08:27:26  lulin
// - ������ �� �����.
//
// Revision 1.502  2012/11/02 07:48:04  lulin
// - �� ������� ������ �����.
//
// Revision 1.501  2012/11/01 09:42:22  lulin
// - ����� ����� � �������.
//
// Revision 1.500  2012/11/01 07:44:07  lulin
// - ������ ����������� ����������� �������� �������� �������.
//
// Revision 1.499  2012/11/01 07:00:32  lulin
// - �� ������� ������ � ������.
//
// Revision 1.498  2012/11/01 06:48:18  lulin
// - ��������� �������� � ������ �����, ����� �� ���������� ��� ��������� ������.
//
// Revision 1.497  2012/10/22 14:20:47  lulin
// {RequestLink:405474881}
//
// Revision 1.496  2012/10/18 16:51:05  lulin
// {RequestLink:404363289}
//
// Revision 1.495  2012/08/29 09:42:45  kostitsin
// [$378542059]
//
// Revision 1.494  2012/08/16 14:55:01  kostitsin
// [$378542059]
//
// Revision 1.493  2012/07/18 13:18:04  lulin
// {RequestLink:378550793}
//
// Revision 1.492  2012/07/18 08:59:39  lulin
// {RequestLink:378550015}
//
// Revision 1.491  2012/07/17 12:01:29  lulin
// {RequestLink:378541134}
//
// Revision 1.490  2012/07/17 11:52:46  lulin
// {RequestLink:378541134}
//
// Revision 1.489  2012/07/17 11:12:09  lulin
// {RequestLink:378541134}
//
// Revision 1.488  2012/07/12 10:21:20  lulin
// {RequestLink:237994598}
//
// Revision 1.487  2012/05/31 09:52:24  lulin
// {RequestLink:358352284}
//
// Revision 1.486  2012/05/31 09:36:58  lulin
// {RequestLink:358352284}
//
// Revision 1.485  2012/05/30 17:12:01  lulin
// - �������� ����� � ��������� ����.
//
// Revision 1.484  2012/05/30 16:34:14  lulin
// {RequestLink:358352284}
//
// Revision 1.483  2012/04/13 19:00:43  lulin
// {RequestLink:237994598}
//
// Revision 1.482  2012/04/13 14:37:56  lulin
// {RequestLink:237994598}
//
// Revision 1.481  2012/04/09 08:38:58  lulin
// {RequestLink:237994598}
// - ������ � VGScene.
//
// Revision 1.480  2012/04/06 15:57:38  lulin
// {RequestLink:237994598}
//
// Revision 1.479  2012/04/06 08:20:18  lulin
// {RequestLink:237994598}
//
// Revision 1.478  2012/04/04 17:55:41  lulin
// {RequestLink:237994598}
// - ����������� � �������� �������.
//
// Revision 1.477  2012/03/22 06:40:09  lulin
// - ������ ��� �� ������.
//
// Revision 1.476  2012/03/22 06:04:22  dinishev
// Bug fix: �� �������������� ��������
//
// Revision 1.475  2012/03/21 18:08:39  lulin
// {RequestLink:349116364}
//
// Revision 1.474  2012/03/21 17:22:15  lulin
// {RequestLink:349116364}
//
// Revision 1.473  2012/03/15 10:55:27  lulin
// {RequestLink:344754050}                                                
//
// Revision 1.472  2012/03/15 07:27:27  lulin
// {RequestLink:344754050}
// - ������ ���.
//
// Revision 1.471  2012/01/20 15:02:36  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=278854646
//
// Revision 1.470  2012/01/12 08:54:47  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=293277808
//
// ��������..
//
// Revision 1.469  2012/01/11 11:04:35  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=253667544&focusedCommentId=326771397#comment-326771397
//
// Revision 1.468  2012/01/11 08:53:26  kostitsin
// �� ���� ����������� "������" ������� � ������ ����� ����.
// ��������.
//
// http://mdp.garant.ru/pages/viewpage.action?pageId=319489610&focusedCommentId=326769863#comment-326769863
//
// Revision 1.467  2012/01/10 14:19:22  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=319489610&focusedCommentId=326767909#comment-326767909
//
// Revision 1.466  2012/01/10 12:21:40  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=319489610
//
// Revision 1.465  2011/12/27 13:03:14  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=319489610
//
// ��������� �������� � invalidate
//
// Revision 1.464  2011/12/26 15:58:48  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=296098743
//
// Revision 1.463  2011/12/23 11:45:52  kostitsin
// http://mdp.garant.ru/pages/viewpage.action?pageId=296098743
//
// Revision 1.462  2011/12/21 11:38:13  gensnet
// http://mdp.garant.ru/pages/viewpage.action?pageId=287214455
//
// Revision 1.461  2011/07/21 14:17:07  vkuprovich
// {RequestLink:272668827}
// ���������� �������� �������� �������� ����������� �� �������TvcmPopupMenuPrim
//
// Revision 1.460  2011/07/19 18:59:27  vkuprovich
// {RequestLink:271758721}
// ��������� ������������ ����� �� FreeInstance � ����������
//
// Revision 1.459  2011/07/19 18:10:33  vkuprovich
// {RequestLink:271758721}
// ������ ���� ���� ��� ����������� ���� �������
//
// Revision 1.458  2011/07/18 18:26:45  vkuprovich
// {RequestLink:271757829}
// ������ ���� ���� ��� �������
//
// Revision 1.457  2011/07/18 13:35:03  vkuprovich
// {RequestLink:271757851}
//
// Revision 1.456  2011/05/24 15:21:52  lulin
// {RequestLink:266425290}.
//
// Revision 1.455  2011/05/19 12:21:15  lulin
// {RequestLink:266409354}.
//
// Revision 1.454  2011/05/18 17:45:38  lulin
// {RequestLink:266409354}.
//
// Revision 1.453  2011/03/28 17:20:20  lulin
// {RequestLink:257393788}.
//
// Revision 1.452  2011/01/29 16:35:03  lulin
// {RequestLink:228688602}.
// - �������� �����.
//
// Revision 1.451  2010/10/18 15:19:28  lulin
// {RequestLink:235876230}.
//
// Revision 1.450  2010/09/29 09:19:56  oman
// - fix: {RequestLink:235061704}
//
// Revision 1.449  2010/09/23 09:27:05  oman
// - fix: {RequestLink:235047754}
//
// Revision 1.448  2010/09/17 05:58:39  oman
// - fix: {RequestLink:235047754}
//
// Revision 1.447  2010/09/15 15:11:07  lulin
// {RequestLink:235047275}.
//
// Revision 1.446  2010/09/13 14:49:47  lulin
// {RequestLink:235047275}.
//
// Revision 1.445  2010/09/13 09:51:11  lulin
// {RequestLink:197496539}.
// - �2.
//
// Revision 1.444  2010/07/16 13:50:03  lulin
// {RequestLink:226005144}.
// [$226006522].
//
// Revision 1.443  2010/04/30 15:15:44  lulin
// {RequestLink:207389954}.
// - ������ ������������.
//
// Revision 1.442  2010/04/27 18:02:24  lulin
// {RequestLink:159352361}.
// - ������� ����������� �������� ����� ��������� �� ������.
//
// Revision 1.441  2010/04/15 13:54:06  oman
// - new: �������� {RequestLink:203131454}
//
// Revision 1.440  2010/04/15 13:33:16  oman
// - new: ��������� PopupMenu ��� ������� ����� {RequestLink:203131454}
//
// Revision 1.439  2010/03/10 12:48:43  lulin
// {RequestLink:193826739}.
//
// Revision 1.438  2010/03/09 11:14:55  oman
// - new: {RequestLink:190678009}
//
// Revision 1.437  2010/03/03 17:28:16  lulin
// {RequestLink:193826739}.
//
// Revision 1.436  2010/02/11 10:09:29  oman
// - fix: {RequestLink:190677990}
//
// Revision 1.435  2010/02/11 09:35:18  oman
// - fix: {RequestLink:190677990}
//
// Revision 1.434  2009/11/20 10:27:40  oman
// - fix: {RequestLink:171970140}
//
// Revision 1.433  2009/11/19 12:59:03  oman
// - fix: {RequestLink:171968647}
//
// Revision 1.432  2009/10/19 13:07:56  lulin
// {RequestLink:159360578}. �7.
//
// Revision 1.431  2009/10/16 17:00:44  lulin
// {RequestLink:159360578}. �52.
//
// Revision 1.430  2009/10/15 17:21:57  lulin
// {RequestLink:166856141}. ������� ��� ���-������ ��������.
//
// Revision 1.429  2009/10/15 14:42:06  lulin
// {RequestLink:166856141}.
//
// Revision 1.428  2009/10/13 16:02:40  lulin
// - ������ ����.
//
// Revision 1.427  2009/10/05 06:46:07  lulin
// {RequestLink:159360578}. �51.
//
// Revision 1.426  2009/10/01 14:58:30  lulin
// - ������� ������������ ���� � �������.
//
// Revision 1.425  2009/09/30 15:23:00  lulin
// - ������� �������� ���������� �� ������ �������� �����������.
//
// Revision 1.424  2009/09/28 17:12:48  lulin
// {RequestLink:159360578}. �31.
//
// Revision 1.423  2009/09/16 18:06:41  lulin
// {RequestLink:163061744}.
//
// Revision 1.422  2009/09/16 11:27:27  lulin
// - ����������� �� ������������ �������.
//
// Revision 1.421  2009/08/31 15:40:45  lulin
// - ������� ������ �����.
// - ������� ������������� ����� ������������� ������ - ���� ���� � �����.
// - ������� �������� ����� ����� ������������ �����������.
// - ��������� �� ���������� ����������� �� ������������ ����������.
//
// Revision 1.420  2009/08/11 14:24:03  lulin
// {RequestLink:129240934}. �16.
//
// Revision 1.419  2009/02/20 15:19:00  lulin
// - <K>: 136941122.
//
// Revision 1.418  2009/02/19 14:16:33  lulin
// - <K>: 136941122. ������� ��������� ����������.
//
// Revision 1.417  2009/02/12 17:09:15  lulin
// - <K>: 135604584. ������� ������ � ����������� �����������.
//
// Revision 1.416  2009/02/12 16:06:49  lulin
// - <K>: 135604584. ������� ������ �����������.
//
// Revision 1.415  2009/01/27 13:30:08  oman
// - fix: �� ������� ��������� ������ (�-136252192)
//
// Revision 1.414  2009/01/12 09:41:56  oman
// - new: ������� ���������� ��� �������� ���� (�-113508400)
//
// Revision 1.413  2008/09/02 12:38:14  lulin
// - <K>: 88080895.
//
// Revision 1.412  2008/07/14 13:11:51  lulin
// - <K>: 100958843.
//
// Revision 1.411  2008/07/10 11:19:13  lulin
// - <K>: 100958687.
//
// Revision 1.410  2008/07/08 11:26:27  lulin
// - ��������� �� �������� � ����������� �������� IsList.
// - ������� ����� � ������ �������������.
//
// Revision 1.409  2008/07/07 14:27:06  lulin
// - ���������������� � ��������������.
//
// Revision 1.408  2008/07/02 10:51:05  lulin
// - <K>: 95486333.
//
// Revision 1.407  2008/06/03 07:30:36  lulin
// - <K>: 93260300.
//
// Revision 1.406  2008/05/29 12:26:54  mmorozov
// - new: ����������� ���������� �� ������ ���� ������������ ������ ������������ (CQ: OIT5-28281).
//
// Revision 1.405  2008/05/15 20:15:21  lulin
// - ��������� ������.
//
// Revision 1.404  2008/04/07 07:59:47  lulin
// - <K>: 88641266.
//
// Revision 1.403  2008/03/24 14:04:12  lulin
// - <K>: 87591840.
//
// Revision 1.402  2008/03/24 08:48:43  lulin
// - <K>: 87591840.
//
// Revision 1.401  2008/03/24 06:41:48  oman
// - �� ����������
//
// Revision 1.400  2008/03/21 08:01:51  mmorozov
// - ���������, ��� TvcmDockDef �� ������ ������������ ��� TvcmDockPanel;
//
// Revision 1.399  2008/03/21 07:05:43  mmorozov
// - change: ����������� ��� TvcmDockPanel;
//
// Revision 1.398  2008/03/20 09:48:19  lulin
// - cleanup.
//
// Revision 1.397  2008/03/19 14:23:44  lulin
// - cleanup.
//
// Revision 1.396  2008/03/18 15:14:36  mmorozov
// - bugfix: ������ ����������� �� ����������, � ������ ������, �.�. ��������� ������� ������������� ������� ����� (CQ: OIT5-28614);
//
// Revision 1.395  2008/03/11 13:47:06  oman
// - fix: ������ DockContainer ������ �� ������������� (cq28605)
//
// Revision 1.394  2008/03/11 13:05:39  oman
// - fix: ��������� �������� (cq28605)
//
// Revision 1.393  2008/03/07 13:18:06  lulin
// - <K>: 86477737.
//
// Revision 1.392  2008/03/07 10:51:29  mmorozov
// - ��������� � ���������� ������� � �������� ������ const (CQ: OIT5-28340);
//
// Revision 1.391  2008/03/07 09:36:04  mmorozov
// - ��������� ��� ������ � ������������� ����� (� ������ CQ: OIT5-28340);
//
// Revision 1.390  2008/02/21 10:55:08  lulin
// - �������� ������������.
//
// Revision 1.389  2008/02/20 08:31:05  oman
// - fix: ����������� ��������� ������ ��������
//
// Revision 1.388  2008/02/19 13:59:13  oman
// - new: ������ � ����������� ����� � ������� �������� � ��������� ������ (cq10920)
//
// Revision 1.387  2008/02/18 13:46:24  oman
// - new: ������� ������ ������ � ������� � ���������� ����� ������� -
//   ��������������� ������� (cq10920)
//
// Revision 1.386  2008/01/31 20:38:03  lulin
// - ����������� �� �������� ��������������� �������.
//
// Revision 1.385  2007/12/07 16:22:44  lulin
// - ��������������� ����, ����� �� ������ � ������ �����������.
//
// Revision 1.384  2007/10/15 11:28:14  lulin
// - �������� ���������� ��������.
//
// Revision 1.383  2007/09/26 06:18:11  mmorozov
// - change: ������ ������������� TvcmAction ���������� IvcmAction + ������ ������ ��� �������� �� ������������� _SelectedString ������ Caption (� ������ ������ ��� CQ: OIT5-26741 + K<50758978>);
//
// Revision 1.382  2007/09/25 04:51:34  mmorozov
// - ���������� �� ����������;
//
// Revision 1.381  2007/09/25 03:55:35  mmorozov
// - new behaviour: ��� ������\��������� �������� ���������� �������� ��� �������� ���� vcm_otDate, vcm_otCombo, vcm_otEditCombo ���������� �������� ���������� _SelectedString, ������ Caption. ��� ����� Caption ��� ���� ����� �������� ���� ���������� (� ������ ������ CQ: OIT5-26741);
//
// Revision 1.380  2007/08/31 11:25:13  mmorozov
// - warning fix;
//
// Revision 1.379  2007/06/28 14:56:13  lulin
// - cleanup.
//
// Revision 1.378  2007/06/06 12:01:29  lulin
// - ����������� �� ������������ ��������� ��-��������� (<K>-16352239).
//
// Revision 1.377  2007/05/25 14:52:14  mmorozov
// - change: ��������� ��������� � �������������� �������� ���� ���� (vcm_otDate) � ������ ����� (CQ: OIT5-25342);
//
// Revision 1.376  2007/04/24 07:36:02  oman
// - fix: �� ����������� �������
//
// Revision 1.375  2007/04/20 12:04:32  lulin
// - bug fix: ��� �������� �� ������� ����� ������ �� ���������� � ��������� ����� (CQ OIT5-24967).
//
// Revision 1.374  2007/04/19 11:10:27  lulin
// - ���� ����� ������� ������ ������ ��������� � ��� ������, �� �� �������� �� ����� (CQ OIT5-25091).
//
// Revision 1.373  2007/04/13 15:51:13  lulin
// - ��� ��������� ���������� ������ �����.
//
// Revision 1.372  2007/04/12 12:35:06  lulin
// - ���������� ������ � ����������.
//
// Revision 1.371  2007/04/12 08:11:51  lulin
// - ���������� ������ � ����������.
//
// Revision 1.370  2007/04/12 07:57:09  lulin
// - ���������� ������ � ����������.
//
// Revision 1.369  2007/04/12 06:43:43  lulin
// - bug fix: �� ���������� ����������.
//
// Revision 1.368  2007/04/11 12:04:27  lulin
// - ��� ��������� ������ ���������� ������ � ����������.
//
// Revision 1.367  2007/04/11 07:22:10  mmorozov
// - new: �������� ������ ��� �������� Action (BuildAction);
//
// Revision 1.366  2007/04/10 13:20:10  lulin
// - ���������� ������ � ����������.
//
// Revision 1.365  2007/04/03 11:07:55  lulin
// - ������� �������� ������������ ������.
//
// Revision 1.364  2007/04/02 05:48:35  lulin
// - ������ ������� ��������� ������ ����� �������� � ��������� �����, ���� ��� ��������, � ����� - ���������� � �����������, ���� � ��������� ����� �� �������.
//
// Revision 1.363  2007/03/28 19:42:54  lulin
// - ����������� �������� ��������� �� ������ � ����������.
//
// Revision 1.362  2007/03/20 15:26:30  mmorozov
// - hint fix;
//
// Revision 1.361  2007/03/15 12:18:43  lulin
// - cleanup.
//
// Revision 1.360  2007/02/12 16:40:29  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.359  2007/02/07 12:58:11  oman
// - fix: ��������� vcm_InternalOperations ������������� �
//  vcm_HiddenOperations � �� ���� �������� ����������
//  vcm_InternalOperations - ����� �� ���������� Hidden ��������
//  (cq24357)
//
// Revision 1.358  2007/01/29 13:50:34  oman
// - fix: ���������� � ������� �� ������ �������������� � �����
//  ������ (cq24179)
//
// Revision 1.357  2007/01/26 08:47:07  oman
// - fix: �������� ��� checked �������� ����������� � ������ ����
//  ������������ ��� �� ��� � � ������� ����.
//
// Revision 1.356  2007/01/22 15:30:08  lulin
// - ����������� �� ��������������� ���������� ��� ���������� ���������������� ��������.
//
// Revision 1.355  2007/01/18 13:54:18  oman
// - new: ����������� ��������� - vcm - ����������� �� �������� ��
//  ��������� - ����� ����������� ������� (cq24078)
//
// Revision 1.354  2007/01/16 08:51:07  lulin
// - ����������� �� ���������������� ��������� - ������� ����.
//
// Revision 1.353  2007/01/15 18:33:01  lulin
// - ����������� �� ���������������� ��������� - ���������� ������ ��� ���.
//
// Revision 1.352  2007/01/15 17:25:38  lulin
// - cleanup.
//
// Revision 1.351  2007/01/15 17:17:07  lulin
// - cleanup.
//
// Revision 1.350  2007/01/15 14:56:50  lulin
// - ��� ���������� ���� ���������� �������� ������ �� ������ �����.
//
// Revision 1.349  2007/01/12 13:14:44  oman
// - fix: ������ vcm_otMenuButtonCombo - ����������� ���� (cq24113)
//
// Revision 1.348  2007/01/11 12:52:16  lulin
// - ������ ������ ��� ������� ������ �� ���������� - ����� ��� ������� ����� ���������.
//
// Revision 1.347  2007/01/11 11:15:06  lulin
// - ������ "������" ����.
//
// Revision 1.346  2007/01/10 17:27:41  lulin
// - ������ ������ ����� ������� ������ �� ���������� - ����� ��� ������� ����� ���������.
//
// Revision 1.345  2007/01/10 15:56:00  lulin
// - cleanup.
//
// Revision 1.344  2007/01/10 11:57:51  lulin
// - cleanup.
//
// Revision 1.343  2007/01/05 18:17:33  lulin
// - ���������� ������� ���� ��� ���������� �������.
//
// Revision 1.342  2007/01/05 14:14:51  lulin
// - ����� ������ ��� �������� - ��� ������ ����� �������� ����� ������������ ��������.
//
// Revision 1.341  2007/01/05 13:53:14  lulin
// - ����� ������ ��� �������� - ��� ������ ����� �������� ����� ������������ ��������.
//
// Revision 1.340  2007/01/05 13:32:58  lulin
// - cleanup.
//
// Revision 1.339  2006/12/29 13:09:23  lulin
// - ��������� ��������� ������������ ������ �����.
//
// Revision 1.338  2006/12/27 14:44:59  mmorozov
// - change: �������� ����������� ������� ������������ (CQ: OIT5-23903);
//
// Revision 1.337  2006/12/25 09:08:59  mmorozov
// - new behaviour: ���� � ����� ��������� ��������� "������ ���������", �� � ����� ��������� ��������� ��� ��� ��������. ��� ���������� ������ ����� ������ ������������ �������� ��� ������ ��������� (CQ: OIT5-23903);
//
// Revision 1.336  2006/12/19 12:08:27  lulin
// - cleanup.
//
// Revision 1.335  2006/12/15 12:57:33  mmorozov
// - new behaviour: ����������� ������� ���������� ��� �������� ������ (CQ: OIT5-21250). ��������� �������� ������� ������������ ���������� vcmUseMainToolbarPanel;
//
// Revision 1.334  2006/12/13 15:13:10  lulin
// - cleanup.
//
// Revision 1.333  2006/12/13 09:22:06  mmorozov
// - new: ����������� ��������� ������������� ������ ��� ��� �������� ������� ������������ �����, � ������ ������ ��� CQ: OIT5-13323;
//
// Revision 1.332  2006/11/03 11:00:32  lulin
// - ��������� � ������ 6.4.
//
// Revision 1.331.2.3  2006/10/30 11:04:55  oman
// - fix: ������������ �������� ���������������� vcl.
//  ���������� ���� � ���������� ������ "�������" (cq23319)
//
// Revision 1.331.2.2  2006/10/18 08:00:31  lulin
// - ��������� ��� �������� �������� ����� ��������.
//
// Revision 1.331.2.1  2006/10/17 08:13:18  lulin
// - ��������� ��������� ���������� �� ����������� ��������.
//
// Revision 1.331  2006/09/20 14:59:16  mmorozov
// - new: ������� ��������� �������� ������������� (� ������ ������ ������ ������ ������������);
//
// Revision 1.330  2006/09/20 09:12:57  oman
// - fix: � ���� ��������� �������� ������������ ��� ��
//  ��������������� ������� ����� (cq22660)
//
// Revision 1.329  2006/08/29 08:29:35  oman
// - fix: ����������� ����������� ������ ������ ��� *ButtomPopup,
//  ����� ���������� ������� (cq22390)
//
// Revision 1.328  2006/08/29 06:49:45  oman
// - fix: ����������� ����������� ������ ������ ��� *ButtomPopup (cq22390)
//
// Revision 1.327  2006/08/25 12:34:18  oman
// - new: ����� ��� �������� _vcm_otMenuButtonPopup - ����� �� ���
//   _vcm_otButtonPopup, �� ����� ��� ������������ � ����.
//
// Revision 1.326  2006/06/09 11:09:51  oman
// - fix: ��������� ������������ Combo Action - ���� ������ �����
//  ���������� � ��� ������������� Action.Caption (cq21218)
//
// Revision 1.325  2006/06/08 13:38:00  lulin
// - �������������� �������� � ��������� ����� ���������� ������� �������.
//
// Revision 1.324  2006/06/02 12:36:11  oman
// - fix: � ��������� ������� ��� ��� ����� ����� ������� �� ������� ��� ������������
//
// Revision 1.323  2006/04/14 12:38:11  lulin
// - ��������� ����������� ����������.
//
// Revision 1.322  2006/03/23 14:06:51  lulin
// - ��������� ��������� ��������� ��������.
//
// Revision 1.321  2006/03/15 12:27:21  lulin
// - cleanup.
//
// Revision 1.320  2006/03/10 18:22:03  lulin
// - ������ ��� ��������/�������� ��������� ��������.
//
// Revision 1.319  2006/01/20 11:33:06  mmorozov
// 1. ������ ���� �� ������ ������������ �������� �������� �������� �� ������ ��������� � ����������� �������;
// 2. ���� � ������ ������������ ����������� �������� � ����������� ����������, �� �� ������������� ����������� ������� � ���� �������� ��������;
// 3. ��������� ����������� �������, ��� ����������� �������� �������� ������ ������������ � ��������� ������ ����;
// 3.
//
// Revision 1.318  2005/12/20 14:53:17  lulin
// - ���������� ������, ������� ����� ����.
//
// Revision 1.317  2005/12/20 11:38:52  oman
// - fix: �������� TvcmCustomMenuManager._PostBuild �� ������� ��������
//   ������� �� ������ ���.
//
// Revision 1.316  2005/12/08 13:06:05  oman
// - fix: �� �����������, ��� � TvcmCustomMenuManager._PostBuild ������ �����
//   ��������� �� ������ ���
//
// Revision 1.315  2005/11/10 17:59:39  lulin
// - bug fix: �� ����������� ���������� ��������� � ������ � ������������� ������� (CQ OIT5-17940).
//
// Revision 1.314  2005/09/13 13:18:22  mmorozov
// - warning fix;
//
// Revision 1.313  2005/07/28 14:29:45  mmorozov
// new: published _FormSetFactories;
//
// Revision 1.312  2005/06/01 09:14:49  mmorozov
// - warning fix;
// new: ���������� � ���������� TvcmFakeBox ��������� _vcmUseComboTree;
//
// Revision 1.311  2005/06/01 08:24:28  mmorozov
// new: class TvcmFakeBox (����� ���������������� ����������� vcm ��� ������������� TFakeBox);
// change: TvcmEdit � TvcmComboBox ���������� �� TvcmFakeBox;
//
// Revision 1.310  2005/05/31 14:39:46  mmorozov
// new: TvcmComboBox ������������ ��������� ITB97Ctrl;
//
// Revision 1.309  2005/05/12 14:39:15  lulin
// - cleanup: �� ����� �������� � ������ �� ����������.
//
// Revision 1.308  2005/05/12 14:33:48  lulin
// - new method: Tafw.IsObjectLocked.
//
// Revision 1.307  2005/04/12 13:43:02  mmorozov
// new behaviour: ������� _vcm_dmToolbarMenu ����� �������� ��������;
//
// Revision 1.306  2005/03/22 11:57:49  mmorozov
// new behaviour: TvcmEdit ��� ��������� ������ �������� ���� �����;
//
// Revision 1.305  2005/03/21 13:12:51  am
// change: ����� _TvcmPopupMenuPrim � vcmMenus
//
// Revision 1.304  2005/03/11 13:24:54  am
// change: ���������� �������, �� ������� ����� ����, ���������� TabOrder
//
// Revision 1.303  2005/02/25 14:39:11  mmorozov
// new: ���������� TvcmDockDef ���������� IvcmDock;
// new: ����� ������ dock-�� �����;
//
// Revision 1.302  2005/02/02 09:14:42  lulin
// - �������� ������ Unknown.
//
// Revision 1.301  2005/01/25 08:49:43  mmorozov
// bugfix: ��� ���������� toolbar-�� �� �������������� ������� �����;
//
// Revision 1.300  2005/01/21 15:05:34  mmorozov
// new: ������� �� ��������� Action.Hint ��� TvcmComboBox;
//
// Revision 1.299  2005/01/21 14:58:03  am
// change: vcm'��� TvcmDateEdit ��������� �� TvtDblClickDateEdi
//
// Revision 1.298  2005/01/20 13:25:18  lulin
// - new consts: _vcm_otModuleInternal, _vcm_otFormConstructor.
//
// Revision 1.297  2005/01/14 17:24:19  lulin
// - � _ProcessCommand �������� �������� aForce - ���������������, ��� ������ ShortCut'� ���� � VCM � ��� �� ���� �������� � ���������� ��������.
//
// Revision 1.296  2005/01/14 10:42:30  lulin
// - ������ Get*ParentForm ��������� � ���������� AFW.
//
// Revision 1.295  2005/01/12 14:01:16  lulin
// - new methods: Tafw.BeginOp/EndOp.
//
// Revision 1.294  2004/12/16 08:15:55  mmorozov
// - �������������� ����;
// - warnings fix;
//
// Revision 1.293  2004/11/25 08:01:02  mmorozov
// bugfix: � TvcmComboBox �� ���������� ItemIndex ���� Action.Caption = '';
//
// Revision 1.292  2004/11/23 10:29:42  am
// change: ��� �������� ����� ���� ��������� ��� WndProc � ���, ����� ��������� ���������� ����.
//
// Revision 1.291  2004/11/18 16:29:55  lulin
// - ���������� ���������� �� VCM ��� ������������� inc'��.
//
// Revision 1.290  2004/11/17 17:05:34  mmorozov
// bugfix:  ���� � ����� �������� ����� ���� ������ ������ ��� � ���������� �����, �� ������ ������� ������� dock-� �� ���� �����;
//
// Revision 1.289  2004/11/15 12:50:14  mmorozov
// change: method AdjustIfEmpty -> method UpdateEmpty(aUpdateVisibility : Boolean = True);
//
// Revision 1.288  2004/11/05 14:05:00  am
// change: ����� ��� - _vcm_otMenuButtonCombo. ��������� ����� ��, ��� vcm_otButtonCombo, �� ����� ���������� ���� � ����.
//
// Revision 1.287  2004/10/28 11:17:49  mmorozov
// change: ��������� TvcmCustomMenuManager.LoadGlyphSize;
// new: method TvcmCustomMenuManager.RestoreGlyphSize;
//
// Revision 1.286  2004/10/26 10:47:21  fireton
// - bug fix: �� ������������ ������������� ������� ����� ��� ������
//
// Revision 1.285  2004/10/21 19:25:23  mmorozov
// new: TvcmDockPanelButton ��������� TCustomToolbarButton97;
// new: properties TvcmCustomToolbarButton97 (DockButtonsImageList, BtnCloseImageIndex, BtnOpenImageIndex, BtnOpenNewWindowImageIndex);
// new: ������ ������� toolbar-� �������� �� ����� imagelist;
//
// Revision 1.284  2004/10/21 16:08:56  lulin
// - cleanup: ������ �������� ����������.
//
// Revision 1.283  2004/10/21 11:46:06  mmorozov
// bugfix: ��� Ttb97MoreButton ������ �� ������������;
//
// Revision 1.282  2004/10/21 09:47:29  mmorozov
// bugfix: ����������� ������� toolbar-� � ������ toolbar-�;
//
// Revision 1.281  2004/10/20 16:41:43  mmorozov
// new behaviour: ��� ����� � ��������� (ControlEnter) ���� TFakeBox �� ���������� TvcmAction(f_FocusControl.Action).LockExecute;
//
// Revision 1.280  2004/10/20 13:44:27  am
// bugfix: ��� SetFasten �� ���� ������ BeginUpdate\EndUpdate
//
// Revision 1.279  2004/10/20 10:40:43  lulin
// - new behavior: ����������� ������� ������������� ���� ��������.
//
// Revision 1.278  2004/10/19 15:04:55  lulin
// - bug fix: �� ���������������.
//
// Revision 1.277  2004/10/19 13:23:27  lulin
// - ��������� TvcmCustomMenuManager._f_SaveDockList �� _TvcmObjectRefList.
//
// Revision 1.276  2004/10/19 12:04:22  mmorozov
// new: method TvcmCustomMenuManager.ToolbarButtonSize;
// new: ������������� TB97Ctls ��������� ����������� �������� ������;
//
// Revision 1.275  2004/10/15 13:39:45  lulin
// - bug fix: �� ���� ������� Toolbar'�� ������������ �������� AutoSize.
//
// Revision 1.274  2004/10/15 12:39:08  am
// change: �������� �������� �������� ������� ��������� � �������
// change: ������ ���������� � ���������� "����" ����� � ����������� �� � ��������� � ������� ������������ (GetFormWeight)
//
// Revision 1.273  2004/10/13 16:19:02  mmorozov
// new: published properties _HistoryZones, SaveFormZones (TvcmMenuManager);
//
// Revision 1.272  2004/10/13 15:22:43  am
// bugfix: ����� ����������� ������� ������ �������
//
// Revision 1.271  2004/10/08 08:10:32  am
// bugfix: ��� �������� �� �������� ������ ����������� ������������ ������� ��������  � �������
//
// Revision 1.270  2004/10/07 11:49:41  lulin
// - �� ��������������� ��� define _Nemesis.
//
// Revision 1.269  2004/10/05 14:42:05  am
// change: ��� �������� �������� �� ��������, ��, ��� ������� ��� ������� � ����������, �������� � ����� ������� � �������� �������������, ��������� �� ���������
//
// Revision 1.268  2004/10/04 15:15:57  am
// change: ��������� � _TvcmCalendarForm "����������" ��������� � ������������ ����� ������ ������, etc � ��������� ����.
//
// Revision 1.267  2004/09/30 10:56:04  mmorozov
// bugfix: ��� ��������� ������� ������ ������� ������� toolbar ���������� ��� ������ �� ����� �������;
//
// Revision 1.266  2004/09/28 10:31:07  am
// change: ��������� ���� edit'�� RestrictConsSpace (������ ����� ���������� �������� ������)
//
// Revision 1.265  2004/09/27 11:33:08  fireton
// - bug fix: ������� ������
//
// Revision 1.264  2004/09/24 10:40:04  am
// change: ��� combo ��������, � ������ ������������� � OnTest'�� (aParams._AsIU[_vcm_opItems] _As XIvcmStrings) - ���������� � ����������  IsList.
//
// Revision 1.263  2004/09/20 12:02:13  mmorozov
// opt: ������ TvcmDockPanelButtonLink �� ����������;
//
// Revision 1.262  2004/09/17 11:22:58  lulin
// - �������� vcm_opStrings ������������ � _vcm_opItems, � ��� ������� ��� � _IvcmHolder �� IvcmStrings (!).
//
// Revision 1.261  2004/09/15 13:29:02  lulin
// - TvcmAction � TvcmWinControlActionLink ��������� �� "������" l3Unknown.
//
// Revision 1.260  2004/09/14 09:14:23  lulin
// - cleanup: ����� ������������ ���� ������ ��� define'�.
// - ����������� ������������.
// - ���������� �����.
//
// Revision 1.259  2004/09/13 15:50:27  lulin
// - cleanup: ������� ������ ������ �� Toolbar 97.
// - bug fix: �� ����� - �� �������������� VCM.
//
// Revision 1.258  2004/09/13 14:52:39  lulin
// - bug fix: �� ��������������� ��� L3.
// - bug fix: ���� ��������� Destroy, � �� Cleanup - ��-�� ����� ��������� Toolbar'�.
//
// Revision 1.257  2004/09/13 12:17:42  lulin
// - new unit: vcmControl.
//
// Revision 1.256  2004/09/11 12:29:09  lulin
// - cleanup: ����������� �� ������� ������������� ������������.
// - new unit: vcmComponent.
//
// Revision 1.255  2004/09/10 10:39:29  lulin
// - ��������������� ��������� ����������� � ��������� Handle, �.�. ���� ���� �������� � �������.
//
// Revision 1.254  2004/09/09 16:43:30  mmorozov
// change: TvcmCustomMenuManager._RegisterChildInMenu (������� windows ����, ����� �� ����� ������������ �������� ���������� ���� � toolbar-�� ���� �� ���������������. ���� ����� ����������������� � _TvcmEntityForm._Make);
//
// Revision 1.253  2004/09/09 13:56:28  lulin
// - ������������ � ����������� ���������� ������� ������� ��������� � �������� �������� ����� ����� (���� ��� ����������������).
//
// Revision 1.252  2004/09/08 07:54:15  mmorozov
// new behaviour: ������������ ����� ������ ��� dock-�� � ����� Align;
//
// Revision 1.251  2004/09/08 07:36:10  am
// change: ����� ������� � _MakeToolbarFromSettings ����� ��� ��, ��� � _MakeToolbar
//
// Revision 1.250  2004/09/07 16:19:45  law
// - ������� VCM �� ����������� �������.
//
// Revision 1.249  2004/09/06 16:31:41  mmorozov
// change: TvcmDockPanel._CreateBtn;
//
// Revision 1.248  2004/09/06 07:06:28  mmorozov
// - �� ���������������, ��������� �������;
//
// Revision 1.247  2004/09/03 15:14:27  mmorozov
// new: class TvcmToolbarDockPanel;
// new: method TvcmDockDef.Paint;
// new: global procedure vcmPaintDockBottomLine;
//
// Revision 1.246  2004/09/03 11:44:20  mmorozov
// new: ��� ���������� toolbar-� ���������� � ����� ������ ������, ���� ���������, �� ���������� ������ � ������������� ��������;
//
// Revision 1.245  2004/09/03 10:17:39  am
// change: ������� ������������ ����� ���������� _f_UnlockInProgress (���������� ��������, ����� � �������� ������ EndDock, ���� ������� ����������� �� ����� ������� � Unlock).
//
// Revision 1.244  2004/09/02 17:17:46  mmorozov
// new: ��� �������� ������� toolbar-� ��������� � ���������� ������������ ������ toolbar-� � ���������� �������� � ������������ TvcmToolButton97, TvcmDateEdit, TvcmEdit;
// new: ������������� ���������� ���������� TB97Tlbr.g_ToolbarSize ��� ��������� �������������� ������� toolbar-�;
// change: � ������ � ������� toolbar-� ��� �����;
// change: MenuImages -> SmallImages;
//
// Revision 1.243  2004/09/01 10:32:36  fireton
// - bug fix: ������ _f_SaveDockList ��� �������� �� _g_DockList (CQ00008981)
//
// Revision 1.242  2004/08/27 07:35:30  am
// change: ��� �������� � _UserTypeByCaption - ������ �� Caption'� ��� _LongCaption'�.
//
// Revision 1.241  2004/08/25 14:25:30  mmorozov
// - �� �������������� ����������;
//
// Revision 1.240  2004/08/25 09:17:52  am
// change: ���������� �������� �������� � ReloadToolbars
//
// Revision 1.239  2004/08/25 06:58:47  am
// change: ������� ��� _TvcmCalendarForm
//
// Revision 1.238  2004/08/24 14:34:38  am
// new: _TvcmCalendarForm
//
// Revision 1.237  2004/08/19 13:36:17  fireton
// - ���������� ������ ������� ����� ��� ������
//
// Revision 1.236  2004/08/19 06:48:29  mmorozov
// bugfix: � ������������� ������ ������ �������� ���� �� ���� ������� ������, ����� ������� ���������� (�� ���������� AutoSize, ������� ����);
//
// Revision 1.235  2004/08/11 10:28:54  fireton
// - ��������� ������� ������
//
// Revision 1.234  2004/08/09 11:43:43  mmorozov
// bugfix: OnExecute ��������� �� �������� ����������� ���� ��������� (��� ������ ����);
//
// Revision 1.233  2004/08/06 16:04:13  mmorozov
// bugfix: �� ��������������� � ���������� _vcmNotNeedOvc;
//
// Revision 1.232  2004/08/06 13:45:01  mmorozov
// new: method TvcmEdit._ProcessCommand;
//
// Revision 1.231  2004/08/04 16:21:13  demon
// - cleanup: remove warnings and hints
//
// Revision 1.230  2004/08/04 12:00:17  am
// change: ��������� � ���������� TvtDateEdit �������� RestrictInvalidDate
//
// Revision 1.229  2004/08/03 12:37:06  am
// change: ���������� UpdateAction � vcm-��� ���������� ����������
//
// Revision 1.228  2004/07/30 14:25:56  law
// - bug fix: ���������� ������ � ����������� ����.
//
// Revision 1.227  2004/07/30 09:08:40  law
// - bug fix: � ����������� ���� �������� "�������" ������.
//
// Revision 1.226  2004/07/28 10:20:49  law
// - new prop: TvcmBaseMenuManager.MenuImages.
//
// Revision 1.225  2004/07/23 12:42:35  am
// change: ��� �������� ������� ����������� ��� ���.
//
// Revision 1.224  2004/07/21 13:46:01  law
// - new event: TvcmBaseMenuManager.OnInitCommands.
//
// Revision 1.223  2004/07/21 13:02:54  am
// bugfix: TvcmDateEdit.CMTextChanged ������ message CM_TextChanged ��������.
//
// Revision 1.222  2004/07/15 11:46:28  am
// change: ����� SetFasten �� ������� ����
//
// Revision 1.221  2004/07/14 14:41:53  law
// - optimization: ����� ��������� ���� ������� Handle ���� - ��� ����������� �������� ������� �������� ������ ����.
//
// Revision 1.220  2004/07/13 11:25:53  am
// change: ������� ������ ������ "��������� �������". ��������� ������ ����� ������� � ������, ����� ���� � �������� ������ ������� ������
//
// Revision 1.219  2004/07/13 07:22:15  am
// change: ��� ���������� �������, ���������� �� ��� ���������, ��������� ��������� ����������
//
// Revision 1.218  2004/07/12 09:16:14  am
// change: ��� ������ "��������� �������", ������������� ����� ���������
//
// Revision 1.217  2004/06/17 12:52:16  am
// change: ������� vcm-�������������� ��� �� ����������
//
// Revision 1.216  2004/06/16 09:35:57  am
// change: ������� TList �� ����� � ��������� ������
//
// Revision 1.215  2004/06/02 10:20:43  law
// - ������ ����������� Tl3VList.MakeIUnknown - ����������� _Tl3InterfaceList._Make.
//
// Revision 1.214  2004/06/01 15:33:56  law
// - ������� ������������ Tl3VList.MakeLongint, MakeLongintSorted - ����������� _Tl3LongintList.
// - ��������� VCM, �� ������������ ����������� �������.
//
// Revision 1.213  2004/06/01 12:22:58  am
// new: �������� �������� � ������� � PopupMenu �������� "�����������".
//
// Revision 1.212  2004/05/22 12:08:18  am
// bugfix: BackupOpStatus/RestoreOpStatus
//
// Revision 1.211  2004/05/21 05:47:15  am
// new: ��������� ��������� �� �������
//
// Revision 1.210  2004/05/19 12:55:44  am
// new _TvcmToolbarDef.LockDock - �������� ���
// new TvcmCustomMenuManager.BackupOpStatus/RestoreOpStatus - ���������/������������ ������� ����
// new TvcmCustomMenuManager.LockDocks - ������ UnlockDocks ������
//
// Revision 1.209  2004/04/26 07:25:15  mmorozov
// bugfix: ��� �������� ������� toolbar-� ��������� ��� _TvcmEntityForm._UserTypes > 0;
//
// Revision 1.208  2004/04/22 11:03:46  mmorozov
// new behaviour:  ���� ��� ������ �� ���������� �������������� ��� Text <> TvcmAction.Caption, �� ������������� Text = TvcmAction.Caption;
//
// Revision 1.207  2004/04/16 14:36:32  am
// change: ����� ��� TvcmIconTextType - �������� "������ ���������" ��� IconText - ���������. (� ���� ��������� �������� ������ ���� ������������� ������ � ��������, � ������ - � �������� � �������)
//
// Revision 1.206  2004/04/16 08:49:52  mmorozov
// new: ���������� hint OnQuery;
//
// Revision 1.205  2004/04/14 12:43:09  mmorozov
// - ��������� ��� � ����� vcm;
// change: TDockPanel ������������ � TvcmDockPanel;
// new: class TvcmDockPanelButtonLink;
// new: class TvcmDockPanelButton;
// new behaviour: ��� �������� ����� � ������� ������� ������ ���������� ����������� � �������� ������;
//
// Revision 1.204  2004/04/07 06:37:14  am
// change: ���������
//
// Revision 1.203  2004/04/02 08:48:24  am
// change: PopupMenu � ������� � �����, edit'�� � �.�.
//
// Revision 1.202  2004/04/01 15:11:34  am
// change: ���������� ��������� ����������� isList
//
// Revision 1.201  2004/03/30 10:26:02  nikitin75
// �� �������� RefocusEntity �� ControlExit - ��������� � ������������ ��������� _WM_SETFOCUS;
//
// Revision 1.200  2004/03/29 13:06:58  nikitin75
// + ��� bsDialog � bsSingle ���� ��� ��������� ��������  TDockPanel �������� �����;
//
// Revision 1.199  2004/03/27 13:19:37  am
// bugfix � ����������� bugfix: ���� ���������� Parent'� ���������� �������
//
// Revision 1.198  2004/03/26 10:45:17  am
// change: BeginOp\EndOp ������������� �� TvcmDispatcher'�
// new: ��������� �������� "��������� ������ ������������" (������ �������� ���. �������� - IconText)
// bugfix: ������, ��������� � ��������� ������� �������� � ��������� "�����������" �������� (�� ������� ���������)
//
// Revision 1.197  2004/03/24 14:16:47  law
// - bug fix: ����������� �������������� ������������� Toolbar'� ����� ����� ��������� ������ �� ���.
//
// Revision 1.196  2004/03/24 13:30:04  law
// - bug fix: ����������� ����������� ��� Toolbar'� (�������, ������, ������, �����).
//
// Revision 1.195  2004/03/23 15:05:06  am
// change: _PostBuild. aFollowDocks - ��� ������������ ��������, ��������� �� ������ ������� �����,
// �� � ��� ������� � ��� �����, ������� ��������� �����������.
// bugfix: �� ������ ������� ��� "�����������" ��������.
// bugfix: �� ����������� parent'� ������� ��� "�����������" ��������
//
// Revision 1.194  2004/03/22 09:28:22  mmorozov
// new behavior: ���� toolbar �������� ��� ����� � ZoneType = vcm_ztForToolbarsInfo, �� �� ������� ������ ��� ���� (�������� ���� � �.�.);
//
// Revision 1.193  2004/03/17 15:30:38  am
// change: BeginUpdate\EndUpdate
//
// Revision 1.192  2004/03/16 16:56:04  mmorozov
// bugfix: ���� �������� ���� ��������������� ���� � ��������� ����;
//
// Revision 1.191  2004/03/16 11:33:16  mmorozov
// new: ������ ���������� ������ ����� ���� ������ � ������� Dock-�;
//
// Revision 1.190  2004/03/16 09:06:27  am
// bugfix:
//
// Revision 1.189  2004/03/16 08:53:04  am
// new: ���������� ����� ���������� �������
// new: _g_DockList
//
// Revision 1.188  2004/03/15 10:43:26  mmorozov
// bugfix: ��������� ������ ������� �� �����;
//
// Revision 1.187  2004/03/12 13:57:38  law
// - bug fix: Toolbar'� �������� �� ��������� �����.
//
// Revision 1.186  2004/03/11 13:51:23  am
// change: ���������� ������ ������ SmartAlign
//
// Revision 1.185  2004/03/05 10:33:52  am
// New: ���������� ������� NearestParent
//
// Revision 1.184  2004/03/05 08:39:27  am
// new: TvcmCustomMenuManager.MergedToMainForm - �������� �� ������� ������ ����� � ������� �����.
//
// Revision 1.183  2004/03/04 08:04:03  am
// new: ����������(_TvcmEntityForm.SaveToolbars)/��������������(TvcmCustomMenuManager._PostBuild) ���������, �����, etc.. ��������
//
// Revision 1.182  2004/03/03 12:25:14  law
// - bug fix: �� ��������� Popup-menu - �������������� ����������� �������������� ShortCut'�.
//
// Revision 1.181  2004/03/02 07:51:08  am
// bugfix: IfDef'�
//
// Revision 1.180  2004/03/01 14:50:22  am
// new: �������-������ ��� ��������, ������������� �� �� TB97 (pm_getToolbar, ToolbarCount, etc..)
// change: ����������� ����������� ����� � f_DockList (��� ������ SmartAlign � ��� ����, ����� �� �������� ������� � �������� �������� �� ��������)
// new: ���������� ������� ��������
// change: ��������� ������.
//
// Revision 1.179  2004/02/27 05:25:37  mmorozov
// - ����� GetToolbarParent ������������ � GetDockParent;
//
// Revision 1.178  2004/02/26 15:47:47  am
// new: _TvcmToolbarDef.AdjustIfEmpty - ������ ������, ��������� ������ �� ������������
//
// Revision 1.177  2004/02/26 15:00:56  mmorozov
// - ����� ����;
//
// Revision 1.176  2004/02/26 14:59:51  mmorozov
// new: ����� TvcmMainToolbarPanel;
// new: method TvcmCustomMenuManager.GetToolbarParent;
// new: Dock �� ������� ����� ����������� �� TvcmMainToolbarPanel;
//
// Revision 1.175  2004/02/24 12:55:52  am
// new: TvcmEdit ������ ����������� � �� TFakeBox.
//
// Revision 1.174  2004/02/20 10:29:25  am
// *** empty log message ***
//
// Revision 1.173  2004/02/20 08:07:03  am
// bugfix: ���� � ������� ������� ��������� ���������� ��� ������ ��������(OrderControls), ��, �������� �� ��,
// ��� ��� ������� - � ���� ������� ��������� ������������.
//
// Revision 1.172  2004/02/19 14:55:23  am
// bugfix: ������������ ��-�� ������\�������� ��������� � ���� _TvcmToolbarDef.CustomArrangeControls
// (�������� ����� ������� ���������)
//
// Revision 1.171  2004/02/19 07:07:23  am
// change: CustomArrangeControls � _TvcmToolbarDef.
//
// Revision 1.170  2004/02/18 13:15:37  am
// *** empty log message ***
//
// Revision 1.168  2004/02/13 14:22:58  law
// - new behavior: ������ ���������� ������������� ������ � �������� ��� ����, ����� ��� �������� � Toolbar.
//
// Revision 1.167  2004/02/13 14:04:14  law
// - new behavior: �������� ���� vcm_otCombo ����� �������� � ����.
//
// Revision 1.166  2004/02/13 08:57:59  law
// - bug fix: AV ��� ������ Popup-����.
// - extract method: _vcmMakeComboMenu.
//
// Revision 1.165  2004/02/12 12:15:42  law
// - ����� �������� with.
//
// Revision 1.164  2004/02/12 11:08:30  law
// - bug fix: �� ��������� ����� ��� _vcmUseTB97.
//
// Revision 1.163  2004/02/11 17:54:34  law
// - new behavior: ����������� ������ Toolbar'� �������/������ etc.
//
// Revision 1.162  2004/02/11 14:27:55  law
// - change: ����� �� ��������������� Toolbar'��.
//
// Revision 1.161  2004/02/11 12:18:38  law
// - new behavior: ����������� Toollbar'� ��� ���� ���������������� ����.
//
// Revision 1.160  2004/02/10 17:09:38  law
// - new: � ������� ����������� ������� ��������� Toolbar'�� ��� ������ ������� �� ������.
//
// Revision 1.159  2004/02/10 15:55:30  law
// - new method: TvcmCustomMenuManager._UserTypeByCaption.
//
// Revision 1.158  2004/02/10 14:59:10  law
// - change: ������ ���� UserType.Name/Caption ���������� ��������� IvcmUserTypeDef.
//
// Revision 1.157  2004/02/10 12:59:49  law
// - change: IvcmUserTypesIterator ������ ���������� IvcmUserTypeDef.
//
// Revision 1.156  2004/02/09 15:19:04  law
// - new behavior: ��������� ������� ������, ����������� � ����������.
//
// Revision 1.155  2004/02/09 14:00:29  law
// - new behavior: ������ �� �������� � ���������� �� ��������� ������� ����.
//
// Revision 1.154  2004/02/09 12:14:12  law
// - new methods: TvcmCustomMenuManager._LoadButtonsFromSettings, _MakeToolbarFromSettings.
//
// Revision 1.153  2004/02/06 12:13:44  law
// - new behavior: ���������/������ ������������� ������� �����������.
//
// Revision 1.152  2004/02/05 19:40:09  law
// - new behavior: ������ Toolbar'� �� ����������� ����������. ���� �� ����������� �����������, �������� �������, ������� �������� � ����������� �������� ������ ����� ��������� ����. ������ ���� �������� ��� ����.
//
// Revision 1.151  2004/02/05 17:00:34  law
// - new behavior: ���������� Toolbar'� �� ��������, �� ���� ����� �� ��, ��� ���������.
//
// Revision 1.150  2004/02/05 14:50:34  mmorozov
// delete: �������������� ������ � _uses;
//
// Revision 1.149  2004/02/05 14:08:26  mmorozov
// new: ���������������� �� TvcDateEdit ���������� � TvcmDateEdit;
//
// Revision 1.148  2004/02/04 16:49:16  law
// - new method: TvcmCustomMenuManager._BuildFormToolbars.
//
// Revision 1.147  2004/02/04 15:58:57  law
// - new method version: TvcmCustomMenuManager._BuildToolbar - �� ��������� �� EntityDef ��� ModuleDef - ��� "����������������" Toolbar'��.
//
// Revision 1.146  2004/02/04 14:04:07  law
// - bug fix: ����������� ����� �������� ����� ��������� ���������.
//
// Revision 1.145  2004/02/04 13:31:08  am
// new: _TvcmToolbarDef - ������� ��� ������ � �������������
//
// Revision 1.144  2004/02/04 10:45:00  law
// - bug fix: �� ��������������� ��� ��������� _vcmUseTB97.
//
// Revision 1.143  2004/02/04 10:28:52  law
// - change: ������ "�������������" ������ _TvcmToolbarDef �� ������ define.
//
// Revision 1.142  2004/02/04 10:02:25  law
// - new behavior: ��������� ����������� ����� �������� ������.
//
// Revision 1.141  2004/02/03 14:30:07  mmorozov
// bugfix: ����� �� ��������������, ��������� ��������� ����������;
//
// Revision 1.140  2004/02/03 11:56:07  mmorozov
// new behaviour: ������������� ���������� l_QueryClose, l_QueryMaximized, l_QueryOpen � ������ GetParentForDock (method TvcmCustomMenuManager._BuildToolbar);
//
// Revision 1.139  2004/02/03 10:10:16  mmorozov
// new: method TvcmDockDef.SetHandlers (�������� � ����������� ������� ��� �������� TvcmDockDef);
//
// Revision 1.138  2004/02/02 18:26:47  law
// - change: "�����" �� ��������������� Toolbar'�� � �������� ������ ����, ����� �����.
//
// Revision 1.137  2004/02/02 18:20:42  law
// - new method: TvcmCustomMenuManager._MakeToolbar.
//
// Revision 1.136  2004/02/02 18:08:29  law
// - new method: TvcmCustomMenuManager._FillToolbar.
//
// Revision 1.135  2004/02/02 17:37:59  law
// - refactoring: "extract method" (� ������TvcmCustomMenuManager._BuildToolbar).
//
// Revision 1.134  2004/02/02 17:05:20  law
// - new param: TvcmCustomMenuManager._BuildToolbar - anIndex: Integer = 0.
//
// Revision 1.133  2004/02/02 16:58:22  law
// - new behavior: � ������ OneToolbarPerForm ����� �������� Toolbar'� �� UserType'�/�����.
//
// Revision 1.132  2004/02/02 16:45:28  law
// - new prop: TvcmCustomMenuManager.OneToolbarPerForm.
//
// Revision 1.131  2004/02/02 16:11:37  law
// - new method: TvcmDockDef._Make - ��������� ����� ����������� �������� ���������� Toolbar'�.
//
// Revision 1.130  2004/02/02 15:37:52  law
// - bug fix: ��������� ��������������� Toolbar'�� �� ����� �����.
//
// Revision 1.129  2004/02/02 13:30:26  am
// new: ����� ������ ������� � �����
//
// Revision 1.128  2004/01/27 17:02:00  law
// - new prop: TevBaseMenuManager.Messages.
//
// Revision 1.127  2004/01/21 16:16:29  nikitin75
// + �� ��������� ������ ��� ���: ����������� ��������� �������� �������;
//
// Revision 1.126  2004/01/21 13:15:25  mmorozov
// new: property TvcmDateEdit.OnSelectDate;
// new: method TvcmDateEdit.DoCloseUp;
// new: ��� �������� TvcmDateEdit ��������� TvcmDateEdit.OnSelectDate � TvcmCustomMenuManager.ControlSelect ���� ������������ ��� ��������� TvtDateEdit;
//
// Revision 1.125  2004/01/17 13:44:00  am
// change: ��������� ��������� ��� TB97 (CloseMode, DisableAutoAlign)
//
// Revision 1.124  2004/01/16 17:49:47  law
// - new behavior: ��������� � Main Toolbar ������� �������� Main �����, � ����� ������ �� �������.
//
// Revision 1.123  2004/01/16 16:12:10  am
// bugfixes: �������� ������ ��� ����� � TB97
//
// Revision 1.122  2004/01/16 15:13:04  mmorozov
// new: method TvcmDateEditActionLink.IsCaptionLinked (��. ����������� � ������);
// bugfix: ��� ������ �� ���������� ���� �� ��������� Action.UnlockExecute, �� �������� ���;
//
// Revision 1.121  2004/01/16 13:26:39  law
// - bug fix: � �������� Toolbar �� �������� �������� �������� �����.
//
// Revision 1.120  2004/01/16 10:13:04  am
// change: ������������� ������ ExecuteHandler
//
// Revision 1.119  2004/01/16 08:04:20  am
// *** empty log message ***
//
// Revision 1.118  2004/01/16 07:40:55  am
// bugfix: ����������� TB97 �� vcm
//
// Revision 1.117  2004/01/14 12:42:16  law
// - new behavior: �������� TvcmWinControlActionLink._ParamsChanged ��� TvcmDateEdit.
//
// Revision 1.116  2004/01/09 14:48:46  mmorozov
// - �� ��������� ��� TvcmDateEdit ������������ ���������� _vcmUseStdDate;
//
// Revision 1.115  2004/01/09 13:03:37  mmorozov
// no message
//
// Revision 1.114  2004/01/09 12:20:35  law
// - bug fix: ��� �������� ���� vcm_otTyper ��� �������� ����� ����� ���������� OnExecute - � ��� �� ��������� (CQ OIT5-5803).
//
// Revision 1.113  2004/01/08 19:03:00  mmorozov
// new: ��������� _vcmUseStdDate - ������������� TDateTimePicker;
// new: ��������� _vcmUseStdDate - ������������� TvtDateEdit;
// new: ������������� TvtDateEdit � �������� ������ TvcmDateEdit;
//
// Revision 1.112  2004/01/06 12:40:35  am
// change: ���������� ���������� combotree ����� ���������� parent'�
//
// Revision 1.111  2004/01/06 12:32:25  law
// - change: ��������� �����������.
//
// Revision 1.110  2003/12/30 13:41:53  law
// - bug fix: �� ������������� Action'� Popup-Menu ������������ � ������, ����� ��� ���� �������.
//
// Revision 1.109  2003/12/30 10:03:55  law
// - optimization: ��� �������� ������� Mainf-���� �� ������� �� ����� ��� ����� ��������� (CQ OIT5-5628).
//
// Revision 1.108  2003/12/29 14:55:36  mmorozov
// new: �������� ������� _TvcmEntityForm OnQueryMaximized, OnQueryOpen ��� MergeToolbarsToContainer = True;
//
// Revision 1.107  2003/12/26 16:51:17  law
// - new behavior: ���������� ������ ��������� BottonCombo - ������ ���� ���� ����, �� � ������� ���� ����.
// - bug fix: ������ ��� �������������� �� ������� �������� Caption �������� ����.
//
// Revision 1.106  2003/12/26 06:52:29  am
// new: ����������� ������� ����������
//
// Revision 1.105  2003/12/25 12:00:03  mmorozov
// new: ������ ������� � ������� �������;
//
// Revision 1.104  2003/12/25 07:32:15  mmorozov
// - ������������� ������ toolbar-� ��� � Dock97;
//
// Revision 1.103  2003/12/25 06:46:51  mmorozov
// new: TDockPanel - ����� ������ ��� ���� ����� toolbar-� � ������� Dock97 ��� ��������� �������� ���������� ��������� ����������� � ��� ������;
//
// Revision 1.102  2003/12/24 16:19:53  law
// - new behavior: ���������� �������� AutoWidth.
//
// Revision 1.101  2003/12/24 15:38:59  law
// - new behavior: �������� �������� (CQ OIT5-5524).
//
// Revision 1.100  2003/12/22 14:47:59  am
// new: AutoSize ��� �������� = False
//
// Revision 1.99  2003/12/16 14:18:12  mmorozov
// - ������������ ��������� toobar-� ��� TvcmDockDef;
//
// Revision 1.98  2003/12/16 13:01:06  mmorozov
// - ��������� ������ TvcmDockDef ��� ������������� toolbar-�� � �������� "�������", "����������";
//
// Revision 1.97  2003/12/16 08:41:21  mmorozov
// + ����� �� ������� � ������� TvcmDockDef;
//
// Revision 1.96  2003/12/15 19:26:40  mmorozov
// - ��� ������ � ������� Dock97 ������������ _TToolBar;
// - ��������� �������� ������ "����������";
// - ������ ����� TCloseBtn;
//
// Revision 1.95  2003/12/11 17:59:10  law
// - new const: _vcm_opPlainLevel.
// - new behavior: ������ ���� "������� ��������� (��� � �������)" ������� � ������ ����������� _vcm_opPlainLevel (CQ OIT5-5467).
//
// Revision 1.94  2003/12/09 17:35:12  law
// - bug fix: �� _uses ������ ������ �� �������� ������.
//
// Revision 1.93  2003/12/09 16:56:05  law
// - new behavior: ���������� Root'� ������� �� _ParamsChanged.
//
// Revision 1.92  2003/12/09 16:28:21  law
// - bug fix: ���������� ShowRoot ������ CuurrentNode.
//
// Revision 1.91  2003/12/09 16:12:47  law
// - new operation param: vcm_opShowRoot.
//
// Revision 1.90  2003/12/09 15:45:56  law
// - bug fix: � OnTest �� ���������� ���������� CurrentNode.
//
// Revision 1.89  2003/12/09 14:22:59  law
// - new behavior: ���������� CurrentNode � ComboTree.
//
// Revision 1.88  2003/12/09 10:27:54  law
// - change: ������������ ��� ��� ������� ������ ��� ComboTree, ������� ��������������� �. �������.
//
// Revision 1.87  2003/12/09 06:19:25  mmorozov
// - ��������������� �� ���������� ����� ���� � ��������� _SetStringsFromAction;
//
// Revision 1.86  2003/12/08 15:21:13  am
// *** empty log message ***
//
// Revision 1.85  2003/12/08 13:16:05  am
// new: ������� ��������� ���� � combotree - vcmSetRoot.
//
// Revision 1.84  2003/12/05 14:57:52  law
// - bug fix: ����� �������� ������� vcm - �� SetRoot, �� _Il3Node � vcm'�� ���������� ������ ��������� �� �����.
//
// Revision 1.83  2003/12/05 14:48:47  am
// change: ��� combotree ����������� caption �� ����������� ������ � Items.
//
// Revision 1.82  2003/12/03 17:42:11  law
// - bug fix: �� ������� "������"-����� ��� ������������� ������.
//
// Revision 1.81  2003/12/03 17:14:53  law
// - change: � �������� �������� � ComboTree ��������� �� �������������� ����.
//
// Revision 1.80  2003/12/02 14:53:53  law
// - bug fix: ������������� ���������������� MDI-����������.
//
// Revision 1.79  2003/12/02 12:10:00  law
// - new behavior: ������� ������������� ������ � ComboTree.
//
// Revision 1.78  2003/11/30 14:36:43  law
// - new behavior: ��������� ��������� �������� ��� �������� ������.
//
// Revision 1.77  2003/11/28 17:05:26  law
// - bug fix: �������� ��� ������������� ComboTree.
//
// Revision 1.76  2003/11/28 16:36:18  law
// - new behavior: ���������� Combo-Tree � VCM.
//
// Revision 1.75  2003/11/27 18:55:57  law
// - new prop: TvcmBaseMenuManager._AppForms - ������ ���� ���� ����������.
//
// Revision 1.74  2003/11/27 15:56:22  law
// - new prop: _TvcmEntityForm.OnNeedUpdateStatus.
//
// Revision 1.73  2003/11/27 11:29:12  law
// - bug fix: �������� TCustomToolbarButton97.Click �� ����������� ����������� �����.
//
// Revision 1.72  2003/11/24 16:30:46  law
// - new behavior: Combo-������ ���� ���� ������ �����, �� ������ Popup-���� �� ���� ������.
//
// Revision 1.71  2003/11/21 15:34:03  mmorozov
// - ���� � TvcmDockDef ���������� ������ "�������" � ��� �� ������ Toolbar-�, �� ��� ��������� �������� ��������������� ����������� ������;
//
// Revision 1.70  2003/11/21 13:23:44  mmorozov
// - ���������� ������ � �������� ���������;
//
// Revision 1.69  2003/11/21 13:10:33  mmorozov
// - ����������� ����������� ������������ ��������� TElDateTimePicker ��� vcm �������� ���� opDate;
//
// Revision 1.68  2003/11/19 11:38:25  law
// - new behavior: ������������ ��� �������� � �������� � MenuManager'� ��� ���������� ������������� ��������������. ���� �������������� ���� �� ��������.
//
// Revision 1.67  2003/11/18 17:59:42  law
// - new behavior: � ��������� _vcm_eopNode �������� ��������� ���� ������.
//
// Revision 1.66  2003/11/18 16:40:31  law
// - new behavior: ��� Root'� �� ������ �������.
// - bug fix: ��� ��������� ��������� � Run-time  � ���������� �� ������������� ����������� ����.
//
// Revision 1.65  2003/11/18 15:21:15  law
// - bug fix: �� ����������� Action � �������.
//
// Revision 1.64  2003/11/18 13:40:20  migel
// - bug fix: �� ����������� ����������� ���.
//
// Revision 1.63  2003/11/17 15:27:56  law
// - new behavior: ������ ������������� ���� � ������, ��� ������� ���������� _SubNodes (������� ���� �� ��������).
//
// Revision 1.62  2003/11/13 13:49:09  law
// - bug fix: ������ �������� ������ � ���������� ���������.
//
// Revision 1.61  2003/11/13 09:17:09  law
// - ����� ��� �������� - vcm_otTyper, �� �� ��� � vcm_otEdit, �� � ���������������� �������� �� ����, �� �� �� Esc/Edit.
//
// Revision 1.60  2003/11/12 13:08:28  law
// - new behavior: ������� ����������� ���������� �� ����� �� 4-� �������� �������.
// - new behavior: ������� ����������� ����������� toolbar'�� child->container->container ...
//
// Revision 1.59  2003/11/05 15:24:08  law
// - new class: TvcmDateEdit.
//
// Revision 1.58  2003/11/05 15:18:09  law
// - new behavior: ��������� � Toolbar �������� ���� vcm_otEdit.
//
// Revision 1.57  2003/10/28 09:57:48  law
// - new behavior: ������ ��������� ���� �������� �� ������ MainMenuItems.
//
// Revision 1.56  2003/10/28 09:07:35  law
// - new prop: TvcmCustomMenuManager.MainMenuItems.
//
// Revision 1.55  2003/10/27 10:46:41  law
// - change: �������� ��� �������� � �����������.
//
// Revision 1.54  2003/10/22 16:05:52  mmorozov
// - ��������� ����������� ������������� ElToolbar (define _vcmUseElPack);
//
// Revision 1.53  2003/10/17 15:37:34  mmorozov
// - TCloseBtn ��������� �� TCustomControl;
//
// Revision 1.52  2003/10/16 15:04:43  mmorozov
// no message
//
// Revision 1.51  2003/10/16 12:47:15  mmorozov
// + ��������� TCloseSpeedButton ������� ������������ ����������� ������ �������� ����;
// + ������ � TvcmDockDef (PlaceCloseBtn, Resize, _CreateCloseBtn);
// - � ������ TvcmCustomMenuManager._BuildToolbar ����������� ������� � �� �����, ��� ������� ��������� Toolbar, _TvcmEntityForm � ����������� �� _TvcmEntityForm._CanClose = vcm_ccEnable, ���� �� �� � ���� ������� ��������� ������ �������� ����;
//
// Revision 1.50  2003/10/08 11:14:12  law
// - new directive: _vcmUseElCombo.
//
// Revision 1.49  2003/10/03 09:13:59  law
// - bug fix: ������� PopupMenu � ���������� ������.
//
// Revision 1.48  2003/10/02 17:41:53  law
// - bug fix: ����� ������� ����, �.�. ���������, ��� �������� ��������� ��������. ����� �� ����� �����������.
//
// Revision 1.47  2003/10/02 15:59:14  law
// - new class: _TvcmPopupMenu.
// - bug fix: ������� Popup-Menu ����� ����� ��� ������.
//
// Revision 1.46  2003/09/05 15:05:01  law
// - new behavior: �������� ������ ���� ��� ����� ����.
//
// Revision 1.45  2003/09/03 16:00:42  law
// - new operation type: _vcm_otButtonPopup.
//
// Revision 1.44  2003/09/03 07:50:21  law
// - new behavior: ��� vcm_otButtonCombo � ������ �������� OnExecute ������ ����� ��������� ������ (0 - ���� ������, 1..N - ����� ����).
//
// Revision 1.43  2003/09/02 17:10:40  law
// - new behavior: ��� vct_otButtonCombo ������� ���������� ����������� ����.
//
// Revision 1.42  2003/09/02 16:12:24  law
// - new const: vcm_otButtonCombo.
//
// Revision 1.41  2003/09/01 12:51:16  law
// - new const: vcm_otEditCombo.
// - new behavior: ������ ���� ����������� ��������� ������������� � ��������������� ���������� ������.
//
// Revision 1.40  2003/08/01 11:46:08  law
// - bug fix: �� "��������" ������.
//
// Revision 1.39  2003/08/01 09:36:17  law
// - new behavior: ��� ��������� toolbar'�� ������ ������ �����������.
//
// Revision 1.38  2003/07/28 12:27:14  law
// - new behavior: �������� ����������� ��� ��������� Toolbar'��.
//
// Revision 1.37  2003/07/28 11:42:25  law
// - new behavior: � ����� ��������� Toolbar'�� ������� ������ ���������������� ����� ��������.
//
// Revision 1.36  2003/07/25 17:51:57  law
// - new behavior: ����� �������� ������ UserType'��.
//
// Revision 1.35  2003/07/25 14:12:26  law
// - new behavior: ��������� ������������ ��������� ������ ��� ������ � toolbar.
//
// Revision 1.34  2003/07/25 13:39:24  law
// - new behavior: toolbar'� ����������� ����� ���������.
//
// Revision 1.33  2003/07/25 12:11:10  law
// - new behavior: � ����� �������� �������� �������� ����.
//
// Revision 1.32  2003/07/24 16:04:09  law
// - new behavior: �������� ������ ��������� ��������.
//
// Revision 1.31  2003/07/24 13:07:15  law
// - new prop: IvcmOperationDef._ExcludeUserTypes.
//
// Revision 1.30  2003/07/24 12:19:02  law
// - new behavior: ������� ����������� �������� ����� �� ������� (vcm_otTextButton).
//
// Revision 1.29  2003/07/24 11:46:58  law
// - bug fix: ���� �� ������.
//
// Revision 1.28  2003/07/24 11:35:09  law
// - new prop: _TvcmEntityForm._ToolbarPos.
//
// Revision 1.27  2003/07/23 15:36:31  law
// - new behavior: ������ � toolbar'� ���������� ����� ��������� (��� ���� ������ �� ������).
//
// Revision 1.26  2003/07/17 14:06:34  law
// - new behavior: ��� ������������� Toolbar 97 ������������� ���������� ������ Docking'�.
//
// Revision 1.25  2003/07/17 12:55:53  law
// - new behavior: ����������� �� ����� ����� toolbar'���, ��� ���������� ������.
//
// Revision 1.24  2003/07/17 08:52:38  nikitin75
// _uses ExtCtrls ������� � interface ������;
//
// Revision 1.23  2003/07/16 18:32:25  law
// - change: ������ ��������� Toolbar97 � VCM.
//
// Revision 1.22  2003/07/07 18:02:05  demon
// - bug fix: FormChange �������� ��� ����� MenuManager ��� ��������� - ��� AV.
//
// Revision 1.21  2003/04/30 12:18:49  law
// - bug fix: ������������ Toolbar'� �� "�����������" �������.
//
// Revision 1.20  2003/04/29 12:00:45  law
// - new prop: _TvcmEntityForm.MergeToolbarsToContainer.
//
// Revision 1.19  2003/04/24 15:47:26  law
// - new behavior: �������� ������ ��������� ���� ������ � ��������� ����� ����, � �� � ��������� ������� �����.
//
// Revision 1.18  2003/04/24 14:53:53  law
// - ����� ������ dll.
// - ���������� ������ ������ eeGetGenerator, eeGetFileGenerator.
//
// Revision 1.17  2003/04/24 14:29:48  law
// - ����� ������ dll.
// - ���������� ������ ������ eeGetGenerator, eeGetFileGenerator.
//
// Revision 1.16  2003/04/22 19:02:06  law
// - new behavior: ������������ �� MDI ���� ��� ���������� ����� _SDI.
//
// Revision 1.15  2003/04/22 18:20:53  law
// - bug fix: ������������� �������� TvcmMainForm._SDI.
//
// Revision 1.14  2003/04/22 17:33:42  law
// - new prop: TvcmMainForm._SDI.
//
// Revision 1.13  2003/04/22 15:00:30  law
// - bug fix: ������������ ������� ���� � ���������.
//
// Revision 1.12  2003/04/22 14:03:00  law
// - new behavior: ������� ��������� ��������, ��������� �� �������� �����.
//
// Revision 1.11  2003/04/09 15:52:34  law
// - new operation type: vcm_otDate.
//
// Revision 1.10  2003/04/09 14:51:33  law
// - new behavior: ������ ��������� ������ ����� � ComboBox'�.
//
// Revision 1.9  2003/04/09 13:08:13  law
// - new behavior: � ������� ����������� ������ ��������� �������� � ����� vcm_otCombo.
//
// Revision 1.8  2003/04/09 08:57:34  law
// - ���������������� � ComboBox � Toolbar'�.
//
// Revision 1.7  2003/04/08 12:34:46  law
// - new prop: IvcmOperationDef.Options.
// - new prop: TvcmOperationsCollectionItem.Options.
//
// Revision 1.6  2003/04/07 15:10:48  law
// - bug fix: �������, ����� ��������������� ��� Builder'��.
//
// Revision 1.5  2003/04/07 14:16:15  law
// - new behavior: �� ���������� Toolbar'� ��� ������.
//
// Revision 1.4  2003/04/07 14:05:57  law
// - new behavior: ������� ����������� ����� Toolbar'� � �������� �����.
//
// Revision 1.3  2003/04/04 15:37:59  law
// - new behavior: ������� Toolbar'�.
//
// Revision 1.2  2003/04/04 13:51:04  law
// - new prop: TvcmMenuManger.MenuOptions.
//
// Revision 1.1  2003/04/01 12:54:44  law
// - ��������������� MVC � VCM.
//
// Revision 1.9  2003/03/26 14:58:05  law
// - change: ��������� ActionList �� ��������� ��� ���� ����������.
//
// Revision 1.8  2003/03/20 12:30:01  law
// - new behavior: ������� ��������� ����������� ��������.
//
// Revision 1.7  2003/03/19 17:11:15  law
// - new behavior: �������� ������������ ���� ����������� ������ � �������� ���� ������������ ��������, ��� ������� ���� �������.
//
// Revision 1.6  2003/03/19 16:31:51  law
// - new behavior: ������� ����� ���������������� ������ ������������ ����.
//
// Revision 1.5  2003/03/19 12:46:43  law
// - new behavior: ����� ���������������� ��������� TvcmCustomMemoryManager.
//
// Revision 1.4  2003/03/18 13:40:41  law
// - new property: TvcmCustomMenuManager.NeedContextEntitiesMenu.
//
// Revision 1.3  2003/03/18 13:31:56  law
// - new behavior: ������ MainForm �� ���� ������� FormStyle � fsMDIForm.
//
// Revision 1.2  2003/03/17 12:24:50  law
// - new behavior: � ������� ����������� ������� �������������� ������ ������������ ����.
//
// Revision 1.1  2003/03/14 14:55:46  law
// - new units: vcmBaseMenuManager, vcmMenuManager.
//

{ ����������:
    _vcmUseElPack  - ������������ ���������� ElPack;
    _vcmUseTB97    - ������������ ���������� Toolbar97;
    _vcmUseStd     - ������������ ����������� ���������� Delphi;
    _vcmUseVTDate  - ������������ ��������� TvtDateEdit;
    _vcmUseStdDate - ������������ ��������� TDateTimePicker; }

{$Include vcmDefine.inc }

interface

uses
  vcmToolbar,
  Windows,
  Classes,
  Menus,
  ActnList,
  Controls,
  Forms,
  ComCtrls,
  ExtCtrls,
  Messages,
  ImgList,
  vcmUtils,

  l3Interfaces,
  l3SimpleObjectRefList,
  l3Types,
  l3Base,

  afwInterfaces,
  IafwMenuUnlockedPostBuildPtrList,

  vtDateEdit,

  tb97,
  tb97ctls,
  tb97tlbr,
  tb97vt,
  TB97ExtInterfaces,

  evButton,

  vcmExternalInterfaces,
  vcmUserControls,
  vcmInterfaces,
  vcmBase,

  vcmBaseMenuManager,
  vcmEntityForm,
  vcmMenus,

  vcmAction,
  vcmBaseCollectionItem,
  vcmMenuItemsCollection,

  vcmLocalInterfaces,
  vcmForm,
  vcmControl,

  vcmToolbarMenuRes,
  vcmPopupMenuPrim,
  vcmEntitiesDefIteratorForContextMenu
  ;

type
  TvcmDockDef = vcmToolbar.TvcmDockDef;
  TvcmDockPanel = vcmToolbar.TvcmDockPanel;
  TvcmDockPanelButton = vcmToolbar.TvcmDockPanelButton;
  TvcmToolbarDockPanel = vcmToolbar.TvcmToolbarDockPanel;
  TvcmToolbar = vcmToolbar.TvcmToolbar;
  TvcmToolbarDef = vcmToolbar.TvcmToolbarDef;
  TvcmSeparatorDef = vcmToolbar.TvcmSeparatorDef;

  TvcmDockContainer = class(TPanel)
  {* ������ ������������ ��� ���������� ������� ������ ������������ �����. }
  public
  // public
    constructor Create(AOwner : TComponent);
      override;
      {-}
  end;//TvcmDockContainer

  {$IfDef vcmUseSettings}
  TvcmButtonDef = record
   rPos       : Cardinal;
   rEn        : IvcmOperationalIdentifiedUserFriendlyControl;
   rOp        : IvcmOperationDef;
   rOptions   : TvcmOperationOptions;
   rNeedSep   : Boolean;
   rIconText  : Boolean;
   rLoaded    : Boolean;
  end;//TvcmButtonDef
  TvcmButtonDefs = array of TvcmButtonDef;
  {$EndIf vcmUseSettings}
  
  TvcmToolButtonDefActionLink = class(TevCustomButtonActionLink, IvcmActionLink)
    protected
    // interface methods
      // IvcmActionLink
      procedure ParamsChanged(const anAction: IvcmAction);
        {-}
      procedure ParamsChanging(const anAction: IvcmAction);
        {-}
    public
      destructor Destroy;
        override;
        {-}
  end;//TvcmToolButtonDefActionLink

  TvcmToolButtonDef = class(TevButton)
    protected
    // internal methods
      function  HackCheck: Boolean;
        override;
        {-}
      function  NeedAutoDown: Boolean;
        override;
        {-}
      function  AutoAllUp: Boolean;
        override;
        {-}
      function GetActionLinkClass: TControlActionLinkClass;
        override;
        {-}
    public
      function isIconText: Boolean;
        {-}
  end;//TvcmToolButtonDef

  TvcmMenuOption = (vcm_moEntitiesInMainMenu, vcm_moEntitiesInTopMainMenu,
                    vcm_moEntitiesInChildMenu, vcm_moEntitesInContextMenu);
    {-}
  TvcmMenuOptions = set of TvcmMenuOption;
    {-}
  TvcmToolbarOption = (vcm_toModulesInMainToolbar, vcm_toEntitiesInMainToolbar,
                       vcm_toEntitiesInChildToolbar);
    {-}
  TvcmToolbarOptions = set of TvcmToolbarOption;
    {-}

const
  vcm_DefaultMenuOptions = [vcm_moEntitiesInMainMenu, vcm_moEntitiesInTopMainMenu];
  vcm_DefaultToolbarOptions = [vcm_toModulesInMainToolbar, vcm_toEntitiesInMainToolbar];

type
  TvcmIconTextType = (vcm_itDefault, vcm_itIcon, vcm_itIconText);
  TvcmGlyphColordepth = (vcm_gcAuto, vcm_gc16, vcm_gc256, vcm_gcTrueColor);

  TvcmPopupMenu = class(TvcmPopupMenuPrim)
    private
    // private fields
      f_InPopup : Boolean;
    public
    // public methods
      procedure Popup(X, Y: Integer);
        override;
        {-}
     function IsShortCut(var Message: TWMKey): Boolean;
       override;
        {-}
     procedure ClearInPopup;
       {-}
  end;//TvcmPopupMenu

  TvcmButtonPopupMenu = class(TvcmPopupMenuPrim)
  end;//TvcmButtonPopupMenu

  TvcmCustomMenuManager = class(TvcmBaseMenuManager)
    private
    // internal fields
      f_MenuOptions                : TvcmMenuOptions;
      f_ToolbarOptions             : TvcmToolbarOptions;
      f_Popup                      : TvcmPopupMenu;
      f_PopupForm                  : TvcmEntityForm;
      f_Actions                    : TCustomActionList;
      f_FocusControl               : TWinControl;
      f_InEnter                    : Boolean;
      f_WasDrop                    : Boolean;
      f_UserTypes                  : TvcmInterfaceList;
      f_MainMenuItems              : TvcmMenuItemsCollection;
      f_TickCount                  : Cardinal;
      f_UserTypesLoaded            : Boolean;
      f_IsUnlockExecute            : Boolean;
      f_OneToolbarPerForm          : Boolean;
      f_SaveDockList               : Tl3SimpleObjectRefList;
      f_SaveLockCounter            : TvcmLongintList;
      f_LockCounter                : Integer;
      f_UnlockInProgress           : Integer;
      f_FastenToolbars             : Integer;
      f_GlyphColordepth            : TvcmGlyphColordepth;
      f_SmallToolbarSize           : Integer;
      f_MaxControlToolbarSize      : Integer;
      f_DiffSize                   : Integer; // � �������
        {* - ������� ����� �������� ���������� � ������������ ������� �
             toolbar-��. }
      f_ButtonHeight               : Integer;
      f_OnGlyphSizeChanged         : TNotifyEvent;
      f_OnGlyphColordepthChanged   : TNotifyEvent;
      f_GlyphSize                  : TvcmGlyphSize;
      f_DockButtonsImageList       : TCustomImageList;
      f_BtnCloseImageIndex         : TImageIndex;
      f_BtnOpenImageIndex          : TImageIndex;
      f_BtnOpenNewWindowImageIndex : TImageIndex;
      f_LockList: TIafwMenuUnlockedPostBuildPtrList;
      {$IfDef vcmUseSettings}
      f_MainToolbarDefs   : array [TvcmEffectiveToolBarPos] of record
       rVisibleLoaded : Boolean;
       rVisible       : Boolean;
       rButtons       : TvcmButtonDefs;
       rUserType      : IvcmUserTypeDef;
       rToolbarName   : String;
      end;
      {$EndIf vcmUseSettings}
    private
    // private methods
      procedure OverridePopupMenu(const aForm: TCustomForm);
        {-}
    protected
    // property methods
      procedure pm_SetDockButtonsImageList(const Value : TCustomImageList);
        {-}
      procedure pm_SetActions(anActions: TCustomActionList);
        {-}
      procedure pm_SetMainMenuItems(aValue: TvcmMenuItemsCollection);
        {-}
      procedure pm_SetGlyphSize(const Value: TvcmGlyphSize);
        {-}
      procedure pm_SetGlyphColordepth(const Value: TvcmGlyphColordepth);
        {-}
    protected
    // internal methods
      function ToolbarButtonSize(aToolbarButton : TCustomToolbarButton97;
                                 var aSize      : Integer) : Boolean;
        overload;
        {* - �� ���������� ������ ���������� � ������. }
      procedure ToolbarButtonSize(aToolbarButton : TCustomToolbarButton97);
        overload;
        {* - ������������� ������ � ������ ������. }
      procedure ToolbarSize(aToolbar  : TCustomToolbar97;
                            var aSize : Integer);
        {* - ���������� ������ toolbar-�. }
      procedure RefocusEntity;
        {-}
      procedure RestoreControlText(Sender: TObject);
        {-}
      procedure ChangeEntityText(Sender: TObject);
        {-}
      procedure ChangeTyperText(Sender: TObject);
        {-}
      procedure ControlKeyDown(Sender  : TObject;
                               var Key : Word;
                               Shift   : TShiftState);
        {-}                     
      procedure ControlEnter(Sender: TObject);
        {-}
      procedure ControlExit(Sender: TObject);
        {-}
      procedure ControlDown(Sender: TObject);
        {-}
      procedure DateDown(Sender: TObject);
        {-}
      procedure ComboDown(Sender: TObject);
        {-}
      procedure ControlSelect(Sender: TObject);
        {-}
      procedure FormChange(Sender: TObject);
        {-}
      procedure DoPopup(Sender: TObject);
        {-}
      function  CheckPopup(const anEntityDef: IvcmEntityDef): IvcmEntity;
        {-}
      function  GetToolbarName(aForm      : TvcmEntityForm;
                               const aDef : IvcmOperationalIdentifiedUserFriendlyControl;
                               anIndex    : Integer): String;
        {-}
      {$IfNDef DesignTimeLibrary}
      function  BuildToolbar(aForm      : TvcmEntityForm;
                             const aDef : IvcmOperationalIdentifiedUserFriendlyControl;
                             anIndex    : Integer
                             // - ���������� ����� Toolbar'� (��� ����������� ���������� Toolbar'�� � ����� ����)
                             ): TvcmToolbarDef;
        overload;
        {-}
      {$EndIf DesignTimeLibrary}  
      procedure FillToolbar(aForm              : TvcmEntityForm;
                            var  aToolBar      : TvcmToolbarDef;
                            const aHolder      : IvcmOperationalIdentifiedUserFriendlyControl;
                            const anOperations : IvcmOperationsDefIterator;
                            const anOptions    : TvcmOperationOptions);
        {-}
      procedure CheckToolbar(var  aToolBar      : TvcmToolbarDef);
        {-}
      {$IfNDef DesignTimeLibrary}
      function  MakeToolbar(aForm           : TvcmEntityForm;
                            const aHolder   : IvcmOperationalIdentifiedUserFriendlyControl;
                            const anOptions : TvcmOperationOptions;
                            anExcludePoses  : TvcmEffectiveToolBarPoses): Boolean;
        {-}
      {$EndIf DesignTimeLibrary}
      {$IfNDef DesignTimeLibrary}
      procedure BuildEntitiesToolbars(aForm            : TvcmEntityForm;
                                      const anEntities : IvcmEntitiesDefIterator;
                                      const anOptions  : TvcmOperationOptions;
                                      anExcludePoses   : TvcmEffectiveToolBarPoses);
        {-}
      {$EndIf DesignTimeLibrary}  
      {$IfDef vcmUseSettings}
      function  LoadButtonsFromSettings(const aUserType : IvcmUserTypeDef;
                                        const aToolbar  : String;
                                        AddUnsavedButton: Boolean;
                                        var theButton   : TvcmButtonDef;
                                        var theButtons  : TvcmButtonDefs): Boolean;
        {-}
      procedure MakeToolbarFromSettings(aForm                  : TvcmEntityForm;
                                        const aToolbarName     : String;
                                        aPos                   : TvcmEffectiveToolBarPos;
                                        const anOptions        : TvcmOperationOptions;
                                        const theButtons       : TvcmButtonDefs);
        {-}
      procedure MakeMainToolbarFromSettings(aForm : TvcmEntityForm);
        {-}
      {$EndIf vcmUseSettings}
      {$IfNDef DesignTimeLibrary}
      procedure BuildFormToolbars(aForm            : TvcmEntityForm;
                                  const anOptions  : TvcmOperationOptions);
        {-}
      {$EndIf DesignTimeLibrary}  
      {$IfNDef DesignTimeLibrary}
      procedure BuildMainToolbars(aForm            : TvcmEntityForm;
                                  const aModuleDef : IvcmModuleDef);
        {* - ������� Toolbar'� �������� �����. }
      {$EndIf DesignTimeLibrary}  
      procedure CheckUserTypes;
        {-}
      procedure BuildUserTypes(const aModuleDef : IvcmModuleDef);
        {-}
      procedure ToolbarsGetSiteInfo(Sender      : TObject;
                                    DockClient  : TCustomToolWindow97;
                                    var CanDock : Boolean);
        {-}
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(anOwner: TComponent);
        override;
        {-}
    function UnlockInProgress: Boolean; override;
      procedure BackupOpStatus;
        override;
        {-}
      procedure RestoreOpStatus;
        override;
        {-}
      procedure FastenToolbars;
        override;
        {-}
      function GetFastenMode: Boolean;
        override;
        {-}
      procedure BeginOp;
        override;
        {-}
      procedure EndOp;
        override;
        {-}
      function GetOpLock: Boolean;
        override;
        {-}
      //function MergedToMainForm(aForm: TvcmEntityForm): Boolean;
        //override;
        {-}
      procedure PostBuild(aForm        : TvcmEntityForm;
                          aFollowDocks : Boolean);
        override;
        {-}
      {$IfNDef DesignTimeLibrary}
      procedure RegisterModuleInMenu(aForm            : TvcmEntityForm;
                                     const aModuleDef : IvcmModuleDef);
        override;
        {* - ������������ ������ � ����, toolbar'��, etc. }
      {$EndIf DesignTimeLibrary}
      {$IfNDef DesignTimeLibrary}
      procedure MainCreated(aForm: TvcmEntityForm);
        override;
        {-}
      {$EndIf DesignTimeLibrary}  
      procedure RegisterMainInMenu(aForm: TvcmEntityForm);
        override;
        {* - ������������ �������� ����� � ����, toolbar'��, etc. }
      {$IfNDef DesignTimeLibrary}
      procedure RegisterChildInMenu(aForm: TvcmEntityForm);
        override;
        {* - ������������ �������� ����� � ����, toolbar'��, etc. ��� ���������� � ��������. }
      {$EndIf DesignTimeLibrary}  
      function  BuildButton(aForm             : TvcmEntityForm;
                            aToolBar          : TvcmToolbarDef;
                            const aModuleDef  : IvcmModuleDef;
                            const anEntityDef : IvcmEntityDef;
                            const anOp        : IvcmOperationDef;
                            const anOptions   : TvcmOperationOptions;
                            const anIconText  : TvcmIconTextType = vcm_itDefault): TControl;
        overload;
        {-}
      function  BuildButton(aForm             : TvcmEntityForm;
                            aToolBar          : TvcmToolbarDef;
                            const aModuleDef  : IvcmModuleDef;
                            const anEntityDef : IvcmEntityDef;
                            const anOp        : IvcmOperationDef;
                            const anOpOptions : TvcmOperationOptions;
                            const anOptions   : TvcmOperationOptions;
                            const anIconText  : TvcmIconTextType = vcm_itDefault): TControl;
        overload;
        {-}
      function  BuildButton(aForm             : TvcmEntityForm;
                            aToolBar          : TvcmToolbarDef;
                            const aHolder     : IvcmOperationalIdentifiedUserFriendlyControl;
                            const anOp        : IvcmOperationDef;
                            const anOpOptions : TvcmOperationOptions;
                            const anOptions   : TvcmOperationOptions;
                            const anIconText  : TvcmIconTextType = vcm_itDefault): TControl;
        overload;
        {-}
      function  BuildButton(aForm             : TvcmEntityForm;
                            aToolBar          : TvcmToolbarDef;
                            const aHolder     : IvcmOperationalIdentifiedUserFriendlyControl;
                            const anOp        : IvcmOperationDef;
                            const anOptions   : TvcmOperationOptions;
                            const anIconText  : TvcmIconTextType = vcm_itDefault): TControl;
        overload;
        {-}
      function BuildAction(const aModuleDef : IvcmModuleDef;
                           const anOpDef    : IvcmOperationDef): TCustomAction;
        overload;
        {-}
      function BuildAction(const anOwner     : TComponent;
                           const anEntity    : IvcmEntity;
                           const anEntityDef : IvcmEntityDef;
                           const anOpDef     : IvcmOperationDef;
                                 anOptions   : TvcmOperationOptions): TCustomAction;
        overload;
        {-}
      function  BuildSeparator(aToolBar: TvcmToolbarDef): TControl;
        {-}
      function  GetPopupMenu: TPopupMenu;
        override;
        {-}
      function  UserTypeByCaption(const aCaption: AnsiString;
                                      aFormClass: TClass = nil): IvcmUserTypeDef;
        {-}
      function  GetOneToolbarPerFormName(aForm   : TvcmEntityForm;
                                         aPos    : TvcmEffectiveToolBarPos;
                                         anIndex : Integer): String;
        {-}
      procedure ReloadToolbars(const aForm  : IvcmEntityForm);
        override;
        {-}
      {$IfNDef DesignTimeLibrary}
      function  BuildToolbar(aForm          : TvcmEntityForm;
                             const aName    : String;
                             const aCaption : IvcmCString;
                             aPos           : TvcmEffectiveToolBarPos): TvcmToolbarDef;
        overload;
        {-}
      function  BuildToolbar(aForm : TvcmEntityForm;
                             aPos  : TvcmEffectiveToolBarPos): TvcmToolbarDef;
        overload;
        {-}
      {$EndIf DesignTimeLibrary}  
      procedure CleanupSaveDockList(anItem: TvcmDockDef);
        {-}
      function GetDockParent(aForm : TCustomForm): TWinControl;
        {-}
      procedure LoadGlyphSize(aDefault : Boolean = False);
        {-}
      procedure LoadGlyphColordepth(aDefault : Boolean = False);
        {-}
      procedure UnlockDocks;
        {-}
      procedure LockDocks;
        {-}
      procedure StoreGlyphSize;
        {-}
      procedure RestoreGlyphSize;
        {-}
      procedure StoreGlyphColordepth;
        {-}
      procedure RestoreGlyphColordepth;
        {-}
      procedure InitToolbarMetrics(const aForm: TCustomForm);
        {* - ���������� ������� ������ ������������. ����������, ������� �����
             ���� �������� � ������, ����� ����� ������ �������, ����� ������
             ������� ���� ����������, ������� ������������ ������ � ����������
             � ��� ���� �������. }
      function  ObjectByType(anObject           : TvcmObject;
                             const anObjectName : String;
                             const aSubName     : String = '';
                             ForceCreate        : Boolean = False): TvcmBaseCollectionItem;
        override;
        {-}
      procedure AddControlForUnlockPostBuild(const aCOntrol: IafwMenuUnlockedPostBuild);
        override;
        {-}
      procedure ListenerControlDestroying(const aCOntrol: IafwMenuUnlockedPostBuild);
        override;
        {-}
      function FillPopupMenu(aPopupPoint : TPoint;
                             aPopupComponent : TComponent): TvcmPopupMenu;
        {-}
    public
    // public properties
      property DockButtonsImageList : TCustomImageList
        read f_DockButtonsImageList
        write pm_SetDockButtonsImageList;
        {* - imagelist ������������ ��� ������ ������� dock-�. }
      property BtnCloseImageIndex : TImageIndex
        read f_BtnCloseImageIndex
        write f_BtnCloseImageIndex
        default -1;
        {-}
      property BtnOpenImageIndex : TImageIndex
        read f_BtnOpenImageIndex
        write f_BtnOpenImageIndex
        default -1;
        {-}
      property BtnOpenNewWindowImageIndex : TImageIndex
        read f_BtnOpenNewWindowImageIndex
        write f_BtnOpenNewWindowImageIndex
        default -1;
        {-}
      property Actions: TCustomActionList
        read f_Actions
        write pm_SetActions;
        {-}
      property GlyphSize: TvcmGlyphSize
        read f_GlyphSize
        write pm_SetGlyphSize
        default vcm_gs16x16;
        {-}
      property GlyphColordepth: TvcmGlyphColordepth
        read f_GlyphColordepth
        write pm_SetGlyphColordepth
        default vcm_gcAuto;
        {-}
      property MainMenuItems: TvcmMenuItemsCollection
        read f_MainMenuItems
        write pm_SetMainMenuItems;
        {-}
      property MenuOptions: TvcmMenuOptions
        read f_MenuOptions
        write f_MenuOptions
        default vcm_DefaultMenuOptions;
        {-}
      property ToolbarOptions: TvcmToolbarOptions
        read f_ToolbarOptions
        write f_ToolbarOptions
        default vcm_DefaultToolbarOptions;
        {-}
      property UserTypes: TvcmInterfaceList
        read f_UserTypes;
        {-}
      property SmallToolbarSize : Integer
        read f_SmallToolbarSize;
        {* - ������ toolbar-� � ������� ��������� ������ � ���������� ��������,
             ������������ TvcmEdit � TvcmDateEdit. }
      property MaxControlToolbarSize : Integer
        read f_MaxControlToolbarSize;
        {* - ������������ ������ ���������� ������������ � toolbar-� }
      property OneToolbarPerForm: Boolean
        read f_OneToolbarPerForm
        write f_OneToolbarPerForm
        default true;
        {-}
      property OnGlyphSizeChanged: TNotifyEvent
        read f_OnGlyphSizeChanged
        write f_OnGlyphSizeChanged;
        {-}
      property OnGlyphColordepthChanged: TNotifyEvent
        read f_OnGlyphColordepthChanged
        write f_OnGlyphColordepthChanged;
        {-}
  end;//TvcmCustomMenuManager

  TvcmMenuManager = class(TvcmCustomMenuManager)
  {-}
    published
    // published properties
      property Strings;
        {-}
      property DockButtonsImageList;
        {-}
      property BtnCloseImageIndex;
        {-}
      property BtnOpenImageIndex;
        {-}
      property BtnOpenNewWindowImageIndex;
        {-}
      property HistoryZones;
        {-}
      property SaveFormZones;
        {-}
      property Actions;
        {-}
      property SmallImages;
        {-}
      property LargeImages;
        {-}
      property MainMenuItems;
        {-}
      property MenuOptions;
        {-}
      property ToolbarOptions;
        {-}
      property Modules;
        {-}
      property Entities;
        {-}
      //property AppForms;
        {-}
      //property FormSetFactories;
        {-}
      property Messages;
        {-}
      property OneToolbarPerForm;
        {-}
      property OnInitCommands;
        {-}
      property OnGlyphSizeChanged;
        {-}
      property OnGlyphColordepthChanged;
        {-}
      property OnOperationExecuteNotify;
        {-}
  end;//TvcmMenuManager

{$R *.res}

implementation

uses
  vcmToolbarUtils,
  SysUtils,
  TypInfo,
  StdCtrls,
  Math,
  {$IfDef XE}
  VCL.ToolWin,
  System.Actions,
  {$Else}
  ToolWin,
  {$EndIf}
  Graphics,

  l3String,
  {$IfDef vcmNeedL3}
  l3TreeInterfaces,
  l3InternalInterfaces,
  l3ScreenIC,
  {$EndIf vcmNeedL3}
  afwFacade,
  {$IfDef Nemesis}
  l3Defaults,
  afwDrawing,
  {$EndIf}

  //l3String,
  ctTypes,
  FakeBox,

  OvcConst,

  vcmMessages,
  vcmMainForm,
  vcmModuleAction,
  vcmEntityAction,
  vcmOperationAction,
  vcmStyle
  {$IfNDef DesignTimeLibrary}
  ,
  vcmFormHandler
  {$EndIf DesignTimeLibrary}

  ,
  vcmMenuItemsCollectionItem,
  vcmMainMenuAction,
  vcmWinControlActionLink,

  {$IfDef vcmUseSettings}
  vcmSettings,
  {$EndIf vcmUseSettings}

  vcmInternalConst,
  vcmMenuManagerRes

  {$IfNDef DesignTimeLibrary}
  ,
  tfwClassRef
  {$EndIf  DesignTimeLibrary}

  {$If (not Defined(nsTest) OR Defined(InsiderTest)) AND not Defined(nsTool) AND Defined(Nemesis) AND not Defined(NewGen)}
  ,
  nscTasksPanelView
  {$IfEnd}
  ;

const
  c_vcmCloseBmpName        = 'CLOSEBTN_DOCK97';
  c_vcmMaximizedBmpName    = 'MAXIMIZEDBTN_DOCK97';
  c_vcmOpenBmpName         = 'OPENBTN_DOCK97';
  c_vcmCloseImageIndex     = 0;
  c_vcmMaximizedImageIndex = 1;
  c_vcmOpenImageIndex      = 2;
  c_vcmDockContainerName   = 'vcmDockContainer';

  c_GlyphSizeMap: array [TvcmGlyphSize] of Cardinal = (
   2, // vcm_gsAutomatic,
   0, // vcm_gs16x16,
   3, // vcm_gs24x24,
   1 // vcm_gs32x32
  );

{ TvcmDockContainer }

constructor TvcmDockContainer.Create(AOwner : TComponent);
//override;
begin
 inherited Create(AOwner);
 Assert(AOwner.FindComponent(c_vcmDockContainerName) = nil,
  Format('� ''%s'' ��� ���� ��������� � ������ ''%s'';', [AOwner.Name,
  c_vcmDockContainerName]));
 Name := c_vcmDockContainerName;
 Caption := '';
 BevelInner := bvNone;
 BevelOuter := bvNone;
end;

// start internal ComboBox classes

type
  TvcmFakeBox = class(TFakeBox, ITB97Ctrl)
  {* - ����� ���������������� ����������� vcm ��� ������������� TFakeBox. }
  private
  // private fields ( ITB97Ctrl )
    f_MinWidth   : Integer;
  private
  // private methods ( ITB97Ctrl )
    function  pm_GetFullWidth : Integer;
      {-}
    function  pm_GetIsSizeable : Boolean;
      {-}
    function  pm_GetMinWidth : Integer;
      {-}
    procedure DoFitToWidth(aWidth: Integer);
      {-}
    procedure DoUnFitToWidth(aWidth: Integer);
      {-}
    procedure Expand;
      {-}
  public
  // public methods
    constructor Create(AOwner : TComponent);
      override;
      {-}
  end;//TvcmFakeBox

{ TvcmFakeBox }

function TvcmFakeBox.pm_GetFullWidth : Integer;
  {-}
begin
 Result := FullWidth;
end;

function TvcmFakeBox.pm_GetIsSizeable : Boolean;
  {-}
begin
 Result := True;
end;

function TvcmFakeBox.pm_GetMinWidth : Integer;
  {-}
var
 l_CN : Il3InfoCanvas;
begin
 if f_MinWidth < 0 then
 begin
  l_CN := l3CrtIC;
  l_CN.Font.AssignFont(Font);
  f_MinWidth := ButtonWidth + l_CN.LP2DP(l_CN.TextExtent(vcmWStr('WWW'))).X;
 end;
 Result := f_MinWidth;
end;

procedure TvcmFakeBox.DoFitToWidth(aWidth: Integer);
  {-}
begin
 Width := aWidth;
end;

procedure TvcmFakeBox.DoUnFitToWidth(aWidth: Integer);
  {-}
begin
 Width := aWidth;
end;

procedure TvcmFakeBox.Expand;
  {-}
begin
 Width := pm_GetFullWidth;
end;

constructor TvcmFakeBox.Create(AOwner : TComponent);
// override;
{-}
begin
 inherited;
 f_MinWidth := -1;
 SmartOnResize:=false;
 SetToBeginOnTreeSelect := True;
end;

type
  TvcmComboBox = class;

  TvcmComboBoxActionLink = class(TvcmWinControlActionLink)
    protected
    // internal methods
      procedure SetCaption(const Value: string);
        override;
        {-}
      procedure ParamsChanged(const anAction: IvcmAction);
        override;
        {-}
      procedure ParamsChanging(const anAction: IvcmAction);
        override;
        {-}
  end;//TvcmComboBoxActionLink

  TvcmComboBox = class(TvcmFakeBox)

    private
     f_InUpdateCation: Boolean;
    protected
    // internal methods
      procedure ActionChange(Sender: TObject; CheckDefaults: Boolean);
        override;
        {-}
      function GetActionLinkClass: TControlActionLinkClass;
        override;
        {-}
      procedure DropDown;
        override;
        {-}
      procedure SetCaptionFromAction(anAction       : TvcmOperationAction;
                                     anUpdateIndex  : Boolean);
        {-}
      function SetStringsFromAction(const anAction: IvcmAction): Boolean;
        {-}
      procedure ActionExecuteHandler;
        override;
        {-}
      procedure LocalUpdateAction;
        override;
        {-}
      procedure CMTBMouseQuery(var Msg: TMessage);
        message CM_TBMOUSEQUERY;
        {-}

      procedure CMTBCheckControl(var Msg: TMessage);
        message CM_TBCHECKCONTROL;
        {-}
    public
    // public methods
      constructor Create(anOwner: TComponent);
        override;
        {-}
  end;//TvcmComboBox

// start class TvcmComboBoxActionLink

procedure TvcmComboBoxActionLink.SetCaption(const Value: string);
  //override;
  {-}
begin
 inherited;
 if (FClient Is TvcmComboBox) AND (Action Is TvcmOperationAction) then
  TvcmComboBox(FClient).SetCaptionFromAction(TvcmOperationAction(Action), true);
end;

procedure TvcmComboBoxActionLink.ParamsChanging(const anAction: IvcmAction);
  //override;
  {-}
begin
 inherited;
 if (FClient Is TvcmComboBox) then
 begin
  if (anAction.SubNodes <> nil) then
  begin
   with anAction.SubNodes do
   begin
    Current := TvcmComboBox(FClient).CurrentNode;
    ShowRoot := TvcmComboBox(FClient).ShowRoot;
   end;//anAction.SubNodes
  end;//anAction.SubNodes <> nil
 end;//FClient Is TvcmComboBox
end;

procedure TvcmComboBoxActionLink.ParamsChanged(const anAction: IvcmAction);
  //override;
  {-}
begin
 inherited;
 if (FClient Is TvcmComboBox) then
 begin
  with TvcmComboBox(FClient) do
  begin
   if (anAction.SubNodes <> nil) then
    ShowRoot := anAction.SubNodes.ShowRoot;
   SetStringsFromAction(anAction);
   {$IfNDef DesignTimeLibrary}
   if (anAction.SubNodes <> nil) then
    vcmSetCurrent(anAction.SubNodes.Current);
   {$EndIf  DesignTimeLibrary} 
   Hint := vcmStr(anAction.Hint);
  end;//with TvcmComboBox(FClient)
 end;//FClient Is TvcmComboBox
end;

// start class TvcmComboBox

constructor TvcmComboBox.Create(anOwner: TComponent);
  //override;
  {-}
begin
 inherited;
 AutoWidth := awCurrent;
end;

procedure TvcmComboBox.ActionChange(Sender: TObject; CheckDefaults: Boolean);
  //override;
  {-}
begin
 if (Sender Is TvcmOperationAction) then
  SetCaptionFromAction(TvcmOperationAction(Sender), False);
 inherited;
end;

function TvcmComboBox.GetActionLinkClass: TControlActionLinkClass;
  //override;
  {-}
begin
 Result := TvcmComboBoxActionLink;
end;

procedure TvcmComboBox.DropDown;
  //override;
  {-}
var
 l_Action: IvcmAction;
begin
 if Supports(Action, IvcmAction, l_Action) then
 try
  SetStringsFromAction(l_Action);
  inherited;
 finally
  l_Action := nil;
 end//try..finally
 else
  inherited;
end;

function TvcmComboBox.SetStringsFromAction(const anAction: IvcmAction): Boolean;
  {-}
var
 l_Strings : IvcmStrings;
begin
 Result := False;
 l_Strings := anAction.SubItems;
 if (l_Strings = nil) OR (l_Strings.Count = 0) then
 begin
  Result := vcmSetRoot(anAction.SubNodes);
  if (anAction.SubNodes = nil) or (anAction.SubNodes.Count = 0) then
   if anAction.IsSelectedStringChanged then
   //if not l3Same(Text, anAction.SelectedString) then
    Text := anAction.SelectedString;
 end//l_Strings = nil
 else
 begin
  Result := true;
  if (Action Is TvcmOperationAction) AND
   (TvcmOperationAction(Action).OpDef.OperationType = vcm_otCombo) then
  begin
   Items.Assign(l_Strings.Items);
   if not vcmIsNil(anAction.SelectedString) then
    ItemIndex := Items.IndexOf(anAction.SelectedString);
  end//anAction Is TvcmOperationAction
  else
  begin
   Items.Assign(l_Strings.Items);
   if anAction.IsSelectedStringChanged then
   begin
    if not l3Same(Text, anAction.SelectedString) then
    begin
     Text := anAction.SelectedString;
     //AdjustWidth;
     //// ^ http://mdp.garant.ru/pages/viewpage.action?pageId=100958843
     // ������� �������� � TctButtonEdit.pm_SetText ��-�� K278854646
    end;//not l3Same(Text, anAction.SelectedString)
   end;//not vcmSame(f_SelectedString, anAction.SelectedString)
  end;//anAction Is TvcmOperationAction
 end;//l_Strings = nil..
end;

procedure TvcmComboBox.SetCaptionFromAction(anAction       : TvcmOperationAction;
                                            anUpdateIndex  : Boolean);
  {-}
var
 l_Action: IvcmAction;
begin
 if not f_InUpdateCation and (anAction.OpDef.OperationType = vcm_otCombo) then
 begin
  f_InUpdateCation := True;
  try
   if Supports(anAction, IvcmAction, l_Action) then
   try
    if not SetStringsFromAction(anAction) then
    begin
(*     {$IfNDef vcmUseComboTree}
     Items.Clear;
     Items.Add(vcmStr(l_Action.SelectedString));
     if anUpdateIndex then
      ItemIndex := Items.IndexOf(vcmStr(l_Action.SelectedString));
     {$EndIf vcmUseComboTree}*)
    end;//not SetStringsFromAction(anAction)
   finally
    l_Action := nil;
   end;//try..finally
  finally
   f_InUpdateCation := False;
  end;//try..finally
 end;//not f_InUpdateCation and (anAction.OpDef.OperationType = vcm_otCombo)
end;//SetCaptionFromAction

procedure TvcmComboBox.ActionExecuteHandler;
var
 l_LockCount : Integer;
 l_Action    : IvcmAction;

 procedure lp_SaveLock;
 begin
  l_LockCount:=0;
  while l_Action.IsExecuteLocked do
  begin
   l_Action.UnlockExecute;
   inc(l_LockCount);
  end;//while l_Action.IsExecuteLocked do
 end;//lp_SaveLock

 procedure lp_RestoreLock;
 begin
  while l_LockCount > 0 do
  begin
   l_Action.LockExecute;
   dec(l_LockCount);
  end;//while l_LockCount > 0 do
 end;//lp_RestoreLock

begin
 if Supports(Action, IvcmAction, l_Action) then
 try
  Action.ActionComponent := self;
  l_Action.SelectedString := Text;
  l_Action.LockUpdate;
  try
   lp_SaveLock;
   try
    Action.Execute;
   finally
    lp_RestoreLock;
   end;//try..finally
  finally
   l_Action.UnlockUpdate;
  end;//try..finally
 finally
  l_Action := nil;
 end;//try..finally
end;//ActionExecuteHandler

procedure TvcmComboBox.LocalUpdateAction;
var
 l_Action: IvcmAction;
begin
 if Supports(Action, IvcmAction, l_Action) then
 try
  l_Action.SelectedString := Text;
 finally
  l_Action := nil;
 end;//try..finally
end;//LocalUpdateAction

procedure TvcmComboBox.CMTBMouseQuery(var Msg: TMessage);
begin
 if InnerPoint(Point(Integer(Msg.WParam), Integer(Msg.LParam))) then
  Msg.Result := 1
 else
  Msg.Result := 0;
end;

procedure TvcmComboBox.CMTBCheckControl(var Msg: TMessage);
begin
 if IsInnerControl(HWND(Msg.WParam)) then
  Msg.Result := 1
 else
  Msg.Result := 0;
end;

// start class TvcmEditActionLink

type
  TvcmEditActionLink = class(TvcmWinControlActionLink)
  end;//TvcmEditActionLink

// start class TvcmEdit

type
  TvcmEdit = class(TvcmFakeBox)
      constructor Create(AOwner: TComponent);
        override;
    protected
    // internal methods
      function  DoProcessCommand(Cmd    : Tl3OperationCode;
                                 aForce : Boolean;
                                 aCount : Integer): Boolean;
        override;
        {* - ���������� orpheus-�� ��� ��������� shortcut-��. }
      procedure ActionChange(Sender: TObject; CheckDefaults: Boolean);
        override;
        {-}
      function GetActionLinkClass: TControlActionLinkClass;
        override;
        {-}
  end;//TvcmEdit


constructor TvcmEdit.Create(AOwner: TComponent);
begin
 inherited;
 Width := 121;
 // ��� ��������� ������ �������� ���� �����
 AutoSelect := True;
end;

function TvcmEdit.DoProcessCommand(Cmd    : Tl3OperationCode;
                                   aForce : Boolean;
                                   aCount : Integer): Boolean;
//override
begin
 Result := inherited DoProcessCommand(Cmd, aForce, aCount);
 if not Result then
 begin
  Tag := 0;
  case Cmd of
   ccNewLine:
   begin
    Tag := Integer(Cmd);
    with Action do
    begin
     ActionComponent := Self;
     Execute;
    end;
    Result := True;
   end;
  end;
 end;
end;

procedure TvcmEdit.ActionChange(Sender: TObject; CheckDefaults: Boolean);
  //override;
  {-}
var
 l_Action: IvcmAction;
begin
 if Supports(Sender, IvcmAction,  l_Action) then
 try
  l_Action.LockExecute;
  try
   inherited;
  finally
   l_Action.UnlockExecute;
  end;//try..finally
 finally
  l_Action := nil;
 end//try..finally
 else
  inherited;
end;

function TvcmEdit.GetActionLinkClass: TControlActionLinkClass;
  //override;
  {-}
begin
 Result := TvcmEditActionLink;
end;

// start class TvcmDateEdit

type
  TvcmDateEdit = class(TvtDblClickDateEdit)
    private
      f_OnSelectDate : TNotifyEvent;
      procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
    protected
      procedure DoExecute;
        override;
        {-}
      procedure DoCloseUp(Accept: Boolean);
        override;
        {-}
      procedure ActionChange(Sender: TObject; CheckDefaults: Boolean);
        override;
        {-}
    // internal methods
      function GetActionLinkClass: TControlActionLinkClass;
        override;
        {-}
    public
      constructor Create(AOwner: TComponent); override;
      property OnSelectDate : TNotifyEvent read f_OnSelectDate write f_OnSelectDate;
  end;//TvcmDateEdit

  TvcmDateEditActionLink = class(TvcmWinControlActionLink)
  protected
  // protected methods
   function IsCaptionLinked: Boolean;
     override;
     {-}
   procedure ParamsChanged(const anAction: IvcmAction);
     override;
     {-}
  end;//TvcmDateEditActionLink

procedure TvcmDateEditActionLink.ParamsChanged(const anAction: IvcmAction);
  // override;
  {-}
begin
 inherited;
 if anAction.IsSelectedStringChanged and (FClient is TvcmDateEdit) then
  TvcmDateEdit(FClient).Text := vcmStr(anAction.SelectedString);
end;//ParamsChanged

function TvcmDateEditActionLink.IsCaptionLinked: Boolean;
begin
 Result :=
  False
   // - ����������� �� ��������� Caption �� �� �����, ������ ��� �� �����
   //   ��������, �������� �� ��������� � ��������� SelectedString (K<50758978>);
  ;
end;

function TvcmDateEdit.GetActionLinkClass: TControlActionLinkClass;
  //override;
  {-}
begin
 Result := TvcmDateEditActionLink;
end;

procedure TvcmDateEdit.DoExecute;
 //override;
begin
 inherited;
end;

procedure TvcmDateEdit.CMTextChanged(var Message: TMessage);
begin
 inherited;
 { ���� ����� ����������� ���� �� ����� ���� ������ }
 if (EditMask <> '') and (EditText = '') then
  Clear;
end;


constructor TvcmDateEdit.Create(AOwner: TComponent);
begin
 inherited;
 RestrictInvalidDate := true;
end;

procedure TvcmDateEdit.ActionChange(Sender: TObject; CheckDefaults: Boolean);
  // override;
  {-}
var
 l_Action: IvcmAction;
begin
 inherited;
 // ����� ����� Action ����� ����� ����� �������� �������� ������� ����� �����
 // ����� ���������� ������� ��������:
 if Supports(Action, IvcmAction, l_Action) then
 try
  l_Action.LockExecute;
  try
   Text := vcmStr(l_Action.SelectedString);
  finally
   l_Action.UnlockExecute;
  end;//try..finally
 finally
  l_Action := nil;
 end;//try..finally
end;//ActionChange

procedure TvcmDateEdit.DoCloseUp(Accept: Boolean);
 //override;
 {-}
begin
 inherited DoCloseUp(Accept);
 if Assigned(f_OnSelectDate) and Accept then
  f_OnSelectDate(Self);
end;

// start class TvcmCustomMenuManager

var
 g_InternalButton : TvcmToolButtonDef = nil;

constructor TvcmCustomMenuManager.Create(anOwner: TComponent);
  //override;
  {-}
var
 l_Form : TCustomForm;
begin
 inherited;
 MenuOptions := vcm_DefaultMenuOptions;
 ToolbarOptions := vcm_DefaultToolbarOptions;
 if not (csDesigning in ComponentState) then begin
  l_Form := afw.GetParentForm(Self);
  if (l_Form Is TForm) then
   if (l_Form Is TvcmMainForm) AND not TvcmMainForm(l_Form).SDI then
    TForm(l_Form).FormStyle := fsMDIForm;
  Screen.OnActiveFormChange := FormChange;
 end;//not (csDesigning in ComponentState)
 f_MainMenuItems := TvcmMenuItemsCollection.Create(Self);
 f_TickCount := Cardinal(-1);
 OneToolbarPerForm := true;
 f_FastenToolbars := -1;
 f_SaveDockList := Tl3SimpleObjectRefList.Make;
 f_BtnCloseImageIndex := -1;
 f_BtnOpenImageIndex := -1;
 f_BtnOpenNewWindowImageIndex := -1;
 f_SaveLockCounter := TvcmLongintList.Make;
 f_LockCounter := 0;
 f_UnlockInProgress := 0;
 f_GlyphSize := vcm_gs16x16;
 f_SmallToolbarSize := 0;
end;

function TvcmCustomMenuManager.UnlockInProgress: Boolean;
begin
 Result := (f_UnlockInProgress > 0);
end;

procedure TvcmCustomMenuManager.Cleanup;
  //override;
  {-}
var
 l_MyEvent  : TNotifyEvent;
 l_MyMethod : TMethod absolute l_MyEvent;
 l_Event    : TNotifyEvent;
 l_Method   : TMethod absolute l_Event;
begin
 TB97Tlbr.g_ToolbarSize := nil;
 {$IfDef vcmUseSettings}
 Finalize(f_MainToolbarDefs);
 {$EndIf vcmUseSettings}
 l_Event := Screen.OnActiveFormChange;
 l_MyEvent := FormChange;
 if (l_Method.Code = l_MyMethod.Code) AND (l_Method.Data = l_MyMethod.Data) then
  Screen.OnActiveFormChange := nil;
 vcmFree(f_MainMenuItems);
 vcmFree(f_Popup);
 vcmFree(f_SaveLockCounter);
 vcmFree(f_LockList);

 vcmFree(f_SaveDockList);
 Actions := nil;
 vcmFree(f_UserTypes);
 inherited;
end;

type
  THackWinControl = class(TWinControl);

{$IfNDef DesignTimeLibrary}
procedure TvcmCustomMenuManager.RegisterModuleInMenu(aForm            : TvcmEntityForm;
                                                     const aModuleDef : IvcmModuleDef);
  //override;
  {* - ������������ ������ � ����, toolbar'��, etc. }
var
 l_Main : TMenuItem;
 l_Item : TMenuItem;
begin
// if (aForm = Application.MainForm) OR (Application.MainForm = nil) then begin
 if (aForm Is TvcmMainForm) then begin
  THackWinControl(aForm).DestroyHandle;
  // - ��� ����� ����������� ����� ����� ���� ����������� � ���� ���������
  l_Main := vcmGetMainMenu(aForm);
  l_Item := vcmMakeModuleMenu(l_Main, aModuleDef, [vcm_ooShowInMainMenu], true);
  if (vcm_moEntitiesInMainMenu in MenuOptions) then begin
   if (vcm_moEntitiesInTopMainMenu in MenuOptions) then
    vcmMakeEntitiesMenus(l_Main, aModuleDef.EntitiesDefIterator, [vcm_ooShowInMainMenu])
   else
    vcmMakeEntitiesMenus(l_Item, aModuleDef.EntitiesDefIterator, [vcm_ooShowInMainMenu]);
  end else
   vcmMakeEntitiesMenus(l_Item, aModuleDef.EntitiesDefIterator, [vcm_ooShowInMainMenu], False, vcm_icSameAsParent);
  if (f_UserTypes = nil) then
  begin
   CheckUserTypes;
   aForm.GetUserTypes(f_UserTypes);
  end;//f_UserTypes = nil
  BuildMainToolbars(aForm, aModuleDef);
  BuildUserTypes(aModuleDef);
 end;//aForm = Application.MainForm
end;
{$EndIf DesignTimeLibrary}

procedure TvcmCustomMenuManager.CheckUserTypes;
  {-}
begin
 if (f_UserTypes = nil) then
  f_UserTypes := TvcmInterfaceList.Make;
end;

procedure TvcmCustomMenuManager.BuildUserTypes(const aModuleDef : IvcmModuleDef);
  {-}
var
 l_UserTypes : IvcmUserTypesIterator;
 l_UserType  : IvcmUserTypeDef;
begin
 if not f_UserTypesLoaded then
 begin
  l_UserTypes := aModuleDef.UserTypesIterator;
  if (l_UserTypes <> nil) then
  begin
   CheckUserTypes;
   while true do
   begin
    l_UserType := l_UserTypes.Next;
    if (l_UserType = nil) then
     break;
    f_UserTypes.Add(l_UserType);
   end;//while true
 //  while DoEntity(l_Entities.Next) do ;
  end;//l_UserTypes <> nil
 end;//not f_UserTypesLoaded
end;

{$IfNDef DesignTimeLibrary}
procedure TvcmCustomMenuManager.MainCreated(aForm: TvcmEntityForm);
  //override;
  {-}
var
 l_Menu  : TMenuItem;
 l_Index : Integer;
 l_MMI   : TvcmMenuItemsCollectionItem;
begin
 inherited;
 if not (csDesigning in ComponentState) then
 begin
  OverridePopupMenu(aForm);
  if (aForm Is TvcmMainForm) AND not TvcmMainForm(aForm).SDI then
   TForm(aForm).FormStyle := fsMDIForm;
  l_Menu := vcmGetMainMenu(aForm);
  for l_Index := 0 to Pred(MainMenuItems.Count) do
  begin
   l_MMI := TvcmMenuItemsCollectionItem(MainMenuItems.Items[l_Index]);
   TvcmMainMenuAction.MakeForMenu(vcmAddCategoryItem(l_Menu, l_MMI.Caption), l_MMI.OnTest);
  end;//for l_Index
  if (vcm_toEntitiesInMainToolbar in ToolbarOptions) then
   BuildFormToolbars(aForm, [vcm_ooShowInMainToolbar]);
 end;//not (csDesigning in ComponentState)
end;
{$EndIf DesignTimeLibrary}

{$IfDef vcmUseSettings}
procedure TvcmCustomMenuManager.MakeMainToolbarFromSettings(aForm        : TvcmEntityForm);
  {-}
var
 l_Pos : TvcmEffectiveToolBarPos;
begin
 for l_Pos := Low(TvcmEffectiveToolBarPos) to High(TvcmEffectiveToolBarPos) do
 begin
  with f_MainToolbarDefs[l_Pos] do
  begin
   if rVisible AND (rButtons <> nil) then
   begin
    MakeToolbarFromSettings(aForm, rToolbarName, l_Pos,
                            [vcm_ooShowInMainToolbar], rButtons);
    rButtons := nil;
   end;//rButtons <> nil
  end;//with f_MainToolbarDefs[l_Pos]
 end;//for l_Pos
end;
{$EndIf vcmUseSettings}

procedure TvcmCustomMenuManager.RegisterMainInMenu(aForm: TvcmEntityForm);
  //override;
  {* - ������������ �������� ����� � ����, toolbar'��, etc. }
var
 l_Item  : TMenuItem;
 l_Child : TMenuItem;
 l_Index : Integer;
begin
 if not (csDesigning in ComponentState) then
 begin
  LoadGlyphSize;
  LoadGlyphColordepth;
  l_Item := vcmGetMainMenu(aForm);
  vcmMakeEntitiesMenus(l_Item, aForm.GetEntitiesDefIterator, [vcm_ooShowInMainMenu]);
  l_Index := 0;
  while (l_Index < l_Item.Count) do
  begin
   l_Child := l_Item.Items[l_Index];
   if (l_Child.Count <= 0) then
    l_Item.Remove(l_Child)
   else
    Inc(l_Index);
  end;//while (l_Index < l_Item.Count)
  {$IfDef vcmUseSettings}
  MakeMainToolbarFromSettings(aForm);
  {$EndIf vcmUseSettings}
  f_UserTypesLoaded := true;
 end;//not (csDesigning in ComponentState)
end;

procedure TvcmCustomMenuManager.RefocusEntity;
  {-}
//var
 //l_Active : IvcmEntity;
 //l_Form   : IvcmEntityForm;
begin
 // ������ �� ���������� �������� Entity, � ������ ��� ������ �� ������ (��. vcmDispatcher.ActiveEntity)
 // ��� ��� ��� ��������� ������ ���� ���� ���������� ����� � ��-�������� �� ���� �������
 // ����������� ����� ���� ��������
 if (f_FocusControl <> nil) AND (Application.MainForm <> nil) then
 begin
  f_InEnter := False;
  {
  Application.MainForm.DefocusControl(f_FocusControl, true);
  f_FocusControl := nil;
  l_Active := vcmDispatcher.ActiveEntity;
  if (l_Active <> nil) then
   if Succeeded(l_Active.QueryInterface(IvcmEntityForm, l_Form)) then
    try
     with l_Form.VCLForm do begin
      Windows.SetFocus(Handle);
      if (ActiveControl <> nil) then
       Windows.SetFocus(ActiveControl.Handle);
     end;//with l_Form.VCLForm
    finally
     l_Form := nil;
    end;//try..finally
    }
 end;//f_FocusControl <> nil
end;

procedure TvcmCustomMenuManager.RestoreControlText(Sender: TObject);
  {-}
var
 l_Control : TWinControl;
 l_TC      : IafwTextControl;
 l_Action  : IvcmAction;
begin
 l_Control := (Sender As TWinControl);
 if Supports(l_Control.Action, IvcmAction, l_Action) then
 try
  if Supports(l_Control, IafwTextControl, l_TC) then
   l_TC.CCaption := l_Action.Caption
  else
   THackWinControl(l_Control).Text := vcmStr(l_Action.Caption);
 finally
  l_Action := nil;
 end;//try..finally
end;//RestoreControlText

procedure TvcmCustomMenuManager.ChangeEntityText(Sender: TObject);
  {-}
var
 l_Control : TWinControl;
 l_TC      : IafwTextControl;
 l_Action  : IvcmAction;
begin
 l_Control := (Sender As TWinControl);
 if Supports(l_Control.Action, IvcmAction, l_Action) then
 try
  with l_Action do
  begin
   if Supports(l_Control, IafwTextControl, l_TC) then
    SelectedString := l_TC.CCaption
   else
    SelectedString := vcmCStr(THackWinControl(l_Control).Text);
   LockUpdate;
   try
    if (f_FocusControl = l_Control) then
    begin
     UnlockExecute;
     f_IsUnlockExecute := True;
    end;
    l_Control.Action.Execute;
   finally
    UnLockUpdate;
   end;//try..finally
  end;//with TCustomAction(l_Control.Action)
 finally
  l_Action := nil;
 end;//try..finally
end;//ChangeEntityText

procedure TvcmCustomMenuManager.ChangeTyperText(Sender: TObject);
  {-}
var
 l_TickCount : Cardinal;
begin
 l_TickCount := GetTickCount;
// if (f_TickCount = Cardinal(-1)) OR (l_TickCount - f_TickCount >= 300) then
  ChangeEntityText(Sender);
 f_TickCount := l_TickCount;
end;
  
procedure TvcmCustomMenuManager.ControlKeyDown(Sender  : TObject;
                                               var Key : Word;
                                               Shift   : TShiftState);
  {-}
begin
 if (Shift = []) then begin
  if (Key = vk_Escape) then begin
   RestoreControlText(Sender);
   RefocusEntity;
   Key := 0;
   //Key = vk_Escape
  end else if (Key = vk_Return) then begin
   ChangeEntityText(Sender);
   RefocusEntity;
   Key := 0;
  end;//Key = vk_Enter
 end;//Shift = []
end;

procedure TvcmCustomMenuManager.ControlEnter(Sender: TObject);
  {-}
var
 l_Action: IvcmAction;
begin
 if not (Sender Is TvcmComboBox) then
  f_WasDrop := False;
 f_InEnter := true;
 f_FocusControl := (Sender As TWinControl);
 if Supports(f_FocusControl.Action, IvcmAction, l_Action) then
 try
  (* ��� ����� � ������������ ������� �������� OnTest *)
  // TvcmAction(f_FocusControl.Action).Update;
  if not (f_FocusControl is TFakeBox) then

    (* ��� ������������� �������� Execute, ������ ��� �� TControl.Click
       TAction.Execute �� ����������.

       �����������:

         1. ��������� � ������;
         2. �������� �������, ���������� ������� �����;
         3. � TvcmEdit �� toolbar-� ��������� �����;
         4. ������������� ����� � TvcmEdit, ���������� ��� ����������
            TAction.Execute ���������;
         5. �������� Enter, ������� ������������� � ������� � �������������� �
            TvcmEdit.ProcessCommand � ����� ControlKeyDown (� �������
            ������������ UnlockExecute) � ������ �� ����������; *)
         
   l_Action.LockExecute;
     (* ��� ����� ������� ������, ��� ��� ����� � ��������� �� TControl.Click
        ��������� TAction.Execute, � � ���������� ����� ���� �� ��������
        ���������� *)
  f_IsUnlockExecute := False;
    (* ������������� ���� ����� �� ������ �������� ���������� ���� �� ������ ��
       �������� *)
 finally
  l_Action := nil;
 end;//try..finally
end;//ControlEnter

procedure TvcmCustomMenuManager.ControlExit(Sender: TObject);
  {-}
var
 l_TC     : IafwTextControl;
 l_Action : IvcmAction;
begin
 if not f_IsUnlockExecute then
 begin
  f_FocusControl := TWinControl(Sender);
  if Supports(f_FocusControl.Action, IvcmAction, l_Action) then
  try
   // ���� ������������ �������������� � ����� ��� ������� �� Enter, ��
   // ���������� ���������� ��������
   if Supports(f_FocusControl, IafwTextControl, l_TC) then
   begin
    if not vcmSame(l_TC.CCaption, l_Action.Caption) then
     l_TC.CCaption := l_Action.Caption;
   end//Supports(f_FocusControl, IafwTextControl, l_TC)
   else
    with THackWinControl(f_FocusControl) do
     if not vcmSame(Text, l_Action.SelectedString) then
      Text := vcmStr(l_Action.SelectedString);
   l_Action.UnlockExecute;
  finally
   l_Action := nil;
  end;//f_FocusControl.Action Is TvcmAction
 end;//not f_IsUnlockExecute
// RefocusEntity; //�������� ���� �� ����� ��������� WM_SETFOCUS �������
// ��������; RefocusEntity ��������� � ���������� WM_SETFOCUS;
// ��� ��������� � ����, ��� ����� �� �������� �� �������;
end;

procedure TvcmCustomMenuManager.ComboDown(Sender: TObject);
  {-}
begin
 ControlDown(Sender);
end;

procedure TvcmCustomMenuManager.ControlSelect(Sender: TObject);
  {-}
begin
 if f_WasDrop then begin
  f_WasDrop := False;
 ChangeEntityText(Sender);
  RefocusEntity;
 end;//f_WasDrop
end;

procedure TvcmCustomMenuManager.ControlDown(Sender: TObject);
  {-}
begin
 f_WasDrop := true;
 f_InEnter := true;
 f_FocusControl := (Sender As TWinControl);
end;

procedure TvcmCustomMenuManager.DateDown(Sender: TObject);
  {-}
begin
 ControlDown(Sender);
end;

procedure TvcmCustomMenuManager.FormChange(Sender: TObject);
  {-}
begin
 if f_InEnter then
  f_InEnter := False
 else
  RefocusEntity;
end;

function TvcmCustomMenuManager.BuildButton(aForm             : TvcmEntityForm;
                                           aToolBar          : TvcmToolbarDef;
                                           const aModuleDef  : IvcmModuleDef;
                                           const anEntityDef : IvcmEntityDef;
                                           const anOp        : IvcmOperationDef;
                                           const anOptions   : TvcmOperationOptions;
                                           const anIconText  : TvcmIconTextType): TControl;
  //overload;
  {-}
begin
 if (anOp = nil) then
  Result := nil
 else
  Result := BuildButton(aForm, aToolbar, aModuleDef, anEntityDef, anOp,
                        anOp.Options, anOptions, anIconText);
end;

function TvcmCustomMenuManager.BuildAction(const aModuleDef : IvcmModuleDef;
                                           const anOpDef    : IvcmOperationDef): TCustomAction;
  //overload;
  {-}
begin
 Assert(aModuleDef <> nil);
 Assert(anOpDef <> nil);
 Result := TvcmModuleAction.Make(aModuleDef, anOpDef);
end;//BuildAction

function TvcmCustomMenuManager.BuildAction(const anOwner     : TComponent;
                                           const anEntity    : IvcmEntity;
                                           const anEntityDef : IvcmEntityDef;
                                           const anOpDef     : IvcmOperationDef;
                                                 anOptions   : TvcmOperationOptions): TCustomAction;
  //overload;
  {-}
var
 l_Form: IafwMainForm;
begin
 Assert(anEntityDef <> nil);
 Assert(anOpDef <> nil);
 if (vcm_ooShowInChildToolbar in anOptions) or (
     (vcm_ooShowInMainToolbar in anOptions) and 
     (anEntity <> nil) and 
     Supports(anEntity, IafwMainForm, l_Form))
       //or: http://mdp.garant.ru/pages/viewpage.action?pageId=296098743
       // Actions ������� ����� �� ������� �� ������
 then
 begin
  if anEntity <> nil then
   Result := TvcmActiveEntityActionEx.Create(anOwner,
                                             anEntity,
                                             anEntityDef,
                                             anOpDef)
  else
   Result := nil;
 end
 else
  Result := TvcmEntityAction.Make(anEntityDef, anOpDef);
end;//BuildAction

function TvcmCustomMenuManager.BuildButton(aForm             : TvcmEntityForm;
                                           aToolBar          : TvcmToolbarDef;
                                           const aModuleDef  : IvcmModuleDef;
                                           const anEntityDef : IvcmEntityDef;
                                           const anOp        : IvcmOperationDef;
                                           const anOpOptions : TvcmOperationOptions;
                                           const anOptions   : TvcmOperationOptions;
                                           const anIconText  : TvcmIconTextType): TControl;
  //overload;
  {-}

 function lp_Images: TCustomImageList;

   function lp_MakeImages(const aSize: TvcmImageSize): TCustomImageList;
   begin
    Result := nil;
    case aSize of
     isSmall:
      Result := SmallImages;
     isLarge:
      Result := LargeImages;
    end;//case aSize of
   end;//lp_MakeImage

 begin
  Result := nil;
  with aForm.Style.Toolbars do
   case aToolbar.Pos of
    vcm_tbpTop:
     Result := lp_MakeImages(Top.ImageSize);
    vcm_tbpBottom:
     Result := lp_MakeImages(Bottom.ImageSize);
    vcm_tbpLeft:
     Result := lp_MakeImages(Left.ImageSize);
    vcm_tbpRight:
     Result := lp_MakeImages(Right.ImageSize);
   end;//case aToolbar.DockPos of
 end;//lp_Image

var
 l_ButtonName : String;
 l_EntityName : String;
 l_Entity     : IvcmEntity;
begin
 Result := nil;
 if (anOp <> nil) then
 begin
  if (anOp.OperationType in vcm_HiddenOperations) OR
     (anOpOptions * anOptions = []) OR
     ((aForm Is TvcmEntityForm) AND
      (TvcmEntityForm(aForm).UserType in anOp.ExcludeUserTypes)) then
   Result := g_InternalButton
  else
  begin
   // ��� ����������� �� �������� + ��� ��������
   if Assigned(aModuleDef) then
    l_EntityName := aModuleDef.Name
   else
    if Assigned(anEntityDef) then
     l_EntityName := anEntityDef.Name;
   // ���������� ���. ������� ������� "op" � ��������
   l_ButtonName := 'bt_' + l_EntityName + '_' + anOp.Name;
   Result := aToolBar.FindComponent(l_ButtonName) As TControl;
   if (Result = nil) then
   begin
    Case anOp.OperationType of
     vcm_otButton,
     vcm_otButtonCombo,
     vcm_otMenuButtonCombo,
     vcm_otButtonPopup,
     vcm_otTextButton,
     vcm_otCheck,
     vcm_otRadio :
     begin
      Result := TvcmToolButtonDef.Create(aToolBar);
      TvcmToolButtonDef(Result).DropdownCombo := (anOp.OperationType in
       [vcm_otButtonCombo, vcm_otMenuButtonCombo]);
      if (anOp.OperationType in [vcm_otButtonPopup]) then
       TvcmToolButtonDef(Result).DropDownAlways := True;
     end;//vcm_otRadio
     vcm_otCombo,
     vcm_otEditCombo : begin
      Result := TvcmComboBox.Create(aToolbar);
      if (anOp.OperationType = vcm_otEditCombo) then
       TvcmComboBox(Result).Style := csDropDown
      else
       TvcmComboBox(Result).Style := csDropDownList;
      TvcmComboBox(Result).OnEnter := ControlEnter;
      TvcmComboBox(Result).OnExit := ControlExit;
      TvcmComboBox(Result).OnDropDown := ComboDown;
      TvcmComboBox(Result).OnSelect := ControlSelect;
      TvcmComboBox(Result).OnKeyDown := ControlKeyDown;
      {$IfDef vcmUseSettings}
      TvcmEdit(Result).PopupMenu := Self.ToolbarPopup;
      {$EndIf vcmUseSettings}
     end;//vcm_otCombo
     vcm_otEdit,
     vcm_otTyper :
     begin
      Result := TvcmEdit.Create(aToolbar);
      TvcmEdit(Result).OnEnter := ControlEnter;
      TvcmEdit(Result).OnExit := ControlExit;
      TvcmEdit(Result).OnKeyDown := ControlKeyDown;
      TvcmEdit(Result).ComboStyle := ct_cbEdit;
      TvcmEdit(Result).CEmptyHint := anOp.Hint;
      {$IfDef vcmUseSettings}
      TvcmEdit(Result).PopupMenu := Self.ToolbarPopup;
      {$EndIf vcmUseSettings}
      if (anOp.OperationType = vcm_otTyper) then
       TvcmEdit(Result).OnChange := ChangeTyperText;
     end;//vcm_otEdit
     vcm_otDate : begin
      Result := TvcmDateEdit.Create(aToolbar);
      TvcmDateEdit(Result).Width := TvcmDateEdit(Result).Width div 2;
      TvcmDateEdit(Result).OnEnter := ControlEnter;
      TvcmDateEdit(Result).OnExit := ControlExit;
      TvcmDateEdit(Result).OnKeyDown := ControlKeyDown;
      { ElDateTimePicker }
      { TDateTimePicker }
      TvcmDateEdit(Result).OnSelectDate := ControlSelect;
      TvcmDateEdit(Result).OnDropDown := DateDown;
     end;//vcm_otDate
     else begin
      Result := g_InternalButton;
      Exit;
     end;//else
    end;//Case anOpOperationType
    Result.Parent := aToolbar;
    Result.Name := l_ButtonName;
    if Result is TvcmDateEdit then
     with TvcmDateEdit(Result) do
      AutoResize;

    { �������� � ���, ��� ������ ������� ���(���������� Constraint)
      �� ���������� Parent (Handle �� ����������) }
//    Case anOp.OperationType of
//     vcm_otCombo, vcm_otEditCombo :
//       TvcmComboBox(Result).Constraints.MaxWidth:=200;
//    end;

    if (aModuleDef <> nil) then
     Result.Action := BuildAction(aModuleDef, anOp)
    else
     if (anEntityDef <> nil) then
     begin
      Supports(aToolBar.Owner, IvcmEntity, l_Entity);
      try
       Result.Action := BuildAction(Result,
                                    l_Entity,
                                    anEntityDef,
                                    anOp,
                                    anOptions);
      finally
       l_Entity := nil;
      end;//try..finally
     end;//anEntityDef <> nil
    // ���������� ���������� �������� ����������, �.�. � ������ ���������
    // ����� ���� �������� � ����������� ����������. �������� ����� "������":
    // ������..., ������...(���������), ������...(���������� ���������)
    with Result do
     if vcmSame(anOp.Hint, anOp.Caption) then
      Result.Hint := vcmStr(vcmMakeCaption(anEntityDef, anOp));
    Result.ShowHint := true;
    if (Result Is TvcmToolButtonDef) then
    begin
     if (Result.Action <> nil) then
     begin
      with TvcmToolButtonDef(Result) do
      begin
       Images := lp_Images;
       if Images = nil then
        Images := ((Result.Action As TContainedAction).Actionlist As TCustomActionList).Images;
      end;//with TvcmToolButtonDef(Result) do
     end;//if (Result.Action <> nil) then
     if ((anOp.OperationType = vcm_otTextButton) and (anIconText = vcm_itDefault)) or
        (anIconText = vcm_itIconText) then
     begin
      TvcmToolButtonDef(Result).DisplayMode := dmBoth;
      TvcmToolButtonDef(Result).WordWrap := true;
     end//anOp.OperationType = vcm_otTextButton
     else
     if (anOp.ImageIndex >= 0) then
     // ������ ��� dmGlyph, �� ��-�� http://mdp.garant.ru/pages/viewpage.action?pageId=287214455
     // �������� �������� ����� ��� dmGlyphAndFakeText, ����� � ������ �������� �� ������� dmGlyph
      TvcmToolButtonDef(Result).DisplayMode := dmGlyphAndFakeText
     else
     begin
      TvcmToolButtonDef(Result).DisplayMode := dmTextOnly;
      TvcmToolButtonDef(Result).WordWrap := true;
     end;//anOp.ImageIndex >= 0
     TvcmToolButtonDef(Result).AutoSize := true;
     TvcmToolButtonDef(Result).Opaque := false;
    end;//Result Is TvcmToolButtonDef
    aToolBar.Width := aToolBar.Width + Result.Width;
   end;//Result = nil
  end;//anOp.OperationType in vcm_HiddenOperations..
 end;//anOp <> nil
end;

function TvcmCustomMenuManager.BuildSeparator(aToolBar: TvcmToolbarDef): TControl;
  {-}
begin
 if aToolbar.CanAddSeparator then
 begin
  Result := TvcmSeparatorDef.Create(aToolbar);
  with Result do
   Parent := aToolbar;
 end//aToolbar.CanAddSeparator
 else
  Result := nil;
end;

function TvcmCustomMenuManager.GetPopupMenu: TPopupMenu;
  //override;
  {-}
begin
 Result := f_Popup;
end;

function  TvcmCustomMenuManager.UserTypeByCaption(const aCaption: AnsiString;
                                      aFormClass: TClass = nil): IvcmUserTypeDef;
var
 l_Index       : Integer;
 l_UserType    : IvcmUserTypeDef;
 l_UTCaption : IvcmCString;
begin
 Result := nil;
 if (f_UserTypes <> nil) then
  with f_UserTypes do
   for l_Index := Lo to Hi do
   begin
    l_UserType := IvcmUserTypeDef(Items[l_Index]);
    l_UTCaption := vcmCStr(l_UserType.SettingsCaption);
    if vcmSame(l_UTCaption, aCaption, true) AND
    // http://mdp.garant.ru/pages/viewpage.action?pageId=471774401
     ((l_UserType.FormClass = aFormClass) OR (aFormClass = nil)) then
     if TvcmUserTypeInfo.AllowCustomizeToolbars(l_UserType) then
     begin
      Result := l_UserType;
      break;
     end;//ANSISameText
   end;//for l_Index
end;

procedure TvcmCustomMenuManager.ToolbarsGetSiteInfo(Sender      : TObject;
                                                    DockClient  : TCustomToolWindow97;
                                                    var CanDock : Boolean);
  {-}
begin
 if not (DockClient Is TvcmToolbar) OR not (Sender Is TvcmDockDef) then
  CanDock := False
 else
  if (TvcmDockDef(Sender).Parent <> TvcmToolbar(DockClient).DockDef.Parent) then
   CanDock := False;
end;

procedure TvcmCustomMenuManager.LockDocks;
begin
 inc(f_LockCounter);
end;

procedure TvcmCustomMenuManager.UnlockDocks;
var
 l_Index: Integer;
 l_Dock: TvcmDockDef;
 l_DockList: TvcmObjectList;
begin
 Dec(f_LockCounter);
 Assert(f_LockCounter >= 0);
 if TvcmToolbarDockListManager.Exists
  then l_DockList := TvcmToolbarDockListManager.Instance.DockList
  else l_DockList := nil;
 if Assigned(l_DockList) and
    (l_DockList.Count > 0) and
    (f_LockCounter = 0) and
    (f_UnlockInProgress = 0) then
 begin
  Inc(f_UnlockInProgress);
  try
   for l_Index := l_DockList.Count - 1 downto 0 do
   begin
    l_Dock := TvcmDockDef(l_DockList[l_Index]);
    l_Dock.EndUpdate;
    l_Dock.SmartAlign := False;
   end;//for l_Index
   l_DockList.Clear;
  finally
   Dec(f_UnlockInProgress);
  end;
  if (f_UnlockInProgress = 0) and Assigned(f_LockList) then
  begin
   for l_Index := f_LockList.Count - 1 downto 0 do
    f_LockList[l_Index].MenuUnlockedFixUp;
   f_LockList.Clear; 
  end;
 end;
end;

procedure TvcmCustomMenuManager.AddControlForUnlockPostBuild(const aCOntrol: IafwMenuUnlockedPostBuild);
begin
 if f_LockList = nil then
  f_LockList := TIafwMenuUnlockedPostBuildPtrList.MakeSorted;
 f_LockList.Add(aControl);
end;

procedure TvcmCustomMenuManager.ListenerControlDestroying(const aCOntrol: IafwMenuUnlockedPostBuild);
begin
 if Assigned(f_LockList) then
  f_LockList.Remove(aCOntrol);
end;

function TvcmCustomMenuManager.ObjectByType(anObject           : TvcmObject;
                                            const anObjectName : String;
                                            const aSubName     : String = '';
                                            ForceCreate        : Boolean = False): TvcmBaseCollectionItem;
  //override;
  {-}
begin
 Result := nil;
 Case anObject of
  vcm_objMainMenuItem :
   if (MainMenuItems <> nil) then
    Result := MainMenuItems.FindItemByName(anObjectName);
  else
   Result := inherited ObjectByType(anObject, anObjectName, aSubName, ForceCreate);
 end;//Case anObject
end;

const
 cTBName : array [TvcmEffectiveToolBarPos] of string =
  ('Top', 'Bottom', 'Left', 'Right');

function TvcmCustomMenuManager.ToolbarButtonSize(aToolbarButton   : TCustomToolbarButton97;
                                                 var aSize        : Integer) : Boolean;
// overload;
begin
 Result := False;
 with aToolbarButton do
 begin
  if Assigned(Images) then
   if Images.Height > 16 then
   begin
    aSize := Max(aSize, Height);
    Result := aToolbarButton.DisplayMode = dmBoth;
   end;
 end;
end;

procedure TvcmCustomMenuManager.ToolbarButtonSize(aToolbarButton : TCustomToolbarButton97);
// overload;
var
 l_Size : Integer;
begin
 l_Size := f_MaxControlToolbarSize;
 ToolbarButtonSize(aToolbarButton, l_Size);
 aToolbarButton.Height := l_Size;
 aToolbarButton.Width := Max(l_Size, aToolbarButton.Width);
end;

procedure TvcmCustomMenuManager.ToolbarSize(aToolbar  : TCustomToolbar97;
                                            var aSize : Integer);
var
 l_Index : Integer;
begin
 aSize := f_MaxControlToolbarSize;
 for l_Index := 0 to Pred(aToolbar.ControlCount) do
  if aToolbar.Controls[l_Index] is TCustomToolbarButton97 then
   (* �������, ������������ ������ ������� *)
   if ToolbarButtonSize(TCustomToolbarButton97(aToolbar.Controls[l_Index]), aSize) then
    Break;
end;

procedure TvcmCustomMenuManager.InitToolbarMetrics(const aForm: TCustomForm);
var
 l_Toolbar   : TvcmToolbar;
 l_Dock      : TvcmDockDef;
 l_Button    : TToolbarButton97;
 l_Date      : TvcmDateEdit;
 l_Edit      : TvcmEdit;
begin
 if (f_MaxControlToolbarSize = 0) and Assigned(SmallImages) and
  (SmallImages.Count > 0) then
 begin
  l_Dock := TvcmDockDef.Create(aForm);
  try
   l_Dock.Parent := aForm;
   l_Toolbar := TvcmToolbar.Create(l_Dock, l_Dock);
   try
    l_Toolbar.Parent := l_Dock;
    l_Toolbar.BevelEdges := [beBottom, beLeft, beRight, beTop];
    // TToolbarButton97:
    l_Button := TToolbarButton97.Create(l_Toolbar);
    with l_Button do
    begin
     Parent := l_Toolbar;
     Images := SmallImages;
     ImageIndex := 0;
    end;//with l_Button do
    // TvcmEdit:
    l_Date := TvcmDateEdit.Create(l_Toolbar);
    l_Date.Parent := l_Toolbar;
    // TvcmDateEdit:
    l_Edit := TvcmEdit.Create(l_Toolbar);
    l_Edit.Parent := l_Toolbar;
    // ��������:
    l_Dock.ArrangeToolbars(False);
    // f_MaxControlToolbarSize:
    f_ButtonHeight := l_Button.Height;
    f_MaxControlToolbarSize := Max(l_Button.Height, f_MaxControlToolbarSize);
    f_MaxControlToolbarSize := Max(l_Date.Height,   f_MaxControlToolbarSize);
    f_MaxControlToolbarSize := Max(l_Edit.Height,   f_MaxControlToolbarSize);
    // f_SmallToolbarSize:
    f_SmallToolbarSize := l_Toolbar.Height;
    // f_DiffSize:
    f_DiffSize := f_SmallToolbarSize - f_MaxControlToolbarSize;
    // ��������� ����������� ������� toolbar-�:
    TB97Tlbr.g_ToolbarSize := ToolbarSize;
    TB97Ctls.g_tbToolbarButtonSize := ToolbarButtonSize;
   finally//l_Toolbar := TvcmToolbar.Create(l_Panel, nil);
    vcmFree(l_Toolbar);
   end;{try..finally}
  finally//l_Dock := TvcmDockDef.Create(l_Panel);
   vcmFree(l_Dock);
  end;{try..finally}
 end;//if (f_MaxControlToolbarSize = 0)
 if aForm is TvcmMainForm then
  TvcmMainForm(aForm).SmallToolbarSize(f_SmallToolbarSize);
end;//InitToolbarMetrics

function TvcmCustomMenuManager.GetDockParent(aForm : TCustomForm) : TWinControl;

 function lp_FindDockContainer: TvcmDockContainer;
 var
  l_Component: TComponent;
 begin
  l_Component := aForm.FindComponent(c_vcmDockContainerName);
  if l_Component <> nil then
  begin
   Assert(l_Component is TvcmDockContainer);
   Result := TvcmDockContainer(l_Component);
  end//if Assigned(l_Component) then
  else
   Result := nil;
 end;//lp_FindDockContainer

 {$IfDef vcmUseMainToolbarPanel}
 function lp_MakeMainFormDockParent: TWinControl;
 var
  l_Index       : Integer;
  l_FormControl : TWinControl;
 begin
  Result := lp_FindDockContainer;
  if Result <> nil then
   Exit;
  for l_Index := 0 to Pred(aForm.ControlCount) do
  begin
   if aForm.Controls[l_Index] is TWinControl then
   begin
    l_FormControl := TWinControl(aForm.Controls[l_Index]);
    if l_FormControl.Align = alClient then
    begin
     Result := TvcmDockContainer.Create(aForm);
     Result.Parent := aForm;
     l_FormControl.Parent := Result;
     Result.Align := alClient;
     Break;
    end;//if (l_Component is TWinControl)
   end;//if aForm.Controls[l_Index] is TWinControl then
  end;//for l_Index := 0 to Pred(aForm.ComponentCount) do
 end;//lp_MakeMainFormDockParent
 {$EndIf vcmUseMainToolbarPanel}

 function lp_HasAlwaysOnTopControl: Boolean;
 var
  l_Index     : Integer;
 begin
  Result := True;
  for l_Index := Pred(aForm.ControlCount) downto 0 do
   if Supports(aForm.Controls[l_Index], IafwAlwaysOnTopControl) then
    Exit;
  Result := False;
 end;

 function lp_MakeDockContainer: TWinControl;
 var
  l_Index     : Integer;
  l_Control   : TControl;
 begin
  Result := nil;
  if (aForm is TvcmEntityForm) and lp_HasAlwaysOnTopControl then
  begin
   Result := lp_FindDockContainer;
   if Result = nil then
   begin
    Result := TvcmDockContainer.Create(aForm);
    Result.Parent := aForm;
    for l_Index := Pred(aForm.ControlCount) downto 0 do
    begin
     l_Control := aForm.Controls[l_Index];
     if (l_Control <> Result) and not Supports(l_Control, IafwAlwaysOnTopControl) then
      l_Control.Parent := Result;
    end;//for l_Index :=
    Result.Align := alClient;
   end;//if Result = nil then
  end;//if (aForm is TvcmEntityForm) and
 end;//lp_MakeDockContainer

begin
 {$IfDef vcmUseMainToolbarPanel}
  if aForm is TvcmMainForm then
  begin
   Result := lp_MakeMainFormDockParent;
   // ���� ��������� ��� ����� �� ��� ������, �� �������� ������� ������
   // ��������� � �������� ��������� ��� �������������:
   if Result = nil then
    Result := lp_MakeDockContainer;
  end;//if aForm is TvcmMainForm then
 {$Else vcmUseMainToolbarPanel}
  Result := lp_MakeDockContainer;
 {$EndIf vcmUseMainToolbarPanel}
 if Result = nil then
  Result := aForm;
end;//GetDockParent

{$IfNDef DesignTimeLibrary}
function TvcmCustomMenuManager.BuildToolbar(aForm          : TvcmEntityForm;
                                            const aName    : String;
                                            const aCaption : IvcmCString;
                                            aPos           : TvcmEffectiveToolBarPos): TvcmToolbarDef;
  //overload;
  {-}

var
 l_lnkMaximized : IvcmFormHandler;
 l_lnkOpen      : IvcmFormHandler;
 l_lnkClose     : IvcmFormHandler;

 function lp_GetParentForDock(aForm: TvcmEntityForm): TvcmEntityForm;

  function lp_DockButton(var aFormHandler : IvcmFormHandler;
                         const aForm      : TvcmEntityForm;
                         const aHandler   : TNotifyEvent;
                         const aHint      : Il3CString): Boolean;
  begin
   if Assigned(aHandler) then
   begin
    aFormHandler := TvcmFormHandler.Make(aForm, aHandler, aHint);
    Result := True;
   end//Assigned(aHandler)
   else
    Result := False;
  end;//lp_DockButton

 begin//lp_GetParentForDock
  Result := aForm.DefineDockContainer(aPos);
  // ��������� ����������� ������ dock-� �����:
  if not (aForm.ZoneType = vcm_ztForToolbarsInfo) then
  begin
   with TvcmEntityForm(Result) do
   begin
    // Close:
    if (CanClose = vcm_ccEnable) then
    begin
     lp_DockButton(l_lnkClose, Result, DefaultQueryClose,
      str_vcmCloseHint.AsCStr);
    end;//CanClose = vcm_ccEnable
    // Maximized:
    if not lp_DockButton(l_lnkMaximized, Result, OnQueryMaximized,
      str_vcmMaximizedHint.AsCStr) and
      (TvcmEntityForm(Result) <> aForm) then
     lp_DockButton(l_lnkMaximized, aForm, aForm.OnQueryMaximized,
      str_vcmMaximizedHint.AsCStr);
    // Open:
    if not lp_DockButton(l_lnkOpen, Result, OnQueryOpen,
     str_vcmOpenHint.AsCStr) and
      (TvcmEntityForm(Result) <> aForm) then
     lp_DockButton(l_lnkOpen, aForm, aForm.OnQueryOpen,
      str_vcmOpenHint.AsCStr);
   end;//with TvcmEntityForm(Result) do
  end;//if not (aForm.ZoneType = vcm_ztForToolbarsInfo) then
 end;//lp_GetParentForDock

 function GetFormWeight(aForm : TvcmEntityForm): Integer;
 begin//GetFormWeight
  if not (aForm is TvcmMainForm) then
   Result := 1
  else
   Result := 0;
 end;//GetFormWeight

 function lp_FindHandlersPublisher(const aControl: TWinControl): IvcmFormHandlersPublisher;
 var
  l_Parent: TWinControl;
 begin
  Result := nil;
  l_Parent := aControl;
  while (l_Parent <> nil) and
    not Supports(l_Parent, IvcmFormHandlersPublisher, Result) do
   l_Parent := l_Parent.Parent;
 end;//lp_FindHandlersPublisher

 function lp_FindHandlerWatcher(const aControl: TWinControl): IvcmCloseFormHandlerWatcher;
 var
  l_Parent: TWinControl;
 begin
  Result := nil;
  l_Parent := aControl;
  while (l_Parent <> nil) and
    not Supports(l_Parent, IvcmCloseFormHandlerWatcher, Result) do
   l_Parent := l_Parent.Parent;
 end;//lp_FindHandlerWatcher

var
 l_DockName          : String;
 l_Dock              : TvcmDockDef;
 l_NewDock           : TvcmDockDef;
 l_ParentForm        : TCustomForm;
 l_Index             : TvcmEffectiveToolbarPos;
 l_DockParent        : TWinControl;
 l_HandlersPublisher : IvcmFormHandlersPublisher;
 l_HandlerWatcher    : IvcmCloseFormHandlerWatcher;
begin
 l_lnkMaximized := nil;
 l_lnkOpen := nil;
 l_lnkClose := nil;
 l_ParentForm := lp_GetParentForDock(aForm);
 Result := aForm.FindComponent(aName) As TvcmToolbarDef;
 if (Result = nil) then
 begin
  l_Dock := nil;
  { ������� �������� ��� Dock }
  l_DockParent := GetDockParent(l_ParentForm);
  for l_Index := Low(TvcmEffectiveToolbarPos) to High(TvcmEffectiveToolbarPos) do
  begin
   if true{(l_Index in l_Poses)} then
   begin
    l_DockName := cTBName[l_Index] + 'Dock';
    l_NewDock := l_DockParent.FindComponent(l_DockName) As TvcmDockDef;
    if (l_NewDock = nil) then
    begin
     l_NewDock := TvcmDockDef.Make(l_DockParent, l_DockName, l_Index);
     l_NewDock.SetFasten(GetFastenMode);
       {$IfDef vcmUseSettings}
      //{$IfDef vcmCustomizeDock} ���? �����?
       l_NewDock.PopupMenu := Self.ToolbarPopup;
      //{$EndIf vcmCustomizeDock}
       {$EndIf vcmUseSettings}
        //l_NewDock.OnRequestDock := ToolbarsGetSiteInfo;
     aForm.AddDock(l_NewDock);
    end;//l_NewDock = nil
    if (aPos = l_Index) then
     l_Dock := l_NewDock;
   end;//l_Index in l_Poses
  end;//for l_Index

  if (l_Dock <> nil) then
  begin
   // ��������� ����������� ������ ��� Dock-�, � ������ ���� �� ������������
   // ���������� ������:
   if (l_Dock.Align = alTop) then
   begin
    l_HandlersPublisher := lp_FindHandlersPublisher(l_DockParent);
    if (l_HandlersPublisher = nil) then
     l_Dock.SetHandlers(l_lnkMaximized, l_lnkOpen, l_lnkClose)
    else
    if (l_lnkClose <> nil) then
    begin
     Assert((l_lnkMaximized = nil) and (l_lnkOpen = nil));
     l_HandlersPublisher.Publish(l_lnkClose);
    end;//l_lnkClose <> nil
    if Assigned(l_lnkClose) then
    begin
     l_HandlerWatcher := lp_FindHandlerWatcher(l_DockParent);
     if Assigned(l_HandlerWatcher) then
      l_HandlerWatcher.SetWatch(l_lnkClose);
    end;//Assigned(l_lnkClose)
   end;//if (l_Dock.Align = alTop) then
   l_Dock.BeginUpdate;
   try
    Result := TvcmToolbar.Create(aForm, l_Dock);
    with Result do
    begin
     if not (aForm.ZoneType = vcm_ztForToolbarsInfo) then
      Parent := l_Dock; // ����� ��� ���-�� �� ����� ������ ��� "�����������" ��������?
     Name := aName;
     Caption := vcmStr(aCaption);
      Weight := GetFormWeight(aForm);
      CloseMode := cmBackOnToolbar;
      DockGroup := Integer(l_DockParent);
      Collapsible := true;
      HideExtraSeparators := true;
      NearestParent := true;
      //{$IfNDef vcmCustomizeDock}
       {$IfDef vcmUseSettings}
       PopupMenu := Self.ToolbarPopup;
       {$EndIf vcmUseSettings}
      //{$EndIf  vcmCustomizeDock}
      //AutoSize := true;
     DragKind := dkDock;
     DragMode := dmManual;
    end;//with Result
   finally
    l_Dock.EndUpdate;
   end;//try..finally
  end;//l_Dock <> nil
 end;//l_Toolbar = nil
end;

function TvcmCustomMenuManager.BuildToolbar(aForm : TvcmEntityForm;
                                            aPos  : TvcmEffectiveToolBarPos): TvcmToolbarDef;
  //overload;
  {-}
var
 l_ToolbarName : String;
begin
 Assert(OneToolbarPerForm);
 Assert(aForm.CurUserTypeDef <> nil);
 if true{(aPos in aForm.Toolbars)} then
 begin
  l_ToolbarName := GetOneToolbarPerFormName(aForm, aPos, 0);
  Result := BuildToolbar(aForm, l_ToolbarName, aForm.CurUserTypeDef.Caption, aPos) ;
 end//aPos in aForm.Toolbars
 else
  Result := nil;
end;
{$EndIf DesignTimeLibrary}
  
function TvcmCustomMenuManager.GetOneToolbarPerFormName(aForm   : TvcmEntityForm;
                                                        aPos    : TvcmEffectiveToolBarPos;
                                                        anIndex : Integer): String;
  {-}
begin
 Result := 'tb' + aForm.FormID.rName + cTBName[aPos];
 if (anIndex > 0) then
  Result := Result + IntToStr(anIndex);
end;

procedure TvcmCustomMenuManager.ReloadToolbars(const aForm  : IvcmEntityForm);
  //override;
  {-}
{$IfDef vcmUseSettings}
var
 l_Form  : TvcmEntityForm;
 l_Index : Integer;
{$EndIf vcmUseSettings}
{$IfDef vcmNeedL3}
var
 l_List  : TvcmLongintList;
{$EndIf vcmNeedL3}
begin
 {$IfDef vcmUseSettings}
 LockDocks;
 try
  LoadGlyphSize;
  LoadGlyphColordepth;
  {$IfDef vcmNeedL3}
  l_Form := aForm.VCLWinControl As TvcmEntityForm;
  l_List := TvcmLongintList.Create;
  try
   with l_Form do
   begin
    for l_Index := 0 to Pred(ComponentCount) do
     if (Components[l_Index] Is TvcmToolbarDef) then
     begin
      TvcmToolbarDef(Components[l_Index]).Hide;
      l_List.Add(longint(Components[l_Index]));
     end;
    for l_Index := 0 to l_List.Count - 1 do
    begin
     RemoveComponent(TvcmToolbarDef(l_List[l_Index]));
     TvcmToolbarDef(l_List[l_Index]).Parent := nil;
     if (Application.MainForm <> nil) and Application.MainForm.HandleAllocated then
      PostMessage(Application.MainForm.Handle, vcm_msgFreeComponent, 0, LParam(l_List[l_Index]))
     else
      TvcmToolbarDef(l_List[l_Index]).Free;
    end;
   end;
  finally
   vcmFree(l_List);
  end;
  {$EndIf vcmNeedL3}
  if (l_Form Is TvcmMainForm) then
  begin
   BuildFormToolbars(l_Form, [vcm_ooShowInMainToolbar]);
   with vcmDispatcher do
    for l_Index := 0 to Pred(ModulesCount) do
     BuildMainToolbars(l_Form, Module[l_Index].ModuleDef);
   MakeMainToolbarFromSettings(l_Form);
  end
  else
   BuildFormToolbars(l_Form, [vcm_ooShowInChildToolbar]);
  if aForm.ZoneType <> vcm_ztForToolbarsInfo then
  begin
   PostBuild(l_Form, true);
  end;
 finally
  UnlockDocks;
 end;
 {$EndIf vcmUseSettings}
end;

function TvcmCustomMenuManager.GetToolbarName(aForm      : TvcmEntityForm;
                                              const aDef : IvcmOperationalIdentifiedUserFriendlyControl;
                                              anIndex    : Integer): String;
  {-}
begin//GetToolbarName
 if OneToolbarPerForm then
  Result := GetOneToolbarPerFormName(aForm, aDef.ToolbarPos, anIndex)
 else
 begin
  Result := aDef.Name;
  Result := 'tb' + Result + cTBName[aDef.ToolBarPos];
  if (anIndex > 0) then
   Result := Result + IntToStr(anIndex);
 end;//OneToolbarPerForm
end;//GetToolbarName

{$IfNDef DesignTimeLibrary}
function TvcmCustomMenuManager.BuildToolbar(aForm      : TvcmEntityForm;
                                            const aDef : IvcmOperationalIdentifiedUserFriendlyControl;
                                            anIndex    : Integer): TvcmToolbarDef;
  {-}
var
 l_ToolbarName : String;
 l_Pos         : TvcmEffectiveToolBarPos;
 l_Caption     : IvcmCString;
begin
 if (aDef = nil) then
  Result := nil
 else
 begin
  l_Pos := aDef.ToolbarPos;
  l_ToolbarName := GetToolbarName(aForm, aDef, anIndex);
  if OneToolbarPerForm then
  begin
   if (aForm.UserTypes <> nil) AND
      (aForm.UserTypes.Count > 0) then
    l_Caption := vcmCStr(aForm.CurUserType.Caption)
   else
    l_Caption := aForm.CCaption;
  end//OneToolbarPerForm
  else
   l_Caption := aDef.Caption;
  Result := BuildToolbar(aForm, l_ToolbarName, l_Caption, l_Pos);
 end;//aDef = nil
end;
{$EndIf DesignTimeLibrary}

{$IfNDef DesignTimeLibrary}
procedure TvcmCustomMenuManager.BuildMainToolbars(aForm            : TvcmEntityForm;
                                                  const aModuleDef : IvcmModuleDef);
  {* - ������� Toolbar'� �������� �����. }
var
 l_ExcludePoses : TvcmEffectiveToolBarPoses;
{$IfDef vcmUseSettings}
 l_Len          : Integer;
 l_Pos          : TvcmEffectiveToolBarPos;
 l_BtDef        : TvcmButtonDef;
{$EndIf vcmUseSettings}
begin
 l_ExcludePoses := [];
 {$IfDef vcmUseSettings}
 if OneToolbarPerForm AND (vcm_toModulesInMainToolbar in ToolbarOptions)then
 begin
  for l_Pos := Low(TvcmEffectiveToolBarPos) to High(TvcmEffectiveToolBarPos) do
  begin
   with f_MainToolbarDefs[l_Pos] do
   begin
    if rVisibleLoaded then
    begin
     Include(l_ExcludePoses, l_Pos);
     if rVisible then
     begin
      l_Len := Length(rButtons);
      if (l_Len = 0) then
       l_BtDef.rPos := 0
      else
       l_BtDef.rPos := rButtons[Pred(l_Len)].rPos;
      l_BtDef.rEn := aModuleDef;
      LoadButtonsFromSettings(rUserType, rToolbarName, True, l_BtDef, rButtons);
     end;//rVisible
    end;//rVisibleLoaded
   end;//with f_MainToolbarDefs[l_Pos]
  end;//for l_Pos
 end;//OneToolbarPerForm
 {$EndIf vcmUseSettings}
  if (vcm_toModulesInMainToolbar in ToolbarOptions) then
   MakeToolbar(aForm, aModuleDef, [vcm_ooShowInMainToolbar], l_ExcludePoses);
  if (vcm_toEntitiesInMainToolbar in ToolbarOptions) then
   BuildEntitiesToolbars(aForm, aModuleDef.EntitiesDefIterator, [vcm_ooShowInMainToolbar], l_ExcludePoses);
end;
{$EndIf DesignTimeLibrary}

{$IfNDef DesignTimeLibrary}
function TvcmCustomMenuManager.MakeToolbar(aForm           : TvcmEntityForm;
                                           const aHolder   : IvcmOperationalIdentifiedUserFriendlyControl;
                                           const anOptions : TvcmOperationOptions;
                                           anExcludePoses  : TvcmEffectiveToolBarPoses): Boolean;
  {-}
var
 l_Toolbar    : TvcmToolbarDef;
 l_Operations : IvcmOperationsDefIterator;
begin
 LockDocks;
 try
  if (aHolder = nil) then
   Result := False
  else
  begin
   //Assert(aForm.CurUserType <> nil);
   // - http://mdp.garant.ru/pages/viewpage.action?pageId=378550015
   if (aForm.CurUserType <> nil) AND
      not aForm.CurUserType.CanHaveToolbars then
   begin
    Result := false;
    Exit;
   end;//not aForm.CurUserType.VisibleToUser
   Result := true;
   // - ������ ���-�� ����� ����� "������������" ���� �� Toolbar'�� �����
   l_Operations := aHolder.OperationsDefIterator;
   if (l_Operations <> nil) then begin
    l_Toolbar := BuildToolbar(aForm, aHolder, 0);
    if GetOpLock and (l_Toolbar <> nil) and (l_Toolbar.DockedTo <> nil) then
     begin
     if TvcmToolbarDockListManager.Instance.DockList.IndexOf(l_Toolbar.DockedTo) < 0 then
     begin
      TvcmToolbarDockListManager.Instance.DockList.Add(l_Toolbar.DockedTo);
      l_Toolbar.DockedTo.BeginUpdate;
     end;
     l_Toolbar.DockedTo.SmartAlign := true;
    end;
    if (l_Toolbar <> nil) AND not (l_Toolbar.Pos in anExcludePoses) then
     FillToolbar(aForm, l_Toolbar, aHolder, l_Operations, anOptions);
   end;//l_Operations <> nil
  end;//aHolder = nil
 finally
  UnlockDocks;
 end;//try..finally
end;
{$EndIf DesignTimeLibrary}

function TvcmCustomMenuManager.BuildButton(aForm             : TvcmEntityForm;
                                           aToolBar          : TvcmToolbarDef;
                                           const aHolder     : IvcmOperationalIdentifiedUserFriendlyControl;
                                           const anOp        : IvcmOperationDef;
                                           const anOpOptions : TvcmOperationOptions;
                                           const anOptions   : TvcmOperationOptions;
                                           const anIconText  : TvcmIconTextType): TControl;
  //overload;
  {-}
var
 l_Module : IvcmModuleDef;
 l_Entity : IvcmEntityDef;
begin
 Supports(aHolder, IvcmModuleDef, l_Module);
 Supports(aHolder, IvcmEntityDef, l_Entity);
 Result := BuildButton(aForm, aToolbar, l_Module, l_Entity, anOp, anOpOptions, anOptions, anIconText)
end;

function TvcmCustomMenuManager.BuildButton(aForm             : TvcmEntityForm;
                                           aToolBar          : TvcmToolbarDef;
                                           const aHolder     : IvcmOperationalIdentifiedUserFriendlyControl;
                                           const anOp        : IvcmOperationDef;
                                           const anOptions   : TvcmOperationOptions;
                                           const anIconText  : TvcmIconTextType): TControl;
  //overload;
  {-}
begin
 if (anOp = nil) then
  Result := nil
 else
  Result := BuildButton(aForm, aToolbar, aHolder, anOp, anOp.Options, anOptions, anIconText)
end;

procedure TvcmCustomMenuManager.CheckToolbar(var  aToolBar: TvcmToolbarDef);
  {-}
begin
 with aToolbar do
  vcmDeleteLastIfSeparator;
 // - ������� ������ �����������
 if (aToolBar.ButtonCount <= 0) then
  vcmFree(aToolBar);
end;

//function TvcmCustomMenuManager.MergedToMainForm(aForm: TvcmEntityForm): Boolean;
  //override;
  {-}
//begin
// Result := GetParentForDock(aForm as TvcmEntityForm) is TvcmMainForm;
//end;//MergedToMainForm

procedure TvcmCustomMenuManager.PostBuild(aForm        : TvcmEntityForm;
                                          aFollowDocks : Boolean);
  //override;
  {-}
{$IfDef vcmUseSettings}
var
 l_Index, l_BarIndex : Integer;
 l_Toolbar           : TvcmToolbarDef;
 l_Point             : TPoint;
 //l_TopDock           : TvcmDockDef;
 //l_Form              : TCustomForm;
 l_FollowToolbar     : TvcmToolbarDef;
 l_List              : TList;

 function GetDockName(aDockPos: Cardinal): string;
 begin
  Result:='';
  case TDockPosition(aDockPos) of
   dpTop: Result := cTBName[vcm_tbpTop];
   dpBottom: Result := cTBName[vcm_tbpBottom];
   dpLeft: Result := cTBName[vcm_tbpLeft];
   dpRight: Result := cTBName[vcm_tbpRight];
  end;
  Result := Result+'Dock';
 end;
 {$EndIf vcmUseSettings}

 {$IfDef vcmUseSettings}
 function LoadAndPlaceToolbar(const aUTName  : String;
                              const aToolbar : TvcmToolbarDef): Boolean;
 var
  l_ToolbarPos : TvcmToolbarPositions;
  l_Dock       : TvcmDockDef;
  l_DockParent : TWinControl;
 begin
  Result := vcmLoadToolbarPos(aUTName, aToolbar.Name, l_ToolbarPos);
  l_DockParent := GetDockParent(aForm.DefineDockContainer(aToolbar.Pos));
  if Result then
  begin
   l_Dock := l_DockParent.FindComponent(GetDockName(l_ToolbarPos.rDock)) as TvcmDockDef;
   if (l_Dock <> nil) then
   begin
    if l_ToolbarPos.rFloating {and not GetFastenMode} then
    begin
     l_Point.X := l_ToolbarPos.rFloatX;
     l_Point.Y := l_ToolbarPos.rFloatY;
     aToolbar.FloatingPosition := l_Point;
     aToolbar.DockPos := l_ToolbarPos.rPos;
     aToolbar.DockRow := l_ToolbarPos.rRow;
     aToolbar.FloatingWidth := l_ToolbarPos.rFloatingWidth;
     aToolbar.Parent := l_Dock;
     aToolbar.DockedTo := nil;
    end//if l_ToolbarPos.rFloating
    else
    begin
     l_Dock.BeginUpdate;
     l_Dock.SmartAlign := False;
     aToolbar.Parent := l_Dock;
     l_Point.X := l_ToolbarPos.rFloatX;
     l_Point.Y := l_ToolbarPos.rFloatY;
     aToolbar.FloatingPosition := l_Point;
     aToolbar.DockPos := l_ToolbarPos.rPos;
     aToolbar.DockRow := l_ToolbarPos.rRow;
     aToolbar.FloatingWidth := l_ToolbarPos.rFloatingWidth;
     l_Dock.EndUpdate;
    end;//if l_ToolbarPos.rFloating
   end;//if (l_Dock <> nil) then
  end;//if Result then
 end;//LoadAndPlaceToolbar
 {$EndIf vcmUseSettings}

begin
 inherited;
 {$IfDef vcmUseSettings} 
 LockDocks;
 try
  if (aForm.UserTypes.Count > 0) then
  begin
   l_Index := 0;
   while l_Index < aForm.ComponentCount do
   begin
    if aForm.Components[l_Index] is TvcmToolbarDef then
    begin
     l_Toolbar := aForm.Components[l_Index] as TvcmToolbarDef;
     if GetOpLock and (l_Toolbar.DockedTo <> nil) then
      if TvcmToolbarDockListManager.Instance.DockList.IndexOf(l_Toolbar.DockedTo) < 0 then
      begin
       TvcmToolbarDockListManager.Instance.DockList.Add(l_Toolbar.DockedTo);
       l_Toolbar.DockedTo.BeginUpdate;
      end;
     if aFollowDocks and (l_Toolbar.DockedTo <> nil) then
     begin
      //for l_BarIndex := 0 to l_Toolbar.DockedTo.ToolbarCount-1 do
      //������, ��� ������������� BeginUpdate, DockVisibleList(�, ��� ���������, TOolbarCount)
      //�� �����������.

      // ������ ����� ��������� ������, �.�. � Conotols ������ � ������, �������
      // ��������������� ������ � �������� �� ������ ��� � ��������� ConotolCount
      // ����� ���� ����� ��� �� 1...
      l_List := TList.Create;
      try
       for l_BarIndex := l_Toolbar.DockedTo.ControlCount-1 downto 0 do
        if l_Toolbar.DockedTo.Controls[l_BarIndex] is TvcmToolbarDef then
         l_List.Add(l_Toolbar.DockedTo.Controls[l_BarIndex]);
       for l_BarIndex := l_List.Count-1 downto 0 do
       begin
        l_FollowToolbar := TvcmToolbarDef(l_List[l_BarIndex]);
        if l_FollowToolbar.Owner is TvcmEntityForm and
          (TvcmEntityForm(l_FollowToolbar.Owner).UserTypes.Count > 0) then
         LoadAndPlaceToolbar((l_FollowToolbar.Owner as TvcmEntityForm).
          UserTypes[(l_FollowToolbar.Owner as TvcmEntityForm).UserType].Name,
           l_FollowToolbar);
       end;
      finally
       l_List.Free;
      end;
 {
      //������ ����� ������� - ��������� ������ ����� ��������� �� ������ ���
      for l_BarIndex := l_Toolbar.DockedTo.ControlCount-1 downto 0 do
       if l_Toolbar.DockedTo.Controls[l_BarIndex] is TvcmToolbarDef then
       begin
        l_FollowToolbar := l_Toolbar.DockedTo.Controls[l_BarIndex] as TvcmToolbarDef;
        if l_FollowToolbar.Owner is TvcmEntityForm and
          (TvcmEntityForm(l_FollowToolbar.Owner).UserTypes.Count > 0) then
         LoadAndPlaceToolbar((l_FollowToolbar.Owner as TvcmEntityForm).
          UserTypes[(l_FollowToolbar.Owner as TvcmEntityForm).UserType].Name,
           l_DockParent, l_FollowToolbar);
       end;}
     end
     else
      LoadAndPlaceToolbar(aForm.UserTypes[aForm.UserType].Name, l_Toolbar);
    end;
    inc(l_Index);
   end;
 (*
    �������� ���� �������� �������� ������� ��������� � �������
    l_Form := aForm._NativeMainForm.asForm.VCLForm;
    // �������� �����, ������� ������� �� �������� � ������� �����
    if MergedToMainForm(aForm as TvcmEntityForm) then
    begin
     l_DockParent := GetDockParent(GetParentForDock(l_Form as TvcmEntityForm));
     for l_Index := 0 to l_Form.ComponentCount - 1 do
     begin
      if l_Form.Components[l_Index] is TvcmToolbarDef then
      begin
       l_Toolbar := l_Form.Components[l_Index] as TvcmToolbarDef;

       if not LoadAndPlaceToolbar(aForm.UserTypes[aForm.UserType].Name, l_DockParent, l_Toolbar) then
       begin
       // ��������� ���������� �������� �������
        l_TopDock := l_DockParent.FindComponent(cTBName[vcm_tbpTop]+'Dock') as TvcmDockDef;
        if l_TopDock <> nil then
        begin
         l_TopDock.BeginUpdate;
         {$EndIf vcmUseTB97}
         l_Toolbar.DockPos := 0;
         l_Toolbar.DockRow := 0;
         l_Toolbar.Parent := l_TopDock;
         {$IfDef vcmUseTB97}
         l_TopDock.EndUpdate;
        end;
       end;
      end;
     end;
    end;
 *)   
  end;

 finally
  UnlockDocks;
 end;
 {$EndIf vcmUseSettings}
end;

procedure TvcmCustomMenuManager.RestoreOpStatus;
var
 l_Index : Integer;
 l_List  : TvcmObjectList;
begin
 inherited;
 BeginOp;
 assert((f_SaveLockCounter.Count > 0) and (f_SaveDockList.Count > 0));
 f_LockCounter := f_SaveLockCounter[f_SaveLockCounter.Count - 1];
 f_SaveLockCounter.Delete(f_SaveLockCounter.Count - 1);

 l_List := TvcmObjectList(f_SaveDockList[f_SaveDockList.Count - 1]).Use;
 try
  f_SaveDockList.Delete(f_SaveDockList.Count - 1);
  TvcmToolbarDockListManager.Instance.DockList.Clear;
  TvcmToolbarDockListManager.Instance.DockList.JoinWith(l_List);
 finally
  vcmFree(l_List);
 end;//try..finally
 for l_Index := 0 to TvcmToolbarDockListManager.Instance.DockList.Count - 1 do
  TvcmDockDef(TvcmToolbarDockListManager.Instance.DockList[l_Index]).BeginUpdate;
end;

function TvcmCustomMenuManager.GetOpLock: Boolean;
begin
 Result := f_LockCounter > 0;
end;

procedure TvcmCustomMenuManager.BackupOpStatus;
var
 l_List: TvcmObjectList;
begin
 f_SaveLockCounter.Add(f_LockCounter);
 l_List:= TvcmObjectList.Make;
 try
  l_List.JoinWith(TvcmToolbarDockListManager.Instance.DockList);
  f_SaveDockList.Add(l_List);
 finally
  vcmFree(l_List);
 end;//try..finally
 f_LockCounter := 1;
 EndOp;
 inherited;
end;

procedure TvcmCustomMenuManager.BeginOp{(aControl: TObject; aStr: string)};
begin
 inherited;
 LockDocks;
end;

procedure TvcmCustomMenuManager.EndOp{(aControl: TObject; aStr: string)};
begin
 UnlockDocks;
 inherited;
end;

function TvcmCustomMenuManager.GetFastenMode: Boolean;
begin
 Result := False;
 {$IfDef vcmUseSettings}
 if f_FastenToolbars = -1 then
  vcmLoadFastenMode(Result)
 else
  Result := f_FastenToolbars = 0;
 {$EndIf vcmUseSettings}

 if Result then
  f_FastenToolbars := 0
 else
  f_FastenToolbars := 1;
end;

procedure TvcmCustomMenuManager.FastenToolbars;

 procedure lp_ChangeToolbarsMode(const aForm      : IvcmEntityForm;
                                 const aCheckMain : Boolean = False);
 var
  l_Count     : Integer;
  l_Index     : Integer;
  l_Container : TvcmDockContainer;
 begin
  //if (aForm.VCLWinControl is TvcmEntityForm) then
   for l_Count := 0 to aForm.VCLWinControl.ComponentCount - 1 do
   begin
    if aForm.VCLWinControl.Components[l_Count] is TvcmDockDef then
     (aForm.VCLWinControl.Components[l_Count] as TvcmDockDef).SetFasten(GetFastenMode)
    else
    if aCheckMain and (aForm.VCLWinControl.Components[l_Count] is TvcmDockContainer) then
    begin
     l_Container := aForm.VCLWinControl.Components[l_Count] as TvcmDockContainer;
     for l_Index := 0 to l_Container.ComponentCount - 1 do
      if l_Container.Components[l_Index] is TvcmDockDef then
       (l_Container.Components[l_Index] as TvcmDockDef).SetFasten(GetFastenMode)
    end;//if aCheckMain
   end;//for l_Count := 0
 end;//lp_ChangeToolbarsMode

 procedure lp_InvertFastenMode;
 begin//lp_InvertFastenMode
  if f_FastenToolbars = -1 then
   GetFastenMode;
  if f_FastenToolbars = 0 then
   f_FastenToolbars := 1
  else
   f_FastenToolbars := 0;
 end;//lp_InvertFastenMode

var
 l_Index : Integer;
 l_Form  : IvcmEntityForm;
begin
 lp_InvertFastenMode;
 with vcmDispatcher do
  for l_Index := 0 to EntitiesCount - 1 do
   if Supports(Entity[l_Index], IvcmEntityForm, l_Form) then
    lp_ChangeToolbarsMode(l_Form);
 with vcmDispatcher do
  for l_Index := 0 to FormDispatcher.MainFormsCount - 1 do
   if Supports(FormDispatcher.MainForm[l_Index], IvcmEntityForm, l_Form) then
    lp_ChangeToolbarsMode(l_Form, True);
 {$IfDef vcmUseSettings}
 vcmSaveFastenMode(GetFastenMode);
 {$EndIf vcmUseSettings}
end;

procedure TvcmCustomMenuManager.FillToolbar(aForm              : TvcmEntityForm;
                                            var aToolBar       : TvcmToolbarDef;
                                            const aHolder      : IvcmOperationalIdentifiedUserFriendlyControl;
                                            const anOperations : IvcmOperationsDefIterator;
                                            const anOptions    : TvcmOperationOptions);
  {-}
begin
 if (aToolBar <> nil) then
 begin
  if OneToolbarPerForm then
   BuildSeparator(aToolbar);
  aToolbar.BeginUpdate;
  try
   while (BuildButton(aForm, aToolbar, aHolder, anOperations.Next, anOptions) <> nil) do ;
  finally
   aToolbar.EndUpdate;                                                                             
  end;//try..finally
  CheckToolbar(aToolbar);
 end;//aToolBar <> nil
end;

  {$IfDef vcmUseSettings}
function TvcmCustomMenuManager.LoadButtonsFromSettings(const aUserType : IvcmUserTypeDef;
                                                       const aToolbar  : String;
                                                       AddUnsavedButton: Boolean;
                                                       var theButton   : TvcmButtonDef;
                                                       var theButtons  : TvcmButtonDefs): Boolean;

 procedure l_AddButton;

 var
  l_Len : Integer;

  procedure l_InsertButton(anIndex: Integer);
  var
   l_Index      : Integer;
   l_NewButtons : TvcmButtonDefs;
   l_MaxPos     : Integer;
  begin//l_InsertButton
   if not theButtons[anIndex].rLoaded then
    l_MaxPos := theButton.rPos
   else
    l_MaxPos := -1;

   SetLength(l_NewButtons, Succ(l_Len));
   for l_Index := 0 to Pred(anIndex) do
    l_NewButtons[l_Index] := theButtons[l_Index];

   for l_Index := anIndex to Pred(l_Len) do
   begin
    l_NewButtons[l_Index + 1] := theButtons[l_Index];
    if l_MaxPos > -1 then
     l_NewButtons[l_Index + 1].rPos := l_MaxPos + l_Index - anIndex + 1;
   end;
   l_NewButtons[anIndex] := theButton;   
   theButtons := l_NewButtons;
  end;//l_InsertButton

 var
  l_Index : Integer;
 begin//l_AddButton
  l_Len := Length(theButtons);
  if theButton.rLoaded then
   for l_Index := 0 to Pred(l_Len) do
    if (theButtons[l_Index].rPos > theButton.rPos) or
       (not theButtons[l_Index].rLoaded) then
    begin
     l_InsertButton(l_Index);
     Exit;
    end;//theButtons[l_Index].rPos > theButton.rPos
  SetLength(theButtons, Succ(l_Len));
  theButtons[l_Len] := theButton;
  if (not theButton.rLoaded) and
     (l_Len > 0) then
   theButtons[l_Len].rPos := theButtons[l_Len - 1].rPos + 1;   
 end;//l_AddButton

var
 l_Operations       : IvcmOperationsDefIterator;
 l_Bt               : TvcmButtonParams;
 l_NotLoadedNeedSep : Boolean;
begin
 if (theButton.rEn = nil) then
  Result := False
 else
 begin
  Result := true;
  l_NotLoadedNeedSep := true;

  theButton.rNeedSep := true;
  theButton.rIconText := False;
  // - ������ �������� �� ��������� ��������� ������
  l_Operations := theButton.rEn.OperationsDefIterator;
  if (l_Operations <> nil) then
  begin
   while true do
   begin
    theButton.rOp := l_Operations.Next;
    if (theButton.rOp = nil) then
     break;
    if (theButton.rOp.OperationType in vcmToolbarOpTypes) then
    begin
     if vcmLoadButtonParams(aUserType.Name, aToolbar,
                            theButton.rEn.Name, theButton.rOp.Name, l_Bt) then
     begin
      if l_Bt.rVisible then
      begin
       if (l_Bt.rPos = High(Cardinal)) then
        theButton.rPos := Succ(theButton.rPos)
       else
        theButton.rPos := l_Bt.rPos;
       theButton.rOptions := vcm_AllOperationOptions;
       // - ���������� ���������� �� �������� �� ���������
       theButton.rNeedSep := l_Bt.rNeedSep;
       theButton.rIconText := l_Bt.rIconText;
       theButton.rLoaded := True;
       // - ��� ���� ���� �� �������� ������
      end//l_Bt.rVisible
      else
       continue;
      end//vcmLoadButtonParams
     else
     begin
      if not AddUnsavedButton then
       Continue;
      if l_NotLoadedNeedSep then
      begin
       theButton.rNeedSep := True;      
       l_NotLoadedNeedSep := False;
      end;
      theButton.rPos := Succ(theButton.rPos);
      theButton.rOptions := theButton.rOp.Options;
      theButton.rIconText := theButton.rOp.OperationType = vcm_otTextButton;
      theButton.rLoaded := False;
     end;//vcmLoadButtonParams
     l_AddButton;
     theButton.rNeedSep := False;
     // - ��������� ���� �� ���������
    end;//theButton.rOp.OperationType in vcmToolbarOpTypes
   end;//while true
  end;//l_Operations <> nil
 end;//theButton.rEn = nil
end;

procedure TvcmCustomMenuManager.MakeToolbarFromSettings(aForm                  : TvcmEntityForm;
                                                        const aToolbarName     : String;
                                                        aPos                   : TvcmEffectiveToolBarPos;
                                                        const anOptions        : TvcmOperationOptions;
                                                        const theButtons       : TvcmButtonDefs);
  {-}
var
 l_Index: Integer;
 l_Toolbar: TvcmToolbarDef;
begin
 if (Length(theButtons) > 0) then
 // http://mdp.garant.ru/pages/viewpage.action?pageId=235876230&focusedCommentId=236718542#comment-236718542
 begin
  l_Toolbar := BuildToolbar(aForm, aToolbarName, aForm.CurUserTypeDef.Caption, aPos);
  if (l_Toolbar <> nil) and
     (l_Toolbar.DockedTo <> nil) and
     GetOpLock and
     (TvcmToolbarDockListManager.Instance.DockList.IndexOf(l_Toolbar.DockedTo) < 0) then
  begin
   TvcmToolbarDockListManager.Instance.DockList.Add(l_Toolbar.DockedTo);
   l_Toolbar.DockedTo.BeginUpdate;
  end;

  for l_Index := Low(theButtons) to High(theButtons) do
  begin
   with theButtons[l_Index] do
   begin
    if rNeedSep then
     BuildSeparator(l_Toolbar);
    if rIconText then
     BuildButton(aForm, l_Toolbar, rEn, rOp, rOptions, anOptions, vcm_itIconText)
    else
     BuildButton(aForm, l_Toolbar, rEn, rOp, rOptions, anOptions, vcm_itIcon)
   end;//with theButtons[l_Index]
  end;//for l_Index
  CheckToolbar(l_Toolbar);
 end;//Length(l_BtDefs) > 0
end;
{$EndIf vcmUseSettings}

{$IfNDef DesignTimeLibrary}
procedure TvcmCustomMenuManager.BuildFormToolbars(aForm            : TvcmEntityForm;
                                                  const anOptions  : TvcmOperationOptions);
  {-}
var
 l_ExcludePoses : TvcmEffectiveToolBarPoses;
{$IfDef vcmUseSettings}
 l_ToolbarName      : String;
 l_UserType         : IvcmUserTypeDef;
 l_Pos              : TvcmEffectiveToolBarPos;
 //l_Poses            : TvcmToolbarPoses;
 l_Entities         : IvcmEntitiesDefIterator;
 l_BtDef            : TvcmButtonDef;
 l_BtDefs           : TvcmButtonDefs;
 l_ToolbarVis       : Boolean;
{$EndIf vcmUseSettings}
begin
 LockDocks;
 try
  l_ExcludePoses := [];
  {$IfDef vcmUseSettings}
  if OneToolbarPerForm then
  begin
   // - �������� ��������, ������ � ���� �� ������� ��� ������� ��������� Toolbar'��
   l_UserType := aForm.CurUseToolbarOfUserType;
   if (l_UserType <> nil) then
   begin
    if not vcmIsNil(l_UserType.Caption) then
    begin
     //l_Poses := aForm.Toolbars;
     for l_Pos := Low(TvcmEffectiveToolBarPos) to High(TvcmEffectiveToolBarPos) do
     begin
      if (aForm Is TvcmMainForm) then
      begin
       with f_MainToolbarDefs[l_Pos] do
       begin
        rVisibleLoaded := False;
        rVisible := False;
        rUserType := l_UserType;
       end;//with f_MainToolbarDefs[l_Pos]
      end;
      if true{(l_Pos in l_Poses)} then
      begin
       l_ToolbarName := GetOneToolbarPerFormName(aForm, l_Pos, 0);
       if (aForm Is TvcmMainForm) then
       begin
        with f_MainToolbarDefs[l_Pos] do
        begin
         rToolbarName := l_ToolbarName;
        end;//with f_MainToolbarDefs[l_Pos]
       end;//aForm Is TvcmMainForm
       if vcmLoadToolbarVisible(l_UserType.Name, l_ToolbarName, l_ToolbarVis) then
       begin
        if (aForm Is TvcmMainForm) then
        begin
         with f_MainToolbarDefs[l_Pos] do
         begin
          rVisibleLoaded := true;
          rVisible := l_ToolbarVis;
         end;//with f_MainToolbarDefs[l_Pos]
        end;//aForm Is TvcmMainForm
        Include(l_ExcludePoses, l_Pos);
        if l_ToolbarVis then
        begin
         l_BtDef.rPos := 0;
         l_Entities := aForm.GetEntitiesDefIterator;
         if (l_Entities <> nil) then
         begin
          while true do
          begin
           l_BtDef.rEn := l_Entities.Next;
           if not LoadButtonsFromSettings(l_UserType,
                                          l_ToolbarName,
                                          Assigned(l_BtDef.rEn) and (l_Pos = l_BtDef.rEn.ToolBarPos),
                                          l_BtDef,
                                          l_BtDefs) then
            break;
          end;//while true
          if (aForm Is TvcmMainForm) then
           f_MainToolbarDefs[l_Pos].rButtons := l_BtDefs
          else
           MakeToolbarFromSettings(aForm, l_ToolbarName, l_Pos, anOptions, l_BtDefs);
          l_BtDefs := nil;
         end;//l_Entities <> nil
        end;//l_ToolbarVis
       end;//vcmToolbarVisible
      end;//l_Pos in l_Poses
     end;//for l_Pos
    end;//not vcmIsNil(l_UserType.Caption)
   end;//l_UserType <> nil
  end;//OneToolbarPerForm
  {$EndIf vcmUseSettings}
  BuildEntitiesToolbars(aForm, aForm.GetEntitiesDefIterator, anOptions, l_ExcludePoses);
 finally
  UnlockDocks;
 end;//try..finally
end;
{$EndIf DesignTimeLibrary}

procedure TvcmCustomMenuManager.OverridePopupMenu(const aForm: TCustomForm);

 procedure lp_SetComponentPopup(aComponent: TComponent);
 var
  l_PropInfo : PPropInfo;
 begin//SetComponentPopup
  l_PropInfo := GetPropInfo(aComponent, 'PopupMenu');
  if (l_PropInfo <> nil) then begin
   if (GetObjectProp(aComponent, l_PropInfo) = nil) then begin
    // - �� �������� ����� ����
    if (f_Popup  = nil) then begin
     f_Popup := TvcmPopupMenu.Create(Self);
     f_Popup.AutoHotkeys := maManual;
     {$IfNDef DesignTimeLibrary}
     {$IfDef l3HackedVCL}
     f_Popup.DrawGraphicChecks := true;
     {$EndIf l3HackedVCL}
     {$EndIf DesignTimeLibrary}
     f_Popup.OnPopup := DoPopup;
     f_Popup.AutoLineReduction := maAutomatic;
     if (Self.SmallImages <> nil) then
      f_Popup.Images := Self.SmallImages
     else
     if (Actions <> nil) then
      f_Popup.Images := Actions.Images;
    end;//f_Popup  = nil
    SetObjectProp(aComponent, l_PropInfo, f_Popup);
    l_PropInfo := GetPropInfo(aComponent, 'AutoPopup');
    if (l_PropInfo <> nil) then
     SetOrdProp(aComponent, l_PropInfo, Ord(true));
   end;//GetObjectProp(aComponent, l_PropInfo) = nil
  end;//l_PropInfo <> nil
 end;//SetComponentPopup

var
 l_Index : Integer;
begin
 with aForm do
  for l_Index := 0 to Pred(ComponentCount) do
   lp_SetComponentPopup(Components[l_Index]);
end;

{$IfNDef DesignTimeLibrary}
procedure TvcmCustomMenuManager.BuildEntitiesToolbars(aForm            : TvcmEntityForm;
                                                      const anEntities : IvcmEntitiesDefIterator;
                                                      const anOptions  : TvcmOperationOptions;
                                                      anExcludePoses   : TvcmEffectiveToolBarPoses);
  {-}
begin
 if (anEntities <> nil) then
  while MakeToolbar(aForm, anEntities.Next, anOptions, anExcludePoses) do ;
end;
{$EndIf DesignTimeLibrary}

{$IfNDef DesignTimeLibrary}
procedure TvcmCustomMenuManager.RegisterChildInMenu(aForm: TvcmEntityForm);
  //override;
  {* - ������������ �������� ����� � ����, toolbar'��, etc. ��� ���������� � ��������. }

 procedure BuildMainMenu;
 var
  l_Item       : TMenuItem;
  l_Main       : TMenuItem;
  l_GroupIndex : Integer;
 begin//BuildMainMenu
  if not (vcm_moEntitiesInMainMenu in MenuOptions) AND
    (vcm_moEntitiesInChildMenu in MenuOptions) then begin
   l_Main := vcmGetMainMenu(Application.MainForm);
   with l_Main do
    l_GroupIndex := Items[Pred(Count)].GroupIndex;
   l_Item := vcmGetMainMenu(aForm);
   vcmMakeEntitiesMenus(l_Item, aForm.GetEntitiesDefIterator, [vcm_ooShowInChildMenu], False, vcm_icNotFound, l_Main);
   l_Item.Items[0].GroupIndex := Succ(l_GroupIndex);
  end;//not NeedMainEntitiesMenu
 end;//BuildMainMenu

begin
 (* ������� windows ����, ����� �� ����� ������������ �������� ���������� ���� �
    toolbar-�� ���� �� ���������������. ���� ����� ����������������� �
    TvcmEntityForm.Make *)
 //THackWinControl(aForm).DestroyHandle;
 OverridePopupMenu(aForm);
 BuildMainMenu;
 if (vcm_toEntitiesInChildToolbar in ToolbarOptions) then
  BuildFormToolbars(aForm, [vcm_ooShowInChildToolbar]);
end;
{$EndIf DesignTimeLibrary}

procedure TvcmCustomMenuManager.pm_SetActions(anActions: TCustomActionList);
  {-}
begin
 if (f_Actions <> anActions) then begin
  f_Actions := anActions;
  vcmMenus.vcmSetActionList(f_Actions);
 end;//f_Actions <> anActions
end;

procedure TvcmCustomMenuManager.pm_SetDockButtonsImageList(const Value : TCustomImageList);
begin
 f_DockButtonsImageList := Value;
end;

procedure TvcmCustomMenuManager.pm_SetMainMenuItems(aValue: TvcmMenuItemsCollection);
  {-}
begin
 f_MainMenuItems.Assign(aValue);
end;

procedure TvcmCustomMenuManager.DoPopup(Sender: TObject);
  {-}
var
 l_Form : TCustomForm;
begin
 l_Form := afw.GetParentForm(f_Popup.PopupComponent);
 if (l_Form Is TvcmEntityForm) then
 begin
  f_PopupForm := TvcmEntityForm(l_Form);
  f_Popup.Items.Clear;
  vcmMakeEntitiesMenus(f_Popup.Items,
                       TvcmEntitiesDefIteratorForContextMenu.Make(f_PopupForm.GetEntitiesDefIterator),
                       [vcm_ooShowInContextMenu],
                       not (vcm_moEntitesInContextMenu in MenuOptions),
                       vcm_icExternal,
                       nil,
                       CheckPopup);
 end;//l_Form Is TvcmEntityForm
end;

type
  THackPopupMenu = class(TMenu)
  private
    FPopupPoint: TPoint;
  end;//THackPopupMenu

  THackControl = class(TControl);
  
function TvcmCustomMenuManager.FillPopupMenu(aPopupPoint : TPoint;
                                             aPopupComponent : TComponent): TvcmPopupMenu;
  {-}
begin
 Result := f_Popup;
 if (aPopupComponent is TControl) then
  if PtInRect(TControl(aPopupComponent).ClientRect, aPopupPoint) then
   THackPopupMenu(Result).FPopupPoint := TControl(aPopupComponent).ClientToScreen(aPopupPoint)
  else
  begin
   repeat
    with aPopupPoint, TControl(aPopupComponent) do
    begin
     X := X + Left;
     Y := Y + Top;
     aPopupComponent := Parent;
    end;
   until Assigned(aPopupComponent) and (aPopupComponent is TControl) and (THackControl(aPopupComponent).GetPopupMenu <> nil);
   FillPopupMenu(aPopupPoint, aPopupComponent);
   Exit;
  end
 else
  THackPopupMenu(Result).FPopupPoint := aPopupPoint;
 f_Popup.PopupComponent := aPopupComponent;
 DoPopup(f_Popup);
 {$IfNDef DesignTimeLibrary}
 {$IfDef l3HackedVCL}
 f_Popup.Items.CallInitiateActions;
 {$EndIf l3HackedVCL}
 {$EndIf  DesignTimeLibrary}
 f_Popup.Items.RethinkHotkeys;
 f_Popup.Items.RethinkLines;
end;

function TvcmCustomMenuManager.CheckPopup(const anEntityDef: IvcmEntityDef): IvcmEntity;
  {-}
begin
 with f_Popup, f_PopupForm do
  if (PopupComponent Is TControl) then
   with TControl(PopupComponent).ScreenToClient(PopupPoint) do
    Result := GetInnerForControl(anEntityDef.ID, PopupComponent, X, Y)
  else
   Result := GetInnerForControl(anEntityDef.ID, PopupComponent);
end;

procedure TvcmCustomMenuManager.CleanupSaveDockList(anItem: TvcmDockDef);
var
 I: Integer;
 lList: TvcmObjectList;
begin
 for I := 0 to f_SaveDockList.Count-1 do
 begin
  if f_SaveDockList[I] is TvcmObjectList then
  begin
   lList := TvcmObjectList(f_SaveDockList[I]);
   lList.Remove(anItem);
  end;
 end;
end;

procedure TvcmCustomMenuManager.LoadGlyphSize(aDefault : Boolean = False);
var
 l_Size: Cardinal;
 l_IDX: TvcmGlyphSize;
begin
 {$IfDef vcmUseSettings}
 if vcmLoadCardinalParam([vcmPathPair('GlyphSize')], l_Size, aDefault) then
  for l_IDX := Low(TvcmGlyphSize) to High(TvcmGlyphSize) do
   if c_GlyphSizeMap[l_IDX] = l_Size then
   begin
    GlyphSize := l_IDX;
    Break;
   end;
 {$EndIf}
end;

procedure TvcmCustomMenuManager.LoadGlyphColordepth(aDefault : Boolean = False);
var
 l_Size: Cardinal;
begin
 {$IfDef vcmUseSettings}
 if vcmLoadCardinalParam([vcmPathPair('GlyphColordepth')], l_Size, aDefault) then
  GlyphColordepth := TvcmGlyphColordepth(l_Size);
 {$EndIf}
end;

procedure TvcmCustomMenuManager.pm_SetGlyphSize(const Value: TvcmGlyphSize);
begin
 if f_GlyphSize <> Value then
 begin
  f_GlyphSize := Value;
  if Assigned(f_OnGlyphSizeChanged) then
   f_OnGlyphSizeChanged(Self);
 end;
end;

procedure TvcmCustomMenuManager.pm_SetGlyphColordepth(const Value: TvcmGlyphColordepth);
begin
 // ����������� ������. ��� �������� ��� ����, ����� �������� ���������������.
 f_GlyphColordepth := Value;
 if Assigned(f_OnGlyphColordepthChanged) then
  f_OnGlyphColordepthChanged(Self);
end;

procedure TvcmCustomMenuManager.RestoreGlyphSize;
begin
 LoadGlyphSize(True);
end;

procedure TvcmCustomMenuManager.RestoreGlyphColordepth;
begin
 LoadGlyphColordepth(True);
end;

procedure TvcmCustomMenuManager.StoreGlyphSize;
begin
 {$IfDef vcmUseSettings}
 vcmSaveCardinalParam([vcmPathPair('GlyphSize')], c_GlyphSizeMap[GlyphSize]);
 {$EndIf}
end;

procedure TvcmCustomMenuManager.StoreGlyphColordepth;
begin
 {$IfDef vcmUseSettings}
 vcmSaveCardinalParam([vcmPathPair('GlyphColordepth')], Ord(GlyphColordepth));
 {$EndIf}
end;


// start class TvcmToolButtonDef

function TvcmToolButtonDef.HackCheck: Boolean;
  //override;
  {-}
begin
 Result := False;
end;

function TvcmToolButtonDef.NeedAutoDown: Boolean;
  //override;
  {-}
begin
 Result := False;
end;

function TvcmToolButtonDef.AutoAllUp: Boolean;
  //override;
  {-}
begin
 Result := true;
end;

function TvcmToolButtonDef.GetActionLinkClass: TControlActionLinkClass;
  //override;
  {-}
begin
 Result := TvcmToolButtonDefActionLink;
end;

function TvcmToolButtonDef.IsIconText: Boolean;
  {-}
begin
 Result := DisplayMode= dmBoth;
end;

// start class TvcmToolButtonDefActionLink

destructor TvcmToolButtonDefActionLink.Destroy;
  //override;
begin
 inherited;
end;

procedure RequestClearPopup(aPopup : TPopupMenu);
begin
 if (Application.MainForm <> nil) then
  PostMessage(Application.MainForm.Handle, vcm_msgClearPopup, 0, LParam(aPopup));
end;

procedure TvcmToolButtonDefActionLink.ParamsChanged(const anAction: IvcmAction);
  {-}
  
 procedure DoButtonPopup(aButton: TvcmToolButtonDef);
   {-}
 var
  l_Popup : TPopupMenu;
 begin
  with aButton do
  begin
   l_Popup := DropdownMenu;
   if not anAction.HasInfoForCombo then
   begin
    if (l_Popup <> nil) then
    begin
     DropdownMenu := nil;
     if (l_Popup.Owner <> nil) then
      l_Popup.Owner.RemoveComponent(l_Popup);
     RequestClearPopup(l_Popup);
    end;//l_Popup <> nil
    Exit;
   end;//not anAction.HasInfoForCombo
   if (l_Popup = nil) then
   begin
    l_Popup := TvcmButtonPopupMenu.Create(aButton);
    {$IfNDef DesignTimeLibrary}
    {$IfDef l3HackedVCL}
    l_Popup.DrawGraphicChecks := true;
    {$EndIf l3HackedVCL}
    {$EndIf DesignTimeLibrary}
    DropdownMenu := l_Popup;
   end;//l_Popup = nil
  end;//with aButton
  l_Popup.Items.Clear;
  vcmMakeComboMenu(TvcmAction(Action), l_Popup.Items);
 end;

var
 l_Form : TafwCustomForm;
 l_MF   : IvcmEntityForm;
begin
 if not vcmDispatcher.InOp(true) AND
    (Action Is TvcmOperationAction) AND
    (TvcmOperationAction(Action).OpDef.OperationType in vcm_ComboOperations) AND
    (Action.ActionComponent = nil) then
 begin
  l_Form := afw.GetTopParentForm(FClient);
  if (l_Form <> nil) then
  begin
   l_MF := vcmDispatcher.FormDispatcher.CurrentMainForm;
   if (l_MF.VCLWinControl = l_Form) then
    try
     DoButtonPopup(FClient As TvcmToolButtonDef);
    except
     FClient := nil;
     try
      l3System.Msg2Log('TvcmToolButtonDefActionLink.ParamsChanged fail');
      l3System.Msg2Log(TvcmOperationAction(Self.Action).Caption);
      l3System.Msg2Log(Self.Action.Name);
     except
      l3System.Msg2Log('TvcmToolButtonDefActionLink.ParamsChanged info fail');
     end;//try..except
    end;//try..except
  end;//l_Form <> nil
 end;//not vcmDispatcher.InOp(true)
end;

procedure TvcmToolButtonDefActionLink.ParamsChanging(const anAction: IvcmAction);
  {-}
begin
end;

// start class TvcmPopupMenu

procedure TvcmPopupMenu.ClearInPopup;
  {-}
begin
 f_InPopup := false;
end;
  
procedure TvcmPopupMenu.Popup(X, Y: Integer);
  //override;
  {-}
begin
 f_InPopup := true;
 inherited;
 RequestClearPopup(Self);
end;

function TvcmPopupMenu.IsShortCut(var Message: TWMKey): Boolean;
  //override;
   {-}
begin
 if f_InPopup then
  Result := inherited IsShortCut(Message)
 else
 begin
  Result := false;
  RequestClearPopup(Self);
 end;//f_InPopup 
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\gui\Garant\VCM\implementation\Components\vcmMenuManager.pas initialization enter'); {$EndIf}
 {$IfNDef DesignTimeLibrary}
 TtfwClassRef.Register(TvcmToolbar);
 TtfwClassRef.Register(Ttb97MoreButton);
 TtfwClassRef.Register(TvcmComboBox);
 {$If (not Defined(nsTest) OR Defined(InsiderTest)) AND not Defined(nsTool) AND Defined(Nemesis) AND not Defined(NewGen)}
 TtfwClassRef.Register(TnscTasksPanelTreeView);
 {$IfEnd}
 {$EndIf DesignTimeLibrary}
 g_InternalButton := TvcmToolButtonDef.Create(nil);

{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\gui\Garant\VCM\implementation\Components\vcmMenuManager.pas initialization leave'); {$EndIf}
finalization
 vcmFree(g_InternalButton);

end.


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ������: "w:/common/components/rtl/Garant/EVD/Types/Types.h"
// ��������� ������������ ������ C++ (.h)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi::EVD::Types
//
// ������� ����, ������������ �������� EVD.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ifndef __SHARED_DELPHI_EVD_TYPES_H__
#define __SHARED_DELPHI_EVD_TYPES_H__

#include "shared/Core/sys/std_inc.h"

namespace EVD {

// ������������ ������� �� �����������.
enum IndentType {
	it_Left // �� ������ ����.
	, it_Right // �� ������� ����.
	, it_Center // �� ������.
	, it_Width // �� ������.
	, it_Preformatted // "������������������".
	, it_None
};

// ���������� ��������.
enum PageOrientation {
	po_Portrait // �������.
	, po_Landscape // ���������.
};

// ������� ����������� �����.
enum MergeStatus {
	ms_None
	, ms_Head
	, ms_Continue
};

// ������������ ������� �� ���������.
enum VerticalAligment {
	val_Top
	, val_Center
	, val_Bottom
};

// ��� ��������.
enum ControlType {
	ct_Label // ����� � �������� � ���� �����
	, ct_Edit // ������� ��������
	, ct_Combo // ���������� ������
	, ct_Button // ������
	, ct_Spinedit // �������� � ������������ �������������� �����
	, ct_CheckEdit // �������� � CheckBox
	, ct_EllipsesEdit // �������� � �������
	, ct_RadioEdit // �������� � RadioButton
	, ct_CalEdit // �������� � ���������� ���������
	, ct_CollapsedPanel // ������������� ������
	, ct_StateButton // ������ � ���������� ���������
	, ct_EmailEdit // �������� ��� ����� E-mail ������ (� ���������)
	, ct_MemoEdit // ������������� ���� ����� (�� ������������)
	, ct_PictureLabel // ����� ���������� � ���������
	, ct_TextParaLabel // ����� � ������� ��������
	, ct_PhoneEdit
	, ct_Unknown // ����������� ��� ��������
};

// ��� ���������.
enum ReqKind {
	rk_Simple // ������� ��������, ����������� ������������� (���������� � ������) (ev_rkSimple).
	, rk_Context // ����������� �������, ����������� �������������� (���������� � ������)(ev_rkContext).
	, rk_Description // �������������� ������� (�� �������� � ������ (ev_rkDescription).
};

enum SubPlace {
	sp_NoWhere
	, sp_OnlyInContents
	, sp_InContentsAndOnSubPanel
	, sp_OnlyOnSubPanel
};

static const unsigned long CI_TOPIC = 65537; // ��� ���� ������ �� ���������
static const unsigned long CI_BLOB = 65538; // ��� ������ �� �������� �������
static const unsigned long CI_MULT = 65539; // ��� ������������ �� ���������/�������� �������
static const unsigned long CI_REF = 65540; // ��� ������ �� ������� ��������-�������
static const unsigned long CI_FolderLink = 65544;
static const unsigned long CI_ExternalOperation = 65545;
static const unsigned long CI_PHARM_MULTI = 65547; // ��� ������������ �� ��������� �������
static const unsigned long CI_PIC = 65541; // ��� ������ �� ������� ��������
static const unsigned long CI_SCRIPT = 65552;

static const long NullAddressType = 0;
static const long defAddressType = CI_TOPIC;

enum LinkViewKind {
	lvk_Unknown // ����������
	, lvk_InternalValid // ������ �������. ����������
	, lvk_InternalInvalid // ������ �������. �� ������������� ����������
	, lvk_External // ������
	, lvk_InternalAbolished // ������ �������. �� ���������� ���� ��������
	, lvk_InternalPreactive // ������ �������. �� �� ���������� � ���� ��������
	, lvk_ExternalENO // ������� ����������
	, lvk_InternalEdition // �������� ���������
};

// ���� �����.
static const unsigned long sbt_None = 0; // �������������� ���� �����.
static const unsigned long sbt_Sub = 1; // ���� Sub'��.
static const unsigned long sbt_Marker = 2; // ���� ��������.
static const unsigned long sbt_Bookmark = 3; // ���� ����������� �������� (����������������).
static const unsigned long sbt_Mark = 4; // ���� ��������������� ������� (����������������).
static const unsigned long sbt_Para = 10; // �������� (����������).
static const unsigned long sbt_DocumentPlace = 11; // ����� � ��������� (����������) ��. [TevDocumentPlace].
static const unsigned long sbt_Hyperlink = 12; // ������ (����������).
static const unsigned long sbt_BySearcher = 14; // ������� �� Searcher'� (����������).

// ����� � ���������.
enum DocumentPlace {
	dp_None // �����.
	, dp_End // � �����.
};

static const long c_UserCommentFlags = 2; // ����� ���������������� ������������
static const long c_CommentsFlag = 1; // ����� ������������ �������
static const long c_VersionCommentsFlag = 4; // ����� ���������� ������������

// ��� �����������
enum HFType {
	hft_Ordinal
	, hft_Left
	, hft_Right
	, hft_First
};

// ���� ��������� ����������
static const unsigned long sl_Superposition = 0; // ���� ������������ ���������.
static const unsigned long sl_View = 1; // ���� ����������.
static const unsigned long sl_Hyperlinks = 2; // ���� �����������.
static const unsigned long sl_FoundWords = 3; // ���� ���� ��������� �� ���������.
static const unsigned long sl_Found = 4; // ���� ��������� ���� (����������������).
static const unsigned long sl_Objects = 5; // ���� ��������, ����������� � ��������.
static const unsigned long sl_Mistakes = 6; // ���� ��������� ��� �������� ��������.
static const unsigned long sl_Diff = 7; // ������� ���� ������������ ����������

static const unsigned long POSITION_TYPE_PARA_ID = 2147483648;

enum BlockViewKind {
	bvk_None
	, bvk_Left
	, bvk_Right
};

} // namespace EVD


#endif //__SHARED_DELPHI_EVD_TYPES_H__
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

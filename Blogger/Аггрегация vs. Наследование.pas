������ �� �����.

����� �� ����� ������� "���������", ������� ����������� �� TClienDataSet � ��������� ��� ����� "���������� ����".

������� "� ���"

TmySmartDataSet = class(TClientDataSet)
 constructor Create(anOwner : TComponent; ��� ����� ������ �������������� ����������); reintroduce;
 ...
 inherited Create(anOwner);
 ��� ��� ��������� ������������

�������? �������!

� ��� �� ���������� � ���, "� ��� ��� "����������" �������� ������������ ������ "����������", ��� � Design-Time ��� ��������� �� ����, � ���� ����� ��� "��������" �����������.

� ������ ���.

��-����� - ������� �� �����������.

TmySmartDataSet = class(TObject)
 constructor Create(anOwner : TComponent; ��� ����� ������ �������������� ����������); reintroduce;
 private
  FInnerSmartDataSet : TClientDataSet;
 public
  InnerSmartDataSet : TClientDataSet
   read FInnerSmartDataSet;
implementation
 TmySmartDataSetImplementation = class(TClientDataSet)
  ��� �������������� ���������
 ...
 FInnerSmartDataSet := TmySmartDataSetImplementation.Create(anOwner); 
 inherited Create;
 ��� ��� ��������� ������������, ����� �������� "������ ������" � "������������"  FInnerSmartDataSet

������ ���:
 l_MySmartDataSet := TmySmartDataSet.Create(anOwner, ��� ��������� "������" ���������);
 SomeDataSource.DataSet := l_MySmartDataSet.InnerSmartDataSet;

���� �������?

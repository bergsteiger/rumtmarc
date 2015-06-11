<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet 
 version="1.0" 
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl"
>

<xsl:import href="..//common//identity.xsl"/> 

<!-- ������� ������ <controls> -->

<xsl:template match="application/modules/module/forms/form/controls|application/modules/module/forms/form/entities/entity/controls">
</xsl:template>


<!--
��������� ������ �� �����, ������� ����� �������� ���
�� �������� �����������.
-->

<xsl:template match="form">
 <xsl:if test=".//operation or (@container=0)">
  <xsl:copy>
   <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
 </xsl:if>
</xsl:template>


<!-- 
��������� � ���������, ��������� � ������ 
�������� m (������) � p (������ ������� ������, 
����� ���� ���������, ������ ��� �������). 
��� �������� ������ p ������������ m.
-->

<xsl:template match="operation | entity | usertypes/usertype">


<!-- ���������� ��������������� ���������� ��� ���������� ��������� VCM-�������� -->

<xsl:variable name="data_description_id">
    <xsl:choose>
       <xsl:when test="name()='operation'">
        <xsl:value-of select="../../@id"/>-<xsl:value-of select="@id"/>
       </xsl:when>

       <xsl:when test="name()='entity'">
        <xsl:value-of select="ancestor::module[1]/@id"/>-<xsl:value-of select="@id"/>
       </xsl:when>

       <xsl:otherwise>
        <xsl:value-of select="@id"/>
       </xsl:otherwise>
    </xsl:choose>
</xsl:variable>


<!-- ������� ��������� ��������� VCM-�������. 

	 @id!='' and

-->


 <xsl:if test="(name()!='entity' or operations/operation) and 
         @title!='' and 
         @id!='opDefaultAction' and 
         @id!='opInfo' and
         @id!='utSingleSearch' and
         @id!='slqtPostingOrder' and
         @id!='utqcPostingOrder' and
	 @id!='SubPanelSettings'and
	 @id!='opShow' and
         @id!='opShowInfo' and
	 @id!='enResults' and
	 @id!='slqtOldFilters' and
	 @id!='utAdmin' and
	 @id!='opExportToXML' and
	 @id!='opOpenWithLawSupport' and
	 @id!='utqcSearchMachine' and
         @id!='slqtWithLawSupport' and
	 @id!='slqtConsult' and
         @id!='opShowSpecial' and
         @id!='DocNumberQuery' and
         @id!='opInternalDocNumber' and
         @id!='opDocumentSIze' and
	 $data_description_id!='mo_Folders-enFile' and
	 @id!='enReminder' and
	 @id!='opRemMWControlledChangingWarning' and
	 @id!='opRemMWOldBaseWarning' and
	 @id!='opRemMWGlobalFiltersWarning' and
	 @id!='opRemMWTrialModeWarning' and
	 @id!='opDocLastRedactionDate' and
	 @id!='opDocProperties' and
	 @id!='opUserName' and
	 @id!='enSubsPanel' and
	 @id!='opCopySubNumber' and
	 @id!='opCopyInformation' and
	 @id!='en_PictureInfo' and
	 @id!='opDocumentsWithoutClass' and
	 @id!='opDocumentsWithoutKey' and
	 @id!='opDocumentsWithoutIncluded' and
	 @id!='en_BaseSearchCard' and
	 @id!='opExportForIntegration' and
	 @id!='opShowDocumentPicture' and
	 @id!='vcmCustomizeTasksPanelForm' and
      	 @id!='opOpenDocOnNumber' and
	 $data_description_id!='vcm_dmTasksPanelMenu-opCustomize' and
	 $data_description_id!='vcm_dmTasksPanelMenu-enEdit' and	 
	 $data_description_id!='Document-enResult'">
<!--	 
	 @id!='' and
	 @id!='' and
	 @id!='' and
	 @id!='' and
	 @id!='' and
	 @id!='' and
	 @id!='' and
	 @id!='' and
-->


<!-- �������� ������ �� ��������, ������� ����� ���� �� ���� ��������. -->

   <xsl:copy>
  
     <xsl:attribute name="m">
      <xsl:value-of select="ancestor::module[1]/@id"/>
     </xsl:attribute>
     <xsl:attribute name="f">
      <xsl:value-of select="ancestor::form[1]/@id"/>
     </xsl:attribute>
     <xsl:attribute name="p">
      <xsl:value-of select="../../@id"/>
     </xsl:attribute>

     <xsl:attribute name="key">
      <xsl:choose>
       <xsl:when test="name()='operation'">
        <xsl:value-of select="../../@id"/>-<xsl:value-of select="@id"/>
       </xsl:when>

       <xsl:when test="name()='entity'">
        <xsl:value-of select="ancestor::module[1]/@id"/>-<xsl:value-of select="@id"/>
       </xsl:when>

       <xsl:otherwise>
        <xsl:value-of select="@id"/>
       </xsl:otherwise>
      </xsl:choose>
     </xsl:attribute>

       <xsl:apply-templates select="@*|node()"/>
   </xsl:copy>

 </xsl:if>

</xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<Form xmlVersion="20151125" releaseVersion="8.0.0">
<TableDataMap>
<TableData name="ds1" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="batchCode"/>
<O>
<![CDATA[]]></O>
</Parameter>
<Parameter>
<Attributes name="houseCode"/>
<O>
<![CDATA[]]></O>
</Parameter>
<Parameter>
<Attributes name="farmCode"/>
<O>
<![CDATA[]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[FRDemo]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT T1."DocEntry",
         T1."WeekAge",
         T1."DocDate",
         T1."DateAge",
         T1."WeekAge",
         T1."FemQty",
         T1."MaleQty",
         T1."QtyTotal",
         T1."VacRoute",
         T1."VacName",
         T1."VacMade",
         T1."VacDose",
         T1."VacUsed",
         T1."VacBatch",
         T1."VacMinute",
         T1."VacMan",
         T1."MedRoute",
         T1."MedName",
         T1."MedMade",
         T1."MedDose",
         T1."MedUsed",
         T1."MedMinute",
         T1."MedMan",
         T1."MedBatch"
FROM SBO_AG_FARM.U_PYOWOR T0
INNER JOIN SBO_AG_FARM.U_PYWOR1 T1
    ON T0."DocEntry" = T1."DocEntry"
INNER JOIN SBO_AG_FARM.OPRC t2
    ON t2."PrcCode" = t0."BatchNum"
WHERE T0."FarmCode" = ${farmCode}
        AND T0."OcrCode3" = ${houseCode}
        AND T0."BatchNum" = ${batchCode}
        AND T1."DocDate" < NOW()]]></Query>
</TableData>
</TableDataMap>
<Parameters/>
<Layout class="com.fr.form.ui.container.WBorderLayout">
<WidgetName name="form"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<NorthAttr size="90"/>
<North class="com.fr.form.ui.container.WParameterLayout">
<WidgetName name="para"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<Background name="ColorBackground"/>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.Label">
<WidgetName name="LabelhouseCode"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[House:]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="SimSun" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="351" y="25" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ComboBox">
<WidgetName name="houseCode"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<DirectEdit>
<![CDATA[false]]></DirectEdit>
<CustomData>
<![CDATA[false]]></CustomData>
<Dictionary class="com.fr.data.impl.TableDataDictionary">
<FormulaDictAttr kiName="PrcCode" formula="=$$$+&quot;  &quot;+ VALUE(&quot;selectHouse&quot;,&quot;PrcName&quot;,&quot;PrcCode&quot;,$$$,1)"/>
<TableDataDictAttr>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[selectHouse]]></Name>
</TableData>
</TableDataDictAttr>
</Dictionary>
<widgetValue>
<O>
<![CDATA[]]></O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="431" y="25" width="214" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.parameter.FormSubmitButton">
<Listener event="click">
<JavaScript class="com.fr.js.JavaScriptImpl">
<Parameters/>
<Content>
<![CDATA[var batchCode = this.options.form.getWidgetByName("batchCode").getValue();
var farmCode = this.options.form.getWidgetByName("farmCode").getValue();
var houseCode = this.options.form.getWidgetByName("houseCode").getValue();

if(farmCode != '' && houseCode == ''){
	FR.Msg.alert(FR.i18n.Alert, "Please choose House");
	return false;
}

if(farmCode != '' && batchCode == ''){
	FR.Msg.alert(FR.i18n.Alert, "Please choose Flock");
	return false;
}
]]></Content>
</JavaScript>
</Listener>
<WidgetName name="Search"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[Search]]></Text>
<Hotkeys>
<![CDATA[enter]]></Hotkeys>
</InnerWidget>
<BoundsAttr x="768" y="53" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.Label">
<WidgetName name="LabelbatchCode"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[Flock:]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="SimSun" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="50" y="53" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ComboBox">
<WidgetName name="batchCode"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<DirectEdit>
<![CDATA[false]]></DirectEdit>
<CustomData>
<![CDATA[false]]></CustomData>
<Dictionary class="com.fr.data.impl.TableDataDictionary">
<FormulaDictAttr kiName="PrcCode" formula="=$$$+&quot;  &quot;+ VALUE(&quot;selectBatch&quot;,&quot;PrcName&quot;,&quot;PrcCode&quot;,$$$,1)"/>
<TableDataDictAttr>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[selectBatch]]></Name>
</TableData>
</TableDataDictAttr>
</Dictionary>
<widgetValue>
<O>
<![CDATA[]]></O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="130" y="53" width="160" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.Label">
<WidgetName name="LabelfarmCode"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[Farm:]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="SimSun" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="50" y="25" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ComboBox">
<WidgetName name="farmCode"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<EMSG>
<![CDATA[Please choose Farm]]></EMSG>
<allowBlank>
<![CDATA[false]]></allowBlank>
<DirectEdit>
<![CDATA[false]]></DirectEdit>
<CustomData>
<![CDATA[false]]></CustomData>
<Dictionary class="com.fr.data.impl.TableDataDictionary">
<FormulaDictAttr kiName="PrcCode" formula="=$$$+&quot;  &quot;+ VALUE(&quot;selectPulletFarm&quot;,&quot;PrcName&quot;,&quot;PrcCode&quot;,$$$,1)"/>
<TableDataDictAttr>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[selectPulletFarm]]></Name>
</TableData>
</TableDataDictAttr>
</Dictionary>
<widgetValue>
<O>
<![CDATA[]]></O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="130" y="25" width="160" height="21"/>
</Widget>
<Sorted sorted="false"/>
<Display display="true"/>
<DelayDisplayContent delay="true"/>
<Position position="0"/>
<Design_Width design_width="960"/>
<MobileWidgetList>
<Widget widgetName="farmCode"/>
<Widget widgetName="houseCode"/>
<Widget widgetName="batchCode"/>
</MobileWidgetList>
<WidgetNameTagMap>
<NameTag name="batchCode" tag="Flock:"/>
<NameTag name="houseCode" tag="House:"/>
<NameTag name="farmCode" tag="Farm:"/>
</WidgetNameTagMap>
</North>
<Center class="com.fr.form.ui.container.WFitLayout">
<WidgetName name="body"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="1" left="1" bottom="1" right="1"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.cardlayout.WCardMainBorderLayout">
<WidgetName name="tablayout0"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<NorthAttr size="36"/>
<North class="com.fr.form.ui.container.cardlayout.WCardTitleLayout">
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<EastAttr size="25"/>
<East class="com.fr.form.ui.CardAddButton">
<WidgetName name="Add"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<AddTagAttr layoutName="tabpane0"/>
</East>
<Center class="com.fr.form.ui.container.cardlayout.WCardTagLayout">
<WidgetName name="63c9b795-5a84-4d16-9844-39c61f87fbd5"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="1" compInterval="0"/>
<Widget class="com.fr.form.ui.CardSwitchButton">
<WidgetName name="e153aa4c-6d02-4c61-b095-27a5c1bd5cf7"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[Vat.Stat.]]></Text>
<initial>
<Background name="ColorBackground" color="-1"/>
</initial>
<FRFont name="SimSun" style="0" size="72"/>
<isCustomType isCustomType="true"/>
<SwitchTagAttr layoutName="tabpane0"/>
</Widget>
<Widget class="com.fr.form.ui.CardSwitchButton">
<WidgetName name="dda87730-ef7e-4e68-86f5-d97109177530"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[MedsStat.]]></Text>
<FRFont name="SimSun" style="0" size="72"/>
<isCustomType isCustomType="true"/>
<SwitchTagAttr layoutName="tabpane0" index="1"/>
</Widget>
<FLAttr alignment="0"/>
<ColumnWidth defaultValue="80">
<![CDATA[80,80,80,80,80,80,80,80,80,80,80]]></ColumnWidth>
</Center>
<CardTitleLayout layoutName="tabpane0"/>
</North>
<Center class="com.fr.form.ui.container.WCardLayout">
<WidgetName name="tabpane0"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="1" color="-723724" type="1" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
<Background name="ColorBackground" color="-13400848"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.cardlayout.WTabFitLayout">
<WidgetName name="Vac.Stat."/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report0"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report0"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="1" left="1" bottom="1" right="1"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR F="1" T="3"/>
<FR/>
<HC F="0" T="0"/>
<FC/>
<UPFCR COLUMN="true" ROW="true"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0">
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" rs="3" s="0">
<O>
<![CDATA[Date]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="1" cs="2" s="0">
<O>
<![CDATA[Age]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="1" cs="3" s="0">
<O>
<![CDATA[Ending No. birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="1" cs="7" s="0">
<O>
<![CDATA[Vaccine]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" cs="2" s="0">
<O>
<![CDATA[Age]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="2" cs="3" s="0">
<O>
<![CDATA[Ending No. birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="2" cs="7" s="0">
<O>
<![CDATA[GirdBand10]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="3" s="0">
<O>
<![CDATA[d]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="3" s="0">
<O>
<![CDATA[wk]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="3" s="0">
<O>
<![CDATA[Female]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="3" s="0">
<O>
<![CDATA[Male]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="3" s="0">
<O>
<![CDATA[Total]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="3" s="0">
<O>
<![CDATA[Route]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="3" s="0">
<O>
<![CDATA[Vac Type]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="3" s="0">
<O>
<![CDATA[Manufacturers]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="9" r="3" s="0">
<O>
<![CDATA[Dose]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="10" r="3" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="11" r="3" s="0">
<O>
<![CDATA[Batch No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="12" r="3" s="0">
<O>
<![CDATA[Time(Min)]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DocDate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row()%2==0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Scope val="1"/>
<Background name="ColorBackground" color="-2171170"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="1" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DateAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="WeekAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FemQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MaleQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="5" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="QtyTotal"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="6" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacRoute"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="7" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacName"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="8" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacMade"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="9" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacDose"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="10" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacUsed"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="11" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacBatch"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="12" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacMinute"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="1" size="80"/>
<Background name="ColorBackground" color="-6697729"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style imageLayout="1">
<FRFont name="SimSun" style="0" size="88"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<showToolbar showtoolbar="false"/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[eQN8Y'Be)XV15HPcmJFC-t$U:,%sD16'>t-a:b3k&V>gp66lcj'%Xj@2i8e'+p('JAJ5+P'+
b_:6:GGNa<j2<AJ8P*KE)=0IhI?./H1-Gg7EBOER$9po53se4R_m%o^-gf$4BfKbaUOe_.jp
$kIc(\1%XOU:AsI!kg&&bI$Qd2hAT<CbiW2[*+!DrG_bOk0=M>?.rj<WauZ(@eIJ*Pj='a^P
ktaHK59sg&^^Cdo/?Vq_pSqb6OrL3VOq4b/3B-F74fM43$l_kHgEO^.q0i.,UGaC6"\`9P/'
"E$g^6,GocAe?Z\E:6)VHr8Nh/==;\aGO-'4221T'\aKZu>NJrhINOmO5R@2Ws28dDJXof+_
LO2[_eqc4q9fhOk!+A-mT[V<7IC)b'd<"oq_tlfeJMg#tT^Z3Y^';b!g:[3g/_/@5RX;P(U:
NF#d"X`4i)bljX3ZMAF_jq'.J>u+Eu8W:&ff$1kdBaoqqB>jR52i2*4B=^e@`-o3bTOUo9Fj
3.uj4)WhXa`Z$f@b@$*A1KJ>'5M!W):,EKf=<jA@SH[.JUa^8HB/e<D(kEAup!X@>)Mna,C8
Q'2,n*"S&q;LPF_T:cWUB$iL8:HQF+)Q@RMp>[:TX^.[*ED&Y+^&&"JsD+3@^7)QC(]A\-jd&
(6MN$RY/_j%"l8HFqU739RPgbiS)s;Q#:)iiffQ6*.lm@$T'?tFlrSn!Jcso0o/iseL`-lA"
->3G7_>EUcFe5?jAh5+ne]AeOd,%=?u:qrhJA7M/S[;TC17+#mUi?QOd'$MGpUkYeEVM8l+(?
!!Rpeq@OnpajEMAPRFK#LJGlbn;0?FUG`fAm(,P?S?=7dM-Rb]A=#^[3LO'o4K*R?_HSH*o1\
8Rs9AEWggp.;+3/SO1^c>ZUeibFU[N$mIp5lp<[@Q3?303*%K=m)al7ZD%$'C/Jbqi6,F0*Z
XH2'E3Aa=8NOKY-`lr[WrX((ksWS46Sl[mTe5p(5k<\dAp2"fcVEZr53a%>c7G/i+hk.(ma`
tTkZbMU)!MO/_[/,/=N[s[q?i@t@8AC=E(9bsGf*-4Lbt0^^LP$[3K@b]AMP%UI/p&OWF';&*
]AlLd";f&K<q"Q/ROQh0jdo/^Fj4Gg.!dE\P=SJH"aGt-#gm!M-6(.q&j,p5dM^hr^/s9=A+Z
ZLnhF!"FX3a?"NOnLm=8S4S*Z;p,/!LM_0DZ!$8W-EF41u$Bp2#lH&8CL_p'r#U^#VXo%4&(
V)67t!W%^!m.P=E%nmDC5#D&cFXIA!!M!5Ts)r`M7<lc1H-T<PtOJ@'n!B'V[2A+u1p!p&ek
u89<St&QhM^bS,?,bP101XIQYjUG;k"`N[H&q4>gN$TASZOD-lEE:UOU\Z3$=`f<0Zc!X$D/
TbA(N*2+0+j:Z!eB'12ih`I?eM+h"rFAM"PRU,k>^6kb-kDL#'cDi1%89SobENd>q?HMc=R9
0[M)0&u1:tJ:C#0`8R:W_@g<?T2XgA&+,1*n^LlH2PH9oP]A;!P=X7+$OKX,sZT+o:rh)7upd
miorm=+)<Sh9jY5N?aoKmlag07aN@H1&(&]AT.D]A5W<B=;+=ih>?#)H1k37pE1gF\Sf5,Mr>k
8,IuZY'ALFN=tan!WcohUEI+(GB,W?fYh[e;oagJMO`*ODWc<UHqXeUFs3<Q[FVTss3,qpJ0
A;-Hh@7WVp_(_,O[=4[M959164,e61j#h^QSfX4P^U]AS71ku*h9ASf-Z@)>;$M_3ZZW(?mHn
FsS6NE;LN*:_!+o@KgE3o:e,T<t'@<<c+'LWO<\IFP1$h[I!G7=FMOL&NR)#$j(=6JpjSdh7
NSCM>\bkZ>T8utELm5<)Y5m?JCJCp]AB!\h]Ad%6J:,.'A(Q+:)`Ca]AJt=)JM2/+>^B)^;BUbO
akbQ"K9J4P44Mpb&u%XE5KC=oQ42KgjmZe>t6%Ie292OGRKCSg0_BYQ6/NA[Y;(K?WWN`Q(&
g1D.8X3^69en$9<Ke\LT?;<_[eh5uBW1r@465O77SEO4i37BcSoc@HI!f!FcsGu&b3<\#<PW
Wq.Sl"#MD&8@=f\A`GeS'qL/FJh!8,M,Zc*#'u^Z%:^A2is)7&S>C<%KDnr096q92-kZ9Ruf
&DV+CIl0]A.KSi5.cknR+)/,$;%Oqac0-.*&]A1fsr`@o""331d#DXj<i/+nOj_IL9>cm652dn
P%4E(%?K,k#MPH#JouceT'S!"bNN=-0X8&64\3VcAj5F]AMn`QUq^-`9c'RWrrq#G/*c)<iOQ
!W`dpr;&#!gf3.6cU&pdjVddotd;,]A[5uH=+rHd,p:R!O5kIE4lkU2Z6e&H#CeC#NN"t"DVu
$o6\Sdj'8.>[H`aR!U$)rXdBsZO&8<.q=GGC#KCTW1Vnq?_cM\,'+APVBYgOp,:,D:NhYdfl
e"?YX:8drR5ElIEg&<X34ZFWc4EC;/s@/9d7@T7I@O['R&NQf+rbQ_E4=_&m]A4a,4m#ndU<<
9iSY&,A;KlIfF*,`[R^3ioEq>b"W=78G07U@OZK('2\G.SbM,b!b\&Q0BcTq&)\:)%]Ao&r63
T:":(T%Q:+5J,"'\4.ilro\FlJtf`R=_]AJ7SUK`!!oT![rlsTJ\'q@qF&J+\MBP^/_jSQr1C
QOg\-alLgLcUo"g]AbU6pMbSTS^)YfEcN5_VIN;KH&,]A1q0[%Drn%_`UuqCG#)0Ia5]A'<0MJ2
82a1>3.$#c\j*'_cfhdYus.LBegRiDZgs^rsn#Qbo'l4BB\B$>JCgWO9Ag$p/j>q5-p!q=RJ
%82BNcmCZNO9BuZ,jpEM_=AeH]Au?q3D%OW+&Ppei:XWo>Ls9,GgHb"Ft_(T09;=Ol5#-l;YX
pRBLjbHO!r)/_A$eh[JMQ#"GMa.2,--J#?QHUdcSW)R&g@-%%'3jijF1!%c@/FJ4&_H)+>4b
1?;&+!`-$%2d$;YLYgkoOnCFpTPAe&HM*MjAS[\'d#s0=kp</$",f^&K`-$^KB)u%._b/SXq
!(F_"fsC^!KN"R`_6B9@-a40;NkQmWYr"G%=Vifd[dC7U]AJ$J9rsGkTM>CbqZ>TrHi"$a"g,
u><16bq+t@,8hnAipd&;PgKRO)94)t_PEs_@YfA%A.q8=/V(2.Nb0.)C4WF^-9H#H8<BlA;*
m6-]AS.0&c>)846Z'd!!L9VU5P5d:/#4\kYH.H6#e(tP!/2OKR10/(l&h96;=SdXtdm6kMD!Y
&.OT:$*mIheY,SnQq4jP6;I/X>M.Bm>pC9#ZTKcuKhs7R8D,d%Y$1+#Nt+*n0$?R@BO<C6G>
&@5ioE$Ot6fOC_#l>+3&,kFh'7b2hW5nMa\VAY%.mQCoR$0k?CqRE)>rXYKqHkOi_Ja(:5NO
a7o4[&_gp4`lB?tVm6o6k2UFJQ&YV>isUYJ$4fn8Mi`YTbqo4af).gZ3X'9msQUMf>G>aJg6
PmqaNnK:\s76YnV?/.aJn>InhDkX"Vu6Rubafiqsjd:FPSVb*d5&)8BaH,`SWEC:H$l*[9#@
h$dhJLpnu]AiV(#G0tBZP%r"3bHZS:l_>EO_YD%T\ZPj)m%gR'Z\[1HD]A1[MW&Mf>"Jep:ToD
A*mLrG7TlHZk9NsiN1gXgc-3n/ii6&)`c:;4=:;[V(-n5WDXP.YFY:Be*no(NMdtMDc`mCUr
p^.;tjD&8;Y!]A\/)<gIN?c)es:0UnNAj!B.Ctbl=m95WZF>slc[+SG"]Ab\gWfaN]AQ;o1Z<#]A
_;ho'*-Rk@QI/e+?hg#bm_=E.7Xt67JenV:G=bPjQLf:P:,SIfmF[)*[i[Ma3t+$te1a0:16
j]AV8?jN`Fg6lu)DPTXQf;m#jrQdPjgEgDRrYn'l<lg$.lE0(MAPNCeuP,%BRrF`II+@H"IPI
WJF[T*k#fACo.T?9h=c9'SsJGC[,B,')Ienq\f?GD`44k=\&Ma_T,4K%?V1)6S-17qpg?7M.
c/1-2dES+A?0BJCjR`;]A*bAZ'`lR[hb([U*EQGFVn+[(>1gq^XCPJk05)(pl#jH6"RMg.;+i
#1FA]Ap4?sP0^"HGK:'il-Z9HaD.>0^?DbU`*5=/Z'7"gQFJ,>)AcBOMGP<Xf?O9m]A*?&lK1b
NIq4LcY>i`h=7OIsG(4_V`6*"+mA5$dC-Rm;)Iik2"c^5XB6P5?.gJ4''[,IN.8L\mZ)\49B
?.*!)>X,rc.#DiWlO(KAcb(0`<*_]A2'>_-A/F^iN@,tb$ODoV_d-=:d-C2l@dP>p)M(V`h$:
>XCJ'u"2ljJg1uVMfOG2f!l3>/i_sFq6m;c'+NbIGOucbpUP*T*lRl6ruMC#:sA&??)[=*XE
*9,m4<4T79?i*a4($DLBXb/+3JoO54[,9Y"6-qp'@mO\PbZQ*jXboUNb7F_O&[*,q%$HK9A:
E.GRdA".WMZZRD9/LIO(DtNG<cW?uD<XlOt4]Au'Po^MTs*)&"*c6sj7'=da+/8]Aqdqt<?>1U
(6:b;VY)2]Ai3o-1O7fdF/78e[CnaK7!?RNE$,8"`+95^-^><pAXpSC9Up#[Apa:3FFDUO%Dp
c#i;M\9_C9XV6:fuiRl8F77O(\bk<a8pR!Ul(1Tb)>l,GD2JibR*kS=.IK0aTI"&hAkUdEJJ
gY-%Kl\_Y1%sm[j8!f0]Aqeg:+akghq+6#5+Z86tICpO_c(M5*!10%c8E^tg=C)0Qe)Dg-&XH
JQ-?>67rq-rgA/SrHc,9lZ':I==B^O9"quCLTi^Dl.b(!sbN&n2(f*A3C6]A=VjqV)))Kl(g9
bg`4)&k+%?Pj:DQ3+]Aq(j'>W>-D$::D^l1;GZsu%%d8&.BN#E9estuO(Z)LA\II9eE0>FN!A
6S*`MQ]A[8Fjr\b;bDG[(l+G<jgFJ@e*:;U0"WR-Y5[W`us+&c"e2Rh\DcMJDbk3(H9kO2Y:\
4VWL!oCt=;W[5GF)ddfD^.)lnO1R[9eGUjn^GHlsT]ASjZ^m)f5P#tg]A>2nbm>F(Nd#(8<^n)
,YFWD^!ZDZp(VEqW;C23Ia,6(J?f]AMr?\o,'I(0J)-sMa)s@Bp"t:F%1u[\qgoq3g>#KXS;V
TiU`?)GTq?'?l23426;\\s!t`AT?BreI+&p5kR'!X+?rlS;AnR\kY6EYTS%aZVN=kZ(ntQAW
"c><lg?Z]AKGgEXP6hTq+WpAah_X0CuA>5tKMQ!mTrOG[.MU$G*@m`WcSNS<"3)t+)[ap)]Ae'
D5VZI4N_@KtO@C]A*8*-L)%OAqKZ[/'/T=e';;`o]Af8pFQZY_fkJnF"5i0FnVg2aSDcr:^"'J
U55orVK)UUQTu]A&I5<&S_(<@c&<:"pg+WJm.\QnCurY/@CWkOPh'_Z#c2i*#6nI'p7'$K.bA
kD<%XhVC0`Q]AKLd4n,[Vd[NKBt]Acn?pM;]A0mdQO&W0Dg\1UZ2qm8pg9ObO`'r@\$S?3^&WTj
,E0XLlMMi;9?HPR=110QRFar>#4ig*7F4f;Y?KNM:/"ea@2'pQNuYs]AANBpIn0(M7GQ;@`$t
Kuju(/&6$B@YuY@fNV`Mf_ZF=c"G5'3jWTg>lJ'oY6M\*fMkjj=Wf=10&)g:@#ig>Kljg!3V
5+`8Js;qrtH7YiMl<FrkG@gS$ZHSl",7(lh6VM*\X2\aGWTG._cfl!qse(O?QVN^5Q^1pSUQ
/):Gq2cSY!b3e-9[n3-mo5,?4'W3h-M'Z.!d?0*h*ZE\Og,VaGM@1icE`NR`F2V>Q$%D8H+n
]A\qI\X)>AfUrK;[%GMU>f5"^fb\;E.S`F"fKBAiAlCoN8lV=RdUmZC/64fD`hNRt0nJ=\oTc
AY`;NM@fC\+i%Ss\`7*6FC60dV\ohmHeYuZ!nf,[T&#Hu;)!'&dSl]Ad.]A)'`H]AG*ksALufg6
%70Lr5;]AEOHuB,V@CD0B-H%Q3_T`qX%gLUD/(l`YSiP\B3hKT#@RIn`6`bc_C.--*3VuXefO
D!TrkQ+ug75<&\AcbJ!beJO4PXC."OI&k$fNu>5(-uQmo5qcT:t$E#]Al0?93^E=-Q#b1aUc'
9cYYp3jn=JFoqPIa^E6+!%<s:]AZrsbtD&If&,:<f)\XRhlI`t-F26'^b,al47risY+U_V=5S
L'\#8BMc>]ATi3E7mngG2ecQ3YJY0?`,^;.7Mt=L)SrQ+d(2$&gs@po+LXLP*)Z`(a%pkZ8T)
`aCQoBVA"ho'qnk]Af?k@?G34%)%^ia1J7_AVj8=a8,)*j>#TpfhK=EMf2A+:FEJ-&2$Ct#m+
i?K__7obuT-HJO1LER(3d(jdDa<$^k<OFdg<J"G%d,kNSI,.kWi40)"7N9S=rf>ItpAfkqhG
PDTKp#_p<P,3tGDr(#O0ij(``X(,H*kDB%,940'6fospSpa"QLq$Fc*Fa\Of[JT>G/lJGeQe
UJ.DE7[R5HRE\(X(2Yr6$ZaRjlGX't]ARkkI#!qdMNZna$*NV@h5Q0C&h??TKb23%9l1$3s(q
F3FDX`.pO"i9#$Fak;lp0,G?GACF&a,.F_4\a)mP""I!J/PN:6-k^JIQIaOTkL/.%)i@-k`%
!1C@F8IR3)T2F?hFT@+)%3&pEhooL@/J]AmhRQhFA+iqf2=tC4L.=OPFf;(c'Vrc[os)okY>U
Cmk_mrrCdL-Xd@6*+#PZ5D&NsJALf9\GJaq<#FE<Jsb1R(U3(.@/f\U,DN.NMq=KtB'2\I%u
%hI;d0L$,2q[n[$G,02VdjM<^9j)6HpBX>=uX$;#]A2MO[E^c2/kG">-JG&$V']A7pX-31"ruA
LR'^FB>&]AMA!G@)nRNDf1"%d*1@Xk>A"YVUUb+Ia1WiG)q6>-bLk^4GpZd@(m6e15jcN?R?=
GYlfCmtU_JG)@*7bJj)Nj,`D_#cgh8<G[+(/)$n0AH1$p>g?UnWqaFQ%<*Jig\9L`m%fF[PE
[(lM%hR6Aq4*m#VEq'O's-4<0H1YQ"c5!+G%Hr6*%`eQLdP<:Ii^$<GX=f0Mh7^+S,*ieNr*
]A(I7a:.*P`<DQ_FeU\uM_3Kd,j)+tEISsquRt*H?AP#=4U0ZpYljs-/BZsI+&m^-,e'&_D5<
5a5P;N5$XR<TM+D^rbQV[_W0Z*>f'#?;LV]AJ3'LW)N12PC+O#CcMBokBTm>3e5;Z0n'1?C&B
oTeH$k(N6N$S^@`"Yes9t/59;l0L[k`R2)J[iRbNUoT:d:n8Tf^_EJRaIHF(,?&"m1YgNX`M
^#06Vo-%K&j:1O83;UcmY/1pT.;8S9Vm,Z389jQJuZ5.Yk"@HL)Ct4ZMn(/C^n`VBsdVEMFM
_GjbBk.%qgfi(nkj5-`0T1h$3M#V$ABI$m^n@%kb:54VF8lGnOH'c(c5-j3T9,`V4XOIXM<K
=$2^u5?%+MG)61U=um_VjE03Dd6>Rej@Op<;Arigd\['@p#`et>XrLY9V!P*qV%A;*-.=#]AK
\KY"L%C:0JPHL;R[N9P1Kl;jWDaunrai,%>9hkL/Ska#tkl"5>h's+ZoGtj\TYWnkXPZ!DCs
l4V3nR*"/+]ATC*u4lG<_IAH^<h:+Y8\`3Dtg#lRn1O7q&%9lR8]Ah$3ZLQj\8%_ONCtq'V!o[
mT/LLd"Nkk;tFETXZM#:Vs'QL"VW7OS&G:r^g1.Z=LPFXVuWg"&P[KJCC@GFaOPpihRTrfk:
a$-b;d/-F=(5cJ?=TC@5u.WQ*sE$/KM0ApE6fYQC@n9K0\?f938?Bn9M:RD)DZTBP&-G"CN.
^RSac2\'c((Mgh6bRVbd3qaM<;QMJq:Ti.A4gOWh"W2VA>:)l%1c`*5"bnlS+QB&'$0Y<M7:
;$dGN%U]A?jEJfbDI+.s7SR0QTWIU<<!Y;(n,%_gWrIj<lgmcY^i8Y/qEQlRJJRa<kpO3(5W!
Yj9G'\kTe0G3<>^1AOnc?90A`ga'sk=QXO#m\V(RcMmD)L8t?hT;Z=`,9MVeoCr(-4Lh:Oa-
[[1p*T5b%g(C32o1/MuFB/fNdtL^`<+"+Se(OZqfqUh>d#-m1(G+GJs8Rrf-1,BeOG!4J[fQ
,gRMf0tlcDJa5>b3KL-VF3pQn*39pr5po:n"Vlh_-L1gqf]AL*T]A/^74$\/K%lO,*"h]A&`.B/
#0_OY'eQO.$?!'b9Y_@(i);[PEm""b_+VO.*.XL*gje6,d&3^Fc/3H^`RAct'5.R-^>\[\6U
V6%A$*8Y,ojCYaH]AmBSL8918\`%]A@FCHenk=Oeo7t\["n08mFG8T:!1/=U#[XebM\#9;r:j'
dH>p$LE&p-6:hP9'VWl>$pA=HS5?;"U0H"*gSbc[~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="0" zoom="true" isUseHTML="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="958" height="502"/>
</Widget>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report0"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="1" left="1" bottom="1" right="1"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0">
<PrivilegeControl/>
</C>
<C c="0" r="1" rs="3" s="0">
<O>
<![CDATA[Date]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="1" cs="2" s="0">
<O>
<![CDATA[Age]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="1" cs="3" s="0">
<O>
<![CDATA[Ending No. birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="1" cs="7" s="0">
<O>
<![CDATA[Vaccine]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" cs="2" s="0">
<O>
<![CDATA[Age]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="2" cs="3" s="0">
<O>
<![CDATA[Ending No. birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="2" cs="7" s="0">
<O>
<![CDATA[GirdBand10]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="3" s="0">
<O>
<![CDATA[d]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="3" s="0">
<O>
<![CDATA[wk]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="3" s="0">
<O>
<![CDATA[Female]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="3" s="0">
<O>
<![CDATA[Male]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="3" s="0">
<O>
<![CDATA[Total]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="3" s="0">
<O>
<![CDATA[Route]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="3" s="0">
<O>
<![CDATA[Vac Type]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="3" s="0">
<O>
<![CDATA[Manufacturers]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="9" r="3" s="0">
<O>
<![CDATA[Dose]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="10" r="3" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="11" r="3" s="0">
<O>
<![CDATA[Batch No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="12" r="3" s="0">
<O>
<![CDATA[Time(Min)]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DocDate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DateAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="WeekAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FemQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MaleQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="5" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="QtyTotal"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="6" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacRoute"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="7" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacName"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="8" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacMade"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="9" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacDose"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="10" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacUsed"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="11" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacBatch"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="12" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacMinute"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="1" size="80"/>
<Background name="ColorBackground" color="-6697729"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style imageLayout="1">
<FRFont name="SimSun" style="0" size="88"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<showToolbar showtoolbar="false"/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<ElementCaseMobileAttrProvider horizontal="1" vertical="0" zoom="true" isUseHTML="false"/>
</body>
</InnerWidget>
<BoundsAttr x="0" y="0" width="958" height="502"/>
</Widget>
<Sorted sorted="false"/>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="958" height="502"/>
<MobileWidgetList/>
<tabFitAttr index="0" tabNameIndex="0"/>
</Widget>
<Widget class="com.fr.form.ui.container.cardlayout.WTabFitLayout">
<WidgetName name="Tab1"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report1"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report1"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="1" left="1" bottom="1" right="1"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR F="1" T="3"/>
<FR/>
<HC F="0" T="0"/>
<FC/>
<UPFCR COLUMN="true" ROW="true"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,1219200,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,3724711,2743200,2743200,2743200,3087148,3020036,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0">
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" rs="3" s="0">
<O>
<![CDATA[Date]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="1" cs="2" s="0">
<O>
<![CDATA[Age]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="1" cs="3" s="0">
<O>
<![CDATA[Ending No. birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="1" cs="8" s="0">
<O>
<![CDATA[Medicine]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" cs="2" s="0">
<O>
<![CDATA[Age]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="2" cs="3" s="0">
<O>
<![CDATA[Ending No. birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="2" s="0">
<O>
<![CDATA[Route]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="2" s="0">
<O>
<![CDATA[Med Type]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="2" s="0">
<O>
<![CDATA[Manufacture]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="9" r="2" s="0">
<O>
<![CDATA[Dose]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="10" r="2" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="11" r="2" s="0">
<O>
<![CDATA[Batch No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="12" r="2" s="0">
<O>
<![CDATA[Time(Min)]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="13" r="2" s="0">
<O>
<![CDATA[Responsible]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="3" s="0">
<O>
<![CDATA[d]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="3" s="0">
<O>
<![CDATA[wk]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="3" s="0">
<O>
<![CDATA[Female]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="3" s="0">
<O>
<![CDATA[Male]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="3" s="0">
<O>
<![CDATA[Total]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="3" s="0">
<O>
<![CDATA[Route]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="3" s="0">
<O>
<![CDATA[Med Type]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="3" s="0">
<O>
<![CDATA[Manufacture]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="9" r="3" s="0">
<O>
<![CDATA[Dose]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="10" r="3" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="11" r="3" s="0">
<O>
<![CDATA[Batch No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="12" r="3" s="0">
<O>
<![CDATA[Time(Min)]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="13" r="3" s="0">
<O>
<![CDATA[Responsible]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DocDate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row()%2==0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Scope val="1"/>
<Background name="ColorBackground" color="-2171170"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="1" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DateAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="WeekAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FemQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MaleQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="5" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="QtyTotal"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="6" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedRoute"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="7" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedName"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="8" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedMade"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="9" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedDose"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="10" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedUsed"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="11" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedBatch"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="12" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedMinute"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="13" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedMan"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="1" size="80"/>
<Background name="ColorBackground" color="-6697729"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style imageLayout="1">
<FRFont name="SimSun" style="0" size="88"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<showToolbar showtoolbar="false"/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[eQN>?<9aF$]A.'#R6tV*q.r$C)&Ye!"X<^Za#Uu+X(q/4WYYe#)82`fe3g*rAR6d:sP*"E>QV
keGF'HX4AJ!gMAk(O6[f-1(^YA?rO!hU3T(i,15O[e6HnS"b_#oEB7'WKXk07+=oYY#,H1Md
scC6bBh3.TtaB4^*be/3n"\*i_+$P[ggIe2!jSJug',sU/NTRSuiZgZ>oDcc4Z[P2%TYEi>)
)#m>9#COApu>ZOJ,!a5A%d9DOX>u,4$>q`Y#d]AKha'C;R8rCX]AA%BLGj7]Ar3Fr$[mZ-kZl.o
m_Hr\m>SY+6OM.cWq+GQ&o1oCJ@d7dmZYC["Z^`&DY%#$X"'FUu#!J8Ad2'?P.>GIVhSN#OC
K8G?gj;QL<:*m^)*6.:;1ET#VW?P?^P[efh\&fcKFQH&=SOjSgnY"F\bAa8eg!')V&DOp@mA
XCGrMWVS:Y$u5I'pb@53\3]AM.J>S>_ZSi3RLF4gE=1@2rNbemK]A8R"@2]AQL+Yhe8dUY8ZUXt
=U5NO6k)H;IL$X_uloM8ZO7595!itl+.(uXV;0FW_#tjcNA*X,R7X`434IX071>fGXSP";Mj
a5i[Bi*tV5Tost2shi/(I3A*5n&m]AU5'%aPWl87&uLP";ghV[YAWD3%@JtaiLh6ePAihR?he
a>dn*4Crui;H]Ak-!0@TC8S=DU+Y+tR?,YO8!(%QR"N&CGUs">"mKbP0HkL>oN#`/l<p.MSAY
TB@VZ8c-%d!:>HXK8DH&-/PhsADcD*gHV1rgN*11k-i]A]ARXIS&84C+XU<tOm4Y;S<e<kod>N
=8IAH$UD=m9Nplp`r+Un46fig4AjD),j"YE;'d':d1)5#`Q0<cGY(D)d?V<G3W[f(YfK,jJJ
-[>ed[jdZK=1EC!k7S$`\gLaIKi;kJ$]A-;IFOIa]Abs5juppo2G=9fN&0@PF%XjUM6ckC7(LR
tH"i.#F_oU>IC=_m)4'NID%<kHTL$]A#@>RT$.P]AL,heY3HRdb.993MjI3h5k6)#u'UO`REeg
J,Fe'\r_H7FLAU18tEc`0S"AF!_9Et*[P3O\$<r`Bk:Q*U&>7>4dB8+3bmdq!U%bcC28'bGE
ln4.)p7S\)U9$I-%7I0[o380NhL&;]AT$8]A#[`;@>'ZHblqt/C`l$!.94mOG8Z=`/]A."jUZ+H
M;in*[QL-fM._%3_6m,:F#*@;lH"7srK,UL'(We<$GLgGBLrRXnu@cjp@XPKuY-G2XdPTbd)
l[uoa1KHFAYN1B1C<+(ff4^8njk8pRHZ93Ktff&R2c!:u3.elo,HW%e"RqPNl\`;MErgF<jW
J[Ji6<Sus.EKb+oMEI=T."ng54NE"Hi$M&cKOdm,luVF[-EQgVZS8^\:.8s)P>;;euUjGn;[
[-F&<oJjK-m)#^^Lum\N+h<CbbT3[W@:e&.FiFT#o>H`f)X"-(&iC""TA\93BE<W[GPM6ErM
4<A(hlR.VELb]A$:QBrYl!6)(I\!MYkZ0i3Q0@ON^)oB5$d2Hh^cXa-*R-qol#d&?3)OJr?1+
cgKSSXjCOB:mGAu[OB&LBH*&s2$d9n6:>'<1IWNjfeuUk"d991>8\ldYDS;]AIPUkVdF[`06G
4UHLYkk1r_WMYcMhN)^l^=6p98=N)bcb<Y&%=HXgCin'tmC<H*-pdS7?^DS4g'.;QN7&srgh
S<7-8IfK60ARu2;lrrt!iR5sC6qH#e"-'V9dq\<fKqIp?:@O8>"D'DWhLN33Rgf_H[gSp[G=
C]ALkgPuCKDtcX4KnY"W4ig@]AT>1>q-&PG:oA'kb=m2dRT<_Y8Z'9VcN%:3fa=*#K-(;Sq[mu
WY>Wu+SVYsY3/9&i^ZcZfnuk8Rfhm9V"#LUehVVkL&FW9pXni7G19b\-,ZIRZB.$,==$LZed
?WSSi\5W!FiP9qls0on3JH\r.58@fY5Z?EonlR[9r^")M/Ai(Gk]AD6;9PjbtOmll:gZ[L@1D
01j>[LEA&]A$JNc/D"A7CF$4sB'+,"T2W&B`VpHn!0Z[RM2cJ'956,h^]AC;Uhl19r:bc%J`3N
$rV8Nel7<#$7b,7H[n#quTPl!n,I2c#W1THK33>VMT5U(QXuXk,U/ZRa:PE54ZCC?aG/[E'.
bbD.jud=a`-_9V&5YS8p1NGegKBA_pq8.Jc?n5V6J8BQ+5.M^5lTh;W=0'@KEs>sIsB8i^E1
TmB9'VosV_LPQ3en]A+(W$ZPH3pcrYr28a#Q5IBWj^#J^EmDP=p;k4<oN0mfZq*GH68*[hmFI
P.;6JD"Y9GO&bg?`pg/u"bZQhZf3020_W_O._&lSuLT2W-sqrF72n&a-@""tK8-!t6ne7N^A
<G^@e&^^"UqP=Lmld+6']AG64BTfi8L0IDiVHrt$Z(h1Y-A,`B`E,UZg]ATJuMY1MbAYRJu&i0
LSDidH!@W?[%2P-JZ._OaQDgnpA$%C%B2(<;X=sE.0RO6Xd7/\elX?DB5Bs=F#T*S[Rst&(r
nM`_(uM>Lp#s"&r216QtW=GXlQ"eG6:kf<L[(AlCXaffudbpU>GUqR)9Scg[-[,#TA2j:C-[
XaV<Q7Dl)R,j;s]A1utZ,pElqB:1GJG`0-<^BCG\(L+U_p?ERMCq)[\#'LH2sS\aHD/#*P+S\
?/Yj]A3#LHf,BFAS`r+1Z`qp#_&Wu?VmIX^Ld#3q9TKIh0l]A>]A<A0D<r)'pS-V>RQ"aqVq&6j
J@#8OXN0o5P3CC7LrT,))/ZO,&ZE-aZ6VKHgpJo#+7JS\WaN0<pIqNr1PZXW*%Y65VId*f@C
)'8QbNK;a+N49I::IZKp0bC8[(WK(Cl*YDF(m>?`]Ap7#\Q$?>&K[&%E3rI3)6C6ODC.El$co
)ZGsoIpO9,E@adM@)a*sl@,t,;LU79K`*]Ai&HekY,VG+ck*ht]A_5eDMN$BicLl8abQBJ9BSX
n5@4%/M$K-6rmn^KI'-KQpOE%%=!)ZJMZ\99>"$4N-E@X=BqSL")D9JK?N=3Qp@CCWsZ.h$&
U6_*AKJ3\E,s^%KAo7NU#4Rm5Sq-*!ZOE.QbV-XU/5OD81rSJ+`+@OJSSRaQ5a,iLpr\5_pJ
f"8(lR96tWk)9goRGHQd`_6Q/;d:8Rc-;e,I6Sfr&GTVM/<cdsudjE!'4#gFfb&&L5)-:K.o
S]Ac']Ap4dA3j>J5\MuYdhkKii6fumfX66Q35oLDKfpP$S*A$"1IE<=5if=U"\(!#XN6pl&Yj-
b%V]A3;hdObPG;BhIH#,-lL:&CXp#G-_uCiCo/4]ARnWh3Z7qqlXo5n/HXW(PjhQCd>l!WJC0V
=9aOt5-9ed4`C"\[Jn_0@1d6INnEr0]A&]ARUgKbdq;4fV<JV5RFFgk*:nTLVAC5<%^cS8eRW'
4RtNl;-S57CCB'l@m1$?/2WIK$fDm;h#*o;\LM]A-_t^l`>#:Sp#S1V,n\9pqDq1qQRdlC%?#
aL0I"T4s(bcB^"6\pOcej4.oj*)2-^c(:^\e,iT;,)`5;4BgW@5LtseLOTeCL,sBrRcC\u[D
TYYC*,`P\BXJNHi5L+SR>g?(?fa5Uk1BHMW0n$7W?l>']A[+.h46tS$$grE(\Rr%*qPga_6U5
Aoc*##_YI#kN]A;`KL*N:Ecn.9oKB?%U2*:qH5I6bBYV9SLY/1_`//V<BHA_k._-N=k;p0hn-
79K8squ*:OD>-c;aNU\P<IM#G6BbXTWc"Q6)_/&C'm`2h<MbKu&B-82k@'N!VdH;&c$>u$RK
ND8rLKDV]AMoTq>'MS.rR%P5(Od:0_JkF&\f+@,lOo0Q<`Z!C(KrVqg9F,)8U@g_(s6cd%EJj
^Gs/+O9m]A`OcUi<=`dr[mA0s6STL,\lXNFJqMj^f:RY[Ct>c??n5j"rbW)P"K27)G^D+2fbm
<*JlCDee-D/eI2Bb%i6Z`PnPNRbe2c-:L$D52*%m;a(_Z>W=i#,Wsj8?*s_6uqk5Q^>l]A",R
L+R*^sdCh)+H.5Z<>2qHV3qD!E\D!aO_J/l8EgQqB)Xh+S!olJVIoQ`:!kdB+g;c?OT<>od;
A8HEbGf=)Z@+ic,UaD3hS_eA?iJFJO?M8!"$1dY5pH*+a%.P7bo/Q/>4&<5#5.@59IL2#S[:
[$e0pjqT+oA2#(RTKO)S!\Mr2?>1qXt[oC*:4+LqO1`oPZhkg*YE=XousqF:Q=TI&L%4*[N[
#J5Psr?)39n$R7Oo_%l2&(B]A*Afnq\MC5">tWI7q?P'_pe5Jo`ig/E#en!0fBaklQtLk9D]AU
#"/54u@EM]Ar)"<Po\ajM%PIELWH5d'aBH8^+[?.h<57%>-3@tM+m;1\@9/7$.roSC28-%.rK
JA'<lXM1YAq;VBIVG:25k/p:081TJA4.9+_MA84oqWaeW5XfTenGD\X9m7G@I=AoEI_B76n-
L<^a[aaj#1b6N!TVm[Me63Hc7Zab_,DRi_)p5PM>H"ef+5oPj[Y`E3^hgRs`R[?^s.IsZ9)T
ft!N_?WGpKd]A&P_9-gaS2uLMBAJS!('B?35`13gLQ6R[tGNr4?+kg5,,tk2F34;j(4t.=q;l
RV]A6AJ[oYJRK:t]A6/!^'`NUJo@o^7t0WRb=t!FH%!>FR5]AE@J,G.&X6?b!'5N0.D_c/tW0V?
RIr*<<)7AI:K\F)lGah.ZeRX:)iI_]AFpdAlF*+)%LH3=H10D$MkmH@lE"GKZtSLSVb*Z4RED
o$j%Pk_=8Jp&P@4!KCB3TT59LZ`>TD1\(@IpJ)t1"%`97Xt7!u=%Ef&_EF@bEXn]Ab(@,^?SB
h7Bp21s<S!f06A.cb'?Qm`1LP/!Kk-)KhWHUgRX6QE8h<HIpAFJt.0=gPnb5NWG`'?+Q83m1
1u0[Uiqi;W'm"-<!%6,44L\HS9^Gd[gcCj[5ls]AA$OC]AK\g,4f3Z-Ti'l\^Q&ZJVE/'pk1:6
BFc3a1TIQ@uAcnH3l6b[nNM?5;p1-dM[F219LTL0t:+;XQ"uEfrNZ2e.nC?%PU),DS=#7Zh*
>r4$]A6f2h#Z9H]Ad2f->l=]A?nUgP`p#HVq1cVj&I%d9Q_J0g\"_$"I57CV2c<,<fIA=tZM8gi
>,*E7[@e<bebL45K:SPmUhM^6BRCoO2>@EB_"6RiU9g3qfd"4G"+2qonG)7K;[]AW^^mc;j8\
hjoe$dU:25&=qkRZ2b4M22;Q,>4Z?48agn8HD&2E^P!C6:75_*C)P^hfL=bRIG*p(@]A/Q[HA
?T=f^WoY%\S.bI\sM):KMtKdl::=G'V91L>a\U/%:kuZjc;kXM/%maj.Y"5Gj-f.c_!R-6_6
j-.*@O0=uo%[?n>a?!TId".m02\?9lLWDS_>h[]AIRa.`7uNj`Ypo+=Juf/K)05(/*Y?CY55E
RH8UbWCZ?A'(Gj#g)T%TuJNPD.(II.4eh.)EngPR=^PXCT=u#%+PKPN">bZqIPM,>8+p+jjj
t5)l2,T^@-uPC0n)FDGA%^R5BOdkG"c/h>"1UFVAI=;0&Z7\4\p2&E,NZEVtf5U_an=W3=S$
j0T8qH*jfT?T:MG5.#VR&8(/':+K/G;m"/1j(Lc@kYR=chq2?hUgNiXU:XHQP!^QG[[BVHj?
GYNDB^E5G=b:rOq]A?(%CT4?#ef+#%ZStg2-eg.T5;1]AgAF%Id1F(:B/FH7pF.ma"XRJV*8rh
!P&IP94e#SqgB8)CmYM_&#$\T3Lq@[+78c1!=E`QC),@Md&Mni4Zl*Dr0?g'??[$De$K;i]A=
4,`LT=gLIH`V=2]AH\p$]A]AC3AbVr^b(@c/.ItX\NWXB,)L>Wh;IOfsgYqk[nn*KreRQMrS8[q
^jnXMkUc&SXLRDEeX>4h#3Pe4JmG0B=O`4IO>[lniCnM*m<11&A5^(+sN_H8kl:/(]A=\b"#j
B]A.i1ZK.n=(#I.XmDME3C5LfjVFcZ*:I*rS,L2^$RI@DNa,MMa+)g8B!=2X>X6YY$;g9fA%V
`UQ6gjRT[E3t5l/%9m#F3&r)Qp"opIhTeOm!PQ.MJeF;!W>$.nL@OL5&fMrTLmhcAjTbXBc#
$he"gAJ>6Idn`WmJfNi?2riUs7eJBPBh-IYI/f$/L7DJ>*S_mF&C#Kt3H1[ZiJ3iaCrHW%Wh
$dA(^Z);"k[\%gKlW7A"0A0_Di4kT;eWjt7bT$ION1RHTZ,]AirFr8;dj;(hmd^((2b*^&dXY
-Z2b4MuFj!oDSHdQFI5T:6CX9raXSQHo"_g)6aXRT&#WpV.MMO]AL4^a@h[EC2r;4Y<(%h/C:
lBTLU.<\aCERsM.7dTn@DWac3Va@%AN)RGVfsm#tdmBs49??M)Wp#1.^6]AS;h$j/"X`7-@WT
N$HJs9S=^)_&gmR1,_05ZVO?&^(f]A!gd&lr%N^#6&BH^V+,XPoBH9`?sla@D*/l70o"Wr484
u!cf"2)UgX!A,4A+*bU^L4%sC6DE58rC:[OlpRJuXe'T'@I!fkH:nK6Z[X<#saAD$R66*GQG
`d"geZ.RIq40F$j/ETWM0Kecl7Q'h"X^jeF&HN,>I2i9'LN%?!la=1g]A3LK&bjbT>Y@_`RQ*
DsCugdeqd&HoJmC%;!r.n-S8^EFZ\cFE7<B=I%5YAKkB5:5=7bm=YT_;TS$P9r(@;&:#iKk5
m.^&./UNMS=<79Lnic[g[*rcMnf]A,RY:LE[Bftn9>gRBMIUM`YLI*5RJ;o,<5fZ^5*$k/pr?
=LQVCl4l0=&pf#k[iQ\.\"QI1C'Ab0H$R=Rg8#UNraGkON!=k/=ScbK=mR<lUR!J:!@eYU$#
.*F7X*Oai^V7Spp]A206:+Ds]A/sf86*EB-Y.]A]AWf`NbmDYX5&E6uR`s7tj9?&dYn[jgQtgs'j
9(2"eA>G8M%VqS>6%=0F@=2Q1m7@-jE1LJ^->-`MZEZpF]AN9#PAHf8EB]AKA=YdgFq0W,1^9[
Pjb&RCq#;Y-!E?/VB,O"gS\]Ar.H9n6.?/p(#`)[!Q&ZA]A&f(C6Rm4r!3t/MsaDb$jZM^e@%O
6BM$AdfH/ZYIq0]A?Z=\)FaONCm9efWGG`1'#*MK/(h25-Gu`>>Q`k,_Z\f:miRqG[^Nu4C@N
kao?f6rn,Q8K8'f#%r^G8S$J_T+m*h)Y2>'Wj(pKVGI38=:1YeuGS@E_qm<i9R@l/arY)UXK
C>$e^#ho>um1r-s9neM[S<@PdMb5\AijQ`Z57ga'0q4A5J&LFAD;%i=Qo<Y$UF/72!C\o"lQ
EME]AcdWND?uec>!'%<2LJ*<1hZ"NJI3RV6`Z[69"1Wr5qF,G!l`9IjQ9fESQKoa?WoEq@(/+
`ni]A\!mr"sj``TP^NX%_/q;:qf@4^"C!LQE6_o`]Af#kS9X%pi'BjMHHD$jqdq(VS2mD9TIl<
r&gT))iY(HYl*<agRfV5VWRFXj^>1i,W=peJnuUtI/qGK=pllXX+>@!L7Lrg3<?8>JKD:!n`
0o2.Z)RNP9tj1.n#)'>$$<urs$3&:P$'mBlmT$0*E_q+Ljr?'&bWk!pY1u)u1%$jd9-mi'$J
+:lo_q%gK#Kn;j!YUAn8_oPWS=@s&%V>h-1VW15,og)S50CFV%ADrM4%HME11oKb[8=8A0Hn
9!t0TmYuCL><TbH]AAC0n`EkZ6AU6DNc_;I04,"+ojseghc^bgF8PY!"fgM)QtrMF[gY@EpKM
m&i&:(mN+iKS/o[7EMBKUm9>QYWK\pbc^p:(/M1%Ko6[0`@f#NkBIh<*8F2El4:4Mt$>Z`\C
.>6g^'7Y'd+L"<aYD$)(*Y)p&aIl,YD#M6r[S!'P'bna3ZLFFf?:E3B!<G016W._EIo$cV!q
'HPf1_Kl,W5V7f"lKZEh3ed8_5&CVo*]A,R2%o'4<i!m(,-Jq(BXUVL#u5.L?&;3C<MYGBu=i
ZBT$Fhm;ns_hh>W?Bp($`d]A$$2]Adi9i<ItKjoU"8bOqod-oVaSI`(*c<$EI3@?X?Y1\Ne73<
5u)'@ScgBr-4O*#[8Pg$$<e#2uh7uDSeWrs-G5RTp_3]A8C_MUJ?BY`<C,>FJV08n@WKqT*//
H<o&d&@o"!YG*gQJO-_MRC,edtfY)iZ/?W>Z<@!@ofp3G2ETjS`]A#'&WCrh[;VNcj=;O1/si
<7!p:&?3ldmVsU0;c2Y?pmi_OrjC=)=d@;-]AXJo!R<.,?OuQ0+K0?TVbn4?HL),r-,YVP[aE
)!P%3j)Zl[LBh&#T-E#fiRD^uXt;F+]Anm^tmuqAe%UO5@041dd3PdrrSQ4FB/$*s*\V)<'dP
X&-Ls;f[WsFQ33S36?(jncRQc&5kd=</_c"%n5as",i2/jB"2aZ>r>Rmq@g7s0n/]A*9VMHE#
/K`=-=$&cLJ6.b#oBtFTQj_AO.N"&5^rk+-YiRo0G[JuU\OjecNO>dA_gGs@=D'^rV%jDgmj
+!ikst51Y8]A7bcAH)PY`'HilH1,@jDSrX,G?(L>`\J#GD_p$_\Ehb86HNf"[\=:Vf5uWrKU<
9E5?>kPn+).g;2>9'#T%>Ebt7e?K>m233p7N2LV^(BFYS/L(FTQoZT_q$KjcJr'0`9ZW,bDL
44lMpH_ST0gEpX(<F#5D`87D^he"+0e)HRIgi8]Ah\KKQFO3T%O"cLLn?gKRPoB,\)_1CW\A;
<B[b?WcW^GPOr=GG=#XOko4XNXgMG+M/nG@]A<Aq_%b>%OUqmMEb:eA+`5==8p*WJ2tT@O;RT
O.['Ja3)0YQaA!6;rRSKX<^5"%c?*qU=$F4kQ0f-Fb?,/?EE]Ao?_tV"paj"^HWM)If~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="0" zoom="true" isUseHTML="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="958" height="502"/>
</Widget>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report1"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="1" left="1" bottom="1" right="1"/>
<Border>
<border style="0" color="-723724" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR F="1" T="3"/>
<FR/>
<HC F="0" T="0"/>
<FC/>
<UPFCR COLUMN="true" ROW="true"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,1219200,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,3724711,2743200,2743200,2743200,3087148,3020036,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0">
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" rs="3" s="0">
<O>
<![CDATA[Date]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="1" cs="2" s="0">
<O>
<![CDATA[Age]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="1" cs="3" s="0">
<O>
<![CDATA[Ending No. birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="1" cs="8" s="0">
<O>
<![CDATA[Medicine]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" cs="2" s="0">
<O>
<![CDATA[Age]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="2" cs="3" s="0">
<O>
<![CDATA[Ending No. birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="2" s="0">
<O>
<![CDATA[Route]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="2" s="0">
<O>
<![CDATA[Med Type]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="2" s="0">
<O>
<![CDATA[Manufacture]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="9" r="2" s="0">
<O>
<![CDATA[Dose]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="10" r="2" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="11" r="2" s="0">
<O>
<![CDATA[Batch No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="12" r="2" s="0">
<O>
<![CDATA[Time(Min)]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="13" r="2" s="0">
<O>
<![CDATA[Responsible]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="3" s="0">
<O>
<![CDATA[d]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="3" s="0">
<O>
<![CDATA[wk]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="3" s="0">
<O>
<![CDATA[Female]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="3" s="0">
<O>
<![CDATA[Male]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="3" s="0">
<O>
<![CDATA[Total]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="3" s="0">
<O>
<![CDATA[Route]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="3" s="0">
<O>
<![CDATA[Med Type]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="3" s="0">
<O>
<![CDATA[Manufacture]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="9" r="3" s="0">
<O>
<![CDATA[Dose]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="10" r="3" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="11" r="3" s="0">
<O>
<![CDATA[Batch No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="12" r="3" s="0">
<O>
<![CDATA[Time(Min)]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="13" r="3" s="0">
<O>
<![CDATA[Responsible]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DocDate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DateAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="WeekAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FemQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MaleQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="5" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="QtyTotal"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="6" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedRoute"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="7" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedName"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="8" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedMade"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="9" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedDose"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="10" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedUsed"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="11" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedBatch"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="12" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedMinute"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="13" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedMan"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="1" size="80"/>
<Background name="ColorBackground" color="-6697729"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style imageLayout="1">
<FRFont name="SimSun" style="0" size="88"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<showToolbar showtoolbar="false"/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[eQN>?<9aF$]A.'#R6tV*q.r$C)&Ye!"X<^Za#Uu+X(q/4WYYe#)82`fe3g*rAR6d:sP*"E>QV
keGF'HX4AJ!gMAk(O6[f-1(^YA?rO!hU3T(i,15O[e6HnS"b_#oEB7'WKXk07+=oYY#,H1Md
scC6bBh3.TtaB4^*be/3n"\*i_+$P[ggIe2!jSJug',sU/NTRSuiZgZ>oDcc4Z[P2%TYEi>)
)#m>9#COApu>ZOJ,!a5A%d9DOX>u,4$>q`Y#d]AKha'C;R8rCX]AA%BLGj7]Ar3Fr$[mZ-kZl.o
m_Hr\m>SY+6OM.cWq+GQ&o1oCJ@d7dmZYC["Z^`&DY%#$X"'FUu#!J8Ad2'?P.>GIVhSN#OC
K8G?gj;QL<:*m^)*6.:;1ET#VW?P?^P[efh\&fcKFQH&=SOjSgnY"F\bAa8eg!')V&DOp@mA
XCGrMWVS:Y$u5I'pb@53\3]AM.J>S>_ZSi3RLF4gE=1@2rNbemK]A8R"@2]AQL+Yhe8dUY8ZUXt
=U5NO6k)H;IL$X_uloM8ZO7595!itl+.(uXV;0FW_#tjcNA*X,R7X`434IX071>fGXSP";Mj
a5i[Bi*tV5Tost2shi/(I3A*5n&m]AU5'%aPWl87&uLP";ghV[YAWD3%@JtaiLh6ePAihR?he
a>dn*4Crui;H]Ak-!0@TC8S=DU+Y+tR?,YO8!(%QR"N&CGUs">"mKbP0HkL>oN#`/l<p.MSAY
TB@VZ8c-%d!:>HXK8DH&-/PhsADcD*gHV1rgN*11k-i]A]ARXIS&84C+XU<tOm4Y;S<e<kod>N
=8IAH$UD=m9Nplp`r+Un46fig4AjD),j"YE;'d':d1)5#`Q0<cGY(D)d?V<G3W[f(YfK,jJJ
-[>ed[jdZK=1EC!k7S$`\gLaIKi;kJ$]A-;IFOIa]Abs5juppo2G=9fN&0@PF%XjUM6ckC7(LR
tH"i.#F_oU>IC=_m)4'NID%<kHTL$]A#@>RT$.P]AL,heY3HRdb.993MjI3h5k6)#u'UO`REeg
J,Fe'\r_H7FLAU18tEc`0S"AF!_9Et*[P3O\$<r`Bk:Q*U&>7>4dB8+3bmdq!U%bcC28'bGE
ln4.)p7S\)U9$I-%7I0[o380NhL&;]AT$8]A#[`;@>'ZHblqt/C`l$!.94mOG8Z=`/]A."jUZ+H
M;in*[QL-fM._%3_6m,:F#*@;lH"7srK,UL'(We<$GLgGBLrRXnu@cjp@XPKuY-G2XdPTbd)
l[uoa1KHFAYN1B1C<+(ff4^8njk8pRHZ93Ktff&R2c!:u3.elo,HW%e"RqPNl\`;MErgF<jW
J[Ji6<Sus.EKb+oMEI=T."ng54NE"Hi$M&cKOdm,luVF[-EQgVZS8^\:.8s)P>;;euUjGn;[
[-F&<oJjK-m)#^^Lum\N+h<CbbT3[W@:e&.FiFT#o>H`f)X"-(&iC""TA\93BE<W[GPM6ErM
4<A(hlR.VELb]A$:QBrYl!6)(I\!MYkZ0i3Q0@ON^)oB5$d2Hh^cXa-*R-qol#d&?3)OJr?1+
cgKSSXjCOB:mGAu[OB&LBH*&s2$d9n6:>'<1IWNjfeuUk"d991>8\ldYDS;]AIPUkVdF[`06G
4UHLYkk1r_WMYcMhN)^l^=6p98=N)bcb<Y&%=HXgCin'tmC<H*-pdS7?^DS4g'.;QN7&srgh
S<7-8IfK60ARu2;lrrt!iR5sC6qH#e"-'V9dq\<fKqIp?:@O8>"D'DWhLN33Rgf_H[gSp[G=
C]ALkgPuCKDtcX4KnY"W4ig@]AT>1>q-&PG:oA'kb=m2dRT<_Y8Z'9VcN%:3fa=*#K-(;Sq[mu
WY>Wu+SVYsY3/9&i^ZcZfnuk8Rfhm9V"#LUehVVkL&FW9pXni7G19b\-,ZIRZB.$,==$LZed
?WSSi\5W!FiP9qls0on3JH\r.58@fY5Z?EonlR[9r^")M/Ai(Gk]AD6;9PjbtOmll:gZ[L@1D
01j>[LEA&]A$JNc/D"A7CF$4sB'+,"T2W&B`VpHn!0Z[RM2cJ'956,h^]AC;Uhl19r:bc%J`3N
$rV8Nel7<#$7b,7H[n#quTPl!n,I2c#W1THK33>VMT5U(QXuXk,U/ZRa:PE54ZCC?aG/[E'.
bbD.jud=a`-_9V&5YS8p1NGegKBA_pq8.Jc?n5V6J8BQ+5.M^5lTh;W=0'@KEs>sIsB8i^E1
TmB9'VosV_LPQ3en]A+(W$ZPH3pcrYr28a#Q5IBWj^#J^EmDP=p;k4<oN0mfZq*GH68*[hmFI
P.;6JD"Y9GO&bg?`pg/u"bZQhZf3020_W_O._&lSuLT2W-sqrF72n&a-@""tK8-!t6ne7N^A
<G^@e&^^"UqP=Lmld+6']AG64BTfi8L0IDiVHrt$Z(h1Y-A,`B`E,UZg]ATJuMY1MbAYRJu&i0
LSDidH!@W?[%2P-JZ._OaQDgnpA$%C%B2(<;X=sE.0RO6Xd7/\elX?DB5Bs=F#T*S[Rst&(r
nM`_(uM>Lp#s"&r216QtW=GXlQ"eG6:kf<L[(AlCXaffudbpU>GUqR)9Scg[-[,#TA2j:C-[
XaV<Q7Dl)R,j;s]A1utZ,pElqB:1GJG`0-<^BCG\(L+U_p?ERMCq)[\#'LH2sS\aHD/#*P+S\
?/Yj]A3#LHf,BFAS`r+1Z`qp#_&Wu?VmIX^Ld#3q9TKIh0l]A>]A<A0D<r)'pS-V>RQ"aqVq&6j
J@#8OXN0o5P3CC7LrT,))/ZO,&ZE-aZ6VKHgpJo#+7JS\WaN0<pIqNr1PZXW*%Y65VId*f@C
)'8QbNK;a+N49I::IZKp0bC8[(WK(Cl*YDF(m>?`]Ap7#\Q$?>&K[&%E3rI3)6C6ODC.El$co
)ZGsoIpO9,E@adM@)a*sl@,t,;LU79K`*]Ai&HekY,VG+ck*ht]A_5eDMN$BicLl8abQBJ9BSX
n5@4%/M$K-6rmn^KI'-KQpOE%%=!)ZJMZ\99>"$4N-E@X=BqSL")D9JK?N=3Qp@CCWsZ.h$&
U6_*AKJ3\E,s^%KAo7NU#4Rm5Sq-*!ZOE.QbV-XU/5OD81rSJ+`+@OJSSRaQ5a,iLpr\5_pJ
f"8(lR96tWk)9goRGHQd`_6Q/;d:8Rc-;e,I6Sfr&GTVM/<cdsudjE!'4#gFfb&&L5)-:K.o
S]Ac']Ap4dA3j>J5\MuYdhkKii6fumfX66Q35oLDKfpP$S*A$"1IE<=5if=U"\(!#XN6pl&Yj-
b%V]A3;hdObPG;BhIH#,-lL:&CXp#G-_uCiCo/4]ARnWh3Z7qqlXo5n/HXW(PjhQCd>l!WJC0V
=9aOt5-9ed4`C"\[Jn_0@1d6INnEr0]A&]ARUgKbdq;4fV<JV5RFFgk*:nTLVAC5<%^cS8eRW'
4RtNl;-S57CCB'l@m1$?/2WIK$fDm;h#*o;\LM]A-_t^l`>#:Sp#S1V,n\9pqDq1qQRdlC%?#
aL0I"T4s(bcB^"6\pOcej4.oj*)2-^c(:^\e,iT;,)`5;4BgW@5LtseLOTeCL,sBrRcC\u[D
TYYC*,`P\BXJNHi5L+SR>g?(?fa5Uk1BHMW0n$7W?l>']A[+.h46tS$$grE(\Rr%*qPga_6U5
Aoc*##_YI#kN]A;`KL*N:Ecn.9oKB?%U2*:qH5I6bBYV9SLY/1_`//V<BHA_k._-N=k;p0hn-
79K8squ*:OD>-c;aNU\P<IM#G6BbXTWc"Q6)_/&C'm`2h<MbKu&B-82k@'N!VdH;&c$>u$RK
ND8rLKDV]AMoTq>'MS.rR%P5(Od:0_JkF&\f+@,lOo0Q<`Z!C(KrVqg9F,)8U@g_(s6cd%EJj
^Gs/+O9m]A`OcUi<=`dr[mA0s6STL,\lXNFJqMj^f:RY[Ct>c??n5j"rbW)P"K27)G^D+2fbm
<*JlCDee-D/eI2Bb%i6Z`PnPNRbe2c-:L$D52*%m;a(_Z>W=i#,Wsj8?*s_6uqk5Q^>l]A",R
L+R*^sdCh)+H.5Z<>2qHV3qD!E\D!aO_J/l8EgQqB)Xh+S!olJVIoQ`:!kdB+g;c?OT<>od;
A8HEbGf=)Z@+ic,UaD3hS_eA?iJFJO?M8!"$1dY5pH*+a%.P7bo/Q/>4&<5#5.@59IL2#S[:
[$e0pjqT+oA2#(RTKO)S!\Mr2?>1qXt[oC*:4+LqO1`oPZhkg*YE=XousqF:Q=TI&L%4*[N[
#J5Psr?)39n$R7Oo_%l2&(B]A*Afnq\MC5">tWI7q?P'_pe5Jo`ig/E#en!0fBaklQtLk9D]AU
#"/54u@EM]Ar)"<Po\ajM%PIELWH5d'aBH8^+[?.h<57%>-3@tM+m;1\@9/7$.roSC28-%.rK
JA'<lXM1YAq;VBIVG:25k/p:081TJA4.9+_MA84oqWaeW5XfTenGD\X9m7G@I=AoEI_B76n-
L<^a[aaj#1b6N!TVm[Me63Hc7Zab_,DRi_)p5PM>H"ef+5oPj[Y`E3^hgRs`R[?^s.IsZ9)T
ft!N_?WGpKd]A&P_9-gaS2uLMBAJS!('B?35`13gLQ6R[tGNr4?+kg5,,tk2F34;j(4t.=q;l
RV]A6AJ[oYJRK:t]A6/!^'`NUJo@o^7t0WRb=t!FH%!>FR5]AE@J,G.&X6?b!'5N0.D_c/tW0V?
RIr*<<)7AI:K\F)lGah.ZeRX:)iI_]AFpdAlF*+)%LH3=H10D$MkmH@lE"GKZtSLSVb*Z4RED
o$j%Pk_=8Jp&P@4!KCB3TT59LZ`>TD1\(@IpJ)t1"%`97Xt7!u=%Ef&_EF@bEXn]Ab(@,^?SB
h7Bp21s<S!f06A.cb'?Qm`1LP/!Kk-)KhWHUgRX6QE8h<HIpAFJt.0=gPnb5NWG`'?+Q83m1
1u0[Uiqi;W'm"-<!%6,44L\HS9^Gd[gcCj[5ls]AA$OC]AK\g,4f3Z-Ti'l\^Q&ZJVE/'pk1:6
BFc3a1TIQ@uAcnH3l6b[nNM?5;p1-dM[F219LTL0t:+;XQ"uEfrNZ2e.nC?%PU),DS=#7Zh*
>r4$]A6f2h#Z9H]Ad2f->l=]A?nUgP`p#HVq1cVj&I%d9Q_J0g\"_$"I57CV2c<,<fIA=tZM8gi
>,*E7[@e<bebL45K:SPmUhM^6BRCoO2>@EB_"6RiU9g3qfd"4G"+2qonG)7K;[]AW^^mc;j8\
hjoe$dU:25&=qkRZ2b4M22;Q,>4Z?48agn8HD&2E^P!C6:75_*C)P^hfL=bRIG*p(@]A/Q[HA
?T=f^WoY%\S.bI\sM):KMtKdl::=G'V91L>a\U/%:kuZjc;kXM/%maj.Y"5Gj-f.c_!R-6_6
j-.*@O0=uo%[?n>a?!TId".m02\?9lLWDS_>h[]AIRa.`7uNj`Ypo+=Juf/K)05(/*Y?CY55E
RH8UbWCZ?A'(Gj#g)T%TuJNPD.(II.4eh.)EngPR=^PXCT=u#%+PKPN">bZqIPM,>8+p+jjj
t5)l2,T^@-uPC0n)FDGA%^R5BOdkG"c/h>"1UFVAI=;0&Z7\4\p2&E,NZEVtf5U_an=W3=S$
j0T8qH*jfT?T:MG5.#VR&8(/':+K/G;m"/1j(Lc@kYR=chq2?hUgNiXU:XHQP!^QG[[BVHj?
GYNDB^E5G=b:rOq]A?(%CT4?#ef+#%ZStg2-eg.T5;1]AgAF%Id1F(:B/FH7pF.ma"XRJV*8rh
!P&IP94e#SqgB8)CmYM_&#$\T3Lq@[+78c1!=E`QC),@Md&Mni4Zl*Dr0?g'??[$De$K;i]A=
4,`LT=gLIH`V=2]AH\p$]A]AC3AbVr^b(@c/.ItX\NWXB,)L>Wh;IOfsgYqk[nn*KreRQMrS8[q
^jnXMkUc&SXLRDEeX>4h#3Pe4JmG0B=O`4IO>[lniCnM*m<11&A5^(+sN_H8kl:/(]A=\b"#j
B]A.i1ZK.n=(#I.XmDME3C5LfjVFcZ*:I*rS,L2^$RI@DNa,MMa+)g8B!=2X>X6YY$;g9fA%V
`UQ6gjRT[E3t5l/%9m#F3&r)Qp"opIhTeOm!PQ.MJeF;!W>$.nL@OL5&fMrTLmhcAjTbXBc#
$he"gAJ>6Idn`WmJfNi?2riUs7eJBPBh-IYI/f$/L7DJ>*S_mF&C#Kt3H1[ZiJ3iaCrHW%Wh
$dA(^Z);"k[\%gKlW7A"0A0_Di4kT;eWjt7bT$ION1RHTZ,]AirFr8;dj;(hmd^((2b*^&dXY
-Z2b4MuFj!oDSHdQFI5T:6CX9raXSQHo"_g)6aXRT&#WpV.MMO]AL4^a@h[EC2r;4Y<(%h/C:
lBTLU.<\aCERsM.7dTn@DWac3Va@%AN)RGVfsm#tdmBs49??M)Wp#1.^6]AS;h$j/"X`7-@WT
N$HJs9S=^)_&gmR1,_05ZVO?&^(f]A!gd&lr%N^#6&BH^V+,XPoBH9`?sla@D*/l70o"Wr484
u!cf"2)UgX!A,4A+*bU^L4%sC6DE58rC:[OlpRJuXe'T'@I!fkH:nK6Z[X<#saAD$R66*GQG
`d"geZ.RIq40F$j/ETWM0Kecl7Q'h"X^jeF&HN,>I2i9'LN%?!la=1g]A3LK&bjbT>Y@_`RQ*
DsCugdeqd&HoJmC%;!r.n-S8^EFZ\cFE7<B=I%5YAKkB5:5=7bm=YT_;TS$P9r(@;&:#iKk5
m.^&./UNMS=<79Lnic[g[*rcMnf]A,RY:LE[Bftn9>gRBMIUM`YLI*5RJ;o,<5fZ^5*$k/pr?
=LQVCl4l0=&pf#k[iQ\.\"QI1C'Ab0H$R=Rg8#UNraGkON!=k/=ScbK=mR<lUR!J:!@eYU$#
.*F7X*Oai^V7Spp]A206:+Ds]A/sf86*EB-Y.]A]AWf`NbmDYX5&E6uR`s7tj9?&dYn[jgQtgs'j
9(2"eA>G8M%VqS>6%=0F@=2Q1m7@-jE1LJ^->-`MZEZpF]AN9#PAHf8EB]AKA=YdgFq0W,1^9[
Pjb&RCq#;Y-!E?/VB,O"gS\]Ar.H9n6.?/p(#`)[!Q&ZA]A&f(C6Rm4r!3t/MsaDb$jZM^e@%O
6BM$AdfH/ZYIq0]A?Z=\)FaONCm9efWGG`1'#*MK/(h25-Gu`>>Q`k,_Z\f:miRqG[^Nu4C@N
kao?f6rn,Q8K8'f#%r^G8S$J_T+m*h)Y2>'Wj(pKVGI38=:1YeuGS@E_qm<i9R@l/arY)UXK
C>$e^#ho>um1r-s9neM[S<@PdMb5\AijQ`Z57ga'0q4A5J&LFAD;%i=Qo<Y$UF/72!C\o"lQ
EME]AcdWND?uec>!'%<2LJ*<1hZ"NJI3RV6`Z[69"1Wr5qF,G!l`9IjQ9fESQKoa?WoEq@(/+
`ni]A\!mr"sj``TP^NX%_/q;:qf@4^"C!LQE6_o`]Af#kS9X%pi'BjMHHD$jqdq(VS2mD9TIl<
r&gT))iY(HYl*<agRfV5VWRFXj^>1i,W=peJnuUtI/qGK=pllXX+>@!L7Lrg3<?8>JKD:!n`
0o2.Z)RNP9tj1.n#)'>$$<urs$3&:P$'mBlmT$0*E_q+Ljr?'&bWk!pY1u)u1%$jd9-mi'$J
+:lo_q%gK#Kn;j!YUAn8_oPWS=@s&%V>h-1VW15,og)S50CFV%ADrM4%HME11oKb[8=8A0Hn
9!t0TmYuCL><TbH]AAC0n`EkZ6AU6DNc_;I04,"+ojseghc^bgF8PY!"fgM)QtrMF[gY@EpKM
m&i&:(mN+iKS/o[7EMBKUm9>QYWK\pbc^p:(/M1%Ko6[0`@f#NkBIh<*8F2El4:4Mt$>Z`\C
.>6g^'7Y'd+L"<aYD$)(*Y)p&aIl,YD#M6r[S!'P'bna3ZLFFf?:E3B!<G016W._EIo$cV!q
'HPf1_Kl,W5V7f"lKZEh3ed8_5&CVo*]A,R2%o'4<i!m(,-Jq(BXUVL#u5.L?&;3C<MYGBu=i
ZBT$Fhm;ns_hh>W?Bp($`d]A$$2]Adi9i<ItKjoU"8bOqod-oVaSI`(*c<$EI3@?X?Y1\Ne73<
5u)'@ScgBr-4O*#[8Pg$$<e#2uh7uDSeWrs-G5RTp_3]A8C_MUJ?BY`<C,>FJV08n@WKqT*//
H<o&d&@o"!YG*gQJO-_MRC,edtfY)iZ/?W>Z<@!@ofp3G2ETjS`]A#'&WCrh[;VNcj=;O1/si
<7!p:&?3ldmVsU0;c2Y?pmi_OrjC=)=d@;-]AXJo!R<.,?OuQ0+K0?TVbn4?HL),r-,YVP[aE
)!P%3j)Zl[LBh&#T-E#fiRD^uXt;F+]Anm^tmuqAe%UO5@041dd3PdrrSQ4FB/$*s*\V)<'dP
X&-Ls;f[WsFQ33S36?(jncRQc&5kd=</_c"%n5as",i2/jB"2aZ>r>Rmq@g7s0n/]A*9VMHE#
/K`=-=$&cLJ6.b#oBtFTQj_AO.N"&5^rk+-YiRo0G[JuU\OjecNO>dA_gGs@=D'^rV%jDgmj
+!ikst51Y8]A7bcAH)PY`'HilH1,@jDSrX,G?(L>`\J#GD_p$_\Ehb86HNf"[\=:Vf5uWrKU<
9E5?>kPn+).g;2>9'#T%>Ebt7e?K>m233p7N2LV^(BFYS/L(FTQoZT_q$KjcJr'0`9ZW,bDL
44lMpH_ST0gEpX(<F#5D`87D^he"+0e)HRIgi8]Ah\KKQFO3T%O"cLLn?gKRPoB,\)_1CW\A;
<B[b?WcW^GPOr=GG=#XOko4XNXgMG+M/nG@]A<Aq_%b>%OUqmMEb:eA+`5==8p*WJ2tT@O;RT
O.['Ja3)0YQaA!6;rRSKX<^5"%c?*qU=$F4kQ0f-Fb?,/?EE]Ao?_tV"paj"^HWM)If~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="0" zoom="true" isUseHTML="false"/>
</body>
</InnerWidget>
<BoundsAttr x="0" y="0" width="958" height="502"/>
</Widget>
<Sorted sorted="false"/>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="958" height="502"/>
<MobileWidgetList/>
<tabFitAttr index="1" tabNameIndex="1"/>
</Widget>
</Center>
</InnerWidget>
<BoundsAttr x="0" y="0" width="960" height="540"/>
</Widget>
<Sorted sorted="false"/>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="960" height="540"/>
<MobileWidgetList/>
</Center>
</Layout>
<DesignerVersion DesignerVersion="IAA"/>
<PreviewType PreviewType="0"/>
</Form>

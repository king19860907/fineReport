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
         t2."U_EBDate",
         t2."U_ZYDate",
         T1."DocDate",
         T1."DateAge",
         T1."DayOfWeek",
         T1."WeekAge",
         T1."ProdAge",
         T1."OBFemQty",
         T1."OBMaleQty",
         T1."OBQtyTotal",
         T1."FMRatio",
         T1."FemDQty",
         T1."FemCQty",
         T1."FemMQty",
         T1."FemDCTotalByD",
         T1."FemDCRateByW",
         T1."FemDCTotal",
         T1."FemDCRate",
         T1."MaleDQty",
         T1."MaleCQty",
         T1."MaleMQty",
         T1."MaleDCTotalByD",
         T1."MaleDCRateByW",
         T1."MaleDCTotal",
         T1."MaleDcRate",
         T1."FemAdd",
         T1."FemLess",
         T1."MaleAdd",
         T1."MaleLess",
         T1."FemQty",
         T1."MaleQty",
         T1."QtyTotal",
         T1."FemFeedQty",
         T1."MaleFeedQty",
         T1."FeedQtyByD",
         T1."FeedQtyByW",
         T1."FeedQty",
         T1."FemFeedAvg",
         T1."MaleFeedAvg",
         T1."FemFeedAvgW",
         T1."MaleFeedAvgW",
         T1."FemFeedTime",
         T1."FemFeedBat",
         T1."FemProgram",
         T1."MaleFeedTime",
         T1."MaleFeedBat",
         T1."MaleProgram",
         T1."WaterQty",
         T1."WFRate",
         T1."WaterAvg",
         T1."LightHour",
         T1."LightLux",
         T1."FemWeiAvg",
         T1."FemWeiStd",
         T1."FemWeiUn",
         T1."MaleWeiAvg",
         T1."MaleWeiStd",
         T1."MaleWeiUn",
         T1."AntiND",
         T1."AntiH9",
         T1."AntiH5",
         T1."FuleQty",
         T1."InMaxTemp",
         T1."InMinTemp",
         T1."OutMaxTemp",
         T1."OutMinTemp",
         T1."InMaxHumi",
         T1."InMinHumi",
         T1."OutMaxHumi",
         T1."OutMinHumi",
         T1."FeTempMax",
         T1."FeTempMin",
         T1."EggQty",
         T1."EggRatio",
         T1."EggStdNoByPer",
         T1."EggStdNoByDay",
         T1."EggTotalByW",
         T1."EggRatioByW",
         T1."EggRatioStd",
         T1."EggTotalStd",
         T1."EggTotalFact",
         T1."EggWFact",
         T1."EggWStd",
         T1."DYEggQty",
         T1."SMEggQty",
         T1."BREggQty",
         T1."CAEggQty",
         T1."LEggQty",
         T1."CullEggQty",
         T1."HaEggQty",
         T1."HaEggRatio",
         T1."HaEggStdNoByPer",
         T1."HaEggStdNoByDay",
         T1."HaEggeff",
         T1."HaEggTotalByW",
         T1."HaEggRatioByW",
         T1."HaEggRatioStd",
         T1."HaEggTotalFact",
         T1."HaEggTotalStd",
         T1."HaEggWFact",
         T1."HaEggWStd",
         T1."FERatio",
         T1."FERatioStd",
         T1."Remarks",
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
FROM SBO_AG_FARM.U_PDOWOR T0
INNER JOIN SBO_AG_FARM.U_PDWOR1 T1
    ON T0."DocEntry" = T1."DocEntry"
INNER JOIN SBO_AG_FARM.OPRC t2
    ON t2."PrcCode" = t0."BatchNum"
WHERE T0."FarmCode" = ${farmCode}
        AND T0."OcrCode3" = ${houseCode}
        AND T0."BatchNum" = ${batchCode}
        AND T1."DocDate" < NOW(); ]]></Query>
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
<BoundsAttr x="351" y="23" width="80" height="21"/>
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
<BoundsAttr x="431" y="23" width="214" height="21"/>
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
<fontSize>
<![CDATA[13]]></fontSize>
<DirectEdit>
<![CDATA[false]]></DirectEdit>
<CustomData>
<![CDATA[false]]></CustomData>
<Dictionary class="com.fr.data.impl.TableDataDictionary">
<FormulaDictAttr kiName="PrcCode" formula="=$$$+&quot;  &quot;+ VALUE(&quot;selectLayerFarm&quot;,&quot;PrcName&quot;,&quot;PrcCode&quot;,$$$,1)"/>
<TableDataDictAttr>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[selectLayerFarm]]></Name>
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
<Widget widgetName="houseCode"/>
<Widget widgetName="farmCode"/>
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
<WidgetName name="b578ad74-0698-4479-9dc0-84ad9df2f683"/>
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
<WidgetName name="64e23893-31ea-4b30-b7d9-37c2ceb00a80"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[Vac.Stat.]]></Text>
<initial>
<Background name="ColorBackground" color="-1"/>
</initial>
<FRFont name="SimSun" style="0" size="72"/>
<isCustomType isCustomType="true"/>
<SwitchTagAttr layoutName="tabpane0"/>
</Widget>
<Widget class="com.fr.form.ui.CardSwitchButton">
<WidgetName name="1a87330b-801b-4b5d-a9a6-96ca0c059b7a"/>
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
<WidgetName name="Tab0"/>
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
<HR F="0" T="3"/>
<FR/>
<HC F="0" T="0"/>
<FC/>
<UPFCR COLUMN="true" ROW="true"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,723900,1143000,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[3923607,2743200,2743200,2743200,2743200,2743200,2743200,2743200,7813963,9277003,9010996,8711738,8345978,11205556,12136581,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<C c="1" r="1" cs="3" rs="2" s="0">
<O>
<![CDATA[Age]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="1" rs="3" s="0">
<O>
<![CDATA[F/M]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="1" cs="3" rs="2" s="0">
<O>
<![CDATA[Ending No. birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="1" cs="7" s="0">
<O>
<![CDATA[Vaccine]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="2" cs="7" s="0">
<O>
<![CDATA[gridBand10]]></O>
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
<![CDATA[prod]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="3" s="0">
<O>
<![CDATA[Female]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="3" s="0">
<O>
<![CDATA[Male]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="3" s="0">
<O>
<![CDATA[Total]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="3" s="0">
<O>
<![CDATA[Route]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="9" r="3" s="0">
<O>
<![CDATA[Vac Type]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="10" r="3" s="0">
<O>
<![CDATA[Manufacturers]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="11" r="3" s="0">
<O>
<![CDATA[Dose]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="12" r="3" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="13" r="3" s="0">
<O>
<![CDATA[Batch No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="14" r="3" s="0">
<O>
<![CDATA[Time(Min)]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DocDate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row()%2=0]]></Formula>
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
<Attributes dsName="ds1" columnName="ProdAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FMRatio"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="5" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FemQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="6" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MaleQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="7" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="QtyTotal"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="8" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacRoute"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="9" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacName"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="10" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacMade"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="11" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacDose"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="12" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacUsed"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="13" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacBatch"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="14" r="4" s="1">
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
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="88"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.00]]></Format>
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
<![CDATA[buo<o'3Ee`>-TOcobEgn!u>(@/\':6A6?2>!>S!W+Ia(pZH4`:*icXW8sN9cX.gGAhmAIKA5
a_1U&rK3=b$bp'GGYG#iWHa65%&2[_@0;^8IBK13YnEGL,hAGE,m1ROZWi4Bk*;6.t&;Gdi:
AFCtc2BhL[Y#$Ra"NgV=EBI9/eDqPf@jE$F?g8dj\X^7FA8Q]A]Aom6:!\8'5&:'3D?j4QgqJ%
a(-PHX'S6X.E8bc`C\"FgOZWO$oU]AZ?F+/7Dd^i5pHjg]A[:p!F.;bSJ)Jc#0.q;d,,@BLpV"
iiQlnP!GXoa!'0LXmA#'-WNO!G4hk1VEnu\"k@ok[-%;edZ%%7>Q^3iNnb]AQ<Q=6@=CU#dR)
J)Y,Edm_=$C]A@eXS%H@ck4M[`B8,p$oB!g\X.9.U6r2q<@f;FDe!K!@CTPkHOW=,8ICk@.`5
g1;/D^A,C"=tD[a'h)MGo"M'^]AYWLJORKCbj]Ajj9j#5-RRb*amL"0b_,RZ\tfG3b8;0sr*Ha
L*Yt;K*C3>Z-Gs6sSnciH;J2/ph:kP*9?Y(._3Z_si3G9u5ZGV]A5'UStN%9'.%b#!a:(Z<?6
AX)O1L=?HJddgHI"S"Oo>_aDAjFNQkh_VSO4at-m@^Ni9(cSOrMmttPB":P@dCK)E,^'Yg#8
%os%rXYA5#Zjop7<=a7!%_[nBOn[f<(Fa]A6jhdZ;u"^_?$o.F-N#!$5n!T/BZQjnB7Q?V!.d
P[QQ:=,VL@GXWQ(<eH,ISP_8VpuN4t@<toq"3%/aEZgo9f=>77bt1&Rbu,EAg:R)&8g?h']A$
2=..ag<d)A[FL5F=/MGqg8GNhrtQ$cmXplTf-%HM$AcGDQT3==SiM8dGbC>*rb&%UZk-PJ"U
1C2[thJ^s+ISPg8^Z[p!'OE*GuN1hg(JCpdId&t/0AQ=Ra;$^VK^p="GC3%W>g%_73`cug*_
C`KadCJl2cCGohrAWSQ##F?+ZUO>ja3RPIfbK:kQ^!l*o:R:GCqR&?/,*3,X-;mj<e)M[O6t
+uOq2FSrTK?MUu\0RQIIA]AaN)T(,:OYA:MQM)I'=mQ+UN;#4/Lf"e@F,MmPrBYGjs[W3Hq3r
Y;ar=Ugn5lnfT0jei.S=csk`"CL5Eq)s@^qN-_CjJ2%5=Q;0]Aif7e29RhWu%?qXr:`3W]A@db
""2qne"n=1HanWNJ,rQ]Ahpr(a)sj.I`$0BoMAgVl>?KQ#cInh.Ai>p0NgFN[/'1M@NAJ9mr4
h."$Cd]AO_+:DLX,eGeHJ0?\^R*jYS>;:c?Ar);J2T^@VfR5>J1:1;7M2pPP^1#mBQ`/gQCpE
d\>k.:si7ZMljW+`E/7Fp.PuRQ^eY,H>nWmj!Y2=I2<;RK[VW"O6Jd%b)R!$2shj8->ZI%h:
^T0oeD/n(LfaG\ff/9O_(!GC+IZjQF&'/Hbf-^I"gtW]AY=&YP,<^Jn`M'YMMmsE#RH6jiWAf
X5-hsm*ITJ_Z0^n)pkZVJJGY?[Ui`JVFON)XUYnS<![+Vd@g%N9LShN*>]AM$&6=YM`S,3*o6
4"kV01I=pfUn":/%B3%rqrZGAU!cc;lS7m6^C7@)\%I`@iaEJsh@irW>2RqUtl%T)<!&rr!F
F1Y9)%iLAr16N+b`31Ao.q(gUcb?8=>R3lW/#8b,(8Jh6K%oqSI.I/6m3\Od:UTo/nd?8oN<
21KlCY%Eu6_:8=]A[If)83[L-aO)lA1TF4co3\(;;+#c7L!tUD0jV@Q#R_)S?iK$jmkLVJ<24
G7ZR50LpO1L9gIR:U4@W9$'ZG8sSRI9pGZmW]AHo$0.8)&-0/BFc&NC\oNZqWbaiD<P=WZuh\
R(_s1+noa[E8&jfmd$U'-g&#!)jiS\of_]A"NU&6@KoJ3Gl&Q$IT(_;^oORZpZt4o=F1++QC9
<\DD;<p'QY2$7SZoS(pTNd)db03>RsiT=,R[4Y'@G<F^(p3Y0O8T^LPT/G#FfMO$_LO*#;nF
X#NpH1SF=nt+&`HB5CtlFgAKeT_#0O)o5Y36,1'P\oOFkQ#6sN&rVb/R:T89c3:QnCbq\n]Ae
\--0PMW5'B+IISK$Z+B$gM+;nGC*%9r,G+\FR.d!s46PIeKE^*CQ6i7T\Z;:np`@/SfkM;]A&
X[&>)$dF"[bN(sU!)"F0X\4@lBOP<+:l[.nc6*XD>anna]AKMm^RtOS55)K"Bd;6Pt$!Heeeu
G!+\rk;%Snc(tN!,YkO[#RnKirs.7?YT!L@p%$b!i"_jb>goR6mjEojQ>AP.)Vmb>A2G?7s6
C1HE_O[XQj8UXRjDH`TARcaecEUKfW)S#O'`C/g]A@md+H,3="!X`i6K&20%8#fI^femZEMP8
!<.<:7/Qq#,'"5tP^45]A<Zf"/Xe1VDkp[/M5?1)^]ACTCB-jiob^`61JN\0,U+d!.<\+dfK^3
-M]AZ:TH@i^7&Djn;P=$<e`V_)dEFYpB71Zadn>IpAW:sg1R0(0$'%akJ2*#3lnl-c%-a)'F&
^>f?&S;DWe9QaF-6U_7e;#`VuISFEn3gJ#UU$`6mPm.nh9K,l\5L&@T7=m)L.h[M%GrS`o[:
*jrqj;!i4>*L*3R\s^(<-g:Q0eLgal$SRFA_J0iDC%/-Ng'Q6=Qg?I\I,TWrbNHg'<5\A.:`
+Bm/.t>kUb]AU4)>@h676cD]AD_)II*O4^0(_(LcpjTl/KP)NbCIcVG%qKnRf8LS19^Ad41js!
g.9J8JR!6\0=)aVI,\M!mCP;C7k&u-X.NQ6oZ@BjW7nqP$p[3KAPsAsf%@i/NgbCl?j1>*d@
=Njmm"irF"$7:H(mdD2J9]AClUSu/Jc9jUKb/)lub+ZD^;,l08:!TWo7=g&+<&DPM`),r4q:_
7W%BOLB[GNf8RdTn>aI\Wr*p]A[9`]AX"%'F$::m"+c/Q:NN:L[NjLLel5+a%/'!\R)LGm,GCb
0FK?tH)CmgXLJ'Na!_ZnBY>kB`YBAm%Z$.o;Wg;?4=8`<.=oVI/3'n0h6(>IH\uOcJ:;HW&\
Q9U4*Y0+o;>D:H2^?W^f]AX'QH7)$h)9YAYo^6'i;og6`>,ud&TK+@iT4:G]A4+@MH_P*SG77%
8i2bV8C3uK-BZ)4'\Fl(skL8>&hUY6)N=?sQ`\lq7*Ts^s@DmNGHp<A'^,,^5/?&.1KBHphi
@Xo0@IK[fdUSpF9WeZ2frO`MEE[S/^A]AGq>nhV.+>J_']AP;A1m)Ho=YsaflhWdPu,hLX6[6@
^&iOgY3ergc8@8@o$P8o@T%K*:$C@*n\DSX-"MDp?8j<LWXe*$bb47KHbpikIk#^>g4bfXp_
<_["/WpNm"h*o3Y>/.BoP7H="]A]Ad'CVs^XKDM$g&^hM8H6A<(pZ([`q+g5NF<80KC>KPZq1P
a8L/LbHRWeZ0k3!-#-]AJMGe^$U7W-[I?9(qgD'ar$lO,R)`EK/X8HCVkRpAb[hG.J;6ud>ZP
3rMA7lSDP9lE(f<:D80Y_:(66A&t5:?Rmecu+2;EC#8484>:PKTYckUhm8l='h)]A=FM<eB7\
`[L=;<P:5e,EQp1dQ+PE!UN+BV^,Je@1pU\?<Et/)6uF7Tho+n'Z?jRQ8`D:WHq`T3'?R^@T
h@Nq#Jq`[l@cT>7XMF%NS,9Um3Q&@\;U*b7oT:n8\t+nnWq/I.6H*u4M"?17!6HD?LfkoS]A0
Z@4%$+B\A)VVVI><9QLWGTq6tn<2dDTm,103j0Eu1kn=b?QuZuC6<2Yq%2PoRm",,`KQ]AoF'
SY/HHp)[EjrJKQH7Ys!.O$Wb+3XgnqTHTcL>X]AX6Ub.X3*TX\FBKFp@<W#&\tW;='"*YbPXc
&%@-H^*,.\pe84@2:M>^3$V"64BLjE>91b"XkZF,X5aDmV@rhPDCGMKsS7S-[CC\FC`K!JqD
gZ3jO[>c'bjahrhL>/Ip!YiH#NNDAi;<IM\s,#5Wg7TZ1r*\H.*NN*W]AY"Ka^9\RVVb9C'U#
Sip0CuW3>,Y)_.?^[25BX!^sOC8pMi)i>)O@E_mdYfM/#NY7j`r_%Y!W`pY4B#QO.S).d='T
*i:`4XnW0#X5^kf^uhs8<U=?#h`m(``Y>>$c+c0hXQAc#`N*7V:!`\72XU0l)R#^+PNSQ$>e
%TXZR]Ag6&WZlG/L=-aFc'\UR/6rAb+UiMUFI-]A[_@$L)OtH$HSupobZ.L^(bff9RtZooD`D:
hL#!p*h!==PWF\iBq08a$'AG+Pj)mmHB-7.'#8Ot@YAUCm<tD,)CXdsZbA<mlTc2>*A=92g+
#<KW)C2@QGRfhHf/]AjlX9("PF"bZY/uO-0n\(ApXo5a&!\^Rr^N*mC%n[qn=&T,.!&tUF&H@
X,*Vdc-d-+a1kIX"cBV$`W$Pq"^bIX>fg7L&=<&[g9R,-]A(H&]A0aR]A;"gBai7Pp%;8&`QD(<
,LY0_YAbi3O>^&dpc3]A0X<@($G)/$m9tdE!k!AN0STKUEk$W>jA=n&p?M?mB&Pn4<(>rb<d;
C80:fP<]A*q)t\]AJZ3&^nF[-A^9'DNJI":coc<g!C).jCl3=dn_Z/=\7;$D+EWL[2IUoAm=eK
X)U6)8fjP!8NED59`CuU<cRekT<1V,V\'Gc+C;O?<ZCq<10sqV.Y4%_p6GWM4JGDe+B&]AZ_(
,;-0O[6UEie&[L=3/NSlW@+i/N1[OP5'c1d)umU?Gu=2!17jbTMLeNV4+<q5_\m',cDX)-;E
<4A=MBG`>DgkiX\fX0i>,CWGkrI=mi@;?%7"2JDJAfUmuW,)s(T/VWtobB=n7JaM8Yj3_nlC
G;WSq:@1N-S-\dcX.&oEN?n`^g,dd%b'/\.K`di*f(5_gUc&'-6L$O'Omps+*p#'i5':Hg+0
^f<NU6#BCE#R!+n<BX(d/X48W[EY-qqo_q![;iIu\f#-Q5lCoN;21"+H8O-b6e?R_I;]AQD(H
)Za/)qC#mYY!i58nXsP4?5msX=D'tXrYE+&K/f-G>,0>*pEfE1mj!==+U:#\uWZ:9T@*1`4-
HHm8#5LLZ722]Af-(XQ6==th)AZ\k2g\."AkE`jGrVbm7DH?Z7LJpdhjKUE?X,Ch&6^Z=@;#m
aTS^[('PVO"F&"AEqb-]A&L:L5?G[A!=]Ae_;$2g77r1TQg]A^_F#/h+VBGR<'B,G:j;$67+Gdu
f_a^g#/WCK^A[aN1;HV7]Ak3VI'r0'@AdDGW8<]A>I?l%5JV7h.,)>us4B1.Di-O\O7J8!-Coq
"ZM_B&dY;i1+3Thi\S?2o1J/3l"5W+P)iEr5Y;36dXcp``m(@?*',Q]A*f[f9OFNGVSth0/).
dG5B47Kj/kTAPTeg)`.Dhl@6q/mn*TmZk"._2pjq8Si)fe4sQASB=n\;Rlg=oGhp\q;DsgED
C,jL;XuT>Kr-Uq;l2<>^(`s';jqQ4&+Z3P4HN%!`J6`@DkG$8]A/J/0mj3p(9(T11q-pUKbIj
Va4gO"n4OnpRFl\>P9'WQTnb_-\T!?D_3YJ`laHN*'r;PrPNBW2@Mn"\dC$gIWl.>IA*m.#=
'rW`s;@.Ahh@dR9'P"tr%HjmjL=AnR<5sV0os,7*'(2]AScZ:$5eDcZaZ>bugM'_qCG7dnK;,
"%j@/S@\.;Kr(C*qk.<=fh"OZ8NBqH:,ZSA2J-bJ9:dQ:;.-n[7&6?O6?fJXdhWZ6qQqHmdr
uD5cmO)=i>)#;,)?4Xg%SX>mG*McB,J4YUq7pPlH\OY'R`lB^6=dfPBrTU!]Am7t)qR!5C+Dp
LKD%\#oV,r['iljb&Xa\]A0E]A(ao+P)'q:=3K=G08R,,iXQ;9Br+'93XUHd">+GEOo[lMpQA[
u(?(+_Aq[ZeJ-!D5.67"RP;mD;PjBn56A;pURaK(2@U"g,jO11OmlShsbdj*67]A3^d3[hitP
7Qk;/,<k*Y`anoeT8Je!M\pln8ojO1C%"@"h^eF=ZFJphDT-?/i"odaN!sk_Q[F=!A!>gICR
n^?1(,T!\`I(Hmt'@#!T.BQcJuY*Bru#S]Aq+X"VaXBlai6p5'kd/DIW'T26.u"EHr-T@Q8l]A
+UC'*P</REn2&TIdCkbQQf2^>6OduLJ?P]A;FNU]AG2(S,;aX"7V'Ur0"G2sqU+Es$!f?bo?1.
=IQr$3-*t^'S6O8L2>b,OkXO72396`#VDZV\VmMH2M`\bGF1E#?/%EM>\Ua#[MqA,cc*/5>^
2EV1&]A)&AOk1V[2sp:P"$tA:E>&`.WZL6sRpodm:Rf2EBrO"_pg66jMul^kuK+RN`V#m70)*
hhaYQ,br>*725"?nMDSZm@^=)g4ld3<ktJ4dD$#4q:(`=$IE";PKqd1A!-I)06D'%`9ql!Yo
Gff9->[b3O%3i)$/>sEOX"([T?io>?U,`-C=X2Ve$$sbO1V)0@8P(k6(7uI31T%H"*:TCZWZ
_#u"NPP:.mL11^AA=a$o[6O&7"UrMDO/>Z\qhl/!:/ij$gB0d><_Sa%NAe'@3:P?0t'=5(WG
/!(2rV=UtX^p[-S&ZWNC2<[U@]AN1K4.Wg:Bi`91=dku.0i.j7Et_4,K($E<qHj~
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
<HR F="0" T="3"/>
<FR/>
<HC F="0" T="0"/>
<FC/>
<UPFCR COLUMN="true" ROW="true"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,723900,1143000,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[3923607,2743200,2743200,2743200,2743200,2743200,2743200,2743200,7813963,9277003,9010996,8711738,8345978,11205556,12136581,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<C c="1" r="1" cs="3" rs="2" s="0">
<O>
<![CDATA[Age]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="1" rs="3" s="0">
<O>
<![CDATA[F/M]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="1" cs="3" rs="2" s="0">
<O>
<![CDATA[Ending No. birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="1" cs="7" s="0">
<O>
<![CDATA[Vaccine]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="2" cs="7" s="0">
<O>
<![CDATA[gridBand10]]></O>
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
<![CDATA[prod]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="3" s="0">
<O>
<![CDATA[Female]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="3" s="0">
<O>
<![CDATA[Male]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="3" s="0">
<O>
<![CDATA[Total]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="3" s="0">
<O>
<![CDATA[Route]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="9" r="3" s="0">
<O>
<![CDATA[Vac Type]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="10" r="3" s="0">
<O>
<![CDATA[Manufacturers]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="11" r="3" s="0">
<O>
<![CDATA[Dose]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="12" r="3" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="13" r="3" s="0">
<O>
<![CDATA[Batch No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="14" r="3" s="0">
<O>
<![CDATA[Time(Min)]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DocDate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row()%2=0]]></Formula>
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
<Attributes dsName="ds1" columnName="ProdAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FMRatio"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="5" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FemQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="6" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MaleQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="7" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="QtyTotal"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="8" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacRoute"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="9" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacName"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="10" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacMade"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="11" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacDose"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="12" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacUsed"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="13" r="4" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="VacBatch"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="14" r="4" s="1">
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
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="88"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.00]]></Format>
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
<![CDATA[buo<o'3Ee`>-TOcobEgn!u>(@/\':6A6?2>!>S!W+Ia(pZH4`:*icXW8sN9cX.gGAhmAIKA5
a_1U&rK3=b$bp'GGYG#iWHa65%&2[_@0;^8IBK13YnEGL,hAGE,m1ROZWi4Bk*;6.t&;Gdi:
AFCtc2BhL[Y#$Ra"NgV=EBI9/eDqPf@jE$F?g8dj\X^7FA8Q]A]Aom6:!\8'5&:'3D?j4QgqJ%
a(-PHX'S6X.E8bc`C\"FgOZWO$oU]AZ?F+/7Dd^i5pHjg]A[:p!F.;bSJ)Jc#0.q;d,,@BLpV"
iiQlnP!GXoa!'0LXmA#'-WNO!G4hk1VEnu\"k@ok[-%;edZ%%7>Q^3iNnb]AQ<Q=6@=CU#dR)
J)Y,Edm_=$C]A@eXS%H@ck4M[`B8,p$oB!g\X.9.U6r2q<@f;FDe!K!@CTPkHOW=,8ICk@.`5
g1;/D^A,C"=tD[a'h)MGo"M'^]AYWLJORKCbj]Ajj9j#5-RRb*amL"0b_,RZ\tfG3b8;0sr*Ha
L*Yt;K*C3>Z-Gs6sSnciH;J2/ph:kP*9?Y(._3Z_si3G9u5ZGV]A5'UStN%9'.%b#!a:(Z<?6
AX)O1L=?HJddgHI"S"Oo>_aDAjFNQkh_VSO4at-m@^Ni9(cSOrMmttPB":P@dCK)E,^'Yg#8
%os%rXYA5#Zjop7<=a7!%_[nBOn[f<(Fa]A6jhdZ;u"^_?$o.F-N#!$5n!T/BZQjnB7Q?V!.d
P[QQ:=,VL@GXWQ(<eH,ISP_8VpuN4t@<toq"3%/aEZgo9f=>77bt1&Rbu,EAg:R)&8g?h']A$
2=..ag<d)A[FL5F=/MGqg8GNhrtQ$cmXplTf-%HM$AcGDQT3==SiM8dGbC>*rb&%UZk-PJ"U
1C2[thJ^s+ISPg8^Z[p!'OE*GuN1hg(JCpdId&t/0AQ=Ra;$^VK^p="GC3%W>g%_73`cug*_
C`KadCJl2cCGohrAWSQ##F?+ZUO>ja3RPIfbK:kQ^!l*o:R:GCqR&?/,*3,X-;mj<e)M[O6t
+uOq2FSrTK?MUu\0RQIIA]AaN)T(,:OYA:MQM)I'=mQ+UN;#4/Lf"e@F,MmPrBYGjs[W3Hq3r
Y;ar=Ugn5lnfT0jei.S=csk`"CL5Eq)s@^qN-_CjJ2%5=Q;0]Aif7e29RhWu%?qXr:`3W]A@db
""2qne"n=1HanWNJ,rQ]Ahpr(a)sj.I`$0BoMAgVl>?KQ#cInh.Ai>p0NgFN[/'1M@NAJ9mr4
h."$Cd]AO_+:DLX,eGeHJ0?\^R*jYS>;:c?Ar);J2T^@VfR5>J1:1;7M2pPP^1#mBQ`/gQCpE
d\>k.:si7ZMljW+`E/7Fp.PuRQ^eY,H>nWmj!Y2=I2<;RK[VW"O6Jd%b)R!$2shj8->ZI%h:
^T0oeD/n(LfaG\ff/9O_(!GC+IZjQF&'/Hbf-^I"gtW]AY=&YP,<^Jn`M'YMMmsE#RH6jiWAf
X5-hsm*ITJ_Z0^n)pkZVJJGY?[Ui`JVFON)XUYnS<![+Vd@g%N9LShN*>]AM$&6=YM`S,3*o6
4"kV01I=pfUn":/%B3%rqrZGAU!cc;lS7m6^C7@)\%I`@iaEJsh@irW>2RqUtl%T)<!&rr!F
F1Y9)%iLAr16N+b`31Ao.q(gUcb?8=>R3lW/#8b,(8Jh6K%oqSI.I/6m3\Od:UTo/nd?8oN<
21KlCY%Eu6_:8=]A[If)83[L-aO)lA1TF4co3\(;;+#c7L!tUD0jV@Q#R_)S?iK$jmkLVJ<24
G7ZR50LpO1L9gIR:U4@W9$'ZG8sSRI9pGZmW]AHo$0.8)&-0/BFc&NC\oNZqWbaiD<P=WZuh\
R(_s1+noa[E8&jfmd$U'-g&#!)jiS\of_]A"NU&6@KoJ3Gl&Q$IT(_;^oORZpZt4o=F1++QC9
<\DD;<p'QY2$7SZoS(pTNd)db03>RsiT=,R[4Y'@G<F^(p3Y0O8T^LPT/G#FfMO$_LO*#;nF
X#NpH1SF=nt+&`HB5CtlFgAKeT_#0O)o5Y36,1'P\oOFkQ#6sN&rVb/R:T89c3:QnCbq\n]Ae
\--0PMW5'B+IISK$Z+B$gM+;nGC*%9r,G+\FR.d!s46PIeKE^*CQ6i7T\Z;:np`@/SfkM;]A&
X[&>)$dF"[bN(sU!)"F0X\4@lBOP<+:l[.nc6*XD>anna]AKMm^RtOS55)K"Bd;6Pt$!Heeeu
G!+\rk;%Snc(tN!,YkO[#RnKirs.7?YT!L@p%$b!i"_jb>goR6mjEojQ>AP.)Vmb>A2G?7s6
C1HE_O[XQj8UXRjDH`TARcaecEUKfW)S#O'`C/g]A@md+H,3="!X`i6K&20%8#fI^femZEMP8
!<.<:7/Qq#,'"5tP^45]A<Zf"/Xe1VDkp[/M5?1)^]ACTCB-jiob^`61JN\0,U+d!.<\+dfK^3
-M]AZ:TH@i^7&Djn;P=$<e`V_)dEFYpB71Zadn>IpAW:sg1R0(0$'%akJ2*#3lnl-c%-a)'F&
^>f?&S;DWe9QaF-6U_7e;#`VuISFEn3gJ#UU$`6mPm.nh9K,l\5L&@T7=m)L.h[M%GrS`o[:
*jrqj;!i4>*L*3R\s^(<-g:Q0eLgal$SRFA_J0iDC%/-Ng'Q6=Qg?I\I,TWrbNHg'<5\A.:`
+Bm/.t>kUb]AU4)>@h676cD]AD_)II*O4^0(_(LcpjTl/KP)NbCIcVG%qKnRf8LS19^Ad41js!
g.9J8JR!6\0=)aVI,\M!mCP;C7k&u-X.NQ6oZ@BjW7nqP$p[3KAPsAsf%@i/NgbCl?j1>*d@
=Njmm"irF"$7:H(mdD2J9]AClUSu/Jc9jUKb/)lub+ZD^;,l08:!TWo7=g&+<&DPM`),r4q:_
7W%BOLB[GNf8RdTn>aI\Wr*p]A[9`]AX"%'F$::m"+c/Q:NN:L[NjLLel5+a%/'!\R)LGm,GCb
0FK?tH)CmgXLJ'Na!_ZnBY>kB`YBAm%Z$.o;Wg;?4=8`<.=oVI/3'n0h6(>IH\uOcJ:;HW&\
Q9U4*Y0+o;>D:H2^?W^f]AX'QH7)$h)9YAYo^6'i;og6`>,ud&TK+@iT4:G]A4+@MH_P*SG77%
8i2bV8C3uK-BZ)4'\Fl(skL8>&hUY6)N=?sQ`\lq7*Ts^s@DmNGHp<A'^,,^5/?&.1KBHphi
@Xo0@IK[fdUSpF9WeZ2frO`MEE[S/^A]AGq>nhV.+>J_']AP;A1m)Ho=YsaflhWdPu,hLX6[6@
^&iOgY3ergc8@8@o$P8o@T%K*:$C@*n\DSX-"MDp?8j<LWXe*$bb47KHbpikIk#^>g4bfXp_
<_["/WpNm"h*o3Y>/.BoP7H="]A]Ad'CVs^XKDM$g&^hM8H6A<(pZ([`q+g5NF<80KC>KPZq1P
a8L/LbHRWeZ0k3!-#-]AJMGe^$U7W-[I?9(qgD'ar$lO,R)`EK/X8HCVkRpAb[hG.J;6ud>ZP
3rMA7lSDP9lE(f<:D80Y_:(66A&t5:?Rmecu+2;EC#8484>:PKTYckUhm8l='h)]A=FM<eB7\
`[L=;<P:5e,EQp1dQ+PE!UN+BV^,Je@1pU\?<Et/)6uF7Tho+n'Z?jRQ8`D:WHq`T3'?R^@T
h@Nq#Jq`[l@cT>7XMF%NS,9Um3Q&@\;U*b7oT:n8\t+nnWq/I.6H*u4M"?17!6HD?LfkoS]A0
Z@4%$+B\A)VVVI><9QLWGTq6tn<2dDTm,103j0Eu1kn=b?QuZuC6<2Yq%2PoRm",,`KQ]AoF'
SY/HHp)[EjrJKQH7Ys!.O$Wb+3XgnqTHTcL>X]AX6Ub.X3*TX\FBKFp@<W#&\tW;='"*YbPXc
&%@-H^*,.\pe84@2:M>^3$V"64BLjE>91b"XkZF,X5aDmV@rhPDCGMKsS7S-[CC\FC`K!JqD
gZ3jO[>c'bjahrhL>/Ip!YiH#NNDAi;<IM\s,#5Wg7TZ1r*\H.*NN*W]AY"Ka^9\RVVb9C'U#
Sip0CuW3>,Y)_.?^[25BX!^sOC8pMi)i>)O@E_mdYfM/#NY7j`r_%Y!W`pY4B#QO.S).d='T
*i:`4XnW0#X5^kf^uhs8<U=?#h`m(``Y>>$c+c0hXQAc#`N*7V:!`\72XU0l)R#^+PNSQ$>e
%TXZR]Ag6&WZlG/L=-aFc'\UR/6rAb+UiMUFI-]A[_@$L)OtH$HSupobZ.L^(bff9RtZooD`D:
hL#!p*h!==PWF\iBq08a$'AG+Pj)mmHB-7.'#8Ot@YAUCm<tD,)CXdsZbA<mlTc2>*A=92g+
#<KW)C2@QGRfhHf/]AjlX9("PF"bZY/uO-0n\(ApXo5a&!\^Rr^N*mC%n[qn=&T,.!&tUF&H@
X,*Vdc-d-+a1kIX"cBV$`W$Pq"^bIX>fg7L&=<&[g9R,-]A(H&]A0aR]A;"gBai7Pp%;8&`QD(<
,LY0_YAbi3O>^&dpc3]A0X<@($G)/$m9tdE!k!AN0STKUEk$W>jA=n&p?M?mB&Pn4<(>rb<d;
C80:fP<]A*q)t\]AJZ3&^nF[-A^9'DNJI":coc<g!C).jCl3=dn_Z/=\7;$D+EWL[2IUoAm=eK
X)U6)8fjP!8NED59`CuU<cRekT<1V,V\'Gc+C;O?<ZCq<10sqV.Y4%_p6GWM4JGDe+B&]AZ_(
,;-0O[6UEie&[L=3/NSlW@+i/N1[OP5'c1d)umU?Gu=2!17jbTMLeNV4+<q5_\m',cDX)-;E
<4A=MBG`>DgkiX\fX0i>,CWGkrI=mi@;?%7"2JDJAfUmuW,)s(T/VWtobB=n7JaM8Yj3_nlC
G;WSq:@1N-S-\dcX.&oEN?n`^g,dd%b'/\.K`di*f(5_gUc&'-6L$O'Omps+*p#'i5':Hg+0
^f<NU6#BCE#R!+n<BX(d/X48W[EY-qqo_q![;iIu\f#-Q5lCoN;21"+H8O-b6e?R_I;]AQD(H
)Za/)qC#mYY!i58nXsP4?5msX=D'tXrYE+&K/f-G>,0>*pEfE1mj!==+U:#\uWZ:9T@*1`4-
HHm8#5LLZ722]Af-(XQ6==th)AZ\k2g\."AkE`jGrVbm7DH?Z7LJpdhjKUE?X,Ch&6^Z=@;#m
aTS^[('PVO"F&"AEqb-]A&L:L5?G[A!=]Ae_;$2g77r1TQg]A^_F#/h+VBGR<'B,G:j;$67+Gdu
f_a^g#/WCK^A[aN1;HV7]Ak3VI'r0'@AdDGW8<]A>I?l%5JV7h.,)>us4B1.Di-O\O7J8!-Coq
"ZM_B&dY;i1+3Thi\S?2o1J/3l"5W+P)iEr5Y;36dXcp``m(@?*',Q]A*f[f9OFNGVSth0/).
dG5B47Kj/kTAPTeg)`.Dhl@6q/mn*TmZk"._2pjq8Si)fe4sQASB=n\;Rlg=oGhp\q;DsgED
C,jL;XuT>Kr-Uq;l2<>^(`s';jqQ4&+Z3P4HN%!`J6`@DkG$8]A/J/0mj3p(9(T11q-pUKbIj
Va4gO"n4OnpRFl\>P9'WQTnb_-\T!?D_3YJ`laHN*'r;PrPNBW2@Mn"\dC$gIWl.>IA*m.#=
'rW`s;@.Ahh@dR9'P"tr%HjmjL=AnR<5sV0os,7*'(2]AScZ:$5eDcZaZ>bugM'_qCG7dnK;,
"%j@/S@\.;Kr(C*qk.<=fh"OZ8NBqH:,ZSA2J-bJ9:dQ:;.-n[7&6?O6?fJXdhWZ6qQqHmdr
uD5cmO)=i>)#;,)?4Xg%SX>mG*McB,J4YUq7pPlH\OY'R`lB^6=dfPBrTU!]Am7t)qR!5C+Dp
LKD%\#oV,r['iljb&Xa\]A0E]A(ao+P)'q:=3K=G08R,,iXQ;9Br+'93XUHd">+GEOo[lMpQA[
u(?(+_Aq[ZeJ-!D5.67"RP;mD;PjBn56A;pURaK(2@U"g,jO11OmlShsbdj*67]A3^d3[hitP
7Qk;/,<k*Y`anoeT8Je!M\pln8ojO1C%"@"h^eF=ZFJphDT-?/i"odaN!sk_Q[F=!A!>gICR
n^?1(,T!\`I(Hmt'@#!T.BQcJuY*Bru#S]Aq+X"VaXBlai6p5'kd/DIW'T26.u"EHr-T@Q8l]A
+UC'*P</REn2&TIdCkbQQf2^>6OduLJ?P]A;FNU]AG2(S,;aX"7V'Ur0"G2sqU+Es$!f?bo?1.
=IQr$3-*t^'S6O8L2>b,OkXO72396`#VDZV\VmMH2M`\bGF1E#?/%EM>\Ua#[MqA,cc*/5>^
2EV1&]A)&AOk1V[2sp:P"$tA:E>&`.WZL6sRpodm:Rf2EBrO"_pg66jMul^kuK+RN`V#m70)*
hhaYQ,br>*725"?nMDSZm@^=)g4ld3<ktJ4dD$#4q:(`=$IE";PKqd1A!-I)06D'%`9ql!Yo
Gff9->[b3O%3i)$/>sEOX"([T?io>?U,`-C=X2Ve$$sbO1V)0@8P(k6(7uI31T%H"*:TCZWZ
_#u"NPP:.mL11^AA=a$o[6O&7"UrMDO/>Z\qhl/!:/ij$gB0d><_Sa%NAe'@3:P?0t'=5(WG
/!(2rV=UtX^p[-S&ZWNC2<[U@]AN1K4.Wg:Bi`91=dku.0i.j7Et_4,K($E<qHj~
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
<HR F="0" T="4"/>
<FR/>
<HC F="0" T="0"/>
<FC/>
<UPFCR COLUMN="true" ROW="true"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[4555374,2743200,2743200,2743200,2743200,5054138,5253643,8246225,7049192,8545483,9509760,8445730,7913716,8611985,7647709,7780712,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<C c="1" r="1" cs="3" rs="2" s="0">
<O>
<![CDATA[Age]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="1" rs="3" s="0">
<O>
<![CDATA[F/M]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="1" cs="3" rs="2" s="1">
<O>
<![CDATA[Ending No. birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="1" cs="8" rs="2" s="0">
<O>
<![CDATA[Medicine]]></O>
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
<![CDATA[prod]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="3" s="0">
<O>
<![CDATA[Female]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="3" s="0">
<O>
<![CDATA[Male]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="3" s="0">
<O>
<![CDATA[Total]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="3" s="0">
<O>
<![CDATA[Route]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="9" r="3" s="0">
<O>
<![CDATA[Med Type]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="10" r="3" s="0">
<O>
<![CDATA[Manufacturers]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="11" r="3" s="0">
<O>
<![CDATA[Dose]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="12" r="3" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="13" r="3" s="0">
<O>
<![CDATA[Batch No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="14" r="3" s="0">
<O>
<![CDATA[Time(Min)]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="15" r="3" s="0">
<O>
<![CDATA[Responsible]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DocDate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row()%2=0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Scope val="1"/>
<Background name="ColorBackground" color="-2171170"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="1" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DateAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="WeekAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ProdAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="4" s="3">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FMRatio"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="5" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FemQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="6" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MaleQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="7" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="QtyTotal"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="8" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedRoute"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="9" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedName"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="10" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedMade"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="11" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedDose"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="12" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedUsed"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="13" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedBatch"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="14" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedMinute"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="15" r="4" s="2">
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
<Style horizontal_alignment="0" imageLayout="0">
<FRFont name="SimSun" style="1" size="80"/>
<Background name="ColorBackground" color="-6697729"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="88"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.00]]></Format>
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
<![CDATA[buk?P'3Wo3BJWC6(3Y`]A+pHdXlA2+[%18>U$jnV'Jk1MZ)GmjBT`q4XU918B1,ORj5t"mQ&V
?+K$,ea-\.CoY8:n[^,DKJ1&<a$8MRM@(T7?^-),<.fYNifIpYP@fpU`*Altrkj/ll28_-iS
shR16%K3=#L?l#^@AH=Q,-M,_>$q>;]ApC?fna-k^amE)G8.LPm^(Vgu.iq5b<lX(KVYNY^tc
h9flq[tpD5>/0:iUs^IG[+0_O/$UYrR=GnNJ8GWQbM_1UtWJME9kYCC"G?H"Sq&<$eE7$Z@Z
B_59,M)C.0na#e.UPSd!,7n&Z>MHg&jeKd2+a&:VLWO>Q!J9>X+EJM?IBiT1r;SaFGAM/?P0
p#4'<4-=Yd0XG^P@(m-H98$8_(P*0R>`dp''>oP=MlA%u<>5fF5dB6*I6QTJ#_a_lp<tUU(J
RqfLPdTXfM%LpbDZ,.V[('W/d16AR"&CAcA?So&m<6qq5%15@h0M.4>S8sENj+t!UrDJPK^4
m=)-R>/[\-t6,l'7N!JKqAtW5]A]AG6it%@WN"Vjep[cP$M/MHkJW&HeO#i%i:^alqDKS,%]AM6
orLI:.lU[kpOrmKK`"HI$6HA3<HQ/[Y#X/a#BMVh=WZ(5bL`1H@$%h6]A"n7=8hgD#\T'\dhN
Go^%[:Lbq.`om4L-jEkbJt.a_XO0V"f;2cr\\R'-*:Ve6GPb&/c?JD[JUp>OVo06QQ>Mk%&6
ifk>4^,l*`FQJBffTDR:jc-@tKSRFSbC&oC2kND=&kI$<B4qrf)DN>iQY@nNB&3"Xf]AZ]AS1=
%3G*ZOpKGdu-3*^>_0Yg>/[]ArBo`L@c,!D/+0lD%An_]AadX^+i^;C1Nc)?7h+-CcUo<"^[JF
ppa=8la,AoHdHMAZq56\k$=/V#bf>]Aafo6@q4<U1-cpKLf=0(V'Hc6kk%+i\d_a4RK-.r@u,
jJT##*p>ApiI0KA$/K6eILU1@r03h5LF/i<?/*.0f&KF4(On3NgZ_NX3,:jSAt+.0Lp_j?g@
sKmV`>DF*?bffq;NlEJSj(KK%KPBJ=!X"^N%7P>@mca?(]A=m)/CAh>0Nc<R'U7Q*s5L$=a/9
m-uE-ReUoDp<H+`ds,AM69_@1S_+@@^J+b+pt!WNH)AK]A;$nh92hiB)-:?6u5*$bhLnQLo4q
5n&2M)'l;UM`%^$4=Tf8K7m=)j^/;&h$KBnM<\,4qjG,Atf;4"Ke1GiY/uH6#s&f9_Kk&SD8
GG_M+r0&W#MTP)aIS:lj2f_YBUX;7i)lVM.6/M;58Zbt"ZWO6#DRlbXX$(ctV^Lt7^4C`;7\
,)C@8NO(fQj8+LghP!9`T_KbZAP,$O"O@X\mi@m>/$NH]A.m&p4WRXO?Or+t`M1<n;VYHWa+%
j1D1>@O.d,Fh%oUmsL&5b'HDXMSLXIg0^$XP,7't-&S]AT(o*(]AM"B4O-Y>#a0dZ#au4X(KF7
1ZS!DrD3\p3eP%k4NO,/':YdB2;>*`QEO"qF7kEt$>.1jU,9Tp'TDApq2f=(:VRuMH<;k:T,
a>%XPmVMo9\:$dmmooo;pARQ]At4&!_!CZ%Yl,f^NRDi((FKt>eHh*Wd+?ZC&Nd'2d+\bC\[F
gUcm_.&c=9>i(K9Sa=^t*X#H<qR%:bEHLUG7%t;B'J2+@.F5r=M8KRVlTV+AC65uDKVF&aPW
K`hM9i.D*c"$)3P9M6o3`0.h'nA#IePhqQEqLhr.ie57g`B5!s)YFn6?L'(T2,sLeem$mMq3
pb&i%=N"ZN5B/H?PRH6rX3AqoiEKfNZM!XldN.A3=,K@8pZG#@p%Vg!1S7Uohei^!#i6TB;m
H^m)H6/CHn$0oG>T0e`aZO$!P^KrE&+Toine\]Ab.Rh&P/0Lhs[E:#B'Xj?h(:p!7tQd,.)hS
lnqjiOCT-DQ4V)q;7k/J3a+%Q)t"9-gZ,q!3=WWcUU$qY@W"E+CZjc"g`VPU:O_SsA/]A26ro
;.63$PEhIbbs12A]AD).*@H&#aHGShai]A//=nG2<;(d[6U92``^cL>SJXGhE!Y7''F`cX)JR>
^$']A64b+g@%a#sjmtM+"iA]AUWr%mWDIii[2o$Du7qsU$lZUjJabglJ8*aFT.HAg&TKjUSYi/
n5#F4_VZ.R!jbiFU'QD[Re(;JV$k\VdgTU%\G&`Q>hm@bEQP/JcDp&#og6s/kDU;o4)g4AV$
L#q"J=gU60P4!-t0F6UlTh0ktD3h*-QD.2'm0pi<QT0?<@&Yjg2#C'"&^]A9mEXT)3QSZ(9Ji
VF^a2YhV;VbfLb_n$Smn@:;Koa&\YRk![*U]ACZ<KkqWo_b.^GS>@/-O[$CbcS!_X:P&VSimI
+e#gme4A=HbaA;5PeeqijrYkBthV!4"5Eh)nl4#Pm.]Ao%EkT)EFq"mpcB0$.iQGr+:HD*"I3
PDO'gg";JFnM\IOh.EX<^-rbom(&<hFlK[Y=q6G=*n/BPIr`hXeXMG(mXn:&B2WsRsJWAI6@
I@hFchJ6pL[tY(rg.PBSWsAoZg'.u--+^m8ptVaG.OpViTcD+!JMdg^&jo's1Nlk/p^lLfs[
8u'EYpp3gT>LRJ?Rp1HjR'lIP`B'P6m!,Q7_PV_?@1c=^3`M6?)5'emJC9D'RX!JEINF39Dr
*Vnn",PcFpM8)W.G>A_7'e,8=g3hQQ)nam@>)'O;9DWO2fK92)clo/Q,EpTiLiZTnc0'&U8m
D]AWSlk<Y5((RVfm.D30W0>[-8/#4^T='feZ+_saWtms<:l/b5![/f/C=r:5UPNK&=?ZN`A;$
n8P\S;To%ZWGb3p#GmqUZYf#K`$J8OjSAgbjYGenq9fq-l$_KJ-=K\Y0M.kZ`<!0UVj7'%Ao
S>j=i33Lj%a'''WlD'!Er,k5lt8'$`Au:Slq"83Q7MW>aP?3,fn^BmXq1gA6!Vbr]A$#\-^pg
AT_qME>r>*E\+8Bg=OFeIB@X&`9Bs*_U$nb)miNmC)_NTb+Za65#8!bBaM$re0ls$hIqi#Mu
to`\)*qLem0]A0N_Fe>notjZ4[XY9^K5fVSg;P>D^nVE'c&Scm(BHG+L2KJ`R,c<H8Bpt1h;(
A9Q+I*$4+\Ic>:;4EHN(apqrONDE)S5Y'>2J:C=pOC.4rf?nHMdJ>SBejOijLG%mn*>M/!.k
@uLuT4P!!4iT4:a^7Z;m88ajk$AkC0B\nG1B?Y1r\ISW*`c"6gJY:-a3k]AC$iONc>H#=IMB!
e<:(07kmBl8?SPnW6jRHXDf^c1s2+=PVD2\'K$L'sThR5J`YO3&Dg5!kT!o"pd%h5!:g22eR
rQ-s5:M07h.!js_)$cJ*XdA0Xj(FGc%B0pMP^iKZP/%ms>*S0lF5-SJQ0DhJ't_G^,REfaNK
<`[S:A&FYN$GVQj4LGY",1t?.WH[1Q8fEX\pm/!Y(!uXfua'dUqVm"2*uZ[4*pG-:_j=o;Y5
.RThc:'EAB'dTh@Bgd2q<]AB86KLhKVrNe>rJcpkF7SjpX2fH94H+6*pNb?0,-+&2kFnj]A!sS
QdbbXH;%R!msnqp9K2,)X.LYBIl*VcRo5MF'PEJmg&QT2Z7aB\_%6eUn5=d\BM^/nK/gk`#4
3jVUlaT[q92HJ9K5ndCW.6)Td7M0Wi"4QK^ECW9,'YUunm2[r<N1:TFUc\YC1&N1'N^,Y-Oo
F$LAQK))mV&-]A>2p=D9YRE#-)^#RC>>,L%&Zl<k+5Rh0g4s;s(\ndt.?UF'RWcl/GDXB<tnt
`\"o$Cic;%$T53AVB=._TE\Bm`N@njKHp/so+V@TC$!agq"W>&g%^&BSMDfC"c>9a7j=Y?5i
R3?c5]Akmt"6M_B#@kjI[&\j8;>d-0IDpA*-/`tr%#DN:,.Kfk":0CUk)U55SF;Dr9+1i>G*8
HMnlT.%=lns.M>RQ+Zj7?[m0E,I9\akb+7fnBs#G#:"nT6$L"^5LY@O>d=lC?BSH?/Llm%^C
6FJoiJ-Q'g((NnK2iZ2OUE@f@rqgf0)Jrk%<Q`]A`Y4gn?aP[HA$D5a.W23?JJoRA\@oO&+i-
8Qn4sNjC0JXm0sFFKNDg%?D3Neb6/.!O2(_X-f0;S((^S8*6[=g.WO0M#+!8(gO]AWl$+!9B-
4ckd<F^>TIsh<(pd]AG06\VqTYP>&m<W7EU8_8]AItfFo4C#Q8QRhA7IOJVKEnh0p,sEO/(ST*
86nY)<S2KiSVMKo4<hsabXeBfI*TLdp8?_d/kCt7!Z'dFR0@BC3TT8bHP\?O6>7d'KiN6#`c
rh*HGB*]AH:jpXnV7nQKg%<.9lF"=b('3g7,^8es3g#1u8eaLNQ0/]A&fi61H`?4FRTi5r(:ud
`jBaJ+k(\,3(U'JY3$]AQ+15%GL_+oXg5M!>cqOc>!CYEpDj(.>7G"]ApW,3bA\tY9chFO1>ml
^PglYktZ74:(td?$sruVgZE\f%/t,n7GJ%iU;S+aLdth?l4:32aCa0mP*q6P2XHYj+^5"*;`
*<8p=-_l8R!*M4H)n,nqEHm5;Rhp$ulj((Pj,o]A]A=:K3H8$O]A=B)bbn:E%?3+YQS@&^Kd[4B
/HnPdZA\<Ki9WQ[5p:P,oJh9DfPLe1nqQ,l&"O2%!RI:>W+:!:4^A]A7<ou<.cIM<03WlTVP9
_@^0'H6;._s<=I@>mt??liV?F\@I*SPMuNQ[3+OJ7-<6P(f%p&Ph'd]A]AQtF=b$-D81h;CPP1
\MV6h=&ahaVnlS=59AHAulB6!RTjs1I3Z@TQubJgeVL:0^KMFKn#K7PM8pr57oQGaSfF[Y^@
'An/l&De5.pBc<c_:sJD@-@%'"eDJQbBM#_4dA>Y.I6NuIL:V?6PoAd1QoZ_:#:uCTP%#[UC
Z`]A;tYA$5"WtaRl/V(TZpj-,0XiA!jE%Fj)('nAGU5@Y<;ZE89hI#UKR_N1bVM;lBtDQ!rZ,
M(t!jd'$_5K<;01c?]A!<OUtn.d)oXeb8o%NA?Y/nfi@R:+pjf;lD10`Xl=q$*76h]AKD[:PiB
=KpE"96F.n;$>Kn,QSkXP%VJV\CL=%I*#8[L*i7lK*IPF&e[>GJT7D[W@d(P!:p;@<-DLfo<
TGqT.?IPX2g<Psa>ia]AU]Ad#Y6'L]A=:5F'*,Mk_JFkAY;kH!rUEn&g`PpG-3$Q&gHdp>q]A0s=
V#+`s2c\;YWo7BL@"hsXZ(0K0%Wb#*/I6l6ArCh9AhN7eVE[1[B/9Lm5^"K.EnSLr<4VcHhS
taqaW6:EUo3&?b<4G4F-47M_^DM<#97uJ4%cGTDKH;>Ttb2g>s0A)GVd=u;s+'/rLk/Q@((T
S#<jTE4,NB:'6hqtd&6hjR8JM$GYBb9:<uX?MV;kJYBhSg8-?hS"<R!Nb$;g</b.[k&CSiOc
JpNSMK]A+P1sOd*HYB.h(RS?nW@.]AdH6^Tb11bJ)OMW"DWQ/-$_cqXtf",3bgFa(_g9E5_!=<
nb)CuB96ln;PetTd^M_4\LapZ('_I]A'F11B2R9?o!PYG&p#m'eqUmp5q@.W'n>HI,lHA8rq_
,tR\*Jhq&qV4:Tm<aY5>$hK"#PZV<XVtF$<4X;==<n7_B^0&:X9a^Tp!V"1H,E$K%G0`g)-%
f>LH*dQ,)CT$7GUc9GhP.>dO@&![l&V?tdQg1ArsfM!8G;+>VE%F'R<JcSi=@<[iK),;h\?A
8bF)(:CK<6CLJMWq5^<,-,,A;&UfBUZm_;g5^h0AL@.F/_K@0kq5U\+IR^?0sE)WnA]A\csa0
"-0\E_S!"9G\9t)WDC]A-nBWV16qjd\NEWool'@'UZhKSI`]A9SHf0k+qK[d8_sco8`"72oB,?
2:[&j?_%p$8-O,gJ6k&%)Z9`M5&bO\"DB'N!%*%O3sT'>^Br_&tHIr^dOZr7o/4n)j$e&Oco
p0_n*[%8I_BE.['/E#fncj495p6!^uEURF0I#3<YTe8$tC7YUB,g#O?!<-1*UVped"ba4Z+s
m(*0WTHC_"Q#OIC`rmH&a^iRA`"3rD8Qc5`,tk=d#-T^b+TWdK#ICN4ZYli6gTq.DFFm:BE"
Hp1@#jD`U7L`Nm5G2_0Ff.#8c3867f=Q0t+UkTK$+[q16!,F'IBn6todjS+RbjBJSk!ALXi@
mj5DcuPMe`&@=t%*C)PkB0nd4Ke1/6ZqeZ=h&sn7.FDf\U#8_BkrMY?B*_nH&,gR4^ZCHrbD
4(ZCgaoM8<3m:;/hdT-@Q98hf:8K4VoDi!q`Z:G27G=WH0,fPT8DIe*l0;t.WJQtRJAr;WsS
M:I*;#hTZe>C&l#K[X$C.kU(E?YTFh1)[E$,]AQ2=$RRXHA0oX&*E]A8p,h9l]A8=Tk^iA(Q#j\
5PE0!)RX6O-[]A:o3&Jr^Si,o#IU*B7`N3Z]Af)\.]AOF@8Ek(8'_UaGKVt1W+d*5ms'JW:jT/8
>+"0D6Bg$l:6?$AX^l%bXgo"Eh1</jM1_TsMs'>KI*I9fV`+qZAcs5=VKgC02n$LnJn;m$6r
X/~
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
<HR F="0" T="4"/>
<FR/>
<HC F="0" T="0"/>
<FC/>
<UPFCR COLUMN="true" ROW="true"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[4555374,2743200,2743200,2743200,2743200,5054138,5253643,8246225,7049192,8545483,9509760,8445730,7913716,8611985,7647709,7780712,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
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
<C c="1" r="1" cs="3" rs="2" s="0">
<O>
<![CDATA[Age]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="1" rs="3" s="0">
<O>
<![CDATA[F/M]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="1" cs="3" rs="2" s="1">
<O>
<![CDATA[Ending No. birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="1" cs="8" rs="2" s="0">
<O>
<![CDATA[Medicine]]></O>
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
<![CDATA[prod]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="3" s="0">
<O>
<![CDATA[Female]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="3" s="0">
<O>
<![CDATA[Male]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="3" s="0">
<O>
<![CDATA[Total]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="3" s="0">
<O>
<![CDATA[Route]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="9" r="3" s="0">
<O>
<![CDATA[Med Type]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="10" r="3" s="0">
<O>
<![CDATA[Manufacturers]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="11" r="3" s="0">
<O>
<![CDATA[Dose]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="12" r="3" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="13" r="3" s="0">
<O>
<![CDATA[Batch No.]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="14" r="3" s="0">
<O>
<![CDATA[Time(Min)]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="15" r="3" s="0">
<O>
<![CDATA[Responsible]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DocDate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row()%2=0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Scope val="1"/>
<Background name="ColorBackground" color="-2171170"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="1" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DateAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="WeekAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ProdAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="4" s="3">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FMRatio"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="5" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FemQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="6" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MaleQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="7" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="QtyTotal"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="8" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedRoute"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="9" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedName"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="10" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedMade"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="11" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedDose"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="12" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedUsed"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="13" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedBatch"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="14" r="4" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MedMinute"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="15" r="4" s="2">
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
<Style horizontal_alignment="0" imageLayout="0">
<FRFont name="SimSun" style="1" size="80"/>
<Background name="ColorBackground" color="-6697729"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="88"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.00]]></Format>
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
<![CDATA[buk?P'3Wo3BJWC6(3Y`]A+pHdXlA2+[%18>U$jnV'Jk1MZ)GmjBT`q4XU918B1,ORj5t"mQ&V
?+K$,ea-\.CoY8:n[^,DKJ1&<a$8MRM@(T7?^-),<.fYNifIpYP@fpU`*Altrkj/ll28_-iS
shR16%K3=#L?l#^@AH=Q,-M,_>$q>;]ApC?fna-k^amE)G8.LPm^(Vgu.iq5b<lX(KVYNY^tc
h9flq[tpD5>/0:iUs^IG[+0_O/$UYrR=GnNJ8GWQbM_1UtWJME9kYCC"G?H"Sq&<$eE7$Z@Z
B_59,M)C.0na#e.UPSd!,7n&Z>MHg&jeKd2+a&:VLWO>Q!J9>X+EJM?IBiT1r;SaFGAM/?P0
p#4'<4-=Yd0XG^P@(m-H98$8_(P*0R>`dp''>oP=MlA%u<>5fF5dB6*I6QTJ#_a_lp<tUU(J
RqfLPdTXfM%LpbDZ,.V[('W/d16AR"&CAcA?So&m<6qq5%15@h0M.4>S8sENj+t!UrDJPK^4
m=)-R>/[\-t6,l'7N!JKqAtW5]A]AG6it%@WN"Vjep[cP$M/MHkJW&HeO#i%i:^alqDKS,%]AM6
orLI:.lU[kpOrmKK`"HI$6HA3<HQ/[Y#X/a#BMVh=WZ(5bL`1H@$%h6]A"n7=8hgD#\T'\dhN
Go^%[:Lbq.`om4L-jEkbJt.a_XO0V"f;2cr\\R'-*:Ve6GPb&/c?JD[JUp>OVo06QQ>Mk%&6
ifk>4^,l*`FQJBffTDR:jc-@tKSRFSbC&oC2kND=&kI$<B4qrf)DN>iQY@nNB&3"Xf]AZ]AS1=
%3G*ZOpKGdu-3*^>_0Yg>/[]ArBo`L@c,!D/+0lD%An_]AadX^+i^;C1Nc)?7h+-CcUo<"^[JF
ppa=8la,AoHdHMAZq56\k$=/V#bf>]Aafo6@q4<U1-cpKLf=0(V'Hc6kk%+i\d_a4RK-.r@u,
jJT##*p>ApiI0KA$/K6eILU1@r03h5LF/i<?/*.0f&KF4(On3NgZ_NX3,:jSAt+.0Lp_j?g@
sKmV`>DF*?bffq;NlEJSj(KK%KPBJ=!X"^N%7P>@mca?(]A=m)/CAh>0Nc<R'U7Q*s5L$=a/9
m-uE-ReUoDp<H+`ds,AM69_@1S_+@@^J+b+pt!WNH)AK]A;$nh92hiB)-:?6u5*$bhLnQLo4q
5n&2M)'l;UM`%^$4=Tf8K7m=)j^/;&h$KBnM<\,4qjG,Atf;4"Ke1GiY/uH6#s&f9_Kk&SD8
GG_M+r0&W#MTP)aIS:lj2f_YBUX;7i)lVM.6/M;58Zbt"ZWO6#DRlbXX$(ctV^Lt7^4C`;7\
,)C@8NO(fQj8+LghP!9`T_KbZAP,$O"O@X\mi@m>/$NH]A.m&p4WRXO?Or+t`M1<n;VYHWa+%
j1D1>@O.d,Fh%oUmsL&5b'HDXMSLXIg0^$XP,7't-&S]AT(o*(]AM"B4O-Y>#a0dZ#au4X(KF7
1ZS!DrD3\p3eP%k4NO,/':YdB2;>*`QEO"qF7kEt$>.1jU,9Tp'TDApq2f=(:VRuMH<;k:T,
a>%XPmVMo9\:$dmmooo;pARQ]At4&!_!CZ%Yl,f^NRDi((FKt>eHh*Wd+?ZC&Nd'2d+\bC\[F
gUcm_.&c=9>i(K9Sa=^t*X#H<qR%:bEHLUG7%t;B'J2+@.F5r=M8KRVlTV+AC65uDKVF&aPW
K`hM9i.D*c"$)3P9M6o3`0.h'nA#IePhqQEqLhr.ie57g`B5!s)YFn6?L'(T2,sLeem$mMq3
pb&i%=N"ZN5B/H?PRH6rX3AqoiEKfNZM!XldN.A3=,K@8pZG#@p%Vg!1S7Uohei^!#i6TB;m
H^m)H6/CHn$0oG>T0e`aZO$!P^KrE&+Toine\]Ab.Rh&P/0Lhs[E:#B'Xj?h(:p!7tQd,.)hS
lnqjiOCT-DQ4V)q;7k/J3a+%Q)t"9-gZ,q!3=WWcUU$qY@W"E+CZjc"g`VPU:O_SsA/]A26ro
;.63$PEhIbbs12A]AD).*@H&#aHGShai]A//=nG2<;(d[6U92``^cL>SJXGhE!Y7''F`cX)JR>
^$']A64b+g@%a#sjmtM+"iA]AUWr%mWDIii[2o$Du7qsU$lZUjJabglJ8*aFT.HAg&TKjUSYi/
n5#F4_VZ.R!jbiFU'QD[Re(;JV$k\VdgTU%\G&`Q>hm@bEQP/JcDp&#og6s/kDU;o4)g4AV$
L#q"J=gU60P4!-t0F6UlTh0ktD3h*-QD.2'm0pi<QT0?<@&Yjg2#C'"&^]A9mEXT)3QSZ(9Ji
VF^a2YhV;VbfLb_n$Smn@:;Koa&\YRk![*U]ACZ<KkqWo_b.^GS>@/-O[$CbcS!_X:P&VSimI
+e#gme4A=HbaA;5PeeqijrYkBthV!4"5Eh)nl4#Pm.]Ao%EkT)EFq"mpcB0$.iQGr+:HD*"I3
PDO'gg";JFnM\IOh.EX<^-rbom(&<hFlK[Y=q6G=*n/BPIr`hXeXMG(mXn:&B2WsRsJWAI6@
I@hFchJ6pL[tY(rg.PBSWsAoZg'.u--+^m8ptVaG.OpViTcD+!JMdg^&jo's1Nlk/p^lLfs[
8u'EYpp3gT>LRJ?Rp1HjR'lIP`B'P6m!,Q7_PV_?@1c=^3`M6?)5'emJC9D'RX!JEINF39Dr
*Vnn",PcFpM8)W.G>A_7'e,8=g3hQQ)nam@>)'O;9DWO2fK92)clo/Q,EpTiLiZTnc0'&U8m
D]AWSlk<Y5((RVfm.D30W0>[-8/#4^T='feZ+_saWtms<:l/b5![/f/C=r:5UPNK&=?ZN`A;$
n8P\S;To%ZWGb3p#GmqUZYf#K`$J8OjSAgbjYGenq9fq-l$_KJ-=K\Y0M.kZ`<!0UVj7'%Ao
S>j=i33Lj%a'''WlD'!Er,k5lt8'$`Au:Slq"83Q7MW>aP?3,fn^BmXq1gA6!Vbr]A$#\-^pg
AT_qME>r>*E\+8Bg=OFeIB@X&`9Bs*_U$nb)miNmC)_NTb+Za65#8!bBaM$re0ls$hIqi#Mu
to`\)*qLem0]A0N_Fe>notjZ4[XY9^K5fVSg;P>D^nVE'c&Scm(BHG+L2KJ`R,c<H8Bpt1h;(
A9Q+I*$4+\Ic>:;4EHN(apqrONDE)S5Y'>2J:C=pOC.4rf?nHMdJ>SBejOijLG%mn*>M/!.k
@uLuT4P!!4iT4:a^7Z;m88ajk$AkC0B\nG1B?Y1r\ISW*`c"6gJY:-a3k]AC$iONc>H#=IMB!
e<:(07kmBl8?SPnW6jRHXDf^c1s2+=PVD2\'K$L'sThR5J`YO3&Dg5!kT!o"pd%h5!:g22eR
rQ-s5:M07h.!js_)$cJ*XdA0Xj(FGc%B0pMP^iKZP/%ms>*S0lF5-SJQ0DhJ't_G^,REfaNK
<`[S:A&FYN$GVQj4LGY",1t?.WH[1Q8fEX\pm/!Y(!uXfua'dUqVm"2*uZ[4*pG-:_j=o;Y5
.RThc:'EAB'dTh@Bgd2q<]AB86KLhKVrNe>rJcpkF7SjpX2fH94H+6*pNb?0,-+&2kFnj]A!sS
QdbbXH;%R!msnqp9K2,)X.LYBIl*VcRo5MF'PEJmg&QT2Z7aB\_%6eUn5=d\BM^/nK/gk`#4
3jVUlaT[q92HJ9K5ndCW.6)Td7M0Wi"4QK^ECW9,'YUunm2[r<N1:TFUc\YC1&N1'N^,Y-Oo
F$LAQK))mV&-]A>2p=D9YRE#-)^#RC>>,L%&Zl<k+5Rh0g4s;s(\ndt.?UF'RWcl/GDXB<tnt
`\"o$Cic;%$T53AVB=._TE\Bm`N@njKHp/so+V@TC$!agq"W>&g%^&BSMDfC"c>9a7j=Y?5i
R3?c5]Akmt"6M_B#@kjI[&\j8;>d-0IDpA*-/`tr%#DN:,.Kfk":0CUk)U55SF;Dr9+1i>G*8
HMnlT.%=lns.M>RQ+Zj7?[m0E,I9\akb+7fnBs#G#:"nT6$L"^5LY@O>d=lC?BSH?/Llm%^C
6FJoiJ-Q'g((NnK2iZ2OUE@f@rqgf0)Jrk%<Q`]A`Y4gn?aP[HA$D5a.W23?JJoRA\@oO&+i-
8Qn4sNjC0JXm0sFFKNDg%?D3Neb6/.!O2(_X-f0;S((^S8*6[=g.WO0M#+!8(gO]AWl$+!9B-
4ckd<F^>TIsh<(pd]AG06\VqTYP>&m<W7EU8_8]AItfFo4C#Q8QRhA7IOJVKEnh0p,sEO/(ST*
86nY)<S2KiSVMKo4<hsabXeBfI*TLdp8?_d/kCt7!Z'dFR0@BC3TT8bHP\?O6>7d'KiN6#`c
rh*HGB*]AH:jpXnV7nQKg%<.9lF"=b('3g7,^8es3g#1u8eaLNQ0/]A&fi61H`?4FRTi5r(:ud
`jBaJ+k(\,3(U'JY3$]AQ+15%GL_+oXg5M!>cqOc>!CYEpDj(.>7G"]ApW,3bA\tY9chFO1>ml
^PglYktZ74:(td?$sruVgZE\f%/t,n7GJ%iU;S+aLdth?l4:32aCa0mP*q6P2XHYj+^5"*;`
*<8p=-_l8R!*M4H)n,nqEHm5;Rhp$ulj((Pj,o]A]A=:K3H8$O]A=B)bbn:E%?3+YQS@&^Kd[4B
/HnPdZA\<Ki9WQ[5p:P,oJh9DfPLe1nqQ,l&"O2%!RI:>W+:!:4^A]A7<ou<.cIM<03WlTVP9
_@^0'H6;._s<=I@>mt??liV?F\@I*SPMuNQ[3+OJ7-<6P(f%p&Ph'd]A]AQtF=b$-D81h;CPP1
\MV6h=&ahaVnlS=59AHAulB6!RTjs1I3Z@TQubJgeVL:0^KMFKn#K7PM8pr57oQGaSfF[Y^@
'An/l&De5.pBc<c_:sJD@-@%'"eDJQbBM#_4dA>Y.I6NuIL:V?6PoAd1QoZ_:#:uCTP%#[UC
Z`]A;tYA$5"WtaRl/V(TZpj-,0XiA!jE%Fj)('nAGU5@Y<;ZE89hI#UKR_N1bVM;lBtDQ!rZ,
M(t!jd'$_5K<;01c?]A!<OUtn.d)oXeb8o%NA?Y/nfi@R:+pjf;lD10`Xl=q$*76h]AKD[:PiB
=KpE"96F.n;$>Kn,QSkXP%VJV\CL=%I*#8[L*i7lK*IPF&e[>GJT7D[W@d(P!:p;@<-DLfo<
TGqT.?IPX2g<Psa>ia]AU]Ad#Y6'L]A=:5F'*,Mk_JFkAY;kH!rUEn&g`PpG-3$Q&gHdp>q]A0s=
V#+`s2c\;YWo7BL@"hsXZ(0K0%Wb#*/I6l6ArCh9AhN7eVE[1[B/9Lm5^"K.EnSLr<4VcHhS
taqaW6:EUo3&?b<4G4F-47M_^DM<#97uJ4%cGTDKH;>Ttb2g>s0A)GVd=u;s+'/rLk/Q@((T
S#<jTE4,NB:'6hqtd&6hjR8JM$GYBb9:<uX?MV;kJYBhSg8-?hS"<R!Nb$;g</b.[k&CSiOc
JpNSMK]A+P1sOd*HYB.h(RS?nW@.]AdH6^Tb11bJ)OMW"DWQ/-$_cqXtf",3bgFa(_g9E5_!=<
nb)CuB96ln;PetTd^M_4\LapZ('_I]A'F11B2R9?o!PYG&p#m'eqUmp5q@.W'n>HI,lHA8rq_
,tR\*Jhq&qV4:Tm<aY5>$hK"#PZV<XVtF$<4X;==<n7_B^0&:X9a^Tp!V"1H,E$K%G0`g)-%
f>LH*dQ,)CT$7GUc9GhP.>dO@&![l&V?tdQg1ArsfM!8G;+>VE%F'R<JcSi=@<[iK),;h\?A
8bF)(:CK<6CLJMWq5^<,-,,A;&UfBUZm_;g5^h0AL@.F/_K@0kq5U\+IR^?0sE)WnA]A\csa0
"-0\E_S!"9G\9t)WDC]A-nBWV16qjd\NEWool'@'UZhKSI`]A9SHf0k+qK[d8_sco8`"72oB,?
2:[&j?_%p$8-O,gJ6k&%)Z9`M5&bO\"DB'N!%*%O3sT'>^Br_&tHIr^dOZr7o/4n)j$e&Oco
p0_n*[%8I_BE.['/E#fncj495p6!^uEURF0I#3<YTe8$tC7YUB,g#O?!<-1*UVped"ba4Z+s
m(*0WTHC_"Q#OIC`rmH&a^iRA`"3rD8Qc5`,tk=d#-T^b+TWdK#ICN4ZYli6gTq.DFFm:BE"
Hp1@#jD`U7L`Nm5G2_0Ff.#8c3867f=Q0t+UkTK$+[q16!,F'IBn6todjS+RbjBJSk!ALXi@
mj5DcuPMe`&@=t%*C)PkB0nd4Ke1/6ZqeZ=h&sn7.FDf\U#8_BkrMY?B*_nH&,gR4^ZCHrbD
4(ZCgaoM8<3m:;/hdT-@Q98hf:8K4VoDi!q`Z:G27G=WH0,fPT8DIe*l0;t.WJQtRJAr;WsS
M:I*;#hTZe>C&l#K[X$C.kU(E?YTFh1)[E$,]AQ2=$RRXHA0oX&*E]A8p,h9l]A8=Tk^iA(Q#j\
5PE0!)RX6O-[]A:o3&Jr^Si,o#IU*B7`N3Z]Af)\.]AOF@8Ek(8'_UaGKVt1W+d*5ms'JW:jT/8
>+"0D6Bg$l:6?$AX^l%bXgo"Eh1</jM1_TsMs'>KI*I9fV`+qZAcs5=VKgC02n$LnJn;m$6r
X/~
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

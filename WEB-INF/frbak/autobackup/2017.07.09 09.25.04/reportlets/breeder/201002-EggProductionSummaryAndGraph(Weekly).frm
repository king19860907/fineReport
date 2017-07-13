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
<![CDATA[SELECT T0."DocEntry",
         T0."DocNum",
         T2."Name" AS "ChickTypeName",
         T1."U_ChickType",
         T0."ChickType",
         T1."U_GiveSou",
         T3."U_STDate",
         T4."PostDate",
         T0."FarmCode",
         T0."BatchNum",
         T0."OcrCode3",
         T0."InFemJM",
         T0."InMaleJM",
         T0."OutFemQty",
         T0."OutmaleQty"
FROM SBO_AG_FARM."U_PDOWOR" T0
INNER JOIN SBO_AG_FARM.OWOR T1
    ON T0."DocNum" = T1."DocNum"
INNER JOIN SBO_AG_FARM."@U_POKTY" T2
    ON T1."U_ChickType" = T2."Code"
INNER JOIN SBO_AG_FARM.OPRC T3
    ON T1."OcrCode3" = T3."PrcCode"
        AND T3."DimCode" = 3
INNER JOIN SBO_AG_FARM.OWOR T4
    ON T4."DocEntry" = T0."DocEntry"
WHERE T0."FarmCode" = ${farmCode}
        AND T0."OcrCode3" = ${houseCode}
        AND T0."BatchNum" = ${batchCode}; ]]></Query>
</TableData>
<TableData name="ds2" class="com.fr.data.impl.DBTableData">
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
<![CDATA[
SELECT "DocEntry",
		"DocNum",
         "DocDate",
         Right("PrcName",
         3) AS "PrcName",
         "FemWeiStd",
         "EggWFact",
         "EggWStd",
         "MaleWeiStd",
         "OcrCode3",
         "U_FStdQty",
         "U_MStdQty",
         "FarmCode",
         "BatchNum",
         "WeekAge",
         "ProdAge",
         "BeginFemQtyJM",
         "BeginMaleJM",
         "BeginTotal",
         "FemDCTotalByW",
         "FemDCRateByW",
         "FemDCRate",
         "MaleDCTotalByW",
         "MaleDCRateByW",
         "MaleDcRate",
         "FemQty",
         "MaleQty",
         "QtyTotal",
         "EggTotalByW",
         "EggTotalFact",
         "EggRatioByW",
         "EggRatioStd",
         "EggTotalFactFem",
         "EggStdNoByPer",
         "HaEggTotalByW",
         "HaEggTotalFact",
         "HaEggRatioByW",
         "HaEggRatioStd",
         "HaEggTotalFactFem",
         "HaEggStdNoByPer",
         "FemFeedAvgW" * 1000 / 100 AS "FemFeedAvgW",
         "MaleFeedAvgW" * 1000 / 100 AS "MaleFeedAvgW",
         "FeedQtyByW",
         "FeedQty",
         "FemWeiAvg",
         "LightHour",
         "MaleWeiAvg",
         "HaEggTotalStd",
         "EggTotalStd"
FROM (
	SELECT T1."DocEntry",
		 T0."DocNum",
         T1."DocDate",
         T0."OcrCode3",
         T0."FarmCode",
         T0."BatchNum",
         T1."WeekAge",
         T1."ProdAge",
         IFNULL(T2."FemQty",
         T0."InFemJM") AS "BeginFemQtyJM",
         IFNULL(T2."MaleQty",
         T0."InMaleJM") AS "BeginMaleJM",
         IFNULL(T2."FemQty",
         T0."InFemJM") + IFNULL(T2."MaleQty",
         T0."InMaleJM") AS "BeginTotal",
         U0."FemDCTotalByW",
         T1."FemDCRateByW",
         T1."FemDCRate",
         U0."MaleDCTotalByW",
         T1."MaleDCRateByW",
         T1."MaleDcRate",
         T1."FemQty",
         T1."MaleQty",
         T1."QtyTotal",
         T1."EggTotalByW",
         T1."EggTotalFact",
         T1."EggRatioByW",
         T1."EggRatioStd",
         ROUND(IFNULL(T1."EggTotalFact" / NULLIF(T0."InFemJM",
         0),
         0) * 100,
         2) AS "EggTotalFactFem",
         T1."EggStdNoByPer",
         T1."HaEggTotalByW",
         T1."HaEggTotalFact",
         T1."HaEggRatioByW",
         T1."HaEggRatioStd",
         ROUND(IFNULL(T1."HaEggTotalFact" / NULLIF(T0."InFemJM",
         0),
         0) * 100,
         2) AS "HaEggTotalFactFem",
         T1."HaEggStdNoByPer",
         T1."FemFeedAvgW",
         T1."MaleFeedAvgW",
         T1."FeedQtyByW",
         T1."FeedQty",
         T1."FemWeiAvg",
         T1."FemWeiStd",
         T1."MaleWeiAvg",
         T1."MaleWeiStd",
         T1."LightHour",
         T4."PrcName",
         T5."U_MStdQty",
         T5."U_FStdQty",
         T1."EggWFact",
         T1."EggWStd",
         T1."HaEggTotalStd",
         T1."EggTotalStd"
FROM SBO_AG_FARM.U_PDOWOR T0
INNER JOIN SBO_AG_FARM.U_PDWOR1 T1
    ON T0."DocEntry" = T1."DocEntry"
INNER JOIN SBO_AG_FARM.OPRC T4
    ON T4."PrcCode" = T0."OcrCode3"
INNER JOIN SBO_AG_FARM."@U_PKTY1" T5
    ON T5."Code" = T0."ChickType"
        AND T5."U_CWeekAge" = T1."WeekAge" LEFT OUTER
JOIN SBO_AG_FARM.U_PDWOR1 T2
    ON T1."DocEntry" = T2."DocEntry"
        AND T1."WeekAge" - 1 = T2."WeekAge"
        AND T2."DayOfWeek" = 7
JOIN (SELECT SUM(U0."FemDCTotalByD") AS "FemDCTotalByW",SUM(U0."MaleDCTotalByD") AS "MaleDCTotalByW",U0."DocEntry",U0."WeekAge" FROM 
       SBO_AG_FARM."U_PDWOR1" U0 group by U0."DocEntry",U0."WeekAge") U0
       ON  U0."DocEntry"  = T1."DocEntry"  AND U0."WeekAge"= T1."WeekAge"
       and T1."DayOfWeek" = 7
       order by T1."DocEntry"
)
WHERE "FarmCode" = ${farmCode}
        AND "OcrCode3" = ${houseCode}
        AND "BatchNum" = ${batchCode}
        order by "WeekAge"
      ]]></Query>
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
<NorthAttr size="108"/>
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
<![CDATA[Flock]]></O>
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
<NameTag name="batchCode" tag="Flock"/>
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
<WidgetName name="13fc74f5-0944-4baf-8a54-f7595232ea6e"/>
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
<WidgetName name="2eb515e8-d605-4aa2-9b92-97767a032934"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[WeeklyReportInfo.]]></Text>
<initial>
<Background name="ColorBackground" color="-1"/>
</initial>
<FRFont name="SimSun" style="0" size="72"/>
<isCustomType isCustomType="true"/>
<SwitchTagAttr layoutName="tabpane0"/>
</Widget>
<Widget class="com.fr.form.ui.CardSwitchButton">
<WidgetName name="b066ea31-ecdb-457a-92ed-b48f164aa095"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[FemaleCurve]]></Text>
<FRFont name="SimSun" style="0" size="72"/>
<isCustomType isCustomType="true"/>
<SwitchTagAttr layoutName="tabpane0" index="1"/>
</Widget>
<Widget class="com.fr.form.ui.CardSwitchButton">
<WidgetName name="23dc24d4-4c7f-43a0-9251-b6cf3426fe7e"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[MaleCurve]]></Text>
<FRFont name="SimSun" style="0" size="72"/>
<isCustomType isCustomType="true"/>
<SwitchTagAttr layoutName="tabpane0" index="2"/>
</Widget>
<Widget class="com.fr.form.ui.CardSwitchButton">
<WidgetName name="905227c9-5f66-4f96-bd1d-2af4cd467d58"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[EggProductionCurve]]></Text>
<FRFont name="SimSun" style="0" size="72"/>
<isCustomType isCustomType="true"/>
<SwitchTagAttr layoutName="tabpane0" index="3"/>
</Widget>
<Widget class="com.fr.form.ui.CardSwitchButton">
<WidgetName name="67e1c4cd-880b-4430-b9fa-6b09281886a3"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[EggProductionCumulative]]></Text>
<FRFont name="SimSun" style="0" size="72"/>
<isCustomType isCustomType="true"/>
<SwitchTagAttr layoutName="tabpane0" index="4"/>
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
<HR F="0" T="2"/>
<FR/>
<HC F="0" T="0"/>
<FC/>
<UPFCR COLUMN="true" ROW="true"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,1143000,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[3758267,2743200,2743200,2743200,2743200,2743200,4932726,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0">
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="0">
<O>
<![CDATA[Doc Number]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="1" s="0">
<O>
<![CDATA[Line]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="1" s="0">
<O>
<![CDATA[Source]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="1" s="0">
<O>
<![CDATA[Farm]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="1" s="0">
<O>
<![CDATA[Flock]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="1" s="0">
<O>
<![CDATA[House]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="1" s="0">
<O>
<![CDATA[Date birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="1" cs="2" s="0">
<O>
<![CDATA[No.birds housed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="2" s="1">
<O>
<![CDATA[Doc Number]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" s="1">
<O>
<![CDATA[Line]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="2" s="1">
<O>
<![CDATA[Source]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="2" s="1">
<O>
<![CDATA[Farm]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="2" s="1">
<O>
<![CDATA[Flock]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="2" s="1">
<O>
<![CDATA[House]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="2" s="1">
<O>
<![CDATA[Date birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="2" s="1">
<O>
<![CDATA[Female]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="2" s="1">
<O>
<![CDATA[Male]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DocNum"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="网络报表1">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="docNumber"/>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=$$$]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="farmCode"/>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=D4]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="houseCode"/>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=F4]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="batchCode"/>
<O t="Formula" class="Formula">
<Attributes>
<![CDATA[=E4]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_dialog]]></TargetFrame>
<Features width="1200" height="800"/>
<ReportletName showPI="true">
<![CDATA[/breeder/201002-EggProductionSummaryAndGraph(Weekly)-detial.cpt]]></ReportletName>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[row()%2=1]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Scope val="1"/>
<Background name="ColorBackground" color="-2171170"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="1" r="3" s="3">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ChickTypeName"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="3" s="3">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="U_GiveSou"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="3" s="3">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FarmCode"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="3" s="3">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="BatchNum"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="5" r="3" s="3">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="OcrCode3"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="6" r="3" s="3">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="PostDate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="7" r="3" s="3">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="InFemJM"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="8" r="3" s="3">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="InMaleJM"/>
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
<FRFont name="SimSun" style="0" size="80"/>
<Background name="ColorBackground" color="-6697729"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="88" foreground="-16776961" underline="1"/>
<Background name="NullBackground"/>
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
</StyleList>
<showToolbar showtoolbar="false"/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[j]AW$S<-eB09!;:(h,W3h0&'F&W?eNL[O<XtOX@Q_QE88_O>Jqob:BE".G'H7>iQNQ%$!qPOs
pj<Af=9PUHtapbea5'R;kC=>Pl/7rOi/+qk)34VLI]APc?XlbjnjFtkF%N<[hpVFbZ#E8ArNJ
+01H^e`_<%b))I:;BcOQ*hl=;6ba>#&9oRY?5K)]A(\N[4?&'Aa+Cm7`C<n_S97`UX6bK%]A=>
lNbc&iFIn_gUDnAf7BdmaK6,FO0Ghd!bU`$63]AQ&VdksEbOHGgP[$RTX%_)hCNcTL7C!M]A!&
0YCY_T)C=J-(U[2Z&;l)3l`GIht*NcV2'6F9-d@.(==tAjpc__)R#&g=<md+W$hT1DuG8W?F
fZ9q=d?^+'bJ`F6o,pQh4T4[hgCdNPrlRbAdYb]ACE.T*:?**RXn+BOl>,kbFk8!di.U9,sEM
&r.JQIKu@kA1"cuJ?gn(M^CFVr8PX:o\h!=,<_L%K!6U3QnKIGR,3\R2#2dSrVgpm6;4O29M
D%tGD@'Wm,I\,jZ/+;M7"`Wg&u2`J"()\Y0*N2jfq#>VW`/oAd3r)dL[[n#54:bQ.00riTc=
sI!ihLeJIQ>R=-2]A_q&M!WHI(AbZUdb0uPoXeV$oc_h1Ym<lXao]Ai=[$hcfC<nf_">;eQ6Mu
S_]A[eqGS4d>VlIKVu3O"W(3f3SBs)X0V^roX74*(&,%IsI6.a^fn/E[5i,'7,i<_W!fP!jc@
f?>MEO(YYe$U)agP*!R\7$6))Tk%KbHl8.6U;KREVRRStVE)nIr;Ar0'mJc8r,Ffe*rSskep
>q>hk7Y_+cMc<_hW<,Dqi/UVpW_@%,VrO+iG6hn`,d<[4-Os>M/GN6Z>Zg`oLjS$?+XkN:j/
l84Oh8KLO"\9]Au:IU'lCLKN`:9`J2@VN4&KHN9D8-<9\ET0()*kg?^AInQA6IJ@S`.pi[]AO4
qARt+Vq*+$EZq!?dG:(ICt#o")%SM/?Ol_\uDV'ANs[+C3Wq8bLEo+E8qs2>kgX'\e06W,#r
)mnj_kZm)S.8G^GpVjT:9m*)0>[#4>Br6,15pco"fX^XU]A[lAXgI9Vq3.^@$/a@%\O;f,%Up
/JhMe!#CJmc8)d=.$1VYe`5rg<Q%u"N6TR5YCSgnlRZJ?bq5@XR0JlaDe;ec?EqrAXACSQZ\
'(b1NqJG&Dq.m/&67DrJdlD?IooV\RJnYUInif!<uk^#?@JQi0M&.)gR[NM>"I9ZAqJ`MuCn
&O+u#G6q%<:f`&=Ipe_dP`5U!.7apb1AAg9OnM(I^5EDpf!`P6G5h$<8dDu!2e`mKD@#$4Em
FdP9VN_SHmp#aRQ`58:M&YR/dsD/nr,PDR_d:cr[Z_0TRgu/dL`'gV-tMVU>dLbJE^U63(&Q
D%(E88\?7$=prL,%+UJl)fWEP>VgO9P_e;a`PKhYR+=u3O,ENfn`dTQI7pJZ>6<*VAQ5<nFi
O(2D<b.V*=!iVWQ#VPRLe\tudYqL+3W\Qpn2W/4p1g[69hj*qTE:%j3MBlu?VJ_INj\eA/eh
`e8`#='mk^@Kra^Ej#Ea1Oni\24E?X57K7M8R)Hs@RpR.IgEl'&EXZYZSp9jch.BqnfX39,W
s(IubbYN/@Y+h_Qm^m?D9ikJOV+PBW^>u*fab6ln_QT9,U?UT%I*;CsaNcsii>M3rLa?9mb`
@HE_q)&!39f]A*.EC*N=92.*#AU(V.03MNk@=G1mlItfL3?UQ'g`0Ulm-_c,c*Zj'?hkPIT^9
$N>s42="GeS4a;rWtVBk]A29j8<`PZH0TI9oB[_+nfTqp`X-FGMe,lGH9I"nb7/e"JVKe>nO>
*&t>`E*Y(qb>UY*1^a`b:;)_p>3S^^>.Kgjn<hg6?:HC]AKN]AZ-l%5Bc*HN9CgV_f4-*:L[pG
MX;I60j)Zl"pcEIY3t4Y#aqOJfC?I]A.9khmm[E5L"WJbHnq)r%0Lgbej,KG?6:of"`'g]A>jY
!^js0J;6T]ArpPu"o9BZ_fhlE!00H+*rmGc-.2m6Qkc7ELr-N3Lu%rpMhVQ0j]A(@p4qZ+e&RR
!I=T302L6#N8KOomn3"F24H%UCj*B0jOM!8K*6:mBWiJCgrbN@+);t=-k[l6;!D;=^2Fo;Q:
[X%R%kO3%_3_/XNAiqiWeq.s>C5R\nd+$t[1XaA[T[[9;C1#Pe(Q_QsKYi^GIa4Bh[:^nlqi
'p740(9H=V<kV7`!gL"o*-+\HVBMGa4c:-5[<+jiL&(*L`g=@-H`S\,jaUVpM5QpR:[um1+i
#U=`n&;]Ao7>'G^S2IDo+("fM1q)+>o$/t/%BD9cP%%^<KRqudJ]Ah7-.fm!@R/V:#;P<)k<JT
7@-*!QIW<T\L6r/0e;g[#@@r5EQb[m4A9Zsfn(QIH_5h_4$h]AN3H`akNjB1Z6H`1Zl;g5RoS
Gj0j*WO>jS(OjW0/sc*0]A)<sId_JSh5/Uc/DneH&65$>-L/;71Mmms<g`Z9(^YVc45lQ\#od
*GV8OIa.;@XeYFp6Z!Xdtl%oAmP]Aard$fQ,kQn1ko[;Q4=ui&0=XBO&Hon(6Vf]ABak\]AIb,@
-<IZk17uARJY$&-]As^AHL)mC;f!ae71\Zh"1+Bq<mGOTA]AplK"072_igk=dDq,!r'Nu$JWAI
%VImV;F(VJNQ"^\G8NTiRGn8tNeT9/U@%oS&kc1YQTJ/"0(p3Pmdmnq3GPG+.Y2Ks[_Q2Tu(
_6G<(D\FJei"$b'*Eo[QE<3LMR9N-c]A]A'oBM+"@`%-;]Ad"E_hoNh9kHu4df>@0#RZiE&ON4h
6&'AIr^D5o?3e:C(?oVjm+?mMYHD/c^d`%q9*[kD*c]Ac8>qtWP/(F9RL65/46:7ecuC+BO>`
*O/).MbQCKgYANSJ`*smomb]An[PO3`4Qe)Wa[[BUk?@?WVcUiYIM]A%O[Yag$Q6iE#Kun&=hr
c-CjZY&>k\oTVsHHF`^<r$mZK+Hq1#Q$Ys)GHEmdT!_RS8<,p<r?kV6h#"e$AfPj!]A$A2+PN
go0/4dCqBIe,g4nUmRa1hk.O7B`l^&Cn'K%9anICdVj=l85aEs9uf#ds$GoQ\EhKW[2'R=8i
)#4Rb_V(G/ef[5^"d-9<Y]AW;??6t82ZHs,<+JqJ0na3[l>1]AdpfG5__[9>0sE^td-c9bG\P\
Kn3^eeet_DY;!t735+I9a^oFY#.d0Erm]AQ6-Z%/0hJOt_Cm23Y\f#,6MCKFpVLEfh6a06-W\
K>lLX"UN/r7S7GZK!O?2nSmpXSu]AhI5a(fY"XK5H0Pe]Ad!I?t=CfB.a%.)P*\+`4F<eVEnQj
3!8?E+`dnZ97Z*AMJ$bPc:bJKKRT,P/<tr9!Vg#!Kp%@D0]A`aWl=dH-6X*l&?"5LbfL\?O&:
auuj]Au^:KQC'E7$o>/4LP$4qY=b'1l(AY:[`5]A[Dd!?@PII7gQ&\hrfHH,9Z$;TM/un?+FHa
bd)LO^o_AB=DY_/Bc.j'm@[eS,F1_W^XhA$n'N!'AqZ7`4m4:6md']Agd\"F'GMb^RS[`JEGd
&5WlYM7JZF)@kP^;qE'1^!",UA@!7Z]AW0ocso,$1bS&"bSFH_<Ott]A4KB*9%*1mtX+]A>4*g:
VJ>g[mpG5A?F\POX1rM?Dl[jp,A-nGu&/59a)4p]A@k#0%I:+3\<]Ag@`_:L%d_0&>8<jF.cP3
lg^e-UB_9WpHA2Mql8YRFQg)3B)e5tF**Te]A9LFg:^%r"J!A(!WGkbGBt/kjI6tRo\c4+dX0
b^Ri&V_)*d"XBHX)m>I0t=i]At7[%M`L3k]AF4eJ!M:LC-)/O$4S=^=/DtoYouD4`Q2@%S4>m>
^Rrk49T*N>saGJb<Q[,YlDXa[<FDbag%&&0kMYm9ThA_R(MOcUD)mT%dmVL/kl(qlM4(6OU-
$s%3_CiA:CVLIN4"7;rGb<&(=1YI=W7'n/3;imo4i[C70*#2+4"pV=G;:r\Csq)8+Rn1WGBA
X\6/N"2[a4bDeR\rH?]A)b=[qEW2TflPbk\V(IbGKa@#@sV6js'N9&-Q<"j`Pcrm>7"EN'e3A
CX8MOG4*PB'pN*Qo"YuK9lRB`V;6l&`\2"]AbFVO($AV"_%f*)I:3rR>Os-hP55HG\bps3(ar
E#gTDGn]A;7-J'ah#XZb\nqCj/G!9^V=^6#J$TQ\q_JY<2QWX88[?uJPDea)A(VJ/FQ1#$er,
tWk!Q?0RNXg]A!/&o'8#?2$J8BZbXT<^2gE2P,M+(q^&*-=)ICDfq,r!9ef8&%P=f]A^Qq55Xi
?XlGmc:r>MUh2grHoP,p,3/DLD42WE/J(X.eFKb=^\I%U&7i&<I@oR%\BZYT@p&f+To*G<@8
-]AI*e29MMXGoj`N%ID">9DmJ8EZ@#Z6@b0jmf#<EhXIk(F&RiLenEt9kn^&E["k3l%L(`WqH
+Bf*$SXioiC?/IP.<IM#QX8ij:HrNqB]A=#>.Wo;kpM.#7"/th$l3\Xj@dOcF3hO@VTG;TN;[
b<hM$0oQf,PcjCZ,!piB[,TIQ4.7\4B.\WDgAG:sIK3\?D1%IrqbjmdG&JrVMAQe%H0GeNWR
k1<<Ioo7Ykg:nPdDX+J6B>jbf[",c>(D-d'#Pig_'hAlJ=GLg'R$;9pD0flMmS1jYD+9c`+Q
$puK+Z'>[**e1<pBc6&)5tqNQ&=b3e>@hk&H(Z/%QA'+pCCt172-/9@Vnpp5N0q^'&819RRc
!="0.R!"Ame!:Rh[R-AJI$ocuuU<''H@l*[`f([#c:"s`Ju>[_>gOL.p5T@]AMeVdFrSJAnk\
Un4k;BsFIP`/C"i;K.YqgM>9qQbY%abCddX')..65F\)"n%$,k,'f;N1"c4D9.U:5gskcZ)$
fo"["bT.*$iK[?7R9bPsasgIT6KjYbW#N+IZAkQ'>-VC+aFS%BR1o38+6JlrqV]AU^EeIT!\"
Dk-P#!'+DhY)4`g8?d+B7=CKm#6*!?h$^fr7?LJQ^Q($3SUR?RiFb$;mRa\9`]As#q5]A+\F;c
Mh,:^,L7Ye31^T=N_Id7`5&KILif^M]A:8]A0Y8^k>&@kFfP+c6lKOfjNO3N:&ljCj>!g9\X:V
K(4pEC@/XXfa.+]Afid\3;(%((*aS+c`(]AN_;?dcZ`hn?gP"%m'<T)en5l:XQrfH.Nt!Gsgqr
N?#_RHU*l;e,u4BmR_k'pYTLp$Sh6-!`>)7I82DZh`Nf4f4d+rQ!_^pf9Us+HLl:f4:QWoVh
oeb_X0')p08XqUL0"1EYIK?$(R=T^qf%P"V]Aj_.hXa`H[FX\!7b1H6EpmqT%4+)TGJNFn&YE
$lV8"eQ4dBmFFSadQBeWN=)BP^n<W0c:sq3(Vsd&20>-J;?=XVZrO[HH,Gd9:2t3mLJ]A3Y/6
Fphk"di0RaO%$WcDom3c5oftBp(bAmF$-]A9Y<'LbaY0R(.orGPZd%MU4U1-2E`ML+QTS6S$6
)kN/usSpn$aUXdUZQN=IU!hJ?'r!-5l5qb/+^XuG,^1BWqe=J&f_JV5a<E;B`6#8Qh4mXRF[
hEKkbOsnW+<%i6F5W(CV..BK#B`[C.>N%BgC:G`P#q<_+LhG>b=Y*&QRHjEm%QLA#Af_eh4)
ho/TsA8/HuW[paU`;6*mWfRXtoZsjR8a@&Pe+!Gb#Ero9o;@+;e8ZEq_@uAFg^8e5^kR<X0,
fKW>l-k<,m^q5/15Zo\7]AD5Uic_N&qjc`R_;j5JSjO\V$.qNNKN"fiCkar+t:A2#l@<4FU2@
,N2"+VsOSCp;Z;a1Pai*TXWJ%DP+P(P7MX\s3)9"&R)jlc-O8ZgTm[;Q$=2;I$FUh!#f&\h_
GQXBhO/B;8?nMTUG^)u3cb.Poc\hq08T[p@eF3<$h-D/8LJZhu,.8MN:%Km1=i[3'j)@[E89
PHWQaOW<h=qu29!Y.t`lf0(Pi4L2N*KjV8a1qUh5=.d8&r[Y>!_kG3/"!20/12J)f<:aVd&F
0LcVm(b;@t+6_\WYCs%4=s1Bq=.8F&-YM.E,3U>jJRu9#fdt2;XC-e-%IHb[/:u%FtCCkagU
%3Y`/O%2^(P,.?LE%/dqdb@Jq<ULhBo=a6Pb>8S6MY<Aoj?MY0=If*`3m7FY'HWpS&GWQ,Q8
PPIF,G)cRL=Ppc\"_P?YXUHV"GN&r/>\`l)[:X0/_b/KE7Bt5BrJ5?n8e(bCZs]A@/,He!p!)
UWV2[GK't#))\^L0S[^g0Z4%aC)QY)lqdlc6IB8R'JQ$;<NTa"KcA??Hq(In?Z/rk?OH5n:C
+:ND)`Nd>ng8NEEP@nX$P!%7.C@f;h$TEi_MP"@=M,]As3O#L?_2UIu1HV#S>nOIc;UfZBJp*
.+=76:U]A!0Xc0Y!Fj%3V"4gB#Y=TZ09MB=$7G7#OQhUe[6_NkF,@_X/14p8onffSPSL#/!NN
_013G0,S$Fs4qB2N]Ao8q[.t(U=ri7-m4pruh>r6Su(;A-?Z1>[!WN2\Ph=,PUC$1@TBe4+,l
'b8gK_YA+:NHdFW)til)m<r17nSEn#$PBD)grsYh_fAm7r5s7F/H.d#r!:IR.Q>?os"G5(eF
fB(\6*'bVn6=cminaTQ:V,0Z.!h4W"J)dXA7#&T9HGHlX9$<U3a(Q"SU6'!14NkQ0-*T'3&u
9!9^K]A#O_?,d3Kjp6e_uX`j(-%K(p#"'YI!mqP!I]A83,&pM.3U-96)d&L4;G5RlQHCV`tV/)
>7`'8"d)?7e\"j>0,21Lh;?BP41#^CbV9aCqdLqk=h^WP_"_k7!1t$#dh$<5c,@/'&i!Nh=k
M?U&U2eL,<A4>h9NQ(BodY\X';!*!c,0]AOrkQiD;@L?YE4F[IZW8ZYaX>n,%6&(>4e[-d)j>
TQq%D")j@@;_.&Gq^UQgA>2#dC33.:#XW<QG]A*W>OX<4<K=D#RFoMVmV]Ato&WfcoEqP+sI2`
U##]AB*rNo1S/!'rd\oXDr7lFf673CCje==-6jm8%7-I0[,85'U$>M8WZ9WOHQj:#%!j/!Ss&
7!Om/G/V1K#ZOa"]A8jOagP!:9WYT3;[(&]AD#7W''$Q@[Ffiu[T`Y:(pn@$XAbK2!gnufo07S
H`ML@saZ7mO_K*jDUC2,X#qIXV/9Q1sO<<K,E4bulO&q;\GY;9$R=8p"T1?C>.-#Nh\NKOla
Icd83.37B7/U^Dg-S+UejHBJW`W(IqYchRuRUi@:CEI*8.DWOA>?N)s;?esI8eSM<?j4g+BQ
uC1@+!,O`MoR)M,o$a(\FD;PHHs@2G8(a)HN6>e$'@/0Za5@Q7LinG87o,mQA^"#[HY:kOJL
DZ4^H%KH8Ot!V0U:XfKO#r%nGEi'9Vh(TO(k%=:b#&&sDZg7OL3&*6+`Tae\^^HF"2^\s!a_
f>@R)gHH'j9<;QN:H1.h!fV_KW4,3GQ5hWh1oM1Kro.uiW7+>WF]A:2Sb(WQpUHubV6gcr\P8
bsGabX<PLib/\D`%)aZ,#^s@F.3<da3.<b[1=7!+4[ZhrQC)f`@!l$3rp3Md$$oR2]AP\jI3>
$kYs+L="<)+C/VL.i5JaB5RE`L#EIpE[:I^U+V]A`+#9a1B[eQ3_5/;fT:I%ZC^k0tH1imca8
oY"AREJ`dk6D</<rJ#f,A)^CrdkcW(0sba&on'QH]A3La2hd4&I2n;7GBXqlXV]A[O=5Hl3q&p
;DpR,2V-mY'<fg>qhJB;RsK0Y;M&5REiBb^FY0XKZ)eBZ]A0C:2uXca?NMYAHofL]As$-e%?ge
I1<&tMJUP5Sdn6Tb1*@/kYQ]A[\aPgtd$]A8O;lTQ@g4,Or+^p-1bCP4-=c_MiK5^SB[g56Rm.
?72J#^_Ur=oJjC-I7,X.?)Dp,NA'*B:)epmhQfFi\a)7;^atckP44`N>PaVR6`1e5/Jt42j\
5Etl48$$[)R#B9hjm>Hh6F'k>=g?/gmdTl!2MepRIQq6d[)sM3-eKEk(."#P)d8%Y76!\,PY
rT<aQUg;>C69mmLlpAt*NBp.kf[-B?&$ur*VDfB"@N'c6Z!Q3^!aPd,XM6D6s.:0T"iP@'.$
.=.BF%:&6#nNL]A$eBLGkb[hWJY6O5e0\>Ub/La(t?!;*<n]A,/KfXl<3&.ee.V\ch]AV;@34e1
&c7?]AIE)2S*ct`TQJjqBE6aZ?$M8$DU;Vq3HTj%KPO6(Z?!]A$72OKTYh.tqSrm?DWR[$Ae1r
S)Z\>]A3Jkeljl2oL1M6BLR3(DEJAisL"`6dr\5nmERK3:^'UCF1@65<J,6%`.>Zo-bJ(57OR
&!N6'o_37`#6IR8JMs^b==3'&f=KI4sd4>,pCds-kZ4Aphg=&H'2BXV;jql92)mYCq[e^JC%
2QhUQTZ:jA(3E##amX_6\]A`U-?ShHJ?=R*X?)W'CJWnNI7.:%L(?J,*)0'\#3=?:%c-[ufGh
ELnFm9?4o3)PGZ0W&mO">KgF%haULbK'9r?h`V#H4"ZX,[)+)Q<2G!Vgd<aqhVEqdaO!`%%V
J$/(b>U!cm4br]AIGKA@GjED9(+er[UXgo9c)Tnuq6c?_V\R=)?F]Ak*S0OR+U&q]A.(CifVp1n
1e/MOr1E>*a3?5?+#Q8PHga_7nm]Ab!:DPj<3h8,&UtDDH8#L\(V%o!NTP[jq>,.i.L2;.=]AV
aL#sYH9TeO"kKB]Ao?h#Po#IX<l",U-RgdH@F>d`os+Fiq6=+8bT<o"Q#M,Qdb@bK+#[t6YP7
PQ&)AD-C+=U%_jC^bk#UIE1@?aAO"du^L#Xp@lJ0d#JHS/@V_kdlUq)4P/5HQ+W5;(%`UH]A(
O9M<^6M`)-s8fX/`-=AG_JiOWMI>=jTXO+bZT<lA$,%QH0s2;4CDSWLkkDQ'oQm,e*WCTkMc
"D.X`*c]A7+AaFD(,9t<k86&WdbIf2rV@$qQc]A8_Z[=q:*Z4R[I0\X9hc3e@<r1tu*gV!PIpM
#_kJt)"b`EHF55!-]A2_J9lS&%Usj)TeY9T[AsZ7i]AHI0KdArDWk68&8PN]A7qVGXe?,;QAKni
fmcYdes4*#,^[6`(U(1i[REBInFV^J`(\;?O/^9'<JHA]AFTkm''D/.2eFnl]AmG<-a:Q6EW']A
gYc306^=_m,c1]AfT%V.51Z[#$T0LUd1m\;rG&%!QG.u`D'AKYVoqDQc!;O!S=L'"d/9W"/o"
KX+@TV8fB=8a(BrIA22XCE3QmB9ImZ<nUZ!Tes%O4*WG:'8a,^3K2/I;WRD"PNRRVoThY_*b
7*g%=#B1r^Mr$OJ&0<[/!b'@O0DF'E1Y>627#XeQY'Q^\B#Nl:hkpjW.6@hu1@$ZBLXans+H
@#_+(m+Fnk7E79sWg<>Y%S$EFEe5n.]AIWbF!=kXad*hBZS*kN?r>BaO$N]AkX/o<4+\Xa7NYd
0&0/ur+/'))FYN?@-A`lDbSNA=Or4Bg2j]A^,+VWF/f&K4K0Dga]A[TSZKH;5#djpX;83Qrh*\
rmq)NIX4P?5h]ADlK5EmZ*PBFNkmn+)n$SpXoJ(Xrr<~
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
<HR F="0" T="2"/>
<FR/>
<HC F="0" T="0"/>
<FC/>
<UPFCR COLUMN="true" ROW="true"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,1143000,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[3758267,2743200,2743200,2743200,2743200,2743200,4932726,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0">
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="0">
<O>
<![CDATA[Doc Number]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="1" s="0">
<O>
<![CDATA[Line]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="1" s="0">
<O>
<![CDATA[Source]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="1" s="0">
<O>
<![CDATA[Farm]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="1" s="0">
<O>
<![CDATA[Flock]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="1" s="0">
<O>
<![CDATA[House]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="1" s="0">
<O>
<![CDATA[Date birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="1" cs="2" s="0">
<O>
<![CDATA[No.birds housed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="2" s="1">
<O>
<![CDATA[Doc Number]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" s="1">
<O>
<![CDATA[Line]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="2" s="1">
<O>
<![CDATA[Source]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="2" s="1">
<O>
<![CDATA[Farm]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="2" s="1">
<O>
<![CDATA[Flock]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="2" s="1">
<O>
<![CDATA[House]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="2" s="1">
<O>
<![CDATA[Date birds placed]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="2" s="1">
<O>
<![CDATA[Female]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="8" r="2" s="1">
<O>
<![CDATA[Male]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DocNum"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ChickTypeName"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="U_GiveSou"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FarmCode"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="BatchNum"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="5" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="OcrCode3"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="6" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="PostDate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="7" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="InFemJM"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="8" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="InMaleJM"/>
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
<FRFont name="SimSun" style="0" size="80"/>
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
</StyleList>
<showToolbar showtoolbar="false"/>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[eQE2X'BcjFC8ENbFfDe]A_4<'F?n`^2>%J/4U4=Fq&JYP8`Q4'-Mae9jO^4:JKFgs_'[a-S)$
MTr%BBbcaJNB;L^aKCn0VS5d(c^MH[YA4F#]AbZI*;J;hn?f%]A6Al$Ql,l3;%"Zq,QK&V>mgs
q\QKOX?c[Wf"oK^Y7f&C'KS$IkmZ76nReg36mPj**bhpm+?8,9ciQ(bG2.(bD/)g?,=^-!9B
A/C/F'^luG-f>[oLqX@B2p!mo-D!Gl@<Z&EVs=`\;(-7FS$uV>J]A"gW&*,%<q7kOkb)q.ZlL
WbR%[_gqk=j;TEH*!Y4V(Zb;W9';=tjQhuT'DK]AlK:#5Xbt4L-9P6",UrY.d59E\pW3#LSF<
E9+UNcQB@L4A[<r#E3<"rM)sLGZ8(DCoU3KeO@#qJ`$!G]Ab3C_Ndo4VV--:>P+Q(X[F0Og,H
/cg+u&8O,p6QYX$:4HL5fCFOSmpu16W[rHj?[;h)Oin>6TpVZ@pJY-JE<CEi!=)Q.IpE[-BE
7l0FUmYK=43L?R=J/&Gn"!RdlOq)Z;;I%N2eC4daU@+Pi3:M;N:5r=(V.<ILnYd8)cD`f7f;
7IW9ENKh;39YR!d5-YT)O[RNm8mZVrYTl%NtWpr2F\;*K)^.A5+p4ShI;+E(E90DL$o@K(1n
j%H'0hRL"k%^VuG/r6SU]ASqqeN8TP\7IOuBLt?TZEoM?Xbs**Jn>4R_Yu\`0c>k'?98,`FWl
YLVG<O-qM20Y,:%K6`*&Sq;/6'B%X7DUkM,e-ZX(TZ-"=B#TSoJ\F".%UTTn@!C+ced=hgbT
gcbhL4_a_:Kj2#/gYr_FpHTGWSnieS=)%-S@4##*e(8K%-^gS\$hE,;!l8pDE(HonI>:O5Cg
&]AR!h0>.Ppg[6:d<nd,N&nVkH$M5>nCeejgDL71e^JZ6;n]A"6UK.@iNVElE>H4e,ijc%#Y4X
I1m2?f1s0]Ai@$?52<cdbm6q$\1+ccIclcE(5*2--P`1j>^0dLH?slsfc`14eJ5g-&"2XFU,V
=b5M"C<,;Y*m9^STrq5.LU]A!j]AsI7gO/BVeQ3,LeJ;LRsq!R)5q0oJ=?n^IGTSGao.4d%<?A
b.tCG0WI`AV)`Zj(E%AA<fj>2n4+/NZ4G=V4DNht:Rf/7\i^[VJr^@2L?>B*FP(gTB2^l\TJ
\N;^0?Bs%Rue-VuNhuEnDdeRGVtaguEO<C$&^'%6D]A#FSDfu#2(92TW@p\O^CR0V.YS7N#8&
Xh5W\j$&oMmBk&UeOdt^Ea5p`WWKGQ,::<A,Ze21@VJ[Ue7'R?fhG'aASR*NT5ANZ$hQ/TgR
o>!FnArM%OIj0)NbK#*OmB^.aIq)78i_[XCLBQ8E[md^Yd:ZHm_Hc!,k)d(r)A7Z!r\ft=-n
SR,=j8KfpQ_H(`F^-Z;k@j0tBBUZ0B$&$q:ilL-8/Qh:1U1ZdgCe^#RQ+,=Q;ig2imM8iqVo
g7nGhl'!sl1C4D:iO.Q4Xk,$>WUA8"pL)Yn_f?I"q6V]Aj[[VMDXa`lQ0'M>maG;%O/?YntXA
H2@^sKR^7'U"iHFXq@&ELm+D4O[7hdf4+E#:eR.\*k&KiA=<k[n.8?A&)'<3#NQ"[a]AI`a+R
5O)fBs?YTl2%DLB%f`Xjd&g?/+=L;IWft=>g:F9NGB<J?GTV(.f>FV[c*K_Dsg%AgEEt8edV
:d`FQB'DN(XIGo<N[7&4hNOMks94);nckMk?#De&VlTNc6#]A)NDA-_a".a$P9.*[gt?h[3Zs
F8M$_D1f5Z8/e^DCj]A%qFY\RF5XN%)[R9'_?%4/G"mf0(LKmbSo,N,]A/<<DhMM#$`>lNS]A!M
-)b66J5)1Fs4/.X[M&bIJ&\!rENbHfl:km]A'/d?Ydlf11i6(]A\QtK?*Z0l^.W3*b>X^?;U&M
I/S&6(Z\h4;EA?.(L>a"[n3i98\+/KSrrAaM&m=KqCb%k3R'UD&&$<nJ`Y)+"8P@nAV8OSnK
g>,u]AgoV@MT`K56`&-S332-U2uFEQlOmp6-Nka;PonQYF^C)[:j]AKX^1fA']AmhSchc81A`_2
$cqD"QqR2;.^a296-KC9&));_Cl&c24;1tgq!UaHl+Lu)05#)U:bZ)gppnt08prE.c@1A&Eq
$Gf/jU=.)A+6M,C+f[;.8FDSG#dl*ospgN2-JQP8MB7%t?8N&OcBXL,uiSCIH,;B[Q*l#;V5
IODT6>o8dS@rV6TemM3M7Dbnu6f0[,k1#BY"CESJ3>ZP3,>hd+FhV=6i/K*<E#mGi?e\.\G4
a42;#P;G/L;jij/mWgHS"4(KfpYjWc[uqW1$udbn,RpAt6?eDU[bb@r0_t_TdT-!hI^9/G"t
RH\k:&%G$M":`]A@[+Sf0;GA0PSZ\(+2>G*K(YrXYb]A;7VG%/AplYSl)C'%@c<"^<r!IR$mBK
;WiSX&?8YMU=l(CV+u<&$bW0qL[T_g%t&<%pWiQ%^tDLrKLPJ,gMKon$?qf"Qr>h)"(25?Th
b4>&h$SaL]AEkpa1.n+J0Fs3o]A#TKT#J,[#8^+*FE?^mR`!mcqOni1dp6u(q2?)-;[P.DCHf1
`b-Bekjd&[MNloIn"PU')%]A/R-,-4ZCYQ&ibF:=7MF'';1##Zdj(OZ8moQCg.sC;H8VN]AD=4
m9`>P$<DF?o[Fccu5/Cs7-Y*VT1BIY*Lp=goRrdPll78_I.GGnlf?fdjN(WK''i_%7qc%*P,
h6%Bda"U!o-\aoLeMYDl;FrdjfFsV<Y]ADVBhUPXp7?;aQK2rUFtg:-Uu6AQ']A5jCsJ6BRA+I
QM7]Agg5E:[.4g_#g$[t$5"X9-,:fmPU<l/or*\&<5(4\H\"/-M$1t.U,[RfKR!#ueZ2A4WaQ
Wr(NZqIa,F)umS/4:,13O/39[W=."-DF%dbgnF.e16K\i/nlb*H;]A7eoCV[9j"9D,6STO'T@
_pmFO3g!<55r^l#:7*/BSF0nh8=nHI:=m?G>u:eeDC?r#5\YSq:b-GM?>-F?hsd3k-oI&]AZQ
+s!J*7L.f,1MI7oMHoco.4K<_PJM`F50Y<6tsioLSm$\XWn]AFmn#n0V#4N5D`ljI<,Vgf?W/
YQn&_-\Pb)_DS[^'$@GE^V(GGN(>[S="))_DcUULF]AQ'$=DrOE(p=W,ATB2k!']Ahgrc)^4:%
dd$CF*rQ4_P-fr::^q^:8s!e6A]A5bd<U_Z5XTgCDL4@S\LP@C[/,pK$Hs?cPR6H*:Ng(JnnW
DrgXoderp+P<6]Aa#jatFf3XsU)e4^?%g6fHZ>fhf::q69&&cs`!5'W3h[PD1a3A1JKr\I/Ps
0uRX$F`1@/<FOU+GUZ;Q(Up_NV;q#-<qpj.s3eBmq<RRGr?!IGoutQUEta@DGlh?`i1;0]Apd
kFIrG"qdQpY<5Kb+c9?/)_Ub`&4d+lc'J(YO8m2?7Itb3N67"=+\'nXIo]A+3n!VfX.T%Si!m
8YBj@0IoFDGRr+7:2_>E.i1=PgY/(MJCPlD^F;+_-bjGP9/$Td)]AXjekrnHu;*Vtrt=9S]A%4
/NLb3tBaCjEBQhWB#3:=<:Fo)0<cV6>)7l.oii92X859>Yf7[7Vt'k/OZ!eV[Vm@W]A291p;V
`Vj\=^,:[Ss=s49P*D0a>5Wn.N#D$@PQh'9A@\TVEUXhfU5C3#*44\S<M/2fpO?;Tf_R'B.u
2ZmX)QAMTb4)QR5",f2&cjA_KA:2MFHpDH$@[Rbo0DrD<GcO>1_Hb"L^-9pU[5?`;L6/n12-
NIJ]A3rZ<[&=Ff-9HOCh4#DAN1TBt5"2pHh`1)QV*TR,2+eVl8D5Gm`k,soDflq9G$i@WfA\^
#k;3/hS%H7k+E]AQ&*0BGj&4X"9h7K>Zk`Se5B9$Rm;>K)ATEb":Pi$JF3CHH#:/V';GIgXY=
%?Shd,_?FJX+[067GTuUjm]A5j?!NQ--^BfWdb6r(I0=B'*:+=E(T9r^(?\5ZZDu?9=K[XCp-
DK6BX)9_rI%/UK<HYIf8*l=A!ZE-NVL*KcujJ5rLnWm5g8M9%"X81o%^@4I!kRhP/c*4YO2"
_OY$Rla5M_M+4E!R5g<)_K3sN(bmj<4j^.F/U5=T3[eu<E[pQTHs"\C*[6>>TYTB#NtRf_57
E`iOpSE=R$T`3m'GSW9Mi\u"%mB9)u/%.hn)E>qk6k#f(H:8k;&;1#=t]AKq!(gheu]Ag:ffX"
%q-lYc?7f&uZnIrfGLSQs63EQLl.eZ3fFI?inPWET[FT??&lFDG^m]A@dgRBW_Rco3d^B"ljM
X"SF,Es$FXOG<\2kNANgSk13'gd)t>\D_FHI&W1^sY`Y%b&GG.]Ag&P:$[1J&Q<tC9SiT>/b&
>76,)Upe`1jl;",e%&JO7-]AV[V;d%i_uhPT6Mbr65(1[72>U81>=$bUd%X_ihkk'<3pWDHs:
Tp;aC*uZ)1n*hK,d>i"id0jT`g(&0,p-V$$->?e5L/(toL@eLPL@4."]A8h:jodm*6@A.NuOL
eELY%@I`>jT;W%q>KSr%mVBp+7B4HJH4\Q:T]A6@afe.1k0VP^bu'-[OWk<A:GK9U"rilG"h7
:c=2n#ds*6>-ZGh:F7YrAU.[ed0bc+DB\As,[5o^i7*3]Am=-oB]AQI\'3)l(EKSee.V@n9MlP
V%Wp44@6EOG^/LOD[9SG-:SXTk)mf`9um%ec1LF7te`Sn[r)ZMmXWia]A\1CCIqVSeL'Fg3E3
\B)M0U6]A?h*^=^ea`V<1eXJ1F-aHg>Ol-u]AW@EC$-09/]AbU@IH"Mk(hSO"Y'NX$MX6a.?>2I
8/@@':T;6SDV2aF^#PAt24Ud[,o<'t4i9nf>>`;$0Mr)c0D2`!6a[6.__bHW0jg$PbC'maGl
gl.;SH3683P7&!H4#j3#<B;`6'a9N$Cr0)0XbhP*o3ipM`[hp]A([(@)eLNUbJ.g_*1%"2JJK
Wpo>3hQCcB\]APQ"::MPKl>k\,b7(dh&ERYO<So]AjODW^AFN$)/n<f\W2_G10i"]AGhZeSnRXM
")'5,?Q[,dM2+]A?j7X(ji7p9+O>5Vrf6DQ7![CC:?Y#Y!7j2p;j63tppY-HddKNkef@$KF16
#!iM=]Ab2Mg&ne(Y`hc>rL/e7\5+/'Kq#N@B'#:Vg,:cLIl,^pn94^2D'3&g!U-+Se4[mX93K
Dr!YriLOH`hppSYc3D"dc+).fjpG>;_s'(2A]Ab/pPPaY"]A5]Aa,TA7OGQNlu[<u7@=bWofE3J
,a7p2)B":eB;opGUp0_KlcJ5A+o[Zb$Bp@<`dlK,#P9Y[[uTM@WH0@c_Z5l>msf1,9jXe%^9
7Ig3VWTi.gR_CD6=I">R"k9B2ee/$+7p\BB18)F]AL00PN<E)NFLhkPm*oXqY0n"'lWRla`sd
tMPd7/if0BI@QfaYI!9H\t)$W/qcI:D]AWklKNuO;l6SLWsUsnYVGT2QKN3ur.3)i\\ZWh]AE2
.n>C)*<1,5YJmlp2RihH6=mNtZ\;EnIB:=eS+)h8!JP3H:<Ottt113)#c=JQAZSb[?M4ifER
KN$=.;a9r>!Q1<kB"m6Og\S/7+8`,B?Ilufg&gRq4@Cq7_S")EX]A3q;\Nt(5\#A@fSRs6N<T
&u,Pt8:(,j#aLTW-nS6+sNP':,*p+hqVGp![tCLV&&upX1J)gM#=NF+fn@G[hAu;.Jg8Z;=7
:JlQ-%]A)&h(q)N+m(2ACsEJjTH_DZuZaOcT6=nlgE'a$hGEi$AY/<Ufi43Z^ua/!A*QtX.[Z
f,,5S4FnWb?!8_i_['lo($P:%d_p^`75H`bY9gEFul"JW-c*-1NiDl$Fq>q4)lCIO_QW2?B6
B+mXq,kR_5ssHlc."EOqA5\7MCOU%2KS;W".VE[uL?#jTuGJa7r6YLd3oM+,RO$*]A:L>_Q'n
g(lI8d4]A^FmteQ+U.16Nk[`/@$fRJW1)8Ip@]A=oB^'`>kV08Ah0e-#2N'>_DnLK<%?YGDf=;
Z2Om:f?o(TqX%4Q^1D8]AqD91ATB`q\qlBrqP[9OK/?1l'akZd[?0LVU'A&h?9['nk&$Fq`qk
s&_a-J6'R<[BaLgED*fTPK_MSF&"72;5-k>=<A4!p)9cun"ZO_\bklJn]A4q@Kq4Fa.Z.$a51
4_2^c0Qd)N849-S&9?C%5rOX:_g/LD"N/kpLbX&Ni)j.lCWG:)E[2MhBMm=X;F'1Is9&+P5'
Nf7,:Wg*SuU^:5UdUW_)$]Ajq0+]AHK5"t!,Y*X]A(:o*S3GmaDp0==CYUb=IV6pJUN>p&8BQX]A
FrG"<iuEpYBsY]A6,d7PT1%5$j(lp%+[-B[Ml%-RT7_$Ls)Wsm[$%&."'5FaY'[F3L'f_;WP,
B.D+RaAu]A78b!%F2k8pnLC2%SC.J0[?+'[17>83?fu]AL?%%iN*@D57%C<+<qM3[Jp:bOR>'`
`5QtBKNO\(]AT8081F3G!YfoG?co1qdGmb@e8_8e"jKIHdikH&;4;]A+Xa88-/)T^(-rZ,"ZgL
b;GEe(0`j'7c@.BV6OljJ[+GBD>m4m(GSKKqCQ^0B.7h[Ze"Wf5QDcBJPA#$.Qock+X2h@0K
_^[cmPZ4Vh4d>8O\r#c&V=m[&YD]AI5aH)o(`[L>U2Uj3=7lE9g<>&F1W*]A*Aq8&ZO!3mu^`H
Wrq/^@S@jG;@Ss;;1>$'N$3U:h1o8/'g8%7HeVp)Z81a@L=c_AS]A`t`?_[]A1lqrHg;5,]ARG7
I[TrYbQ2T0(ohs.6M1S!6pn[:Bd_[]A1GMOPKtG\ZT^m?,$d:iuM"<O#;$$05eU"b.%dnN8GB
Q/dn@Ui;pWJSFS``>#N8sjodAMN76JWH(%[u9]A?VtTNY_o'-4af&VLq4niV]A/]A!TS9joMUir
m'+LYt</ES)Q#i!i-54M^-A)%.3?\,`de3H.$[36:3(4)9Yi+PO4uo&BSnV^s90_&=N97Nq(
WN[3f$^;cl^&`\%-b35TYbSOg\0?+u?3VFGZG_)mjq-9oHEnbR'-n%/H>aPGj>>]AKr37Whln
,"S.=$hBX/[FSmK&XdnEc9$V+6q$F;0IpBdU`_?D8nD2I#9u5qb7':*KD_p,O@_.'@0o>;XA
._3Lr)kar]AM^/N\ZLjR#)s2r)'i:0V@`jd@>j5$jB,Ih:I_,REdmFLsHLE0)gUFI_"CiA=aA
6CmW:L\'jUCU=qGYISlY-6WfF7/3>GMKK#;N9MDI^h+6Ojh#NB`n+_fRCraf9h'@>h[XaDtK
c]AuMT>%QD8Yl!@cK=HtkG`%RG@LPP1(p(pYu*R+$`q@+7HdOG^^Vm`$o,2l5SqFc7u.m/q.t
/iZA[_A?1df8]AeLcHGRg[PX!J&I0WS_cR[pC'5^lH%6=[:apm5Nfs0=(sk#Ks>hE\T>oF2t'
DWDE:S&O3Zm+Gh.--P>Al65FlpHnWZ=n]AW3>THJE6R^)A-s1`GKoV!@RGc'aV0_C:GZN]A%BD
$_'f#M6Fq6,p?+\X*-HG(7^7bl<$11',L.PT1X(\.RcjcIj$o>S*;SEcYo([l2/O[;GKOkp#
?N;%(V,ZY?nLCEq;W5+b=GA.fOXS@q%1k0f/PP("_%V"uDOM7%jno]A7uM!3Ygk>9AIXs4!(L
r0(`JqqGHE.kj4XhStDJ`mbhr(dtiS>lDqs5/?;dioAOhNl<3P5&bKe4#?cqB6doD4no#^;q
*D5`Gnbj9sTV[u%p@?GiIia[c`4Oi>:nrritQIIiQRrro3&\r^JK:BTZrSAWW:r-;ka-O$=2
M[P($6j:8,8VUt52?Y@g]ADAjgq!aG"@U$eG8,duTmCt:lUAkN<c"c2)=.NVOX"<aSq"SPN4G
!&I?^Q[7!EtTGpH\s?$cfgB%=)E3l*HA?mtu(G1)!4/#[+^D*,7GaK12PhLhZc_G2b]AlX7XU
%VX`]A"J%S/nj_A#.<?$fg,_el&o9PaDg^[`h_o8s>i1i"^L*Y"edVWOd;-"XWZ<oh(JNOM+d
(#lKJ(DEh`%s"Yn38-\1Yp8\5Q1N;~
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
<WidgetName name="chart0"/>
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
<InnerWidget class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart0"/>
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
<LayoutAttr selectedIndex="0"/>
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[FemaleCurve]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.line.VanChartLinePlot">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="4" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.plugin.chart.base.VanChartAttrTrendLine">
<TrendLine>
<Attr trendLineName=""/>
<LineStyleInfo>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
<AttrColor>
<Attr/>
</AttrColor>
<AttrLineStyle>
<newAttr lineStyle="0"/>
</AttrLineStyle>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
</LineStyleInfo>
</TrendLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrLine">
<VanAttrLine>
<Attr lineWidth="2" lineStyle="0" nullValueBreak="true"/>
</VanAttrLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrMarker">
<VanAttrMarker>
<Attr isCommon="true" markerType="NullMarker" radius="4.5" width="30.0" height="30.0"/>
<Background name="NullBackground"/>
</VanAttrMarker>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" followMouse="false" showMutiSeries="true" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="true"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
<FRFont name="Al Bayan" style="0" size="72"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</DataSheet>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false"/>
<VanChartRectanglePlotAttr vanChartPlotType="normal" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridColor="-3881788" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" baseLog="=10"/>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
</Plot>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<ChartDefinition>
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
<CategoryName value="WeekAge"/>
<ChartSummaryColumn name="FemWeiStd" function="com.fr.data.util.function.MaxFunction" customName="StandardWei"/>
<ChartSummaryColumn name="FemWeiAvg" function="com.fr.data.util.function.MaxFunction" customName="ActualWeight"/>
<ChartSummaryColumn name="FemFeedAvgW" function="com.fr.data.util.function.MaxFunction" customName="ActualFeedCons"/>
<ChartSummaryColumn name="U_FStdQty" function="com.fr.data.util.function.MaxFunction" customName="StandardFeedCons"/>
</MoreNameCDDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
 moreLabel="true" plusColor="-11349576" minusColor="-741051"</refreshMoreLabel>
</Chart>
</InnerWidget>
<BoundsAttr x="0" y="0" width="958" height="502"/>
</Widget>
<body class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart0"/>
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
<LayoutAttr selectedIndex="0"/>
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[FemaleCurve]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.line.VanChartLinePlot">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="4" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0"/>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="true"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrTrendLine">
<TrendLine>
<Attr trendLineName=""/>
<LineStyleInfo>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
<AttrColor>
<Attr/>
</AttrColor>
<AttrLineStyle>
<newAttr lineStyle="0"/>
</AttrLineStyle>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
</LineStyleInfo>
</TrendLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrLine">
<VanAttrLine>
<Attr lineWidth="2" lineStyle="0" nullValueBreak="true"/>
</VanAttrLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrMarker">
<VanAttrMarker>
<Attr isCommon="true" markerType="NullMarker" radius="4.5" width="30.0" height="30.0"/>
<Background name="NullBackground"/>
</VanAttrMarker>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
<FRFont name="Al Bayan" style="0" size="72"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</DataSheet>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false"/>
<VanChartRectanglePlotAttr vanChartPlotType="normal" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridColor="-3881788" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" baseLog="=10"/>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
</Plot>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<ChartDefinition>
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
<CategoryName value="WeekAge"/>
<ChartSummaryColumn name="FemWeiStd" function="com.fr.data.util.function.MaxFunction" customName="StandardWei"/>
<ChartSummaryColumn name="FemWeiAvg" function="com.fr.data.util.function.MaxFunction" customName="ActualWeight"/>
<ChartSummaryColumn name="FemFeedAvgW" function="com.fr.data.util.function.MaxFunction" customName="ActualFeedCons"/>
<ChartSummaryColumn name="U_FStdQty" function="com.fr.data.util.function.MaxFunction" customName="StandardFeedCons"/>
</MoreNameCDDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
 moreLabel="true" plusColor="-11349576" minusColor="-741051"</refreshMoreLabel>
</Chart>
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
<Widget class="com.fr.form.ui.container.cardlayout.WTabFitLayout">
<WidgetName name="Tab2"/>
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
<WidgetName name="chart1"/>
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
<InnerWidget class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart1"/>
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
<LayoutAttr selectedIndex="0"/>
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[MaleCurve]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.line.VanChartLinePlot">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="4" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.plugin.chart.base.VanChartAttrMarker">
<VanAttrMarker>
<Attr isCommon="true" markerType="NullMarker" radius="4.5" width="30.0" height="30.0"/>
<Background name="NullBackground"/>
</VanAttrMarker>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrLine">
<VanAttrLine>
<Attr lineWidth="2" lineStyle="0" nullValueBreak="true"/>
</VanAttrLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" followMouse="false" showMutiSeries="true" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="true"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</DataSheet>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false"/>
<VanChartRectanglePlotAttr vanChartPlotType="normal" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridColor="-3881788" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" baseLog="=10"/>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
</Plot>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<ChartDefinition>
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
<CategoryName value="WeekAge"/>
<ChartSummaryColumn name="MaleWeiStd" function="com.fr.data.util.function.MaxFunction" customName="MaleWeiStd"/>
<ChartSummaryColumn name="MaleWeiAvg" function="com.fr.data.util.function.MaxFunction" customName="ActualWeight"/>
<ChartSummaryColumn name="MaleFeedAvgW" function="com.fr.data.util.function.MaxFunction" customName="ActualFeedCons"/>
<ChartSummaryColumn name="U_MStdQty" function="com.fr.data.util.function.MaxFunction" customName="StandardFeedCons"/>
</MoreNameCDDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
 moreLabel="true" plusColor="-11349576" minusColor="-741051"</refreshMoreLabel>
</Chart>
</InnerWidget>
<BoundsAttr x="0" y="0" width="957" height="507"/>
</Widget>
<body class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart1"/>
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
<LayoutAttr selectedIndex="0"/>
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[MaleCurve]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.line.VanChartLinePlot">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="4" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.plugin.chart.base.VanChartAttrMarker">
<VanAttrMarker>
<Attr isCommon="true" markerType="NullMarker" radius="4.5" width="30.0" height="30.0"/>
<Background name="NullBackground"/>
</VanAttrMarker>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrLine">
<VanAttrLine>
<Attr lineWidth="2" lineStyle="0" nullValueBreak="true"/>
</VanAttrLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" followMouse="false" showMutiSeries="true" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="true"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</DataSheet>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false"/>
<VanChartRectanglePlotAttr vanChartPlotType="normal" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridColor="-3881788" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" baseLog="=10"/>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
</Plot>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<ChartDefinition>
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
<CategoryName value="WeekAge"/>
<ChartSummaryColumn name="MaleWeiStd" function="com.fr.data.util.function.MaxFunction" customName="MaleWeiStd"/>
<ChartSummaryColumn name="MaleWeiAvg" function="com.fr.data.util.function.MaxFunction" customName="ActualWeight"/>
<ChartSummaryColumn name="MaleFeedAvgW" function="com.fr.data.util.function.MaxFunction" customName="ActualFeedCons"/>
<ChartSummaryColumn name="U_MStdQty" function="com.fr.data.util.function.MaxFunction" customName="StandardFeedCons"/>
</MoreNameCDDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
 moreLabel="true" plusColor="-11349576" minusColor="-741051"</refreshMoreLabel>
</Chart>
</body>
</InnerWidget>
<BoundsAttr x="0" y="0" width="957" height="507"/>
</Widget>
<Sorted sorted="false"/>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="957" height="507"/>
<MobileWidgetList/>
<tabFitAttr index="2" tabNameIndex="2"/>
</Widget>
<Widget class="com.fr.form.ui.container.cardlayout.WTabFitLayout">
<WidgetName name="Tab3"/>
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
<WidgetName name="chart2"/>
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
<InnerWidget class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart2"/>
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
<LayoutAttr selectedIndex="0"/>
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[EggProductionCurve]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.line.VanChartLinePlot">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="4" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.plugin.chart.base.VanChartAttrMarker">
<VanAttrMarker>
<Attr isCommon="true" markerType="NullMarker" radius="4.5" width="30.0" height="30.0"/>
<Background name="NullBackground"/>
</VanAttrMarker>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrLine">
<VanAttrLine>
<Attr lineWidth="2" lineStyle="0" nullValueBreak="true"/>
</VanAttrLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" followMouse="false" showMutiSeries="true" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="function(){ return this.category+this.seriesName+this.value;}" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="true"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</DataSheet>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false"/>
<VanChartRectanglePlotAttr vanChartPlotType="normal" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridColor="-3881788" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" baseLog="=10"/>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
</Plot>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<ChartDefinition>
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
<CategoryName value="WeekAge"/>
<ChartSummaryColumn name="EggRatioStd" function="com.fr.data.util.function.MaxFunction" customName="StandardEggProductionRate"/>
<ChartSummaryColumn name="EggRatioByW" function="com.fr.data.util.function.MaxFunction" customName="ActualEggProductionRate"/>
<ChartSummaryColumn name="EggWStd" function="com.fr.data.util.function.MaxFunction" customName="StandardEggWeight"/>
<ChartSummaryColumn name="EggWFact" function="com.fr.data.util.function.MaxFunction" customName="ActualEggWeight"/>
</MoreNameCDDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
 moreLabel="true" plusColor="-11349576" minusColor="-741051"</refreshMoreLabel>
</Chart>
</InnerWidget>
<BoundsAttr x="0" y="0" width="957" height="507"/>
</Widget>
<body class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart2"/>
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
<LayoutAttr selectedIndex="0"/>
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[EggProductionCurve]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.line.VanChartLinePlot">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="4" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.plugin.chart.base.VanChartAttrMarker">
<VanAttrMarker>
<Attr isCommon="true" markerType="NullMarker" radius="4.5" width="30.0" height="30.0"/>
<Background name="NullBackground"/>
</VanAttrMarker>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrLine">
<VanAttrLine>
<Attr lineWidth="2" lineStyle="0" nullValueBreak="true"/>
</VanAttrLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" followMouse="false" showMutiSeries="true" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="function(){ return this.category+this.seriesName+this.value;}" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="true"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</DataSheet>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false"/>
<VanChartRectanglePlotAttr vanChartPlotType="normal" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridColor="-3881788" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" baseLog="=10"/>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
</Plot>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<ChartDefinition>
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
<CategoryName value="WeekAge"/>
<ChartSummaryColumn name="EggRatioStd" function="com.fr.data.util.function.MaxFunction" customName="StandardEggProductionRate"/>
<ChartSummaryColumn name="EggRatioByW" function="com.fr.data.util.function.MaxFunction" customName="ActualEggProductionRate"/>
<ChartSummaryColumn name="EggWStd" function="com.fr.data.util.function.MaxFunction" customName="StandardEggWeight"/>
<ChartSummaryColumn name="EggWFact" function="com.fr.data.util.function.MaxFunction" customName="ActualEggWeight"/>
</MoreNameCDDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
 moreLabel="true" plusColor="-11349576" minusColor="-741051"</refreshMoreLabel>
</Chart>
</body>
</InnerWidget>
<BoundsAttr x="0" y="0" width="957" height="507"/>
</Widget>
<Sorted sorted="false"/>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="957" height="507"/>
<MobileWidgetList/>
<tabFitAttr index="3" tabNameIndex="3"/>
</Widget>
<Widget class="com.fr.form.ui.container.cardlayout.WTabFitLayout">
<WidgetName name="Tab4"/>
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
<WidgetName name="chart3"/>
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
<InnerWidget class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart3"/>
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
<LayoutAttr selectedIndex="0"/>
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[EggProductionCumulative]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.line.VanChartLinePlot">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="4" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.plugin.chart.base.VanChartAttrMarker">
<VanAttrMarker>
<Attr isCommon="true" markerType="NullMarker" radius="4.5" width="30.0" height="30.0"/>
<Background name="NullBackground"/>
</VanAttrMarker>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrLine">
<VanAttrLine>
<Attr lineWidth="2" lineStyle="0" nullValueBreak="true"/>
</VanAttrLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" followMouse="false" showMutiSeries="true" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="true"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</DataSheet>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false"/>
<VanChartRectanglePlotAttr vanChartPlotType="normal" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridColor="-3881788" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" baseLog="=10"/>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
</Plot>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<ChartDefinition>
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
<CategoryName value="WeekAge"/>
<ChartSummaryColumn name="EggTotalFact" function="com.fr.data.util.function.MaxFunction" customName="ActualEggQtyBirdsHoused"/>
<ChartSummaryColumn name="EggStdNoByPer" function="com.fr.data.util.function.MaxFunction" customName="SchEggQtyBirdsHoused"/>
</MoreNameCDDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
 moreLabel="true" plusColor="-11349576" minusColor="-741051"</refreshMoreLabel>
</Chart>
</InnerWidget>
<BoundsAttr x="0" y="0" width="957" height="507"/>
</Widget>
<body class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart3"/>
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
<LayoutAttr selectedIndex="0"/>
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[EggProductionCumulative]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.line.VanChartLinePlot">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="0" seriesDragEnable="false" plotStyle="4" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.plugin.chart.base.VanChartAttrMarker">
<VanAttrMarker>
<Attr isCommon="true" markerType="NullMarker" radius="4.5" width="30.0" height="30.0"/>
<Background name="NullBackground"/>
</VanAttrMarker>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrLine">
<VanAttrLine>
<Attr lineWidth="2" lineStyle="0" nullValueBreak="true"/>
</VanAttrLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" followMouse="false" showMutiSeries="true" isCustom="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="Al Bayan" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<Attr isCommon="true"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr shadow="true"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false"/>
<Format class="com.fr.base.CoreDecimalFormat">
<![CDATA[#.##]]></Format>
</DataSheet>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName="新特性"/>
<isCustomFillStyle isCustomFillStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
<OColor colvalue="-472193"/>
<OColor colvalue="-486008"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-8873759"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-1188474"/>
<OColor colvalue="-6715442"/>
<OColor colvalue="-10243346"/>
<OColor colvalue="-8988015"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false"/>
<VanChartRectanglePlotAttr vanChartPlotType="normal" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr shadow="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridColor="-3881788" lineColor="-5197648"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0">
<FRFont name="verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=0"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" baseLog="=10"/>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
</Plot>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<ChartDefinition>
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[ds2]]></Name>
</TableData>
<CategoryName value="WeekAge"/>
<ChartSummaryColumn name="EggTotalFact" function="com.fr.data.util.function.MaxFunction" customName="ActualEggQtyBirdsHoused"/>
<ChartSummaryColumn name="EggStdNoByPer" function="com.fr.data.util.function.MaxFunction" customName="SchEggQtyBirdsHoused"/>
</MoreNameCDDefinition>
</ChartDefinition>
</Chart>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomResize="true" zoomType="xy"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<TextAttr>
<Attr alignText="0">
<FRFont name="Microsoft YaHei" style="0" size="72"/>
</Attr>
</TextAttr>
 moreLabel="true" plusColor="-11349576" minusColor="-741051"</refreshMoreLabel>
</Chart>
</body>
</InnerWidget>
<BoundsAttr x="0" y="0" width="957" height="507"/>
</Widget>
<Sorted sorted="false"/>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="957" height="507"/>
<MobileWidgetList/>
<tabFitAttr index="4" tabNameIndex="4"/>
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

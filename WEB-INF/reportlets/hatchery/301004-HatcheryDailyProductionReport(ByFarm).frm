<?xml version="1.0" encoding="UTF-8"?>
<Form xmlVersion="20151125" releaseVersion="8.0.0">
<TableDataMap>
<TableData name="ds1" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="endDate"/>
<O>
<![CDATA[1]]></O>
</Parameter>
<Parameter>
<Attributes name="batchCode"/>
<O>
<![CDATA[1]]></O>
</Parameter>
<Parameter>
<Attributes name="startDate"/>
<O>
<![CDATA[1]]></O>
</Parameter>
<Parameter>
<Attributes name="farmCode"/>
<O>
<![CDATA[1]]></O>
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
         T0."FarmCode",
         T0."OcrCode3",
         T0."BatchNum",
         T0."ChickType",
         T0."DocDate",
         T0."ChickData",
         T0."ChickAgeMin",
         T0."ChickAgeMax",
         T0."MnfDateMin",
         T0."MnfDateMax",
         T0."MnfAgeMin",
         T0."MnfAgeMax",
         CAST(T0."ChickAgeMin" AS varchar(20)) || '-' || CAST(T0."ChickAgeMax" AS varchar(20)) AS "ChickAge", CAST(CAST(T0."MnfDateMin" AS date) AS varchar(20)) || '/' || CAST(CAST(T0."MnfDateMax" AS date) AS varchar(20)) AS "MnfDate", CAST(T0."MnfAgeMin" AS varchar(20)) || '-' || CAST(T0."MnfAgeMax" AS varchar(20)) AS "MnfAge", T0."IncuCode", T0."GiveCode", T0."HaEggQty", T0."InfEggQty", T0."InfEggRate", T0."FerEggRateStd", T0."FerEggQty", T0."FerEggRate", T0."GermEggQty", T0."GermEggRate", T0."TransferQty", T0."TransferRate", T0."ShellQty", T0."ShellRate", T0."LostEggQty", T0."LostEggRate", T0."ChickQty", T0."ChickRate", T0."ChickRateStd", T0."OutQty", T0."OutRate", T0."HealAActQty", T0."HealBActQty", T0."HealAActQty" + T0."HealAActQty" AS "HealActQty", T0."HealActRate", T0."ChickStdQty", T0."ChickActStd", T0."HealStdQty", T0."HealActStd", T0."HOFRate", T0."Notes", T1."DocEntry" AS "Expr1", T1."DocNum", T1."Series", T2."FerEggRateAVG", T2."GermEggRateAVG", T2."InfEggRateAVG", T2."LostEggRateAVG", T2."OutRateAVG", T2."ShellRateAVG", T2."TransferRateAVG", T2."HealActQtyRateAVG", T2."ChickRateAVG", T1."ItemCode", T1."Status", T1."Type", T1."PlannedQty", T1."CmpltQty", T1."RjctQty", T1."PostDate", T1."DueDate", T1."OriginAbs", T1."OriginNum", T1."OriginType", T1."UserSign", T1."Comments", T1."CloseDate", T1."RlsDate", T1."CardCode", T1."Warehouse", T1."Uom", T1."LineDirty", T1."WOR1Count", T1."JrnlMemo", T1."TransId", T1."CreateDate", T1."Printed", T1."OcrCode", T1."PIndicator", T1."OcrCode2", T1."OcrCode3", T1."OcrCode4", T1."OcrCode5", T1."SeqCode", T1."Serial", T1."SeriesStr", T1."SubStr", T1."LogInstanc", T1."UserSign2", T1."UpdateDate", T1."Project", T1."SupplCode", T1."U_ChickSexy", T1."U_STWeekAge", T1."U_ChickType", T1."U_IncuCode", T1."U_IncuMinQty", T1."U_GiveCode", T1."U_GiveSou", T1."U_CompQt", T1."U_FeedModel", T1."U_OrdType", T1."U_ClasNum", T1."U_BatchNum"
FROM SBO_AG_FARM.U_PFOWOR T0
INNER JOIN SBO_AG_FARM.OWOR T1
    ON T0."DocNum" = T1."DocNum"
        AND T1."Status" <> 'P'
INNER JOIN 
    (SELECT T0."FarmCode",
         T0."BatchNum",
         T0."MnfAgeMin",
         SUM("InfEggQty") AS "a",
         SUM("HaEggQty") AS "b",
         SUM("GermEggQty") AS "c",
         SUM("ShellQty") AS "d",
         SUM("LostEggQty") AS "e",
         SUM("OutQty") AS "f",
         SUM("FerEggQty") AS "g",
         SUM("TransferQty") AS "h",
         SUM("HealAActQty") AS "i",
         SUM("HealBActQty") AS "j",
         SUM("ChickQty") AS "k",
         ROUND(IFNULL(SUM(T0."InfEggQty") * 1.00 / NULLIF(SUM(T0."HaEggQty"),
         0),
         0) * 100,
         2) AS "InfEggRateAVG",
         ROUND(IFNULL(SUM(T0."GermEggQty") * 1.00 / NULLIF(SUM(T0."HaEggQty"),
         0),
         0) * 100,
         2) AS "GermEggRateAVG",
         ROUND(IFNULL(SUM(T0."ShellQty") * 1.00 / NULLIF(SUM(T0."HaEggQty"),
         0),
         0) * 100,
         2) AS "ShellRateAVG",
         ROUND(IFNULL(SUM(T0."LostEggQty") * 1.00 / NULLIF(SUM(T0."HaEggQty"),
         0),
         0) * 100,
         2) AS "LostEggRateAVG",
         ROUND(IFNULL(SUM(T0."OutQty") * 1.00 / NULLIF(SUM(T0."HaEggQty"),
         0),
         0) * 100,
         2) AS "OutRateAVG",
         ROUND(IFNULL(SUM(T0."FerEggQty") * 1.00 / NULLIF(SUM(T0."HaEggQty"),
         0),
         0) * 100,
         2) AS "FerEggRateAVG",
         ROUND(IFNULL(SUM(T0."TransferQty") * 1.00 / NULLIF(SUM(T0."HaEggQty"),
         0),
         0) * 100,
         2) AS "TransferRateAVG",
         ROUND(IFNULL(SUM((T0."HealAActQty" + T0."HealBActQty")) * 1.00 / NULLIF(SUM(T0."HaEggQty"),
         0),
         0) * 100,
         2) AS "HealActQtyRateAVG",
         ROUND(IFNULL((SUM(T0."ChickQty")) * 1.00 / NULLIF(SUM(T0."HaEggQty"),
         0),
         0) * 100,
         2) AS "ChickRateAVG"
    FROM SBO_AG_FARM.U_PFOWOR T0
    INNER JOIN SBO_AG_FARM.OWOR T1
        ON T0."DocNum" = T0."DocNum"
    WHERE (T0."FarmCode" = ${farmCode})
            AND (T0."BatchNum" = ${batchCode})
    GROUP BY  T0."FarmCode", T0."BatchNum", T0."MnfAgeMin") AS T2
    ON T2."FarmCode" = T0."FarmCode"
        AND T2."BatchNum" = T0."BatchNum"
        AND T2."MnfAgeMin" = T0."MnfAgeMin"
WHERE (T0."FarmCode" = ${farmCode})
        AND (T0."BatchNum" = ${batchCode})
        AND (T0."DocDate"
    BETWEEN '${startDate}'
        AND '${endDate}') order by T0."MnfAgeMin";]]></Query>
</TableData>
</TableDataMap>
<ReportFitAttr fitStateInPC="3" fitFont="false"/>
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
<WidgetName name="LabelstartDate"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[Start Date:]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="SimSun" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="50" y="53" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.DateEditor">
<WidgetName name="startDate"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<allowBlank>
<![CDATA[false]]></allowBlank>
<DirectEdit>
<![CDATA[false]]></DirectEdit>
<DateAttr/>
<widgetValue>
<O t="Date">
<![CDATA[1500020579746]]></O>
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
<WidgetName name="LabelendDate"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[To:]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="SimSun" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="351" y="53" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.DateEditor">
<WidgetName name="endDate"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<allowBlank>
<![CDATA[false]]></allowBlank>
<DirectEdit>
<![CDATA[false]]></DirectEdit>
<DateAttr/>
<widgetValue>
<O t="Date">
<![CDATA[1500020600097]]></O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="431" y="53" width="214" height="21"/>
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
<BoundsAttr x="351" y="25" width="80" height="21"/>
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
<BoundsAttr x="431" y="25" width="214" height="21"/>
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
<Widget widgetName="farmCode"/>
<Widget widgetName="batchCode"/>
<Widget widgetName="startDate"/>
<Widget widgetName="endDate"/>
</MobileWidgetList>
<WidgetNameTagMap>
<NameTag name="endDate" tag="To:"/>
<NameTag name="batchCode" tag="Flock:"/>
<NameTag name="startDate" tag="Start Date:"/>
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
<WidgetName name="20b7fe76-b68c-47b9-9702-3f7655f937c5"/>
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
<WidgetName name="823820ce-470d-4f4f-8562-ac22904658d4"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[DailyReportStat]]></Text>
<initial>
<Background name="ColorBackground" color="-1"/>
</initial>
<FRFont name="SimSun" style="0" size="72"/>
<isCustomType isCustomType="true"/>
<SwitchTagAttr layoutName="tabpane0"/>
</Widget>
<Widget class="com.fr.form.ui.CardSwitchButton">
<WidgetName name="8758d070-2081-48d8-91e2-19bbc23721d7"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[EggClassCurveChart]]></Text>
<FRFont name="SimSun" style="0" size="72"/>
<isCustomType isCustomType="true"/>
<SwitchTagAttr layoutName="tabpane0" index="1"/>
</Widget>
<Widget class="com.fr.form.ui.CardSwitchButton">
<WidgetName name="0aecf165-db44-481d-81f7-ca1fedef636d"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[EggClassCurveChart2]]></Text>
<FRFont name="SimSun" style="0" size="72"/>
<isCustomType isCustomType="true"/>
<SwitchTagAttr layoutName="tabpane0" index="2"/>
</Widget>
<Widget class="com.fr.form.ui.CardSwitchButton">
<WidgetName name="c55d190f-0303-4cd8-bc9c-fd1865f08ac0"/>
<WidgetAttr>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[ChickClassCurveChart]]></Text>
<FRFont name="SimSun" style="0" size="72"/>
<isCustomType isCustomType="true"/>
<SwitchTagAttr layoutName="tabpane0" index="3"/>
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
<![CDATA[723900,1064029,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[4089861,4355869,2743200,2743200,6916189,3591098,2743200,3391592,2743200,3158836,4887883,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,3325090,2743200,2743200,3624349,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0">
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" rs="2" s="0">
<O>
<![CDATA[Date set]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="1" r="1" rs="2" s="0">
<O>
<![CDATA[Date hatched]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="2" r="1" rs="2" s="0">
<O>
<![CDATA[Doc Num]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="3" r="1" rs="2" s="0">
<O>
<![CDATA[Age]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="4" r="1" rs="2" s="0">
<O>
<![CDATA[Prod date]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="5" r="1" rs="2" s="0">
<O>
<![CDATA[Prod age(wk)]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="6" r="1" rs="2" s="0">
<O>
<![CDATA[Setter]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="7" r="1" rs="2" s="0">
<O>
<![CDATA[No.eggs set]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="8" r="1" cs="2" s="0">
<O>
<![CDATA[Infertile eggs]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="10" r="1" rs="2" s="0">
<O>
<![CDATA[Fertile eggs(STD)%]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="11" r="1" cs="2" s="0">
<O>
<![CDATA[Foul Eggs]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="13" r="1" rs="2" s="0">
<O>
<![CDATA[Transfer]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="14" r="1" s="0">
<O>
<![CDATA[%]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="15" r="1" cs="2" s="0">
<O>
<![CDATA[Dead in shell]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="17" r="1" cs="2" s="0">
<O>
<![CDATA[Lost]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="19" r="1" cs="3" s="0">
<O>
<![CDATA[Chick Hatched]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="22" r="1" cs="2" s="0">
<O>
<![CDATA[Cull]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="24" r="1" cs="2" s="0">
<O>
<![CDATA[Healthy chick]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="26" r="1" cs="2" s="0">
<O>
<![CDATA[Chick Hatched(Std)]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="28" r="1" cs="3" s="0">
<O>
<![CDATA[Heathy chick(Act)]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="31" r="1" rs="2" s="0">
<O>
<![CDATA[HOF]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="8" r="2" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="9" r="2" s="0">
<O>
<![CDATA[%]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="11" r="2" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="12" r="2" s="0">
<O>
<![CDATA[%]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="14" r="2" s="0">
<O>
<![CDATA[%t]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="15" r="2" s="0">
<O>
<![CDATA[No.D]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="16" r="2" s="0">
<O>
<![CDATA[%D]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="17" r="2" s="0">
<O>
<![CDATA[No.L]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="18" r="2" s="0">
<O>
<![CDATA[%L]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="19" r="2" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="20" r="2" s="0">
<O>
<![CDATA[%.]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="21" r="2" s="0">
<O>
<![CDATA[%std]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="22" r="2" s="0">
<O>
<![CDATA[No.cu]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="23" r="2" s="0">
<O>
<![CDATA[%cu]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="24" r="2" s="0">
<O>
<![CDATA[No.H]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="25" r="2" s="0">
<O>
<![CDATA[%H]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="26" r="2" s="0">
<O>
<![CDATA[No.s]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="27" r="2" s="0">
<O>
<![CDATA[%Act/stds]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="28" r="2" s="0">
<O>
<![CDATA[A level No.]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="29" r="2" s="0">
<O>
<![CDATA[B level No.]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="30" r="2" s="0">
<O>
<![CDATA[%Act/std HS]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="0" r="3" s="1">
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
<C c="1" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ChickData"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DocNum"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ChickAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MnfDate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="5" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MnfAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="6" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="IncuCode"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="7" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="HaEggQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="8" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="InfEggQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="9" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="InfEggRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="10" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FerEggRateStd"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="11" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="GermEggQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="12" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="GermEggRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="13" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="TransferQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="14" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="TransferRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="15" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ShellQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="16" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ShellRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="17" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="LostEggQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="18" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="LostEggRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="19" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ChickQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="20" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ChickRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="21" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ChickRateStd"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="22" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="OutQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="23" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="OutRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="24" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="HealActQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="25" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="HealActRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="26" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ChickStdQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="27" r="3" s="1">
<PrivilegeControl/>
<Expand/>
</C>
<C c="28" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="HealAActQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="29" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="HealBActQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="30" r="3" s="1">
<PrivilegeControl/>
<Expand/>
</C>
<C c="31" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="HOFRate"/>
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
<FRFont name="SimSun" style="1" size="64"/>
<Background name="ColorBackground" color="-6697729"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="64"/>
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
<FRFont name="SimSun" style="0" size="64"/>
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
<![CDATA[]Aiob*PhGq`B>u&4f?0XV;CbA&gu$OlFcih)@;WtOf]A84]AN7,dJXDVd,n_I@`V38o:[WEZIn!
6UT88cnf1L\:.Id`63]AVG>3hqe80<R.*pk;f1+4J1g44D3ZD*:7`$l7r>>i#KI8]A+k<"^B4H
s=;hX0kVu!Z!.[q(_qNYqO4O'PBSikeC?muCg13#1<#gsudFYI+"A$41[LhO?hUlo#I/XQH!
q=k27t/V*I;RD?ff9i8G.6V[(8bhJOkVA=RbKb9H/,ti%5j[hop1rg9G^+-PF@,k4*1f>Qq?
45ohDBF9t3/c#^r=7":W*N_&O[r((/'SmfU:Ph`"R8SBq38-OnBN4s##T>s5S)i7+/`?OCGh
2sPtbV0@Y91&[#IQa>^cMlM88)=/X\;_R!e"^F_!_DYT1ad(Z7<(-%MV;*=B,t./L<L.es1T
\u_'mfT/SaUA*hsig28^h\%Q@Y3.3[uhBp<IIsV1"nF]Aenf`lc<K@H5k5+Vtmpg8Oc?!i7\`
'%iitB0AT;ZQ(W%<fb<P1/!GP*;_Or?E`B^f4VuJ.o0%dW+Bc:l#;?;V7g!Yj#la:ANbW'f5
Q%8>pJVkSkbiEQl?Lfr@da@P*#4itWqRZHl&hOOT@hbqVl>D_e.\($QHL(^q9NflQd+%$ZdW
]A?>GR_;m7Tgf+VOP]AEa:0nk_rX&/sl4M2_tU0)$fPc;9X`0:^&M&*nOCm$YR6s<:/IN(L(C*
$1(pNZHK0$Sl@Qq(Euq]AlO030LPaf9W(<MRPsh['XbcPF8&G<((8]AND8.*n`=3i%2(9@h/)N
s/g:ACkWLqC9o+h0"0kVpp'/3N>*&g)c<6ata^kDu+WL!:O%j%mqK+<)#sOG(=6JgB0AkNNI
<8?MO]A/<;\E.B?I2ls[?^fI@tCoBZ!q;!Pl?\gMPE:L?u62b3YZmq"H9%sAU.BIJtE(S]AJ@i
`tCVl_<I[W)>uf@R0Hh%JA7Q9YYMHrqU%YL>f]A"O_)VC7b;C&ZC*U2jD*ESqlM4>S)3)KbcO
cM(>rJ!n-IBu0B;re3X%1,D?_Nt96VSWlG>0/QT/6nT<aq'/B(uZA.C&.Rp@UnWh-WYZ_^>s
R%m`)PPBX+R[``+gdGt931L)CR]AQ;&V,UiA(fd?)B?UM8!J8XTipT\l%7q/gP6Km'T<ZuR9E
P0j(,?SWJGSQNVFQiJL'1=Qs-tTqLN2@'gi\^bL)=Ln9I:\^j*LZoKtf4#HR^l185meX!P!W
`MB4*L-coq+3H/ISR)!2:U`A?8P:Z3!:;!e!$+Q(cf:6gG:GOAjIcu;+fi>Z.o^R\fRSaIc)
CZ`AbkC86\lYoiM)-8mqT1`r'9`2Jp_.faLV[:CEc+7V'"8cWjP-eBk,R8N=R.=qj-=^U:2j
X#X_H_IA>uP.Q+21[<eVP6\LdiR:pPX#a(+b<a]AB(%7M97s%-?6`GM"U\c-AN"15'K@_n]AAP
1m%:OeY!8n_f`"X-4HUP&KNBq!p"ZV-=EqC4eO16nX?2I=&6&.Yh'f;VF>KcVD-ZTfBE*0!D
.lSo[l+NFUJP-Pct9,Z'1,[O>20JH!pF&OFo9k>majZVl<nu#>;gLG#arHrH$qTE?mL'[/N<
HSrJ<[.WY)s7V@1WnAu=\INOBAB1R>(:&)>k;4%KKp+=[(:g"-`kKd0O]A8eOQ/P5E.?\Bft^
L&-<CH(dl)+\TsWQ0\#Isa8"0SJqgRrDt]Ah>'KlluQ6KA2?452g>!UU'#<e5/X1"=qt,/TU9
CPZ[hVACHQ5rAj:"d+I$JQYEtn`TEFlZ5;KjZ0*5-kH+cgcAs\P9TMXL^U!<2f.oiX+\r(We
:J=b0/cd.:>M&UtXA=24.!l(iB;2+)&%YtqmXn78K>\X(AgMYdj^Xk);9M.Nn9jJ#&l(:;66
5U2`GnXHA%/&Qi`+L^m+P-l?i7:k[,INnfQbu5K&#I*g17OpjFSj<,>iM.-Y`3,/kn+s'Of%
cHXn6VN?jh8ZS^!=Sju2![36queah3R;tYEf@u:a6A"(b8^\[/)KZ$O6EXDU8-23e),>9XtC
cuZ[ZLXe7[4\ja'B?HUTcDsTfB\"I^848V1koV`HdX^tJSdD\<.P_1;8)DGYGPgl\mU[sA'&
]Amccp(5Ij?Z>m(bns>?AR=m>U\]An'fa-OOkG=?"OaLW-]AD<>l@Ec4Cg7OHo?9)Am^dVo)Zo$
\>t-q\IWtT`]AVUn:n<(39SFt,<7*V@EqgtX*'.]A>JQO[D$7/9k00)Zr6VfH)D<>J645qkAh^
f!VMc(46^)$gPd+?l%"'VI8H6P(p>7IOTMsod(^un/$RHu/!"o&gA>d#5E`mojg>.Ur5ZL4$
Z'%tLbjQB\,;j).-k-_3O-`(Wjo7N@P"24B3oU$q;c^2Cj^;ff;^LR_;B(es'4ghnIcaG&d)
fBPA(clX2Ri)bZ,H<Ds!8e\g3*Qi*nS8%W_$&UWfV[r86uLOX59*gB_1'#H7'NDN]A2"kkXW/
ZA0!&*)SB4t0=A/Y?fY*=?mp-7<P."$q*VcPOo<r5/Jt%9kF2!sVjn>*2rMEDK"T<R3SV'_[
YB$m]A`fT`9UG]AqI:eT\R4Njr!I,<RWbRHeM:"tf=P?OOEFb5cnc7N?H;]AN=FL8)Spn]A]ADYNu
]A[qqc)P?DN33HBUNec=?%X!Y<71Z<"HY:.nI%@*&aZ`4?I9.pkH,q\YhN/]A)je=jFRO5E0om
jGcP]Ap-$K(h_c9o`03^b4[YgPrDl[E<F<8ZLC]AGZC/m+*Jf;(0jg.sVLO(,fnJY#0s[N[<28
u7Ah5K!h=;6diL,VqBN^;d5nMmlJN6sr=&4__uNJr]A[h\+6:tYQ1:s*_P@!RZO)/+:*;u>^n
F;e=WIoEBDjUi_7g4$0g4cj]A$aua%`bUGcTEtbj`R"-C5OQOI6`lmT#8aREZnU\4OP_m>(ld
8NE)5mkhb!<>4P/IN^FWf#)5MU<O[FlS/6G6B'O+cJS>8rs",#&MiIA^:iRh_!I,-\3ZK'VP
OtDiP\(oQVa=CC,(DU*Y>]Ad7uNu+cXh610:fL'f+bA$<nR7IFS8Z\X'9,j]A5XkYY\%rG4uW:
,ngXo<a7I"H]AWR#2R#Rr?dFgY!J(jhQgQ/Wu$W=">P?mF8*.W)_R/geHVs_7o!7&]A!8=_mgq
_I-!-M@Lk.nj$7Og^E)24sUuq'qX@G;QFffH4"ihScs7dFi0US(U+ck?XlO^5qCcb@O1.>Pt
_'U@*QCmurdNb"T!I/WOo-a?a')Bj,34*E%]A1<Y]A\W&!"N3H_Z"4_s`a_^t-LpP,Gm2A/"hm
o+X&,,`NGJfrGndcl]A=VI<;:W:H!n\HDHEgaili1eE]AB-bo`gAfie-+<N2*2Ci)r>rL$Aio+
o"]A=GlG,cMZ>g^k@<2D*k_5bp<P^J!kQH6?>]AAKp')#mn`X?0Aq.F-:N;%DC)ej4i.U(6V_W
"+)H:[B$fTp2fQ=To3=nhMe:;jar=gdj$NXERhpX\PcQsjJ_'=$Q<HC()Q(npg#+a6p8^GhW
9&>r@#b@Q.a('u;PSm[%UU]A'D9VI`j1>G9Ib"@">@N3fh,8T4&t>X_3*Y7uK_<Nh;'Iq`A.A
Yi>no+R:_k&S'diWVY&2SUm+BmD!;=m&cB6c)<X&;n*u5q\ESLA9H&-9ULjhjCQ9L]A!)nBIE
-"-q/91]A5#Zld(_QIk4_[ka9/Q<"O06EuJYC\.nF1;f9a>4dIBP*KDfpYM@9m"LnPRDq?J7W
d&2lus(I["FF'K4U<nGDQsoqg+@fpP)\_Vb4^bb>'kE#C",_E_ri^NiO^1QlPN[/:$Lm<8L<
J9`";WkeK9HA+(I=2Ab1g0`q#,]AkU'B\t3HIHc!CBouQXsQ<SWq]Ad2iRQKoOG@rBtO,Pr[5M
)M%P(fXR>YlTa4bFrX@p6LG"XKmePA">U#L\g"H0]Ad^RbG+.Md1gY+d(^i.^E48q,"^*E691
?A#sOF.(k&?eF/e'6EaA>tHV$BtCriqNK9;MbG$XF]AN#@?;Mnl^H2bdml?"7q5:gBB:XnbBN
]A%@oJJN%?-`ia.b?12s5Vr,;I<r]Aur3#fI,Ylba7]AQLV>.a7kr<?;Ltf\Nc?Q-ni5.;Kr#XI
HR"pYV5S,"L(`<QRG<I6[)tM..GC71A&7b,%(PXitFum_M1A-!:S.S%mXdg5N&fP_$KAYhm\
^J!ob3Od`7LN2:0*CQ_@"8pT;cpp^r3Jc0eMSV\Wt#o(^u]ADLAid_(Ecn*YQZOScK$Nf<,r4
p"W:oG+biX6T+*2)nPjn*k#\pA)r\F?<0f7!K-E!DX3NR64_j]AP4`B-+)Y!fLIT1MOe0W32b
2;lqcM?=taFJ)d!qH%nhQ.]A?s'\^.81SJSf*;.phTep4f.sMU91P-F[V,JiV-cf2knk5dP=R
QIt'N9I'YQBDjrnbD0Z%XRu1i&&7+'Ea/4AG\L:;n7@:Vrd&nTH6S28cW3`JXUBO%A$A>X%/
_eUX^c@%6*SKs&'I+Z0/[%P\`L$@_Zm]Ai;t5U8=55mFc?.&T8dH_kC^(;^X;UA5VP&f8]A_\W
Z,MjKs'U9,>Y.*+oUHGB0P^?j,F7SEkeiGh*%O"P\#V:Es_sgg97oBCq9,-Y)K`3s)jPQ6:B
1btqR=g21d2>mBin^._Q[oj2f0/uLWL]A2lOIk@=>p:L&E-.T)pNnE&^kuXt`Q-"N8G_k9LjU
,t'Z1_C=%lD*<^U`eAY:HJF:l24d#8$KFhI?8gB?G-eG3!t:UX&(0RWgG$PaWm'8!GW_fG\$
R]ASk[SUDmNAGIE?.>6JSISD6;p88$a_8(?n#cr#tNE[PUZV(2kAkq;C.EIH6H"@;0+\DaK@!
@S@Dm^,YF]AZ7ab9t'^,=UM%Zq5i(1V#V"MATp^\Q<WlhUIju!+H]A;-TTno8[1=UkJF(8jeo4
d%MD"H-p?X^eo..0Io6foXuYnW?f`L=%b$uEb7c*Kb)0X"Lu02<;GZ-74TX0o&2G#NrP8W*8
AnPb.ou9LjR!3VC[pFrG)1^6T/3\W/3C$YY]AQ/'n,;/GIq9Nh4l[GCn1nJ[4>>"\K?"!BfGH
M:j<>r3o\RITm<eI?lUC:`s/r$fOBt,uLKNY(rWIhF=Y`Mc`F>hc'Y2$cJf!u4\BRL?_Ho^`
GtSFV@f)a:#8_;k+Sm(*85R&DcRUj"c0Ne_`'Ddqe7a%D8/PEl?_9[7I(=J9W_\&G[BiP\>T
?\"k\<dN`$:<F!>@XS#NoC4)?b@[&NatJX:['2-YIBn=6L<AnC,6IPVjfI]AYRJ[^[WUs(]AD8
A.uqVaP!:^j[sVSl\r-g'q*%]AYTd\r[pP&0)`XtlrNY-?mr_5,gee':!Xt]A*7HioQj;+4\RH
fUhtM*B/HJf4-p$=2Y,I-"'%-&LkgqH<dG>c7nM2a8JP'd_WI%5MAkT[b6DD8637d9GHP$_:
I;cJJ'd]A,%rG07$E)"2B-7/V7PMP6C3q8@7RiLd^fp]A2f<]A:QR]A$ThCj:LK4f?I``8c$c/Sc
:cPT&SOmPrd"ph:Ged,o)OBEe`mP>?o/PEI+)c[T?-p!Nik1I1d$#NQW<b+LK`@Q'[JALt'Z
gU4?A\,S:3Pg/I5;3"can,VW6tO"gpjX5EmaAb^;9=Ir;-3S#1]AEae<='QNP9FU"nFbm@DPX
^O$\X[*?(DDiuWY>,@CPBGm#((-#.Mq&%1skRQlG^HL/5&\Y$;G5I&j#$`6H&N>0fPgNTl'`
.nZr[X:Gn8YDn'b/UuJhQ9p]AplY*S=O2Z%#neH5Q>>B,Qtm*1e^T&X%\aE>h<VG$3.$!<5q"
W%b2!;A2>hO4BlYC04Y]AW7M)Y;G?d:q?Te,7QJY-oX!uOLW-!PRA!HISZ+E)*9k[\`m4fDg>
%W5_>Q04K]A@:^0fa:/a+(+U3cCd`rhV%!"o28:M$&]An<rkeN+4oMtAd<iHStN[)%:D]A8r[f<
2IZl1rpq5n29kCjaK^)%aR<r5aBP\bSW$Il-)<_!ol6Q]A/rJ3TTgY@?i0GH/0'*`6o3[dtK\
8::DK)m5oDh6nk?hoA)Bp*&3F#Or(_QfMjBs/2ALTDKiDFU@Ft3JJK"CK"->MSB1Ng$+WHCc
P]Ai2bN:#EcTlfh<+Z3LYGc6d>E$`id>AH4q3TQZWc<^_W%/Kj*Tg3d^"Ai[6,(o6pX2\/J0<
rd1,1i3$7[t*O]A@#joNJ>2aMT^-O?)ZR?N#po%j%GdcMB[AP]AFAr&$bWn3U+ioh#EPBbuDf!
$$RJ8@:<]AUa&tb-D-JBLFF8m!"RU5(^\4dCgkSCaaKb^b3haWM*A1c5'Q9rCGV<N*m\uRX<r
nH^:Gp(BqB8`NNQFF`Imk'j'9q_fIHlb_D'W.bnV]A5XYC@4<Ud&#85PpctHg?*TSis2>'E_2
='0[)8D)nVe(_Z-`)S:`%oV_LdoW7$5-4eO?!:#4IO@7d,"O.e4[9kNnAO-rjdQUn$oD25ul
KW`OU8KFIAQ!TYH2i3O9aYp/W:CCh0;J^C?SoM+n2)F8\As1?!%6duCq$5p^uY0Jd3S[d#mq
,fTnQ"9hn1h_YXfPKM/tLMWW&k"6WG_K9\B@Y1'.b79FeHp9bB,/hnG))cqH_K.+WTLe3V&G
kN.1\#d4R'ajh6;CkE,e-t3M:pI)K0MUrY@SIk9tO[egpcPK:LWh>6!T2fr%+$FIA&rf\I,X
!`2STqT-1.uHYdM$-p^muKQesC>t7P'-J`AJ8PQ$kQPD]A=8uK_JhM=+:fV@1NCtorshOgm?P
5`d]A/gnQp*ee\g[/,'hrCe6shmTXQ2--AXi_G=>pWS(FN0[?&t\n&L?.2hHER@E*VuKZ/`gL
D[ca!Ls0:3TO:cAbaG4\iB8nq)H="^dDmmN=]AN:l^fiha^+jjN?pj5;N^m$iY%7Q_5"UL%&o
Fs03EO<_ZY]A0m=Is<p+(7kd1c7'M53@7\MhSJfgO6c9na.9XJ-&u+WlckrA]A>B?PS3I"H9T<
$qW/L=-:<=\0alXdCa(jY^mIV9iD"F8cN*L#tk3+UOLn9?"7?O<5>>0hH"/!3h))UR>">i8F
kR_#%5HYrF,c0'goKJ+*,uL0p(,eb_U-.LM212TQ#3a.ReYMcRuR@qG'\BnL$J6)MO4g!#O&
_EWP*<8R^g:Jo7CJ$.'F,iNMVK[,E.@<sX5]A&egWbY)chI&9WUI/A7.9'oeX..=\3k/5OsiP
q)'_B,5Ep#]A%o%=oWGXMA0c,qM`ji91X2?!>8j&XsSP\7mW8Y_/QZD`/%f2+]A41:AjXo+DE5
XIpJ5rWduX([]A>t51(/AValF18qXnMqtC?%b0H>#59QWnp]AU`%RgaDsLOk!dIeM,\1557RZN
6!@M)N?o`$j:)3ZLZ62USr&@PNL*0Ji@+XE3MSaZ>Pau6o:JdQ`W(%K(Onu%]AZd.K<JR:rg5
(O-UBIN/['0334VBCf,ir>h:GeZtJ`;S(j?4*/_JtgZQ*ZUqU+\n+Qj=u,2S)Ep=9^B0C!Q6
=,^3)uV;F9[`:@\ArOSaCd@ZMpgAcW3=#\G@9fY$]A4X"0RoGS?l;p`\g6$]A]Aq[!*/gesaC"2
GHD!!j!'X*kKJNg4Q'Fls_"BZ%p:Wecb\8Uel1qRaLq1-"(iR)U[c;p4O5Prd2m7?ci<YpDl
R%SK`%1eiX7,2n]Ak2F.k-qO%`BAR)$39WYi(65gGLFkO`K5&sZ4`7&+*e7D!VQWaq&Qf'r:%
'\m&?%7&J4;u2/4IJXN_e,g+f^%!Ao:c,l7%MH>0]Afa9?iE\hET9,!ONaXW)g`CfuhMSHnU4
W^6,=XUia8c!.oEVd0*DCafq<`a88fD:==*'.8*S9.SoDPro!r~
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
<![CDATA[723900,1064029,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[4089861,4355869,2743200,2743200,6916189,3591098,2743200,3391592,2743200,3158836,4887883,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,3325090,2743200,2743200,3624349,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0">
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" rs="2" s="0">
<O>
<![CDATA[Date set]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="1" r="1" rs="2" s="0">
<O>
<![CDATA[Date hatched]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="2" r="1" rs="2" s="0">
<O>
<![CDATA[Doc Num]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="3" r="1" rs="2" s="0">
<O>
<![CDATA[Age]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="4" r="1" rs="2" s="0">
<O>
<![CDATA[Prod date]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="5" r="1" rs="2" s="0">
<O>
<![CDATA[Prod age(wk)]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="6" r="1" rs="2" s="0">
<O>
<![CDATA[Setter]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="7" r="1" rs="2" s="0">
<O>
<![CDATA[No.eggs set]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="8" r="1" cs="2" s="0">
<O>
<![CDATA[Infertile eggs]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="10" r="1" rs="2" s="0">
<O>
<![CDATA[Fertile eggs(STD)%]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="11" r="1" cs="2" s="0">
<O>
<![CDATA[Foul Eggs]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="13" r="1" rs="2" s="0">
<O>
<![CDATA[Transfer]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="14" r="1" s="0">
<O>
<![CDATA[%]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="15" r="1" cs="2" s="0">
<O>
<![CDATA[Dead in shell]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="17" r="1" cs="2" s="0">
<O>
<![CDATA[Lost]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="19" r="1" cs="3" s="0">
<O>
<![CDATA[Chick Hatched]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="22" r="1" cs="2" s="0">
<O>
<![CDATA[Cull]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="24" r="1" cs="2" s="0">
<O>
<![CDATA[Healthy chick]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="26" r="1" cs="2" s="0">
<O>
<![CDATA[Chick Hatched(Std)]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="28" r="1" cs="3" s="0">
<O>
<![CDATA[Heathy chick(Act)]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="31" r="1" rs="2" s="0">
<O>
<![CDATA[HOF]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="8" r="2" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="9" r="2" s="0">
<O>
<![CDATA[%]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="11" r="2" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="12" r="2" s="0">
<O>
<![CDATA[%]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="14" r="2" s="0">
<O>
<![CDATA[%t]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="15" r="2" s="0">
<O>
<![CDATA[No.D]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="16" r="2" s="0">
<O>
<![CDATA[%D]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="17" r="2" s="0">
<O>
<![CDATA[No.L]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="18" r="2" s="0">
<O>
<![CDATA[%L]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="19" r="2" s="0">
<O>
<![CDATA[No.]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="20" r="2" s="0">
<O>
<![CDATA[%.]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="21" r="2" s="0">
<O>
<![CDATA[%std]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="22" r="2" s="0">
<O>
<![CDATA[No.cu]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="23" r="2" s="0">
<O>
<![CDATA[%cu]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="24" r="2" s="0">
<O>
<![CDATA[No.H]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="25" r="2" s="0">
<O>
<![CDATA[%H]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="26" r="2" s="0">
<O>
<![CDATA[No.s]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="27" r="2" s="0">
<O>
<![CDATA[%Act/stds]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="28" r="2" s="0">
<O>
<![CDATA[A level No.]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="29" r="2" s="0">
<O>
<![CDATA[B level No.]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="30" r="2" s="0">
<O>
<![CDATA[%Act/std HS]]></O>
<PrivilegeControl/>
<CellPageAttr/>
<Expand/>
</C>
<C c="0" r="3" s="1">
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
<C c="1" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ChickData"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="DocNum"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ChickAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MnfDate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="5" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="MnfAge"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="6" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="IncuCode"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="7" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="HaEggQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="8" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="InfEggQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="9" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="InfEggRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="10" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="FerEggRateStd"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="11" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="GermEggQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="12" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="GermEggRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="13" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="TransferQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="14" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="TransferRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="15" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ShellQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="16" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ShellRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="17" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="LostEggQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="18" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="LostEggRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="19" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ChickQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="20" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ChickRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="21" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ChickRateStd"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="22" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="OutQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="23" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="OutRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="24" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="HealActQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="25" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="HealActRate"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="26" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="ChickStdQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="27" r="3" s="1">
<PrivilegeControl/>
<Expand/>
</C>
<C c="28" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="HealAActQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="29" r="3" s="1">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="HealBActQty"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="30" r="3" s="1">
<PrivilegeControl/>
<Expand/>
</C>
<C c="31" r="3" s="2">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="HOFRate"/>
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
<FRFont name="SimSun" style="1" size="56"/>
<Background name="ColorBackground" color="-6697729"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="64"/>
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
<FRFont name="SimSun" style="0" size="64"/>
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
<![CDATA[eQR6#'A(j]A"p$GH5X?WQLl.(?$cl)_U7tPO8mP8Z>#_5\7?&Et85Ni:!>-p7Ka]AS&<"op4Fp
/Ua"f@)";8Our&B,27@40/U!J6`<II,GZa7kY@j34'8c["t>mlBh_M&pQ[KQ3f--kqQCElHJ
W-ku@b$AHl-_8&iaOZhj#:pVgW>e9":4Y0o\F38S$;fS;`jP`n4',R]Ae!O567W*'PZ9%ECB,
DuXTF'%]AqWG#$7D8(LW<59.X7+8ur3F31**<hA)dm]A=Af6:l5gb%sT*1?0hJpk*RbHS$qTd]A
4M^LmVH7#@PGj!c4ie#=(GLGB#_%@=ctf6h\/Uo=I26^-$_ZsMS,DE)q]AI]A!C(Y0[Fs#a?nm
m/K<]A1g7kg/=$j\B*.L^o6TiuLQjhP'HKKeWc@-jUICCrFZP[uY/r3C2YK,5AXE2!:VOQ?ns
t8'6g#[-O2,+Agd`biqCs5+8`r,SGBu!O)rGTg;a>%SpesE-XPc6c*cP]A>_tt?[.Q/q3'\?d
0=,!rh:sc;Qp3RY.<o_RH(lLa8_O5J)!+S,;*,NPiXiHh[F+KP/;TC^Mia@hNAAJ6;C4SE@S
Q5Hn7s'qRbFW+?CpOD!1fg=t=GeSC7.DfOpn<\fNaGCfcN=T!$.]AeumOGi.Q%huM;jMDT@:*
mj5C'?N4cJC"$X(_YbW/SfLb>(-PHX^oN9oc:7rST[DkJfpWmP1u5#CKn%,RiZrQL9BelPMo
Wg#3S%1bkWcn[N"NPW?niesXU08q`\Co4e@CP,W@<?)pU`/Tf.jJ:hmdm1em1^_+_LMU<P<7
+UI"uX0l$-b51G/j*NiT&j1JpOKdH"#U?&e`_;q!8:Va&,/#T+oT9pUGRqWY!"5KLMRObH]AQ
dISDl2hrS)1ZOWLAF31Y7&!$4>E+E-(Bt=*6C)F<i8>Yu/g*ecFWm^*hq)bE+ZpC9=Nfq&<O
lGWt<2@a_B3'lnGB:m!GKBZkjV%\$PAMj0ds.h>hi=O&]A.e+sKiCMXT>bj^+!2,n1lTbh$?I
sp\>alN$n8Yq4qMXsM[H`k2=>`i<bE9SU2;90D(8@!QF,_3V0%PPfGl-D""3$-L84Q`:j*a%
X-XB&P>Hql%/<'>j_b4)7TJZZH*GdeMrD/s2k'kc,r^5(9F[(Bk+0Cf#.n4MY='g/UJG%l"P
`8Q71Z=&*s>M]AE!]A'`KjbtpLo32kJ9:043:J7mOII+c@n-7g'2Qkmga^_#s&l)TH4?m(_eUL
oSI>h-*AgtX%'Ir3Ur2D:7ciaV?De'*!I\lpD..ORPFfb(F19&E]Aq+J\1TT*pp2G&LhT/]AJb
_WGn*9u#2[*H,1:<n,5h?Vu-L0FX2X:Rn,Ub5[E\A4re;nBaYLmf*^$F+h;<U&8K#uXQUYKW
#[g'/>6YLjWffW3Z&Jk<72=0qq%<E6VuJlTfojL2=(G_+aG+J(dD>DI,I59W'pZ25]AQE4PYp
r9(7@`=7nuF.F@2H2Z+*Q>&VHXDQ5':PjCjkG#WILhVhuR5a)LLKt`:%ri6E.JW!uKE;OKA7
&gOqH_a+QkpQ/?%g,D2Zkhgrn=$_d:/#k[o]A'D3:6p_^KrC2mgOrL5l0"pUS)2<,uN$tmg*i
OMC=^43C7[.@LHJ#cIB.E_iC2fr.1r:AR`/KA%[e?PVJdf^ttc39@,6SC)gdfC1.1TaL^Rm]A
MSGfN&FI5&!Q1n:j;lU:;?XIp@]A3p'4!-=oa[<>5AnWI1:@KcEuVc0Ol(+aM(@:ee?9O(>>R
8MDCk.!'N$GgQ)"JX<DST(/")kh#=H`pEnkF$cu!^-aMo&fbMN5U3KJT,/!cW8mLC&g'dhKL
7qmjV1E?#'S^1!k6r49mqS\t-/RO7#obEF)GpY\c^T45U.&s<pA3-#_2W2AX"Fkh[H76BikZ
FbQ:g``95>J78M$S+pi>a4@DTLG`leCPe]A[g\U\sM$>[q-c9;Di7Qc]Aq6E47?m9mTcA-5HdB
Q(oKC*c(smVU%lpGn#!59h/TTM#RU90a7L#]Aj8B-SL(`ic!EE?&C0kRD=3Nih/\VMVF87Qrd
MBlDgbh0.%q)@/$.kDVC>@FbE*B.H/SLQJ!l^MFqXZ]A-D1b'.fgk;c\5#n8XPY[e#V@Vo1Os
_J:j1FXHRnmOTp4Uu.9#An/W<4af`@lp7g<.bVZn6&-([V:WF9Ql:T$qjZ+]Ams\?5;e:8#mM
@."AF:YL`9rNQ*c(>*ur)+J:<HH?'i[Qr^l,@is\'-sVd$dKS,%rnNG0GAD+?Oe\n=hn"rqY
U5SdroU"/%ru:^PWt^V#0EEPG]AtIO,%0W9.>g'l]AfiMQUU,4<l#+OFZD[Q)1/jr>M@\7TEP\
p)7AK^#I2cKri9@jgu!I[DgZ9]A@>o/2rIk`N,UMlm2;+GVF#nkUT6bd?<T$OL+`FME27m]AIN
n^cjs$?"!FO=BY?;pBJm-fjUGe@PKl?/6!45^S_\@]A/r5)Y(+::X^"''X#LJ)0pr:3\J25L&
@_8O39lFHW1[I7mYXNJE/3YurXp/bD=p7oY.V<Bo3grl,"2oo-`?'>X=5?pRH<FkVTYoNk8.
Y<#JWYbb9Sdgc;.ZQS@/QW<lV3*tWUfAsd7]A+:Y\Hsco\He[!2a8NL3C=es"Wa$T_/8TCPik
<Z6ims>Og/KuNK_6]Aj8.4:ep$Q+5TlcVNA66"(Tl1>BfOrD3MX?H/%MuHSh4@7W7R\-n"#bd
Y6b1.Al@'+8`#j;^ai!R@)s3]AZ6Wk9rO^'uhi'q)J6\+.X=ta6N;SoXA1:L-q\0tSqCokCN5
V:]A_Nj#`p;Y;Y2b-6LZ'GsH!HZctFS&5,qooW4d\'G9RC/@TB9TPUE+tZC;r7+2BcKKh-_W8
h;0O=p?MJ`SfSAO>M*!u!Rb"#OLH"kkJM4]A"c$dAU,0?6c8?LK;Og`pQu%#(7K]A>>TRfdf9Y
M<1<nEn=Rf/!$Q=k`ZBd8EOhEH8*b)<q@W\OLhm@-!>2r>42V.+,Y8aH7c,5TE3d=A0jTj8j
"LNl5#Ug+&5::ZR-9jHF48J:0;I"50.JL:/!!"j^J=\/Nds*Fn7iUFU*\/DQe=<kdLiNcHX`
>%0='KRZ9[^`22JNFB10?&,)QAb306e,l*=<Ctm[3oXN2T1Qp7.qlW"4V%kW6Tg(?a*dNM^\
0BGVHoglr=3Nnq"p,I%[h3("R1Y!1EU1\IC\n>P@AnCnk(tB!kb<gpO[F<-b87,DM+?KDP52
8M-E)6#*_egk'E@?:edLd`:X8R1]AOJ+RN@s5?fgtnifSb09N#a2DA'mB^]A5ldEAt_g#gCE;:
Q5D0"+_^q&![u%gZ[_n6O2-:HJSMjN-]AN4AR,P;r[#gU\7a\g74lu'45.p&Yd>Q:Np?^l02+
8!@RB)R^n/cAf`-76eCXHdU;pM,d`#Ck/U?Zj?6(H.jMofQ&&5R>CR-\5_kj2<@CM@7Z`-o\
4*lsaa$mb^/mpVUV^#uZu_]ABNkd$;M<#?]ANcLhMW4LR`?h'7HkAqom<q2F#2D&'Dn3f*,O1#
@/=TO-2bXnZET#$!0QcquGQE&/S\C0PAOrA1.9"K,617]A)3g&Q*7k]Ah"]A.]A?]A9Qm+<Qf"B?L
NiibI9e>D^[3E866)<_)%Hehq%l(339Z':"paCc!QQY>^Apl(;]Alk+64gSNZa@7=*bmJV6RE
NnEgPlGFTg$DrKIg%C:^dr?%:$)?N`;28jiC,fL(^;(TTN"6gp%ic;ZW'O-8fon_n*UD>L%h
.l+XjS?Xn"hhY/5]A`m)qUOFE3GY6L'[Sm47:^`"<=IZ3m1_Ng/eM<K(-[udURpN0If7e!4-2
iL6:B55(TGNMmq]AlCL`$]ALf`a8d@3t/4[*3F*T>gd\m(P;Xc(W%dZ[ZVfW'SfJbBl\Tt)jS$
c5uV'.7XtqMS^S&\[;02kFh3kDn;E?0/`W)#uI*&?j#X7!oKbq<QsQ&pSJ4Up)i.S"!n<Bhr
V\]Ahc,FGQ6^M9tfcB]AXE1PR\6=tjROR8OZno($;J(p8-[Lo."UNN99V/s'9?S#g!.WfGDpDK
^2kc1";JL^\XtgCmf-]A$`QPeCB"AESL\;C.8`1chlj<=-^IK*,#SpQ:!pecDGe(gOjn]Aba-V
8g(c/`a1PlR7]AQ[i4RWX5-XheF,9l1"J-mh^aB3`HqbJFms83nmk5NE2\+),;.^*M@1gP2>T
f7;^[&+=("Y05C3Mkq6?^^.Gsj^^A\Y#(RfJ-YEn%4-[phNYXKPo0"-)D"*>gXCKRkcFCIKf
e!<Q]AWn:o4CE%i[#%!B#]Ah-7qq##1YhK,t/fL)tS793pZ1WprEQX^+R#^&708oO9U'PG`%%f
OFo$('k7Gt"gC\.U.X=`[/`E;%HhXfZ_LM)#aM60jENm9o6nmB>lNt4mnrIUeM5Bet%fU`ZN
fk4c?e1:Hs/F<\0AS6d_\7MT`m_/kK-U[(D74W?>He.J?>5@WhW+88g0ldd?a7[CYQW3p6O'
g@aI=(%5&;%)O<pae'4$`_`!1q/\KGN2(XRoePf]AJ$UC]Afj`$Q^uQ9fN/0E)Mf6-C%"hGkai
p.XP[&iNSek.Jot%r['.pI^h287S"W/b,>g64Gb#C&`*r:efY4__iM+>5q5.]A`J9mU`ou]Aj[
@RQc8:I%0Zt7I+HSAL!;/gE^S-9Lr]A5PiHJr`f%AcpWM_sXa6XP_3<!"T(8*?(SP\s#D,N:4
J+<W:>^%;`_s-,m[\I6`[^Z:IHl'O>pmH[mVR`5I@sNJY[8FqD[Qa,NPq#FnJ(-(lJ-SJ^pT
Xu%FF.IheE*T4.dMF=t]A,.liB\&P'S@tc8<Bn&J?E2I-E?0eHE?fe[GRM?5J,s8XUJP2_]AW\
h.^q?6Lo)CkE48Hr)J7;HLo63_pX#ZM;o14Q2,]A\#RM==P$cRg)9/O82a,L/.s^H8k81e:QY
SBSM/0dk3D@D>RKW<pNPQ%S$sX$LKgl-l?.p$;!+fft*AOO^_JZ6QSQh&!R@_!RJe;7jamVj
s&0;3IIrSA7rqcs5nH"WljKT!7"@T-tfRP5A0,.!p>nE(*,_uDRY^"dU<90eD"(lMt_DJOj"
,eQX76\P2V:rU1bVVZdVH[DEqf@XY:69=JV&]A5'd]AtfuVRaY!"rQPu\@i<c!rrJee(N4`u1-
2krlArN")Fr>jm%Bgo4arQ#k_S4E0YdpJ^maA^QK(E]Aq'$Go#Mf>6K3/n!oQN''#`$Y`(d#>
(u]A$ma,U's7`OjLN1KO"_3#+&6fnPD_:.;2D68":p0FZ]A]At+,NV$k]AYYV+^#0V\PIp-g@]A:>
8\0@Q)eFcIFBRWC\);3>&.i]AW.cAi0%ohrCO%&QIf*Rn55;3lTBGN*$egB53V/k1rQT*`$:g
nT4W7,"Cgh(j7*8>#mtIWi83Y-Cp;*1]ANt6&4UT%(RKP%ESibjJ/kqP%lhbD[o4P+^,P:kC_
tDnSI!rJR/Heo8GP/UKE9M;s]Ar:j.-*jJD="pI,,VD&":lH<*H,X;T$o<J*KnXUs%Gdf6T.9
3HD)c:s=#\%I%qV=a./&;0#mTHg+`8P,5?+4F@B(+6QFb=s<0^/MD;X<K2MDbl:pOIl)"jFk
Tpi!='q=gQ9BbZOo"+i?WQ_;ojfW>ggJEGj-Um=Ba@uC`/<6>b%GYYn7r",?Ko]A3#K\7p[fk
^DcY%2fW>^#$94#NlREURI!&(BDutikO-(D`i_Fc8,tNJ1$Y1*880LU$Q%E9Si>s@B4MBIAP
pc/!(.kYcJC-_NeFeeI&HS$Jo(TC1$oTm^5)M(qadV.]A$NY4fA'jKi_pDj$-@ULq7l0$>1\1
*7`Ycg$DjpGm3gn-u6Y$N]A]A74=n9OC%h,cR)9AphPOR0\p4CaL.jh(2?`]A0jr-Me4/KgYXeG
/bGGnduO<Hcjp^a,`(HZb9&(m\m.s6b2;b#jImP]A8,iOT]A^!j$jM5hbDoo3'.[r>Trq0^#rc
$!FJCoJ2A5>^`<Xhq_cp64k_/Xi#`Z\/3^^BVQqRBM?$H9=_7?*ZVW_NY@hoga]AlpS`6\`"t
:XApYWQBV@/_9ua,,JEG&qPs]Ah0ZdZ"h;nhF<(+CKfuoMG\Hj^eeHo*8)rgL&")12fZ8]Aoh0
`h'1j9PB5Y)jY.Ei?8Y]A7OS`'9Kqm,!ThQ:X>4N/@7u_[.=3QE'n5NL]A+^.:p7]A!(4VjENbd
7^$Jhi5SR9'cjCe(Y2H8r%1^319=5l9.ZR<g-k#t52D)7?2V3G,'cKT83A#.2d\ca1*KHErN
i-eU"^G\m.`ei$ff:U:UUPV%r)_7S3mopiq59qE$[RHXn*&;OgALCJ:+\'K>:irKpU)D(3HP
__QY+!DKIn-#aXOp#i#rTfC.tWd8dCb=p)c[r0(fg0pnjtC]A6..#W80l/<7>\.8nYp2Q8)44
1c)q-eKjr9[JL?]At2TS/Um!qIm#l<i$jW^I_;:ktZ9e0P*m\2\-IctfYV(PoQnCV+>-5-;sl
fmMkXYY+]AcfmP=Y7[1;nfl3?9?j?4:thcb^QbO$4.M97W1Wqc1Omk"C4$CErPC,^8aXA^P`F
qP^9fP/3)cJER@B]A^MH'HE&@R)\11[*cq0b<YON[Q]AEl0mtE_TliDgOlB5`@Ppo#6A@QpfH=
ae<m#XRKeC?tZ;-LFfU1l5"_jA]A]A`bo0nTrR)/XA&l=-C2[!WD;]AedE/2olUKs1@56fft!1Z
YaGS8d9]Aq5/Y:k&hk:TBLbM_e@RFe(`I#+\Dt_n=T<WV1%7#o<CSgBN:hB>PNF6@o;&@^'YH
8&3c1u.Tu7TQ,94OL%ttMf*D<20-g`:!Ad`CA@89br8toD!4a5S"Wo1"*6&:\*'(+TV>I*O<
%<<eS3$RD3`PRdDqq$i:9kQ0Dp&qe#$0q]AE>uFdPs7'moVXIrBGf4'b>(R/E!c+3,9B!e)fa
D0<.L]A?5&!`<+1C8Y,A)&PY>eDl(Qk?Fk_u<Pk-n.:jc?DQ,d%B8^Y;cg\"]AIr!@h=SrtrkD
?mtRTSu0^84Mm3OmY7PF.TVh@*dPTP)-t9ide$o(55?f*`m\YtJl7TB71/,clIJ->I^J;8Kn
>Gj`'Xi%NjJo2&U1$>A?cX'omn&b)ro+MB2L1G\LkMgh,!qI%f~
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
<![CDATA[]]></O>
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
<![CDATA[ds1]]></Name>
</TableData>
<CategoryName value="MnfAgeMin"/>
<ChartSummaryColumn name="FerEggRateAVG" function="com.fr.data.util.function.MaxFunction" customName="ActualFertileEggRate"/>
<ChartSummaryColumn name="FerEggRateStd" function="com.fr.data.util.function.MaxFunction" customName="StandardFertileEggRate"/>
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
<![CDATA[]]></O>
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
<![CDATA[ds1]]></Name>
</TableData>
<CategoryName value="MnfAgeMin"/>
<ChartSummaryColumn name="FerEggRateAVG" function="com.fr.data.util.function.MaxFunction" customName="ActualFertileEggRate"/>
<ChartSummaryColumn name="FerEggRateStd" function="com.fr.data.util.function.MaxFunction" customName="StandardFertileEggRate"/>
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
<![CDATA[]]></O>
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
<![CDATA[ds1]]></Name>
</TableData>
<CategoryName value="MnfAgeMin"/>
<ChartSummaryColumn name="GermEggRateAVG" function="com.fr.data.util.function.MaxFunction" customName="GermEggRate"/>
<ChartSummaryColumn name="ShellRateAVG" function="com.fr.data.util.function.MaxFunction" customName="DeadInShellRate"/>
<ChartSummaryColumn name="LostEggRateAVG" function="com.fr.data.util.function.MaxFunction" customName="LossRate"/>
<ChartSummaryColumn name="OutRateAVG" function="com.fr.data.util.function.MaxFunction" customName="CullsRate"/>
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
<![CDATA[]]></O>
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
<![CDATA[ds1]]></Name>
</TableData>
<CategoryName value="MnfAgeMin"/>
<ChartSummaryColumn name="GermEggRateAVG" function="com.fr.data.util.function.MaxFunction" customName="GermEggRate"/>
<ChartSummaryColumn name="ShellRateAVG" function="com.fr.data.util.function.MaxFunction" customName="DeadInShellRate"/>
<ChartSummaryColumn name="LostEggRateAVG" function="com.fr.data.util.function.MaxFunction" customName="LossRate"/>
<ChartSummaryColumn name="OutRateAVG" function="com.fr.data.util.function.MaxFunction" customName="CullsRate"/>
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
<![CDATA[]]></O>
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
<![CDATA[ds1]]></Name>
</TableData>
<CategoryName value="MnfAgeMin"/>
<ChartSummaryColumn name="HealActQtyRateAVG" function="com.fr.data.util.function.MaxFunction" customName="ActualHealthyChickRate"/>
<ChartSummaryColumn name="HealActStd" function="com.fr.data.util.function.MaxFunction" customName="StandardHealthyChickRate"/>
<ChartSummaryColumn name="ChickRateAVG" function="com.fr.data.util.function.MaxFunction" customName="ActualHatchRate"/>
<ChartSummaryColumn name="ChickRateStd" function="com.fr.data.util.function.MaxFunction" customName="StandardHatchRate"/>
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
<![CDATA[]]></O>
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
<![CDATA[ds1]]></Name>
</TableData>
<CategoryName value="MnfAgeMin"/>
<ChartSummaryColumn name="HealActQtyRateAVG" function="com.fr.data.util.function.MaxFunction" customName="ActualHealthyChickRate"/>
<ChartSummaryColumn name="HealActStd" function="com.fr.data.util.function.MaxFunction" customName="StandardHealthyChickRate"/>
<ChartSummaryColumn name="ChickRateAVG" function="com.fr.data.util.function.MaxFunction" customName="ActualHatchRate"/>
<ChartSummaryColumn name="ChickRateStd" function="com.fr.data.util.function.MaxFunction" customName="StandardHatchRate"/>
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
<tabFitAttr index="3" tabNameIndex="3"/>
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

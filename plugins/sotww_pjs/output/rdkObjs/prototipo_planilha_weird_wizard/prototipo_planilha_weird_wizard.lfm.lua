require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmprototipo_planilha_weird_wizard()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmprototipo_planilha_weird_wizard");
    obj:setFormType("sheetTemplate");
    obj:setDataType("br.com.czagalo_Planilha_SotWW");
    obj:setTitle("Shadow of the Weird Wizard");
    obj:setAlign("client");
    obj:setTheme("light");

    obj.frmprototipo_planilha_weird_wizard1_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmprototipo_planilha_weird_wizard1_svg:setParent(obj);
    obj.frmprototipo_planilha_weird_wizard1_svg:setName("frmprototipo_planilha_weird_wizard1_svg");
    obj.frmprototipo_planilha_weird_wizard1_svg:setAlign("client");
    obj.frmprototipo_planilha_weird_wizard1_svg:setTheme("light");
    obj.frmprototipo_planilha_weird_wizard1_svg:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.frmprototipo_planilha_weird_wizard1_svg);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1263);
    obj.rectangle1:setHeight(893);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(1263);
    obj.image1:setHeight(893);
    obj.image1:setSRC("/prototipo_planilha_weird_wizard/images/1.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(54);
    obj.layout1:setTop(106);
    obj.layout1:setWidth(180);
    obj.layout1:setHeight(32);
    obj.layout1:setName("layout1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setTransparent(true);
    obj.edit1:setFontSize(14.2);
    obj.edit1:setFontColor("#000000");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setLeft(0);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(180);
    obj.edit1:setHeight(33);
    obj.edit1:setField("name");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(241);
    obj.layout2:setTop(106);
    obj.layout2:setWidth(180);
    obj.layout2:setHeight(32);
    obj.layout2:setName("layout2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setTransparent(true);
    obj.edit2:setFontSize(14.2);
    obj.edit2:setFontColor("#000000");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setLeft(0);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(180);
    obj.edit2:setHeight(33);
    obj.edit2:setField("ancestry");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(851);
    obj.layout3:setTop(123);
    obj.layout3:setWidth(329);
    obj.layout3:setHeight(32);
    obj.layout3:setName("layout3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setTransparent(true);
    obj.edit3:setFontSize(14.2);
    obj.edit3:setFontColor("#000000");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setLeft(0);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(329);
    obj.edit3:setHeight(33);
    obj.edit3:setField("gear01");
    obj.edit3:setName("edit3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(126);
    obj.layout4:setTop(140);
    obj.layout4:setWidth(150);
    obj.layout4:setHeight(32);
    obj.layout4:setName("layout4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setTransparent(true);
    obj.edit4:setFontSize(14.2);
    obj.edit4:setFontColor("#000000");
    obj.edit4:setHorzTextAlign("leading");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setLeft(0);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(150);
    obj.edit4:setHeight(33);
    obj.edit4:setField("novice");
    obj.edit4:setName("edit4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(819);
    obj.layout5:setTop(162);
    obj.layout5:setWidth(393);
    obj.layout5:setHeight(32);
    obj.layout5:setName("layout5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout5);
    obj.edit5:setTransparent(true);
    obj.edit5:setFontSize(14.2);
    obj.edit5:setFontColor("#000000");
    obj.edit5:setHorzTextAlign("leading");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setLeft(0);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(393);
    obj.edit5:setHeight(33);
    obj.edit5:setField("gear02");
    obj.edit5:setName("edit5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(126);
    obj.layout6:setTop(174);
    obj.layout6:setWidth(150);
    obj.layout6:setHeight(32);
    obj.layout6:setName("layout6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout6);
    obj.edit6:setTransparent(true);
    obj.edit6:setFontSize(14.2);
    obj.edit6:setFontColor("#000000");
    obj.edit6:setHorzTextAlign("leading");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setLeft(0);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(150);
    obj.edit6:setHeight(33);
    obj.edit6:setField("expert");
    obj.edit6:setName("edit6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(819);
    obj.layout7:setTop(196);
    obj.layout7:setWidth(393);
    obj.layout7:setHeight(32);
    obj.layout7:setName("layout7");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout7);
    obj.edit7:setTransparent(true);
    obj.edit7:setFontSize(14.2);
    obj.edit7:setFontColor("#000000");
    obj.edit7:setHorzTextAlign("leading");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setLeft(0);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(393);
    obj.edit7:setHeight(33);
    obj.edit7:setField("gear03");
    obj.edit7:setName("edit7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(617);
    obj.layout8:setTop(210);
    obj.layout8:setWidth(31);
    obj.layout8:setHeight(32);
    obj.layout8:setName("layout8");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout8);
    obj.edit8:setTransparent(true);
    obj.edit8:setFontSize(14.2);
    obj.edit8:setFontColor("#000000");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setLeft(0);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(31);
    obj.edit8:setHeight(33);
    obj.edit8:setField("defense");
    obj.edit8:setName("edit8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(126);
    obj.layout9:setTop(213);
    obj.layout9:setWidth(150);
    obj.layout9:setHeight(32);
    obj.layout9:setName("layout9");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout9);
    obj.edit9:setTransparent(true);
    obj.edit9:setFontSize(14.2);
    obj.edit9:setFontColor("#000000");
    obj.edit9:setHorzTextAlign("leading");
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setLeft(0);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(150);
    obj.edit9:setHeight(33);
    obj.edit9:setField("master");
    obj.edit9:setName("edit9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(819);
    obj.layout10:setTop(230);
    obj.layout10:setWidth(393);
    obj.layout10:setHeight(32);
    obj.layout10:setName("layout10");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout10);
    obj.edit10:setTransparent(true);
    obj.edit10:setFontSize(14.2);
    obj.edit10:setFontColor("#000000");
    obj.edit10:setHorzTextAlign("leading");
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setLeft(0);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(393);
    obj.edit10:setHeight(33);
    obj.edit10:setField("gear04");
    obj.edit10:setName("edit10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(743);
    obj.layout11:setTop(253);
    obj.layout11:setWidth(31);
    obj.layout11:setHeight(32);
    obj.layout11:setName("layout11");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout11);
    obj.edit11:setTransparent(true);
    obj.edit11:setFontSize(14.2);
    obj.edit11:setFontColor("#000000");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setLeft(0);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(31);
    obj.edit11:setHeight(33);
    obj.edit11:setField("agit01");
    obj.edit11:setName("edit11");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(496);
    obj.layout12:setTop(255);
    obj.layout12:setWidth(31);
    obj.layout12:setHeight(32);
    obj.layout12:setName("layout12");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout12);
    obj.edit12:setTransparent(true);
    obj.edit12:setFontSize(14.2);
    obj.edit12:setFontColor("#000000");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setLeft(0);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(31);
    obj.edit12:setHeight(33);
    obj.edit12:setField("st01");
    obj.edit12:setName("edit12");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(485);
    obj.layout13:setTop(291);
    obj.layout13:setWidth(21);
    obj.layout13:setHeight(21);
    obj.layout13:setName("layout13");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout13);
    obj.edit13:setTransparent(true);
    obj.edit13:setFontSize(13.5);
    obj.edit13:setFontColor("#000000");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setLeft(0);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(21);
    obj.edit13:setHeight(22);
    obj.edit13:setField("st02");
    obj.edit13:setName("edit13");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(762);
    obj.layout14:setTop(291);
    obj.layout14:setWidth(21);
    obj.layout14:setHeight(21);
    obj.layout14:setName("layout14");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout14);
    obj.edit14:setTransparent(true);
    obj.edit14:setFontSize(13.5);
    obj.edit14:setFontColor("#000000");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setLeft(0);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(21);
    obj.edit14:setHeight(22);
    obj.edit14:setField("agi02");
    obj.edit14:setName("edit14");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(1064);
    obj.layout15:setTop(306);
    obj.layout15:setWidth(148);
    obj.layout15:setHeight(32);
    obj.layout15:setName("layout15");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout15);
    obj.edit15:setTransparent(true);
    obj.edit15:setFontSize(14.2);
    obj.edit15:setFontColor("#000000");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setLeft(0);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(148);
    obj.edit15:setHeight(33);
    obj.edit15:setField("tradition01");
    obj.edit15:setName("edit15");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(88);
    obj.layout16:setTop(336);
    obj.layout16:setWidth(274);
    obj.layout16:setHeight(32);
    obj.layout16:setName("layout16");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout16);
    obj.edit16:setTransparent(true);
    obj.edit16:setFontSize(14.2);
    obj.edit16:setFontColor("#000000");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setLeft(0);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(274);
    obj.edit16:setHeight(33);
    obj.edit16:setField("traits01");
    obj.edit16:setName("edit16");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(872);
    obj.layout17:setTop(340);
    obj.layout17:setWidth(339);
    obj.layout17:setHeight(32);
    obj.layout17:setName("layout17");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout17);
    obj.edit17:setTransparent(true);
    obj.edit17:setFontSize(14.2);
    obj.edit17:setFontColor("#000000");
    obj.edit17:setHorzTextAlign("leading");
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setLeft(0);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(339);
    obj.edit17:setHeight(33);
    obj.edit17:setField("spell01_01");
    obj.edit17:setName("edit17");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setLeft(430);
    obj.layout18:setTop(368);
    obj.layout18:setWidth(31);
    obj.layout18:setHeight(32);
    obj.layout18:setName("layout18");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout18);
    obj.edit18:setTransparent(true);
    obj.edit18:setFontSize(14.2);
    obj.edit18:setFontColor("#000000");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setLeft(0);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(31);
    obj.edit18:setHeight(33);
    obj.edit18:setField("level");
    obj.edit18:setName("edit18");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle1);
    obj.layout19:setLeft(617);
    obj.layout19:setTop(368);
    obj.layout19:setWidth(31);
    obj.layout19:setHeight(32);
    obj.layout19:setName("layout19");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout19);
    obj.edit19:setTransparent(true);
    obj.edit19:setFontSize(14.2);
    obj.edit19:setFontColor("#000000");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setLeft(0);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(31);
    obj.edit19:setHeight(33);
    obj.edit19:setField("damage");
    obj.edit19:setName("edit19");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle1);
    obj.layout20:setLeft(804);
    obj.layout20:setTop(368);
    obj.layout20:setWidth(31);
    obj.layout20:setHeight(32);
    obj.layout20:setName("layout20");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout20);
    obj.edit20:setTransparent(true);
    obj.edit20:setFontSize(14.2);
    obj.edit20:setFontColor("#000000");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setLeft(0);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(31);
    obj.edit20:setHeight(33);
    obj.edit20:setField("tokens");
    obj.edit20:setName("edit20");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle1);
    obj.layout21:setLeft(50);
    obj.layout21:setTop(374);
    obj.layout21:setWidth(354);
    obj.layout21:setHeight(32);
    obj.layout21:setName("layout21");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout21);
    obj.edit21:setTransparent(true);
    obj.edit21:setFontSize(14.2);
    obj.edit21:setFontColor("#000000");
    obj.edit21:setHorzTextAlign("leading");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setLeft(0);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(354);
    obj.edit21:setHeight(33);
    obj.edit21:setField("traits02");
    obj.edit21:setName("edit21");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(872);
    obj.layout22:setTop(374);
    obj.layout22:setWidth(339);
    obj.layout22:setHeight(32);
    obj.layout22:setName("layout22");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout22);
    obj.edit22:setTransparent(true);
    obj.edit22:setFontSize(14.2);
    obj.edit22:setFontColor("#000000");
    obj.edit22:setHorzTextAlign("leading");
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setLeft(0);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(339);
    obj.edit22:setHeight(33);
    obj.edit22:setField("spell01_02");
    obj.edit22:setName("edit22");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle1);
    obj.layout23:setLeft(50);
    obj.layout23:setTop(408);
    obj.layout23:setWidth(365);
    obj.layout23:setHeight(32);
    obj.layout23:setName("layout23");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout23);
    obj.edit23:setTransparent(true);
    obj.edit23:setFontSize(14.2);
    obj.edit23:setFontColor("#000000");
    obj.edit23:setHorzTextAlign("leading");
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setLeft(0);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(365);
    obj.edit23:setHeight(33);
    obj.edit23:setField("traits03");
    obj.edit23:setName("edit23");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle1);
    obj.layout24:setLeft(1064);
    obj.layout24:setTop(408);
    obj.layout24:setWidth(148);
    obj.layout24:setHeight(32);
    obj.layout24:setName("layout24");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout24);
    obj.edit24:setTransparent(true);
    obj.edit24:setFontSize(14.2);
    obj.edit24:setFontColor("#000000");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setLeft(0);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(148);
    obj.edit24:setHeight(33);
    obj.edit24:setField("tradition02");
    obj.edit24:setName("edit24");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle1);
    obj.layout25:setLeft(50);
    obj.layout25:setTop(442);
    obj.layout25:setWidth(407);
    obj.layout25:setHeight(32);
    obj.layout25:setName("layout25");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout25);
    obj.edit25:setTransparent(true);
    obj.edit25:setFontSize(14.2);
    obj.edit25:setFontColor("#000000");
    obj.edit25:setHorzTextAlign("leading");
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setLeft(0);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(407);
    obj.edit25:setHeight(33);
    obj.edit25:setField("traits04");
    obj.edit25:setName("edit25");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle1);
    obj.layout26:setLeft(936);
    obj.layout26:setTop(446);
    obj.layout26:setWidth(276);
    obj.layout26:setHeight(32);
    obj.layout26:setName("layout26");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout26);
    obj.edit26:setTransparent(true);
    obj.edit26:setFontSize(14.2);
    obj.edit26:setFontColor("#000000");
    obj.edit26:setHorzTextAlign("leading");
    obj.edit26:setVertTextAlign("center");
    obj.edit26:setLeft(0);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(276);
    obj.edit26:setHeight(33);
    obj.edit26:setField("spell02_01");
    obj.edit26:setName("edit26");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle1);
    obj.layout27:setLeft(496);
    obj.layout27:setTop(455);
    obj.layout27:setWidth(31);
    obj.layout27:setHeight(32);
    obj.layout27:setName("layout27");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout27);
    obj.edit27:setTransparent(true);
    obj.edit27:setFontSize(14.2);
    obj.edit27:setFontColor("#000000");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setVertTextAlign("center");
    obj.edit27:setLeft(0);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(31);
    obj.edit27:setHeight(33);
    obj.edit27:setField("int01");
    obj.edit27:setName("edit27");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle1);
    obj.layout28:setLeft(743);
    obj.layout28:setTop(459);
    obj.layout28:setWidth(31);
    obj.layout28:setHeight(32);
    obj.layout28:setName("layout28");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout28);
    obj.edit28:setTransparent(true);
    obj.edit28:setFontSize(14.2);
    obj.edit28:setFontColor("#000000");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setVertTextAlign("center");
    obj.edit28:setLeft(0);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(31);
    obj.edit28:setHeight(33);
    obj.edit28:setField("will01");
    obj.edit28:setName("edit28");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.rectangle1);
    obj.layout29:setLeft(50);
    obj.layout29:setTop(476);
    obj.layout29:setWidth(407);
    obj.layout29:setHeight(32);
    obj.layout29:setName("layout29");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout29);
    obj.edit29:setTransparent(true);
    obj.edit29:setFontSize(14.2);
    obj.edit29:setFontColor("#000000");
    obj.edit29:setHorzTextAlign("leading");
    obj.edit29:setVertTextAlign("center");
    obj.edit29:setLeft(0);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(407);
    obj.edit29:setHeight(33);
    obj.edit29:setField("traits05");
    obj.edit29:setName("edit29");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.rectangle1);
    obj.layout30:setLeft(862);
    obj.layout30:setTop(476);
    obj.layout30:setWidth(31);
    obj.layout30:setHeight(32);
    obj.layout30:setName("layout30");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout30);
    obj.edit30:setTransparent(true);
    obj.edit30:setFontSize(14.2);
    obj.edit30:setFontColor("#000000");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setVertTextAlign("center");
    obj.edit30:setLeft(0);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(31);
    obj.edit30:setHeight(33);
    obj.edit30:setField("defense_2");
    obj.edit30:setName("edit30");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle1);
    obj.layout31:setLeft(936);
    obj.layout31:setTop(480);
    obj.layout31:setWidth(276);
    obj.layout31:setHeight(32);
    obj.layout31:setName("layout31");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout31);
    obj.edit31:setTransparent(true);
    obj.edit31:setFontSize(14.2);
    obj.edit31:setFontColor("#000000");
    obj.edit31:setHorzTextAlign("leading");
    obj.edit31:setVertTextAlign("center");
    obj.edit31:setLeft(0);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(276);
    obj.edit31:setHeight(33);
    obj.edit31:setField("spell02_02");
    obj.edit31:setName("edit31");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.rectangle1);
    obj.layout32:setLeft(502);
    obj.layout32:setTop(495);
    obj.layout32:setWidth(21);
    obj.layout32:setHeight(21);
    obj.layout32:setName("layout32");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout32);
    obj.edit32:setTransparent(true);
    obj.edit32:setFontSize(13.5);
    obj.edit32:setFontColor("#000000");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setVertTextAlign("center");
    obj.edit32:setLeft(0);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(21);
    obj.edit32:setHeight(22);
    obj.edit32:setField("int02");
    obj.edit32:setName("edit32");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle1);
    obj.layout33:setLeft(749);
    obj.layout33:setTop(495);
    obj.layout33:setWidth(21);
    obj.layout33:setHeight(21);
    obj.layout33:setName("layout33");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout33);
    obj.edit33:setTransparent(true);
    obj.edit33:setFontSize(13.5);
    obj.edit33:setFontColor("#000000");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setVertTextAlign("center");
    obj.edit33:setLeft(0);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(21);
    obj.edit33:setHeight(22);
    obj.edit33:setField("will02");
    obj.edit33:setName("edit33");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle1);
    obj.layout34:setLeft(50);
    obj.layout34:setTop(510);
    obj.layout34:setWidth(354);
    obj.layout34:setHeight(32);
    obj.layout34:setName("layout34");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout34);
    obj.edit34:setTransparent(true);
    obj.edit34:setFontSize(14.2);
    obj.edit34:setFontColor("#000000");
    obj.edit34:setHorzTextAlign("leading");
    obj.edit34:setVertTextAlign("center");
    obj.edit34:setLeft(0);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(354);
    obj.edit34:setHeight(33);
    obj.edit34:setField("traits06");
    obj.edit34:setName("edit34");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.rectangle1);
    obj.layout35:setLeft(1064);
    obj.layout35:setTop(514);
    obj.layout35:setWidth(148);
    obj.layout35:setHeight(32);
    obj.layout35:setName("layout35");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout35);
    obj.edit35:setTransparent(true);
    obj.edit35:setFontSize(14.2);
    obj.edit35:setFontColor("#000000");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setVertTextAlign("center");
    obj.edit35:setLeft(0);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(148);
    obj.edit35:setHeight(33);
    obj.edit35:setField("tradition03");
    obj.edit35:setName("edit35");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.rectangle1);
    obj.layout36:setLeft(617);
    obj.layout36:setTop(525);
    obj.layout36:setWidth(31);
    obj.layout36:setHeight(32);
    obj.layout36:setName("layout36");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout36);
    obj.edit36:setTransparent(true);
    obj.edit36:setFontSize(14.2);
    obj.edit36:setFontColor("#000000");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setVertTextAlign("center");
    obj.edit36:setLeft(0);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(31);
    obj.edit36:setHeight(33);
    obj.edit36:setField("health");
    obj.edit36:setName("edit36");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.rectangle1);
    obj.layout37:setLeft(50);
    obj.layout37:setTop(549);
    obj.layout37:setWidth(407);
    obj.layout37:setHeight(32);
    obj.layout37:setName("layout37");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout37);
    obj.edit37:setTransparent(true);
    obj.edit37:setFontSize(14.2);
    obj.edit37:setFontColor("#000000");
    obj.edit37:setHorzTextAlign("leading");
    obj.edit37:setVertTextAlign("center");
    obj.edit37:setLeft(0);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(407);
    obj.edit37:setHeight(33);
    obj.edit37:setField("traits07");
    obj.edit37:setName("edit37");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.rectangle1);
    obj.layout38:setLeft(872);
    obj.layout38:setTop(549);
    obj.layout38:setWidth(339);
    obj.layout38:setHeight(32);
    obj.layout38:setName("layout38");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout38);
    obj.edit38:setTransparent(true);
    obj.edit38:setFontSize(14.2);
    obj.edit38:setFontColor("#000000");
    obj.edit38:setHorzTextAlign("leading");
    obj.edit38:setVertTextAlign("center");
    obj.edit38:setLeft(0);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(339);
    obj.edit38:setHeight(33);
    obj.edit38:setField("spell03_01");
    obj.edit38:setName("edit38");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.rectangle1);
    obj.layout39:setLeft(742);
    obj.layout39:setTop(582);
    obj.layout39:setWidth(276);
    obj.layout39:setHeight(32);
    obj.layout39:setName("layout39");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout39);
    obj.edit39:setTransparent(true);
    obj.edit39:setFontSize(14.2);
    obj.edit39:setFontColor("#000000");
    obj.edit39:setHorzTextAlign("leading");
    obj.edit39:setVertTextAlign("center");
    obj.edit39:setLeft(0);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(276);
    obj.edit39:setHeight(33);
    obj.edit39:setField("spell02_02_2");
    obj.edit39:setName("edit39");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.rectangle1);
    obj.layout40:setLeft(50);
    obj.layout40:setTop(583);
    obj.layout40:setWidth(407);
    obj.layout40:setHeight(32);
    obj.layout40:setName("layout40");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout40);
    obj.edit40:setTransparent(true);
    obj.edit40:setFontSize(14.2);
    obj.edit40:setFontColor("#000000");
    obj.edit40:setHorzTextAlign("leading");
    obj.edit40:setVertTextAlign("center");
    obj.edit40:setLeft(0);
    obj.edit40:setTop(0);
    obj.edit40:setWidth(407);
    obj.edit40:setHeight(33);
    obj.edit40:setField("traits08");
    obj.edit40:setName("edit40");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.rectangle1);
    obj.layout41:setLeft(872);
    obj.layout41:setTop(583);
    obj.layout41:setWidth(339);
    obj.layout41:setHeight(32);
    obj.layout41:setName("layout41");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout41);
    obj.edit41:setTransparent(true);
    obj.edit41:setFontSize(14.2);
    obj.edit41:setFontColor("#000000");
    obj.edit41:setHorzTextAlign("leading");
    obj.edit41:setVertTextAlign("center");
    obj.edit41:setLeft(0);
    obj.edit41:setTop(0);
    obj.edit41:setWidth(339);
    obj.edit41:setHeight(33);
    obj.edit41:setField("spell03_02");
    obj.edit41:setName("edit41");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.rectangle1);
    obj.layout42:setLeft(1064);
    obj.layout42:setTop(617);
    obj.layout42:setWidth(148);
    obj.layout42:setHeight(32);
    obj.layout42:setName("layout42");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout42);
    obj.edit42:setTransparent(true);
    obj.edit42:setFontSize(14.2);
    obj.edit42:setFontColor("#000000");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setVertTextAlign("center");
    obj.edit42:setLeft(0);
    obj.edit42:setTop(0);
    obj.edit42:setWidth(148);
    obj.edit42:setHeight(33);
    obj.edit42:setField("tradition04");
    obj.edit42:setName("edit42");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.rectangle1);
    obj.layout43:setLeft(872);
    obj.layout43:setTop(651);
    obj.layout43:setWidth(339);
    obj.layout43:setHeight(32);
    obj.layout43:setName("layout43");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout43);
    obj.edit43:setTransparent(true);
    obj.edit43:setFontSize(14.2);
    obj.edit43:setFontColor("#000000");
    obj.edit43:setHorzTextAlign("leading");
    obj.edit43:setVertTextAlign("center");
    obj.edit43:setLeft(0);
    obj.edit43:setTop(0);
    obj.edit43:setWidth(339);
    obj.edit43:setHeight(33);
    obj.edit43:setField("spell04_01");
    obj.edit43:setName("edit43");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.rectangle1);
    obj.layout44:setLeft(872);
    obj.layout44:setTop(685);
    obj.layout44:setWidth(339);
    obj.layout44:setHeight(32);
    obj.layout44:setName("layout44");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout44);
    obj.edit44:setTransparent(true);
    obj.edit44:setFontSize(14.2);
    obj.edit44:setFontColor("#000000");
    obj.edit44:setHorzTextAlign("leading");
    obj.edit44:setVertTextAlign("center");
    obj.edit44:setLeft(0);
    obj.edit44:setTop(0);
    obj.edit44:setWidth(339);
    obj.edit44:setHeight(33);
    obj.edit44:setField("spell04_02");
    obj.edit44:setName("edit44");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.rectangle1);
    obj.layout45:setLeft(50);
    obj.layout45:setTop(689);
    obj.layout45:setWidth(131);
    obj.layout45:setHeight(32);
    obj.layout45:setName("layout45");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout45);
    obj.edit45:setTransparent(true);
    obj.edit45:setFontSize(14.2);
    obj.edit45:setFontColor("#000000");
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setVertTextAlign("center");
    obj.edit45:setLeft(0);
    obj.edit45:setTop(0);
    obj.edit45:setWidth(131);
    obj.edit45:setHeight(33);
    obj.edit45:setField("weap01");
    obj.edit45:setName("edit45");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.rectangle1);
    obj.layout46:setLeft(188);
    obj.layout46:setTop(689);
    obj.layout46:setWidth(46);
    obj.layout46:setHeight(32);
    obj.layout46:setName("layout46");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout46);
    obj.edit46:setTransparent(true);
    obj.edit46:setFontSize(14.2);
    obj.edit46:setFontColor("#000000");
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setVertTextAlign("center");
    obj.edit46:setLeft(0);
    obj.edit46:setTop(0);
    obj.edit46:setWidth(46);
    obj.edit46:setHeight(33);
    obj.edit46:setField("dmg01");
    obj.edit46:setName("edit46");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.rectangle1);
    obj.layout47:setLeft(243);
    obj.layout47:setTop(689);
    obj.layout47:setWidth(246);
    obj.layout47:setHeight(32);
    obj.layout47:setName("layout47");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout47);
    obj.edit47:setTransparent(true);
    obj.edit47:setFontSize(14.2);
    obj.edit47:setFontColor("#000000");
    obj.edit47:setHorzTextAlign("leading");
    obj.edit47:setVertTextAlign("center");
    obj.edit47:setLeft(0);
    obj.edit47:setTop(0);
    obj.edit47:setWidth(246);
    obj.edit47:setHeight(33);
    obj.edit47:setField("prop01");
    obj.edit47:setName("edit47");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.rectangle1);
    obj.layout48:setLeft(1064);
    obj.layout48:setTop(719);
    obj.layout48:setWidth(148);
    obj.layout48:setHeight(32);
    obj.layout48:setName("layout48");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout48);
    obj.edit48:setTransparent(true);
    obj.edit48:setFontSize(14.2);
    obj.edit48:setFontColor("#000000");
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setVertTextAlign("center");
    obj.edit48:setLeft(0);
    obj.edit48:setTop(0);
    obj.edit48:setWidth(148);
    obj.edit48:setHeight(33);
    obj.edit48:setField("tradition05");
    obj.edit48:setName("edit48");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.rectangle1);
    obj.layout49:setLeft(50);
    obj.layout49:setTop(723);
    obj.layout49:setWidth(131);
    obj.layout49:setHeight(32);
    obj.layout49:setName("layout49");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout49);
    obj.edit49:setTransparent(true);
    obj.edit49:setFontSize(14.2);
    obj.edit49:setFontColor("#000000");
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setVertTextAlign("center");
    obj.edit49:setLeft(0);
    obj.edit49:setTop(0);
    obj.edit49:setWidth(131);
    obj.edit49:setHeight(33);
    obj.edit49:setField("weap02");
    obj.edit49:setName("edit49");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.rectangle1);
    obj.layout50:setLeft(188);
    obj.layout50:setTop(723);
    obj.layout50:setWidth(46);
    obj.layout50:setHeight(32);
    obj.layout50:setName("layout50");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout50);
    obj.edit50:setTransparent(true);
    obj.edit50:setFontSize(14.2);
    obj.edit50:setFontColor("#000000");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setVertTextAlign("center");
    obj.edit50:setLeft(0);
    obj.edit50:setTop(0);
    obj.edit50:setWidth(46);
    obj.edit50:setHeight(33);
    obj.edit50:setField("dmg02");
    obj.edit50:setName("edit50");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.rectangle1);
    obj.layout51:setLeft(243);
    obj.layout51:setTop(723);
    obj.layout51:setWidth(246);
    obj.layout51:setHeight(32);
    obj.layout51:setName("layout51");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout51);
    obj.edit51:setTransparent(true);
    obj.edit51:setFontSize(14.2);
    obj.edit51:setFontColor("#000000");
    obj.edit51:setHorzTextAlign("leading");
    obj.edit51:setVertTextAlign("center");
    obj.edit51:setLeft(0);
    obj.edit51:setTop(0);
    obj.edit51:setWidth(246);
    obj.edit51:setHeight(33);
    obj.edit51:setField("prop02");
    obj.edit51:setName("edit51");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.rectangle1);
    obj.layout52:setLeft(872);
    obj.layout52:setTop(753);
    obj.layout52:setWidth(339);
    obj.layout52:setHeight(32);
    obj.layout52:setName("layout52");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout52);
    obj.edit52:setTransparent(true);
    obj.edit52:setFontSize(14.2);
    obj.edit52:setFontColor("#000000");
    obj.edit52:setHorzTextAlign("leading");
    obj.edit52:setVertTextAlign("center");
    obj.edit52:setLeft(0);
    obj.edit52:setTop(0);
    obj.edit52:setWidth(339);
    obj.edit52:setHeight(33);
    obj.edit52:setField("spell05_01");
    obj.edit52:setName("edit52");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.rectangle1);
    obj.layout53:setLeft(50);
    obj.layout53:setTop(761);
    obj.layout53:setWidth(131);
    obj.layout53:setHeight(32);
    obj.layout53:setName("layout53");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout53);
    obj.edit53:setTransparent(true);
    obj.edit53:setFontSize(14.2);
    obj.edit53:setFontColor("#000000");
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setVertTextAlign("center");
    obj.edit53:setLeft(0);
    obj.edit53:setTop(0);
    obj.edit53:setWidth(131);
    obj.edit53:setHeight(33);
    obj.edit53:setField("weap03");
    obj.edit53:setName("edit53");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.rectangle1);
    obj.layout54:setLeft(188);
    obj.layout54:setTop(761);
    obj.layout54:setWidth(46);
    obj.layout54:setHeight(32);
    obj.layout54:setName("layout54");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout54);
    obj.edit54:setTransparent(true);
    obj.edit54:setFontSize(14.2);
    obj.edit54:setFontColor("#000000");
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setVertTextAlign("center");
    obj.edit54:setLeft(0);
    obj.edit54:setTop(0);
    obj.edit54:setWidth(46);
    obj.edit54:setHeight(33);
    obj.edit54:setField("dmg03");
    obj.edit54:setName("edit54");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.rectangle1);
    obj.layout55:setLeft(243);
    obj.layout55:setTop(761);
    obj.layout55:setWidth(246);
    obj.layout55:setHeight(32);
    obj.layout55:setName("layout55");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout55);
    obj.edit55:setTransparent(true);
    obj.edit55:setFontSize(14.2);
    obj.edit55:setFontColor("#000000");
    obj.edit55:setHorzTextAlign("leading");
    obj.edit55:setVertTextAlign("center");
    obj.edit55:setLeft(0);
    obj.edit55:setTop(0);
    obj.edit55:setWidth(246);
    obj.edit55:setHeight(33);
    obj.edit55:setField("prop03");
    obj.edit55:setName("edit55");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.rectangle1);
    obj.layout56:setLeft(872);
    obj.layout56:setTop(787);
    obj.layout56:setWidth(339);
    obj.layout56:setHeight(32);
    obj.layout56:setName("layout56");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout56);
    obj.edit56:setTransparent(true);
    obj.edit56:setFontSize(14.2);
    obj.edit56:setFontColor("#000000");
    obj.edit56:setHorzTextAlign("leading");
    obj.edit56:setVertTextAlign("center");
    obj.edit56:setLeft(0);
    obj.edit56:setTop(0);
    obj.edit56:setWidth(339);
    obj.edit56:setHeight(33);
    obj.edit56:setField("spell05_02");
    obj.edit56:setName("edit56");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.rectangle1);
    obj.layout57:setLeft(50);
    obj.layout57:setTop(791);
    obj.layout57:setWidth(131);
    obj.layout57:setHeight(32);
    obj.layout57:setName("layout57");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.layout57);
    obj.edit57:setTransparent(true);
    obj.edit57:setFontSize(14.2);
    obj.edit57:setFontColor("#000000");
    obj.edit57:setHorzTextAlign("center");
    obj.edit57:setVertTextAlign("center");
    obj.edit57:setLeft(0);
    obj.edit57:setTop(0);
    obj.edit57:setWidth(131);
    obj.edit57:setHeight(33);
    obj.edit57:setField("weap04");
    obj.edit57:setName("edit57");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.rectangle1);
    obj.layout58:setLeft(188);
    obj.layout58:setTop(791);
    obj.layout58:setWidth(46);
    obj.layout58:setHeight(32);
    obj.layout58:setName("layout58");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.layout58);
    obj.edit58:setTransparent(true);
    obj.edit58:setFontSize(14.2);
    obj.edit58:setFontColor("#000000");
    obj.edit58:setHorzTextAlign("center");
    obj.edit58:setVertTextAlign("center");
    obj.edit58:setLeft(0);
    obj.edit58:setTop(0);
    obj.edit58:setWidth(46);
    obj.edit58:setHeight(33);
    obj.edit58:setField("dmg04");
    obj.edit58:setName("edit58");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.rectangle1);
    obj.layout59:setLeft(243);
    obj.layout59:setTop(791);
    obj.layout59:setWidth(246);
    obj.layout59:setHeight(32);
    obj.layout59:setName("layout59");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout59);
    obj.edit59:setTransparent(true);
    obj.edit59:setFontSize(14.2);
    obj.edit59:setFontColor("#000000");
    obj.edit59:setHorzTextAlign("leading");
    obj.edit59:setVertTextAlign("center");
    obj.edit59:setLeft(0);
    obj.edit59:setTop(0);
    obj.edit59:setWidth(246);
    obj.edit59:setHeight(33);
    obj.edit59:setField("prop04");
    obj.edit59:setName("edit59");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.scrollBox1);
    obj.rectangle2:setLeft(515);
    obj.rectangle2:setColor("white");
    obj.rectangle2:setTop(639);
    obj.rectangle2:setWidth(225);
    obj.rectangle2:setHeight(160);
    obj.rectangle2:setName("rectangle2");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.rectangle2);
    obj.image2:setAlign("client");
    obj.image2:setStyle("proportional");
    obj.image2:setField("Imagem");
    obj.image2:setMargins({top=2});
    obj.image2:setEditable(true);
    lfm_setPropAsString(obj.image2, "animate",  "true");
    obj.image2:setName("image2");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.frmprototipo_planilha_weird_wizard1_svg ~= nil then self.frmprototipo_planilha_weird_wizard1_svg:destroy(); self.frmprototipo_planilha_weird_wizard1_svg = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmprototipo_planilha_weird_wizard()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmprototipo_planilha_weird_wizard();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmprototipo_planilha_weird_wizard = {
    newEditor = newfrmprototipo_planilha_weird_wizard, 
    new = newfrmprototipo_planilha_weird_wizard, 
    name = "frmprototipo_planilha_weird_wizard", 
    dataType = "br.com.czagalo_Planilha_SotWW", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Shadow of the Weird Wizard", 
    description=""};

frmprototipo_planilha_weird_wizard = _frmprototipo_planilha_weird_wizard;
Firecast.registrarForm(_frmprototipo_planilha_weird_wizard);
Firecast.registrarDataType(_frmprototipo_planilha_weird_wizard);

return _frmprototipo_planilha_weird_wizard;

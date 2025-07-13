require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmWeirdWizard()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", obj.setNodeObject);

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
    obj:setFormType("sheetTemplate");
    obj:setDataType("br.com.firecast.ShadowOfTheWeirdWizard");
    obj:setTitle("Shadow of the Weird Wizard");
    obj:setName("frmWeirdWizard");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setLeft(0);
    obj.scrollBox1:setTop(0);
    obj.scrollBox1:setWidth(827);
    obj.scrollBox1:setHeight(880);
    obj.scrollBox1:setName("scrollBox1");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj.scrollBox1);
    obj.tabControl1:setLeft(0);
    obj.tabControl1:setTop(0);
    obj.tabControl1:setWidth(811);
    obj.tabControl1:setHeight(1129);
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Personagem");
    obj.tab1:setName("tab1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.tab1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(10);
    obj.layout1:setWidth(815);
    obj.layout1:setHeight(825);
    obj.layout1:setName("layout1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setLeft(0);
    obj.rectangle1:setTop(0);
    obj.rectangle1:setWidth(799);
    obj.rectangle1:setHeight(825);
    obj.rectangle1:setColor("#D5D5D5");
    obj.rectangle1:setName("rectangle1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.rectangle1);
    obj.rectangle2:setLeft(0);
    obj.rectangle2:setTop(487);
    obj.rectangle2:setWidth(60);
    obj.rectangle2:setHeight(1);
    obj.rectangle2:setColor("#49244F");
    obj.rectangle2:setName("rectangle2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.rectangle1);
    obj.rectangle3:setLeft(0);
    obj.rectangle3:setTop(493);
    obj.rectangle3:setWidth(60);
    obj.rectangle3:setHeight(3);
    obj.rectangle3:setColor("#49244F");
    obj.rectangle3:setName("rectangle3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.rectangle1);
    obj.rectangle4:setLeft(0);
    obj.rectangle4:setTop(501);
    obj.rectangle4:setWidth(60);
    obj.rectangle4:setHeight(1);
    obj.rectangle4:setColor("#49244F");
    obj.rectangle4:setName("rectangle4");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.rectangle1);
    obj.rectangle5:setLeft(0);
    obj.rectangle5:setTop(577);
    obj.rectangle5:setWidth(60);
    obj.rectangle5:setHeight(1);
    obj.rectangle5:setColor("#49244F");
    obj.rectangle5:setName("rectangle5");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.rectangle1);
    obj.rectangle6:setLeft(0);
    obj.rectangle6:setTop(583);
    obj.rectangle6:setWidth(60);
    obj.rectangle6:setHeight(3);
    obj.rectangle6:setColor("#49244F");
    obj.rectangle6:setName("rectangle6");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.rectangle1);
    obj.rectangle7:setLeft(0);
    obj.rectangle7:setTop(591);
    obj.rectangle7:setWidth(60);
    obj.rectangle7:setHeight(1);
    obj.rectangle7:setColor("#49244F");
    obj.rectangle7:setName("rectangle7");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.rectangle1);
    obj.rectangle8:setLeft(0);
    obj.rectangle8:setTop(667);
    obj.rectangle8:setWidth(60);
    obj.rectangle8:setHeight(1);
    obj.rectangle8:setColor("#49244F");
    obj.rectangle8:setName("rectangle8");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.rectangle1);
    obj.rectangle9:setLeft(0);
    obj.rectangle9:setTop(673);
    obj.rectangle9:setWidth(60);
    obj.rectangle9:setHeight(3);
    obj.rectangle9:setColor("#49244F");
    obj.rectangle9:setName("rectangle9");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.rectangle1);
    obj.rectangle10:setLeft(0);
    obj.rectangle10:setTop(681);
    obj.rectangle10:setWidth(60);
    obj.rectangle10:setHeight(1);
    obj.rectangle10:setColor("#49244F");
    obj.rectangle10:setName("rectangle10");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.rectangle1);
    obj.rectangle11:setLeft(0);
    obj.rectangle11:setTop(757);
    obj.rectangle11:setWidth(60);
    obj.rectangle11:setHeight(1);
    obj.rectangle11:setColor("#49244F");
    obj.rectangle11:setName("rectangle11");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.rectangle1);
    obj.rectangle12:setLeft(0);
    obj.rectangle12:setTop(763);
    obj.rectangle12:setWidth(60);
    obj.rectangle12:setHeight(3);
    obj.rectangle12:setColor("#49244F");
    obj.rectangle12:setName("rectangle12");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.rectangle1);
    obj.rectangle13:setLeft(0);
    obj.rectangle13:setTop(771);
    obj.rectangle13:setWidth(60);
    obj.rectangle13:setHeight(1);
    obj.rectangle13:setColor("#49244F");
    obj.rectangle13:setName("rectangle13");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(799);
    obj.image1:setHeight(825);
    obj.image1:setSRC("/img/borda.png");
    obj.image1:setName("image1");

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.rectangle1);
    obj.horzLine1:setLeft(35);
    obj.horzLine1:setTop(630);
    obj.horzLine1:setWidth(300);
    obj.horzLine1:setStrokeColor("#49244F");
    obj.horzLine1:setColor("#D5D5D5");
    obj.horzLine1:setRotationAngle(90);
    obj.horzLine1:setStrokeSize(3);
    obj.horzLine1:setStrokeDash("dot");
    obj.horzLine1:setName("horzLine1");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.rectangle1);
    obj.rectangle14:setLeft(210);
    obj.rectangle14:setTop(420);
    obj.rectangle14:setWidth(150);
    obj.rectangle14:setHeight(250);
    obj.rectangle14:setColor("#49244F");
    obj.rectangle14:setXradius(80);
    obj.rectangle14:setYradius(110);
    obj.rectangle14:setCornerType("bevel");
    obj.rectangle14:setName("rectangle14");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.rectangle1);
    obj.rectangle15:setLeft(210);
    obj.rectangle15:setTop(420);
    obj.rectangle15:setWidth(150);
    obj.rectangle15:setHeight(110);
    obj.rectangle15:setColor("#D5D5D5");
    obj.rectangle15:setName("rectangle15");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.rectangle1);
    obj.image2:setField("imagemDoPersonagem");
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2.animate = true;
    obj.image2:setLeft(63);
    obj.image2:setTop(63);
    obj.image2:setWidth(300);
    obj.image2:setHeight(360);
    obj.image2:setSRC("/img/weird_wizard.jpg");
    obj.image2:setName("image2");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.rectangle1);
    obj.image3:setLeft(60);
    obj.image3:setTop(60);
    obj.image3:setWidth(303);
    obj.image3:setHeight(363);
    obj.image3:setSRC("/img/retrato.png");
    obj.image3:setName("image3");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.rectangle1);
    obj.image4:setLeft(50);
    obj.image4:setTop(330);
    obj.image4:setWidth(316);
    obj.image4:setHeight(84);
    obj.image4:setSRC("/img/pergaminho.png");
    obj.image4:setName("image4");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.rectangle1);
    obj.label1:setField("Nome");
    obj.label1:setLeft(82);
    obj.label1:setTop(365);
    obj.label1:setWidth(260);
    obj.label1:setFontSize(24);
    obj.label1:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label1, "fontStyle", "bold");
    obj.label1:setText("Weird Wizard");
    obj.label1:setName("label1");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.rectangle1);
    obj.dataLink1:setField("frmNome");
    obj.dataLink1:setName("dataLink1");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.rectangle1);
    obj.rectangle16:setLeft(710);
    obj.rectangle16:setTop(50);
    obj.rectangle16:setWidth(85);
    obj.rectangle16:setHeight(85);
    obj.rectangle16:setColor("#49244F");
    obj.rectangle16:setXradius(45);
    obj.rectangle16:setYradius(45);
    obj.rectangle16:setCornerType("round");
    obj.rectangle16:setName("rectangle16");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.rectangle1);
    obj.label2:setLeft(727);
    obj.label2:setTop(105);
    obj.label2:setWidth(50);
    obj.label2:setFontSize(18);
    obj.label2:setHorzTextAlign("center");
    obj.label2:setText("Nível");
    obj.label2:setName("label2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.rectangle1);
    obj.label3:setField("Nivel");
    obj.label3:setLeft(725);
    obj.label3:setTop(70);
    obj.label3:setWidth(50);
    obj.label3:setFontSize(24);
    obj.label3:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label3, "fontStyle", "bold");
    obj.label3:setName("label3");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.rectangle1);
    obj.dataLink2:setField("frmNivel");
    obj.dataLink2:setName("dataLink2");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.rectangle1);
    obj.label4:setLeft(370);
    obj.label4:setTop(60);
    obj.label4:setWidth(180);
    obj.label4:setFontSize(24);
    obj.label4:setHorzTextAlign("center");
    obj.label4:setText("Ancestralidade:");
    obj.label4:setFontColor("#49244F");
    lfm_setPropAsString(obj.label4, "fontStyle", "bold");
    obj.label4:setName("label4");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.rectangle1);
    obj.label5:setField("Ancestralidade");
    obj.label5:setLeft(555);
    obj.label5:setTop(61);
    obj.label5:setWidth(200);
    obj.label5:setFontSize(20);
    obj.label5:setFontColor("black");
    obj.label5:setName("label5");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.rectangle1);
    obj.dataLink3:setField("frmAncestralidade");
    obj.dataLink3:setName("dataLink3");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.rectangle1);
    obj.rectangle17:setLeft(370);
    obj.rectangle17:setTop(95);
    obj.rectangle17:setWidth(400);
    obj.rectangle17:setHeight(3);
    obj.rectangle17:setColor("#49244F");
    obj.rectangle17:setName("rectangle17");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.rectangle1);
    obj.rectangle18:setLeft(420);
    obj.rectangle18:setTop(137);
    obj.rectangle18:setWidth(320);
    obj.rectangle18:setHeight(1);
    obj.rectangle18:setColor("#49244F");
    obj.rectangle18:setName("rectangle18");

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.rectangle1);
    obj.rectangle19:setLeft(420);
    obj.rectangle19:setTop(170);
    obj.rectangle19:setWidth(320);
    obj.rectangle19:setHeight(1);
    obj.rectangle19:setColor("#49244F");
    obj.rectangle19:setName("rectangle19");

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.rectangle1);
    obj.rectangle20:setLeft(420);
    obj.rectangle20:setTop(196);
    obj.rectangle20:setWidth(320);
    obj.rectangle20:setHeight(1);
    obj.rectangle20:setColor("#49244F");
    obj.rectangle20:setName("rectangle20");

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.rectangle1);
    obj.rectangle21:setLeft(420);
    obj.rectangle21:setTop(222);
    obj.rectangle21:setWidth(320);
    obj.rectangle21:setHeight(1);
    obj.rectangle21:setColor("#49244F");
    obj.rectangle21:setName("rectangle21");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.rectangle1);
    obj.label6:setLeft(440);
    obj.label6:setTop(118);
    obj.label6:setWidth(280);
    obj.label6:setFontSize(20);
    obj.label6:setHorzTextAlign("center");
    obj.label6:setText("Idiomas, Profissões e Religião");
    obj.label6:setFontColor("#49244F");
    lfm_setPropAsString(obj.label6, "fontStyle", "bold");
    obj.label6:setName("label6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.rectangle1);
    obj.label7:setField("Idiomas");
    obj.label7:setLeft(420);
    obj.label7:setTop(130);
    obj.label7:setWidth(320);
    obj.label7:setHeight(60);
    obj.label7:setFontSize(18);
    obj.label7:setHorzTextAlign("center");
    obj.label7:setFontColor("black");
    obj.label7:setName("label7");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.rectangle1);
    obj.dataLink4:setField("frmIdiomas");
    obj.dataLink4:setName("dataLink4");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.rectangle1);
    obj.label8:setField("Profissoes");
    obj.label8:setLeft(420);
    obj.label8:setTop(155);
    obj.label8:setWidth(320);
    obj.label8:setHeight(60);
    obj.label8:setFontSize(18);
    obj.label8:setHorzTextAlign("center");
    obj.label8:setFontColor("black");
    obj.label8:setName("label8");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.rectangle1);
    obj.dataLink5:setField("frmProfissoes");
    obj.dataLink5:setName("dataLink5");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.rectangle1);
    obj.label9:setField("Religiao");
    obj.label9:setLeft(420);
    obj.label9:setTop(180);
    obj.label9:setWidth(320);
    obj.label9:setHeight(60);
    obj.label9:setFontSize(18);
    obj.label9:setHorzTextAlign("center");
    obj.label9:setFontColor("black");
    obj.label9:setName("label9");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.rectangle1);
    obj.dataLink6:setField("frmReligiao");
    obj.dataLink6:setName("dataLink6");

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.rectangle1);
    obj.rectangle22:setLeft(370);
    obj.rectangle22:setTop(245);
    obj.rectangle22:setWidth(425);
    obj.rectangle22:setHeight(150);
    obj.rectangle22:setColor("#49244F");
    obj.rectangle22:setName("rectangle22");

    obj.rectangle23 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.rectangle1);
    obj.rectangle23:setLeft(382);
    obj.rectangle23:setTop(285);
    obj.rectangle23:setWidth(401);
    obj.rectangle23:setHeight(1);
    obj.rectangle23:setColor("#D5D5D5");
    obj.rectangle23:setName("rectangle23");

    obj.rectangle24 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.rectangle1);
    obj.rectangle24:setLeft(582);
    obj.rectangle24:setTop(285);
    obj.rectangle24:setWidth(1);
    obj.rectangle24:setHeight(150);
    obj.rectangle24:setColor("#D5D5D5");
    obj.rectangle24:setName("rectangle24");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.rectangle1);
    obj.label10:setLeft(515);
    obj.label10:setTop(255);
    obj.label10:setWidth(120);
    obj.label10:setFontSize(20);
    obj.label10:setHorzTextAlign("center");
    obj.label10:setText("Descrição");
    lfm_setPropAsString(obj.label10, "fontStyle", "bold");
    obj.label10:setName("label10");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.rectangle1);
    obj.label11:setLeft(382);
    obj.label11:setTop(295);
    obj.label11:setWidth(120);
    obj.label11:setFontSize(20);
    obj.label11:setText("Gênero:");
    obj.label11:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label11, "fontStyle", "bold");
    obj.label11:setName("label11");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.rectangle1);
    obj.label12:setLeft(460);
    obj.label12:setTop(297);
    obj.label12:setWidth(120);
    obj.label12:setFontColor("#D5D5D5");
    obj.label12:setField("Genero");
    obj.label12:setName("label12");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.rectangle1);
    obj.dataLink7:setField("frmGenero");
    obj.dataLink7:setName("dataLink7");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.rectangle1);
    obj.label13:setLeft(597);
    obj.label13:setTop(295);
    obj.label13:setWidth(120);
    obj.label13:setFontSize(20);
    obj.label13:setText("Idade:");
    obj.label13:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label13, "fontStyle", "bold");
    obj.label13:setName("label13");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.rectangle1);
    obj.label14:setLeft(660);
    obj.label14:setTop(297);
    obj.label14:setWidth(120);
    obj.label14:setFontColor("#D5D5D5");
    obj.label14:setField("Idade");
    obj.label14:setName("label14");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.rectangle1);
    obj.dataLink8:setField("frmIdade");
    obj.dataLink8:setName("dataLink8");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.rectangle1);
    obj.label15:setLeft(382);
    obj.label15:setTop(325);
    obj.label15:setWidth(120);
    obj.label15:setFontSize(20);
    obj.label15:setText("Olhos:");
    obj.label15:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label15, "fontStyle", "bold");
    obj.label15:setName("label15");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.rectangle1);
    obj.label16:setLeft(450);
    obj.label16:setTop(327);
    obj.label16:setWidth(220);
    obj.label16:setFontColor("#D5D5D5");
    obj.label16:setField("Olhos");
    obj.label16:setName("label16");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.rectangle1);
    obj.dataLink9:setField("frmOlhos");
    obj.dataLink9:setName("dataLink9");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.rectangle1);
    obj.label17:setLeft(597);
    obj.label17:setTop(325);
    obj.label17:setWidth(120);
    obj.label17:setFontSize(20);
    obj.label17:setText("Cabelos:");
    obj.label17:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label17, "fontStyle", "bold");
    obj.label17:setName("label17");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.rectangle1);
    obj.label18:setLeft(685);
    obj.label18:setTop(327);
    obj.label18:setWidth(220);
    obj.label18:setFontColor("#D5D5D5");
    obj.label18:setField("Cabelos");
    obj.label18:setName("label18");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.rectangle1);
    obj.dataLink10:setField("frmCabelos");
    obj.dataLink10:setName("dataLink10");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.rectangle1);
    obj.label19:setLeft(382);
    obj.label19:setTop(355);
    obj.label19:setWidth(120);
    obj.label19:setFontSize(20);
    obj.label19:setText("Altura:");
    obj.label19:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label19, "fontStyle", "bold");
    obj.label19:setName("label19");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.rectangle1);
    obj.label20:setLeft(450);
    obj.label20:setTop(357);
    obj.label20:setWidth(220);
    obj.label20:setFontColor("#D5D5D5");
    obj.label20:setField("Altura");
    obj.label20:setName("label20");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.rectangle1);
    obj.dataLink11:setField("frmAltura");
    obj.dataLink11:setName("dataLink11");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.rectangle1);
    obj.label21:setLeft(597);
    obj.label21:setTop(355);
    obj.label21:setWidth(120);
    obj.label21:setFontSize(20);
    obj.label21:setText("Peso:");
    obj.label21:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label21, "fontStyle", "bold");
    obj.label21:setName("label21");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.rectangle1);
    obj.label22:setLeft(655);
    obj.label22:setTop(357);
    obj.label22:setWidth(220);
    obj.label22:setFontColor("#D5D5D5");
    obj.label22:setField("Peso");
    obj.label22:setName("label22");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.rectangle1);
    obj.dataLink12:setField("frmPeso");
    obj.dataLink12:setName("dataLink12");

    obj.rectangle25 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.rectangle1);
    obj.rectangle25:setLeft(370);
    obj.rectangle25:setTop(410);
    obj.rectangle25:setWidth(425);
    obj.rectangle25:setHeight(1);
    obj.rectangle25:setColor("#49244F");
    obj.rectangle25:setName("rectangle25");

    obj.rectangle26 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.rectangle1);
    obj.rectangle26:setLeft(370);
    obj.rectangle26:setTop(425);
    obj.rectangle26:setWidth(425);
    obj.rectangle26:setHeight(40);
    obj.rectangle26:setColor("#49244F");
    obj.rectangle26:setName("rectangle26");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.rectangle1);
    obj.label23:setLeft(525);
    obj.label23:setTop(435);
    obj.label23:setWidth(100);
    obj.label23:setFontSize(20);
    obj.label23:setHorzTextAlign("center");
    obj.label23:setText("Novato");
    lfm_setPropAsString(obj.label23, "fontStyle", "bold");
    obj.label23:setName("label23");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.rectangle1);
    obj.label24:setField("Aprendiz");
    obj.label24:setLeft(250);
    obj.label24:setTop(450);
    obj.label24:setWidth(650);
    obj.label24:setHeight(60);
    obj.label24:setFontSize(18);
    obj.label24:setHorzTextAlign("center");
    obj.label24:setFontColor("black");
    obj.label24:setName("label24");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.rectangle1);
    obj.dataLink13:setField("frmAprendiz");
    obj.dataLink13:setName("dataLink13");

    obj.rectangle27 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.rectangle1);
    obj.rectangle27:setLeft(370);
    obj.rectangle27:setTop(495);
    obj.rectangle27:setWidth(425);
    obj.rectangle27:setHeight(40);
    obj.rectangle27:setColor("#49244F");
    obj.rectangle27:setName("rectangle27");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.rectangle1);
    obj.label25:setLeft(515);
    obj.label25:setTop(505);
    obj.label25:setWidth(120);
    obj.label25:setFontSize(20);
    obj.label25:setHorzTextAlign("center");
    obj.label25:setText("Especialista");
    lfm_setPropAsString(obj.label25, "fontStyle", "bold");
    obj.label25:setName("label25");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.rectangle1);
    obj.label26:setField("Especialista");
    obj.label26:setLeft(250);
    obj.label26:setTop(520);
    obj.label26:setWidth(650);
    obj.label26:setHeight(60);
    obj.label26:setFontSize(18);
    obj.label26:setHorzTextAlign("center");
    obj.label26:setFontColor("black");
    obj.label26:setName("label26");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.rectangle1);
    obj.dataLink14:setField("frmEspecialista");
    obj.dataLink14:setName("dataLink14");

    obj.rectangle28 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.rectangle1);
    obj.rectangle28:setLeft(370);
    obj.rectangle28:setTop(565);
    obj.rectangle28:setWidth(425);
    obj.rectangle28:setHeight(40);
    obj.rectangle28:setColor("#49244F");
    obj.rectangle28:setName("rectangle28");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.rectangle1);
    obj.label27:setLeft(515);
    obj.label27:setTop(575);
    obj.label27:setWidth(120);
    obj.label27:setFontSize(20);
    obj.label27:setHorzTextAlign("center");
    obj.label27:setText("Mestre");
    lfm_setPropAsString(obj.label27, "fontStyle", "bold");
    obj.label27:setName("label27");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.rectangle1);
    obj.label28:setField("Mestre");
    obj.label28:setLeft(250);
    obj.label28:setTop(590);
    obj.label28:setWidth(650);
    obj.label28:setHeight(60);
    obj.label28:setFontSize(18);
    obj.label28:setHorzTextAlign("center");
    obj.label28:setFontColor("black");
    obj.label28:setName("label28");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.rectangle1);
    obj.dataLink15:setField("frmMestre");
    obj.dataLink15:setName("dataLink15");

    obj.rectangle29 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.rectangle1);
    obj.rectangle29:setLeft(60);
    obj.rectangle29:setTop(450);
    obj.rectangle29:setWidth(85);
    obj.rectangle29:setHeight(85);
    obj.rectangle29:setColor("#49244F");
    obj.rectangle29:setXradius(45);
    obj.rectangle29:setYradius(45);
    obj.rectangle29:setCornerType("round");
    obj.rectangle29:setHitTest(true);
    obj.rectangle29:setCursor("handPoint");
    obj.rectangle29:setHint("Teste de Força");
    obj.rectangle29:setName("rectangle29");

    obj.rectangle30 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.rectangle1);
    obj.rectangle30:setLeft(120);
    obj.rectangle30:setTop(440);
    obj.rectangle30:setWidth(45);
    obj.rectangle30:setHeight(45);
    obj.rectangle30:setColor("#D5D5D5");
    obj.rectangle30:setXradius(20);
    obj.rectangle30:setYradius(20);
    obj.rectangle30:setCornerType("round");
    obj.rectangle30:setStrokeColor("#4B4B81");
    obj.rectangle30:setStrokeSize(3);
    obj.rectangle30:setName("rectangle30");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.rectangle1);
    obj.label29:setLeft(78);
    obj.label29:setTop(500);
    obj.label29:setWidth(50);
    obj.label29:setFontSize(12);
    obj.label29:setHorzTextAlign("center");
    obj.label29:setText("FORÇA");
    obj.label29:setName("label29");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.rectangle1);
    obj.label30:setField("Forca");
    obj.label30:setLeft(77);
    obj.label30:setTop(470);
    obj.label30:setWidth(50);
    obj.label30:setFontSize(24);
    obj.label30:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label30, "fontStyle", "bold");
    obj.label30:setName("label30");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.rectangle1);
    obj.label31:setField("modForca");
    obj.label31:setLeft(116);
    obj.label31:setTop(452);
    obj.label31:setWidth(50);
    obj.label31:setHorzTextAlign("center");
    obj.label31:setFontColor("#49244F");
    obj.label31:setFontSize(18);
    obj.label31:setName("label31");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.rectangle1);
    obj.dataLink16:setField("frmForca");
    obj.dataLink16:setName("dataLink16");

    obj.rectangle31 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.rectangle1);
    obj.rectangle31:setLeft(60);
    obj.rectangle31:setTop(540);
    obj.rectangle31:setWidth(85);
    obj.rectangle31:setHeight(85);
    obj.rectangle31:setColor("#49244F");
    obj.rectangle31:setXradius(45);
    obj.rectangle31:setYradius(45);
    obj.rectangle31:setCornerType("round");
    obj.rectangle31:setHitTest(true);
    obj.rectangle31:setCursor("handPoint");
    obj.rectangle31:setHint("Teste de Agilidade");
    obj.rectangle31:setName("rectangle31");

    obj.rectangle32 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle32:setParent(obj.rectangle1);
    obj.rectangle32:setLeft(120);
    obj.rectangle32:setTop(530);
    obj.rectangle32:setWidth(45);
    obj.rectangle32:setHeight(45);
    obj.rectangle32:setColor("#D5D5D5");
    obj.rectangle32:setXradius(20);
    obj.rectangle32:setYradius(20);
    obj.rectangle32:setCornerType("round");
    obj.rectangle32:setStrokeColor("#4B4B81");
    obj.rectangle32:setStrokeSize(3);
    obj.rectangle32:setName("rectangle32");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.rectangle1);
    obj.label32:setLeft(74);
    obj.label32:setTop(590);
    obj.label32:setWidth(59);
    obj.label32:setFontSize(12);
    obj.label32:setHorzTextAlign("center");
    obj.label32:setText("AGILIDADE");
    obj.label32:setName("label32");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.rectangle1);
    obj.label33:setField("Agilidade");
    obj.label33:setLeft(77);
    obj.label33:setTop(560);
    obj.label33:setWidth(50);
    obj.label33:setFontSize(24);
    obj.label33:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label33, "fontStyle", "bold");
    obj.label33:setName("label33");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.rectangle1);
    obj.label34:setField("modAgilidade");
    obj.label34:setLeft(116);
    obj.label34:setTop(542);
    obj.label34:setWidth(50);
    obj.label34:setHorzTextAlign("center");
    obj.label34:setFontColor("#49244F");
    obj.label34:setFontSize(18);
    obj.label34:setName("label34");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.rectangle1);
    obj.dataLink17:setField("frmAgilidade");
    obj.dataLink17:setName("dataLink17");

    obj.rectangle33 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle33:setParent(obj.rectangle1);
    obj.rectangle33:setLeft(60);
    obj.rectangle33:setTop(630);
    obj.rectangle33:setWidth(85);
    obj.rectangle33:setHeight(85);
    obj.rectangle33:setColor("#49244F");
    obj.rectangle33:setXradius(45);
    obj.rectangle33:setYradius(45);
    obj.rectangle33:setCornerType("round");
    obj.rectangle33:setHitTest(true);
    obj.rectangle33:setCursor("handPoint");
    obj.rectangle33:setHint("Teste de Intelecto");
    obj.rectangle33:setName("rectangle33");

    obj.rectangle34 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle34:setParent(obj.rectangle1);
    obj.rectangle34:setLeft(120);
    obj.rectangle34:setTop(620);
    obj.rectangle34:setWidth(45);
    obj.rectangle34:setHeight(45);
    obj.rectangle34:setColor("#D5D5D5");
    obj.rectangle34:setXradius(20);
    obj.rectangle34:setYradius(20);
    obj.rectangle34:setCornerType("round");
    obj.rectangle34:setStrokeColor("#4B4B81");
    obj.rectangle34:setStrokeSize(3);
    obj.rectangle34:setName("rectangle34");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.rectangle1);
    obj.label35:setLeft(74);
    obj.label35:setTop(680);
    obj.label35:setWidth(59);
    obj.label35:setFontSize(12);
    obj.label35:setHorzTextAlign("center");
    obj.label35:setText("INTELECTO");
    obj.label35:setName("label35");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.rectangle1);
    obj.label36:setField("Intelecto");
    obj.label36:setLeft(77);
    obj.label36:setTop(650);
    obj.label36:setWidth(50);
    obj.label36:setFontSize(24);
    obj.label36:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label36, "fontStyle", "bold");
    obj.label36:setName("label36");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.rectangle1);
    obj.label37:setField("modIntelecto");
    obj.label37:setLeft(116);
    obj.label37:setTop(632);
    obj.label37:setWidth(50);
    obj.label37:setHorzTextAlign("center");
    obj.label37:setFontColor("#49244F");
    obj.label37:setFontSize(18);
    obj.label37:setName("label37");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.rectangle1);
    obj.dataLink18:setField("frmIntelecto");
    obj.dataLink18:setName("dataLink18");

    obj.rectangle35 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle35:setParent(obj.rectangle1);
    obj.rectangle35:setLeft(60);
    obj.rectangle35:setTop(720);
    obj.rectangle35:setWidth(85);
    obj.rectangle35:setHeight(85);
    obj.rectangle35:setColor("#49244F");
    obj.rectangle35:setXradius(45);
    obj.rectangle35:setYradius(45);
    obj.rectangle35:setCornerType("round");
    obj.rectangle35:setHitTest(true);
    obj.rectangle35:setCursor("handPoint");
    obj.rectangle35:setHint("Teste de Vontade");
    obj.rectangle35:setName("rectangle35");

    obj.rectangle36 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle36:setParent(obj.rectangle1);
    obj.rectangle36:setLeft(120);
    obj.rectangle36:setTop(710);
    obj.rectangle36:setWidth(45);
    obj.rectangle36:setHeight(45);
    obj.rectangle36:setColor("#D5D5D5");
    obj.rectangle36:setXradius(20);
    obj.rectangle36:setYradius(20);
    obj.rectangle36:setCornerType("round");
    obj.rectangle36:setStrokeColor("#4B4B81");
    obj.rectangle36:setStrokeSize(3);
    obj.rectangle36:setName("rectangle36");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.rectangle1);
    obj.label38:setLeft(72);
    obj.label38:setTop(770);
    obj.label38:setWidth(59);
    obj.label38:setFontSize(12);
    obj.label38:setHorzTextAlign("center");
    obj.label38:setText("VONTADE");
    obj.label38:setName("label38");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.rectangle1);
    obj.label39:setField("Vontade");
    obj.label39:setLeft(77);
    obj.label39:setTop(740);
    obj.label39:setWidth(50);
    obj.label39:setFontSize(24);
    obj.label39:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label39, "fontStyle", "bold");
    obj.label39:setName("label39");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.rectangle1);
    obj.label40:setField("modVontade");
    obj.label40:setLeft(116);
    obj.label40:setTop(722);
    obj.label40:setWidth(50);
    obj.label40:setHorzTextAlign("center");
    obj.label40:setFontColor("#49244F");
    obj.label40:setFontSize(18);
    obj.label40:setName("label40");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.rectangle1);
    obj.dataLink19:setField("frmVontade");
    obj.dataLink19:setName("dataLink19");

    obj.rectangle37 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle37:setParent(obj.rectangle1);
    obj.rectangle37:setLeft(225);
    obj.rectangle37:setTop(470);
    obj.rectangle37:setWidth(135);
    obj.rectangle37:setHeight(1);
    obj.rectangle37:setColor("#49244F");
    obj.rectangle37:setName("rectangle37");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.rectangle1);
    obj.label41:setLeft(130);
    obj.label41:setTop(450);
    obj.label41:setWidth(280);
    obj.label41:setFontSize(20);
    obj.label41:setHorzTextAlign("center");
    obj.label41:setText("Tamanho:");
    obj.label41:setFontColor("#49244F");
    lfm_setPropAsString(obj.label41, "fontStyle", "bold");
    obj.label41:setName("label41");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.rectangle1);
    obj.label42:setLeft(315);
    obj.label42:setTop(450);
    obj.label42:setWidth(40);
    obj.label42:setFontColor("black");
    obj.label42:setField("Tamanho");
    obj.label42:setHorzTextAlign("center");
    obj.label42:setFontSize(18);
    obj.label42:setName("label42");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.rectangle1);
    obj.dataLink20:setField("frmTamanho");
    obj.dataLink20:setName("dataLink20");

    obj.rectangle38 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle38:setParent(obj.rectangle1);
    obj.rectangle38:setLeft(210);
    obj.rectangle38:setTop(510);
    obj.rectangle38:setWidth(150);
    obj.rectangle38:setHeight(1);
    obj.rectangle38:setColor("#49244F");
    obj.rectangle38:setName("rectangle38");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.rectangle1);
    obj.label43:setLeft(122);
    obj.label43:setTop(490);
    obj.label43:setWidth(280);
    obj.label43:setFontSize(20);
    obj.label43:setHorzTextAlign("center");
    obj.label43:setText("Velocidade:");
    obj.label43:setFontColor("#49244F");
    lfm_setPropAsString(obj.label43, "fontStyle", "bold");
    obj.label43:setName("label43");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.rectangle1);
    obj.label44:setLeft(315);
    obj.label44:setTop(490);
    obj.label44:setWidth(40);
    obj.label44:setFontColor("black");
    obj.label44:setField("Velocidade");
    obj.label44:setHorzTextAlign("center");
    obj.label44:setFontSize(18);
    obj.label44:setName("label44");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.rectangle1);
    obj.dataLink21:setField("frmVelocidade");
    obj.dataLink21:setName("dataLink21");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.rectangle1);
    obj.label45:setLeft(145);
    obj.label45:setTop(535);
    obj.label45:setWidth(280);
    obj.label45:setFontSize(20);
    obj.label45:setHorzTextAlign("center");
    obj.label45:setText("Defesas");
    lfm_setPropAsString(obj.label45, "fontStyle", "bold");
    obj.label45:setName("label45");

    obj.rectangle39 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle39:setParent(obj.rectangle1);
    obj.rectangle39:setLeft(210);
    obj.rectangle39:setTop(560);
    obj.rectangle39:setWidth(150);
    obj.rectangle39:setHeight(1);
    obj.rectangle39:setColor("#D5D5D5");
    obj.rectangle39:setName("rectangle39");

    obj.rectangle40 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle40:setParent(obj.rectangle1);
    obj.rectangle40:setLeft(210);
    obj.rectangle40:setTop(580);
    obj.rectangle40:setWidth(50);
    obj.rectangle40:setHeight(1);
    obj.rectangle40:setColor("#D5D5D5");
    obj.rectangle40:setName("rectangle40");

    obj.rectangle41 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle41:setParent(obj.rectangle1);
    obj.rectangle41:setLeft(310);
    obj.rectangle41:setTop(580);
    obj.rectangle41:setWidth(50);
    obj.rectangle41:setHeight(1);
    obj.rectangle41:setColor("#D5D5D5");
    obj.rectangle41:setName("rectangle41");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.rectangle1);
    obj.label46:setField("Defesa");
    obj.label46:setLeft(259);
    obj.label46:setTop(570);
    obj.label46:setWidth(50);
    obj.label46:setFontSize(18);
    obj.label46:setHorzTextAlign("center");
    obj.label46:setName("label46");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.rectangle1);
    obj.dataLink22:setField("frmDefesa");
    obj.dataLink22:setName("dataLink22");

    obj.rectangle42 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle42:setParent(obj.rectangle1);
    obj.rectangle42:setLeft(258);
    obj.rectangle42:setTop(592);
    obj.rectangle42:setWidth(55);
    obj.rectangle42:setHeight(55);
    obj.rectangle42:setColor("#D5D5D5");
    obj.rectangle42:setXradius(27);
    obj.rectangle42:setYradius(27);
    obj.rectangle42:setCornerType("round");
    obj.rectangle42:setStrokeColor("#49244F");
    obj.rectangle42:setStrokeSize(3);
    obj.rectangle42:setName("rectangle42");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.rectangle1);
    obj.label47:setField("DefesaBlindada");
    obj.label47:setLeft(260);
    obj.label47:setTop(610);
    obj.label47:setWidth(50);
    obj.label47:setFontSize(26);
    obj.label47:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label47, "fontStyle", "bold");
    obj.label47:setFontColor("#49244F");
    obj.label47:setName("label47");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.rectangle1);
    obj.dataLink23:setField("frmDefesaBlin");
    obj.dataLink23:setName("dataLink23");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.rectangle1);
    obj.image5:setLeft(210);
    obj.image5:setTop(621);
    obj.image5:setWidth(133);
    obj.image5:setHeight(200);
    obj.image5:setSRC("/img/sorte.png");
    obj.image5:setHitTest(true);
    obj.image5:setCursor("handPoint");
    obj.image5:setHint("Teste de Sorte");
    obj.image5:setName("image5");

    obj.rectangle43 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle43:setParent(obj.rectangle1);
    obj.rectangle43:setLeft(370);
    obj.rectangle43:setTop(635);
    obj.rectangle43:setWidth(425);
    obj.rectangle43:setHeight(135);
    obj.rectangle43:setColor("#49244F");
    obj.rectangle43:setName("rectangle43");

    obj.rectangle44 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle44:setParent(obj.rectangle1);
    obj.rectangle44:setLeft(370);
    obj.rectangle44:setTop(702);
    obj.rectangle44:setWidth(425);
    obj.rectangle44:setHeight(1);
    obj.rectangle44:setColor("#D5D5D5");
    obj.rectangle44:setName("rectangle44");

    obj.rectangle45 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle45:setParent(obj.rectangle1);
    obj.rectangle45:setLeft(390);
    obj.rectangle45:setTop(655);
    obj.rectangle45:setWidth(95);
    obj.rectangle45:setHeight(95);
    obj.rectangle45:setColor("#D5D5D5");
    obj.rectangle45:setXradius(20);
    obj.rectangle45:setYradius(25);
    obj.rectangle45:setCornerType("innerRound");
    obj.rectangle45:setName("rectangle45");

    obj.rectangle46 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle46:setParent(obj.rectangle1);
    obj.rectangle46:setLeft(685);
    obj.rectangle46:setTop(655);
    obj.rectangle46:setWidth(95);
    obj.rectangle46:setHeight(95);
    obj.rectangle46:setColor("#D5D5D5");
    obj.rectangle46:setXradius(20);
    obj.rectangle46:setYradius(25);
    obj.rectangle46:setCornerType("innerRound");
    obj.rectangle46:setName("rectangle46");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.rectangle1);
    obj.label48:setLeft(518);
    obj.label48:setTop(660);
    obj.label48:setWidth(120);
    obj.label48:setFontSize(20);
    obj.label48:setHorzTextAlign("center");
    obj.label48:setText("VIDA");
    lfm_setPropAsString(obj.label48, "fontStyle", "bold");
    obj.label48:setName("label48");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.rectangle1);
    obj.label49:setLeft(672);
    obj.label49:setTop(692);
    obj.label49:setWidth(120);
    obj.label49:setFontSize(25);
    obj.label49:setHorzTextAlign("center");
    obj.label49:setText("VIDA");
    lfm_setPropAsString(obj.label49, "fontStyle", "bold");
    obj.label49:setField("Vida");
    obj.label49:setFontColor("#49244F");
    obj.label49:setName("label49");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.rectangle1);
    obj.dataLink24:setField("frmVida");
    obj.dataLink24:setName("dataLink24");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.rectangle1);
    obj.label50:setLeft(673);
    obj.label50:setTop(717);
    obj.label50:setWidth(120);
    obj.label50:setFontSize(12);
    obj.label50:setHorzTextAlign("center");
    obj.label50:setFontColor("#49244F");
    obj.label50:setText("NORMAL");
    obj.label50:setName("label50");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle1);
    obj.edit1:setField("vidaAtual");
    obj.edit1:setLeft(412);
    obj.edit1:setTop(684);
    obj.edit1:setWidth(50);
    obj.edit1:setFontColor("#49244F");
    obj.edit1:setType("number");
    obj.edit1:setFontSize(25);
    lfm_setPropAsString(obj.edit1, "fontStyle", "bold");
    obj.edit1:setTransparent(true);
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setMin(0);
    obj.edit1:setMax(999);
    obj.edit1:setName("edit1");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.rectangle1);
    obj.label51:setLeft(379);
    obj.label51:setTop(717);
    obj.label51:setWidth(120);
    obj.label51:setFontSize(12);
    obj.label51:setHorzTextAlign("center");
    obj.label51:setFontColor("#49244F");
    obj.label51:setText("ATUAL");
    obj.label51:setName("label51");

    obj.progressBar1 = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar1:setParent(obj.rectangle1);
    obj.progressBar1:setWidth(221);
    obj.progressBar1:setColor("red");
    obj.progressBar1:setPosition(50);
    obj.progressBar1:setFieldMax("vidaAtual");
    obj.progressBar1:setMin(0);
    obj.progressBar1:setLeft(475);
    obj.progressBar1:setTop(735);
    obj.progressBar1:setHitTest(true);
    obj.progressBar1:setField("Dano");
    obj.progressBar1:setName("progressBar1");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.rectangle1);
    obj.label52:setLeft(520);
    obj.label52:setTop(709);
    obj.label52:setWidth(120);
    obj.label52:setFontSize(18);
    obj.label52:setHorzTextAlign("center");
    obj.label52:setText("Dano");
    lfm_setPropAsString(obj.label52, "fontStyle", "bold");
    obj.label52:setName("label52");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.rectangle1);
    obj.label53:setLeft(485);
    obj.label53:setTop(734);
    obj.label53:setWidth(10);
    obj.label53:setFontSize(35);
    obj.label53:setHorzTextAlign("center");
    obj.label53:setFontColor("black");
    obj.label53:setText("-");
    lfm_setPropAsString(obj.label53, "fontStyle", "bold");
    obj.label53:setHitTest(true);
    obj.label53:setCursor("handPoint");
    obj.label53:setHint("Reduzir Dano");
    obj.label53:setName("label53");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.rectangle1);
    obj.dataLink25:setField("vidaAtual");
    obj.dataLink25:setName("dataLink25");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.rectangle1);
    obj.label54:setLeft(674);
    obj.label54:setTop(736);
    obj.label54:setWidth(15);
    obj.label54:setFontSize(25);
    obj.label54:setHorzTextAlign("center");
    obj.label54:setFontColor("black");
    obj.label54:setText("+");
    lfm_setPropAsString(obj.label54, "fontStyle", "bold");
    obj.label54:setHitTest(true);
    obj.label54:setCursor("handPoint");
    obj.label54:setHint("Aumentar Dano");
    obj.label54:setName("label54");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.rectangle1);
    obj.label55:setLeft(532);
    obj.label55:setTop(738);
    obj.label55:setWidth(100);
    obj.label55:setFontSize(25);
    obj.label55:setHorzTextAlign("center");
    obj.label55:setFontColor("black");
    lfm_setPropAsString(obj.label55, "fontStyle", "bold");
    obj.label55:setField("valDano");
    obj.label55:setName("label55");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.rectangle1);
    obj.dataLink26:setField("Dano");
    obj.dataLink26:setName("dataLink26");

    obj.rectangle47 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle47:setParent(obj.rectangle1);
    obj.rectangle47:setLeft(370);
    obj.rectangle47:setTop(770);
    obj.rectangle47:setWidth(385);
    obj.rectangle47:setHeight(1);
    obj.rectangle47:setColor("#49244F");
    obj.rectangle47:setName("rectangle47");

    obj.rectangle48 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle48:setParent(obj.rectangle1);
    obj.rectangle48:setLeft(370);
    obj.rectangle48:setTop(775);
    obj.rectangle48:setWidth(385);
    obj.rectangle48:setHeight(1);
    obj.rectangle48:setColor("#49244F");
    obj.rectangle48:setName("rectangle48");

    obj.rectangle49 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle49:setParent(obj.rectangle1);
    obj.rectangle49:setLeft(370);
    obj.rectangle49:setTop(780);
    obj.rectangle49:setWidth(385);
    obj.rectangle49:setHeight(1);
    obj.rectangle49:setColor("#49244F");
    obj.rectangle49:setName("rectangle49");

    obj.rectangle50 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle50:setParent(obj.rectangle1);
    obj.rectangle50:setLeft(370);
    obj.rectangle50:setTop(785);
    obj.rectangle50:setWidth(385);
    obj.rectangle50:setHeight(1);
    obj.rectangle50:setColor("#49244F");
    obj.rectangle50:setName("rectangle50");

    obj.rectangle51 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle51:setParent(obj.rectangle1);
    obj.rectangle51:setLeft(370);
    obj.rectangle51:setTop(790);
    obj.rectangle51:setWidth(385);
    obj.rectangle51:setHeight(1);
    obj.rectangle51:setColor("#49244F");
    obj.rectangle51:setName("rectangle51");

    obj.rectangle52 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle52:setParent(obj.rectangle1);
    obj.rectangle52:setLeft(370);
    obj.rectangle52:setTop(795);
    obj.rectangle52:setWidth(385);
    obj.rectangle52:setHeight(1);
    obj.rectangle52:setColor("#49244F");
    obj.rectangle52:setName("rectangle52");

    obj.rectangle53 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle53:setParent(obj.rectangle1);
    obj.rectangle53:setLeft(370);
    obj.rectangle53:setTop(800);
    obj.rectangle53:setWidth(385);
    obj.rectangle53:setHeight(1);
    obj.rectangle53:setColor("#49244F");
    obj.rectangle53:setName("rectangle53");

    obj.rectangle54 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle54:setParent(obj.rectangle1);
    obj.rectangle54:setLeft(370);
    obj.rectangle54:setTop(805);
    obj.rectangle54:setWidth(385);
    obj.rectangle54:setHeight(1);
    obj.rectangle54:setColor("#49244F");
    obj.rectangle54:setName("rectangle54");

    obj.rectangle55 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle55:setParent(obj.rectangle1);
    obj.rectangle55:setLeft(370);
    obj.rectangle55:setTop(810);
    obj.rectangle55:setWidth(385);
    obj.rectangle55:setHeight(3);
    obj.rectangle55:setColor("#49244F");
    obj.rectangle55:setName("rectangle55");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.rectangle1);
    obj.image6:setLeft(760);
    obj.image6:setTop(780);
    obj.image6:setWidth(32);
    obj.image6:setHeight(29);
    obj.image6:setSRC("/img/pena.png");
    obj.image6:setHitTest(true);
    obj.image6:setCursor("handPoint");
    obj.image6:setHint("Editar planilha");
    obj.image6:setName("image6");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.tab1);
    obj.image7:setLeft(69);
    obj.image7:setTop(875);
    obj.image7:setWidth(676);
    obj.image7:setHeight(194);
    obj.image7:setSRC("/img/logo.png");
    obj.image7:setName("image7");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Combate");
    obj.tab2:setName("tab2");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.tab2);
    obj.scrollBox2:setLeft(0);
    obj.scrollBox2:setTop(10);
    obj.scrollBox2:setWidth(815);
    obj.scrollBox2:setHeight(725);
    obj.scrollBox2:setName("scrollBox2");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox2);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(10);
    obj.layout2:setWidth(799);
    obj.layout2:setHeight(1840);
    obj.layout2:setName("layout2");

    obj.rectangle56 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle56:setParent(obj.layout2);
    obj.rectangle56:setLeft(0);
    obj.rectangle56:setTop(0);
    obj.rectangle56:setWidth(799);
    obj.rectangle56:setHeight(1840);
    obj.rectangle56:setColor("#D5D5D5");
    obj.rectangle56:setName("rectangle56");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.rectangle56);
    obj.label56:setLeft(310);
    obj.label56:setTop(60);
    obj.label56:setWidth(180);
    obj.label56:setFontSize(24);
    obj.label56:setHorzTextAlign("center");
    obj.label56:setText("COMBATE");
    obj.label56:setFontColor("#49244F");
    lfm_setPropAsString(obj.label56, "fontStyle", "bold");
    obj.label56:setName("label56");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.rectangle56);
    obj.label57:setLeft(555);
    obj.label57:setTop(62);
    obj.label57:setWidth(180);
    obj.label57:setFontSize(20);
    obj.label57:setHorzTextAlign("center");
    obj.label57:setText("Bônus de Dano:");
    obj.label57:setFontColor("#49244F");
    lfm_setPropAsString(obj.label57, "fontStyle", "bold");
    obj.label57:setName("label57");

    obj.rectangle57 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle57:setParent(obj.rectangle56);
    obj.rectangle57:setLeft(719);
    obj.rectangle57:setTop(82);
    obj.rectangle57:setWidth(60);
    obj.rectangle57:setHeight(1);
    obj.rectangle57:setColor("#49244F");
    obj.rectangle57:setName("rectangle57");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.rectangle56);
    obj.edit2:setLeft(719);
    obj.edit2:setTop(55);
    obj.edit2:setWidth(60);
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setField("totalDanoExtra");
    obj.edit2:setTransparent(true);
    obj.edit2:setFontColor("#49244F");
    obj.edit2:setFontSize(18);
    obj.edit2:setName("edit2");

    obj.rectangle58 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle58:setParent(obj.rectangle56);
    obj.rectangle58:setLeft(60);
    obj.rectangle58:setTop(95);
    obj.rectangle58:setWidth(720);
    obj.rectangle58:setHeight(118);
    obj.rectangle58:setColor("#D5D5D5");
    obj.rectangle58:setStrokeColor("#49244F");
    obj.rectangle58:setStrokeSize(3);
    obj.rectangle58:setName("rectangle58");

    obj.rectangle59 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle59:setParent(obj.rectangle56);
    obj.rectangle59:setLeft(60);
    obj.rectangle59:setTop(95);
    obj.rectangle59:setWidth(720);
    obj.rectangle59:setHeight(50);
    obj.rectangle59:setColor("#49244F");
    obj.rectangle59:setName("rectangle59");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.rectangle56);
    obj.comboBox1:setLeft(65);
    obj.comboBox1:setTop(103);
    obj.comboBox1:setWidth(615);
    obj.comboBox1:setFontSize(20);
    obj.comboBox1:setHeight(30);
    obj.comboBox1:setItems({'Arma', 'Talento', 'Magia', 'Feitiço'});
    obj.comboBox1:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.comboBox1, "fontStyle", "bold");
    obj.comboBox1:setTransparent(true);
    obj.comboBox1:setField("escolherAtaque01");
    obj.comboBox1:setValue("Arma");
    obj.comboBox1:setName("comboBox1");

    obj.rectangle60 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle60:setParent(obj.rectangle56);
    obj.rectangle60:setLeft(685);
    obj.rectangle60:setTop(95);
    obj.rectangle60:setWidth(1);
    obj.rectangle60:setHeight(50);
    obj.rectangle60:setColor("#D5D5D5");
    obj.rectangle60:setName("rectangle60");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.rectangle56);
    obj.image8:setLeft(694);
    obj.image8:setTop(103);
    obj.image8:setWidth(27);
    obj.image8:setHeight(33);
    obj.image8:setSRC("/img/d20.png");
    obj.image8:setHitTest(true);
    obj.image8:setCursor("handPoint");
    obj.image8:setHint("Ataque");
    obj.image8:setName("image8");

    obj.rectangle61 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle61:setParent(obj.rectangle56);
    obj.rectangle61:setLeft(730);
    obj.rectangle61:setTop(95);
    obj.rectangle61:setWidth(1);
    obj.rectangle61:setHeight(50);
    obj.rectangle61:setColor("#D5D5D5");
    obj.rectangle61:setName("rectangle61");

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.rectangle56);
    obj.image9:setLeft(741);
    obj.image9:setTop(107);
    obj.image9:setWidth(28);
    obj.image9:setHeight(28);
    obj.image9:setSRC("/img/d6.png");
    obj.image9:setHitTest(true);
    obj.image9:setCursor("handPoint");
    obj.image9:setHint("Dano");
    obj.image9:setName("image9");

    obj.rectangle62 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle62:setParent(obj.rectangle56);
    obj.rectangle62:setLeft(65);
    obj.rectangle62:setTop(176);
    obj.rectangle62:setWidth(712);
    obj.rectangle62:setHeight(1);
    obj.rectangle62:setColor("#49244F");
    obj.rectangle62:setName("rectangle62");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.rectangle56);
    obj.edit3:setLeft(68);
    obj.edit3:setTop(143);
    obj.edit3:setWidth(360);
    obj.edit3:setFontSize(18);
    obj.edit3:setHorzTextAlign("leading");
    obj.edit3:setFontColor("#49244F");
    obj.edit3:setTransparent(true);
    obj.edit3:setField("nomeArma01");
    obj.edit3:setName("edit3");

    obj.rectangle63 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle63:setParent(obj.rectangle56);
    obj.rectangle63:setLeft(445);
    obj.rectangle63:setTop(145);
    obj.rectangle63:setWidth(100);
    obj.rectangle63:setHeight(30);
    obj.rectangle63:setColor("#49244F");
    obj.rectangle63:setName("rectangle63");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.rectangle56);
    obj.comboBox2:setLeft(445);
    obj.comboBox2:setTop(149);
    obj.comboBox2:setItems({'Atributo', 'Força', 'Agilidade', 'Intelecto', 'Vontade'});
    obj.comboBox2:setField("atributoArma01");
    obj.comboBox2:setFontColor("#D5D5D5");
    obj.comboBox2:setTransparent(true);
    obj.comboBox2:setValue("Atributo");
    obj.comboBox2:setName("comboBox2");

    obj.rectangle64 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle64:setParent(obj.rectangle56);
    obj.rectangle64:setLeft(546);
    obj.rectangle64:setTop(145);
    obj.rectangle64:setWidth(115);
    obj.rectangle64:setHeight(30);
    obj.rectangle64:setColor("#49244F");
    obj.rectangle64:setName("rectangle64");

    obj.comboBox3 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.rectangle56);
    obj.comboBox3:setLeft(546);
    obj.comboBox3:setTop(149);
    obj.comboBox3:setItems({'Mãos', 'Mão Principal', 'Duas mãos', 'Mão Inábil', 'Gestos / Palavras', 'Símbolo Sagrado', 'Outro'});
    obj.comboBox3:setField("maosArma01");
    obj.comboBox3:setFontColor("#D5D5D5");
    obj.comboBox3:setTransparent(true);
    obj.comboBox3:setValue("Mãos");
    obj.comboBox3:setWidth(115);
    obj.comboBox3:setName("comboBox3");

    obj.rectangle65 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle65:setParent(obj.rectangle56);
    obj.rectangle65:setLeft(662);
    obj.rectangle65:setTop(145);
    obj.rectangle65:setWidth(118);
    obj.rectangle65:setHeight(30);
    obj.rectangle65:setColor("#49244F");
    obj.rectangle65:setName("rectangle65");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.rectangle56);
    obj.edit4:setLeft(662);
    obj.edit4:setTop(144);
    obj.edit4:setWidth(118);
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setField("dadivaRevesArma01");
    obj.edit4:setTransparent(true);
    obj.edit4:setText("Dádiva / Revés");
    obj.edit4:setName("edit4");

    obj.rectangle66 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle66:setParent(obj.rectangle56);
    obj.rectangle66:setLeft(60);
    obj.rectangle66:setTop(177);
    obj.rectangle66:setWidth(130);
    obj.rectangle66:setHeight(35);
    obj.rectangle66:setColor("#49244F");
    obj.rectangle66:setName("rectangle66");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.rectangle56);
    obj.label58:setLeft(70);
    obj.label58:setTop(184);
    obj.label58:setWidth(280);
    obj.label58:setFontSize(18);
    obj.label58:setText("Propriedades:");
    obj.label58:setFontColor("#D5D5D5");
    obj.label58:setName("label58");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.rectangle56);
    obj.edit5:setLeft(197);
    obj.edit5:setTop(178);
    obj.edit5:setWidth(460);
    obj.edit5:setFontSize(18);
    obj.edit5:setFontColor("#49244F");
    obj.edit5:setTransparent(true);
    obj.edit5:setField("propriedadesArma01");
    obj.edit5:setName("edit5");

    obj.rectangle67 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle67:setParent(obj.rectangle56);
    obj.rectangle67:setLeft(662);
    obj.rectangle67:setTop(178);
    obj.rectangle67:setWidth(118);
    obj.rectangle67:setHeight(30);
    obj.rectangle67:setColor("#49244F");
    obj.rectangle67:setName("rectangle67");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.rectangle56);
    obj.label59:setLeft(680);
    obj.label59:setTop(184);
    obj.label59:setWidth(280);
    obj.label59:setFontSize(18);
    obj.label59:setText("Dano:");
    obj.label59:setFontColor("#D5D5D5");
    obj.label59:setName("label59");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.rectangle56);
    obj.edit6:setLeft(730);
    obj.edit6:setTop(178);
    obj.edit6:setWidth(40);
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setField("danoArma01");
    obj.edit6:setTransparent(true);
    obj.edit6:setName("edit6");

    obj.rectangle68 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle68:setParent(obj.rectangle56);
    obj.rectangle68:setLeft(65);
    obj.rectangle68:setTop(145);
    obj.rectangle68:setWidth(712);
    obj.rectangle68:setHeight(1);
    obj.rectangle68:setColor("#D5D5D5");
    obj.rectangle68:setName("rectangle68");

    obj.rectangle69 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle69:setParent(obj.rectangle56);
    obj.rectangle69:setLeft(60);
    obj.rectangle69:setTop(220);
    obj.rectangle69:setWidth(720);
    obj.rectangle69:setHeight(118);
    obj.rectangle69:setColor("#D5D5D5");
    obj.rectangle69:setStrokeColor("#49244F");
    obj.rectangle69:setStrokeSize(3);
    obj.rectangle69:setName("rectangle69");

    obj.rectangle70 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle70:setParent(obj.rectangle56);
    obj.rectangle70:setLeft(60);
    obj.rectangle70:setTop(220);
    obj.rectangle70:setWidth(720);
    obj.rectangle70:setHeight(50);
    obj.rectangle70:setColor("#49244F");
    obj.rectangle70:setName("rectangle70");

    obj.comboBox4 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox4:setParent(obj.rectangle56);
    obj.comboBox4:setLeft(65);
    obj.comboBox4:setTop(228);
    obj.comboBox4:setWidth(615);
    obj.comboBox4:setFontSize(20);
    obj.comboBox4:setHeight(30);
    obj.comboBox4:setItems({'Arma', 'Talento', 'Magia', 'Feitiço'});
    obj.comboBox4:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.comboBox4, "fontStyle", "bold");
    obj.comboBox4:setTransparent(true);
    obj.comboBox4:setField("escolherAtaque02");
    obj.comboBox4:setValue("Arma");
    obj.comboBox4:setName("comboBox4");

    obj.rectangle71 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle71:setParent(obj.rectangle56);
    obj.rectangle71:setLeft(685);
    obj.rectangle71:setTop(220);
    obj.rectangle71:setWidth(1);
    obj.rectangle71:setHeight(50);
    obj.rectangle71:setColor("#D5D5D5");
    obj.rectangle71:setName("rectangle71");

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.rectangle56);
    obj.image10:setLeft(694);
    obj.image10:setTop(228);
    obj.image10:setWidth(27);
    obj.image10:setHeight(33);
    obj.image10:setSRC("/img/d20.png");
    obj.image10:setHitTest(true);
    obj.image10:setCursor("handPoint");
    obj.image10:setHint("Ataque");
    obj.image10:setName("image10");

    obj.rectangle72 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle72:setParent(obj.rectangle56);
    obj.rectangle72:setLeft(730);
    obj.rectangle72:setTop(220);
    obj.rectangle72:setWidth(1);
    obj.rectangle72:setHeight(50);
    obj.rectangle72:setColor("#D5D5D5");
    obj.rectangle72:setName("rectangle72");

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.rectangle56);
    obj.image11:setLeft(741);
    obj.image11:setTop(232);
    obj.image11:setWidth(28);
    obj.image11:setHeight(28);
    obj.image11:setSRC("/img/d6.png");
    obj.image11:setHitTest(true);
    obj.image11:setCursor("handPoint");
    obj.image11:setHint("Dano");
    obj.image11:setName("image11");

    obj.rectangle73 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle73:setParent(obj.rectangle56);
    obj.rectangle73:setLeft(65);
    obj.rectangle73:setTop(301);
    obj.rectangle73:setWidth(712);
    obj.rectangle73:setHeight(1);
    obj.rectangle73:setColor("#49244F");
    obj.rectangle73:setName("rectangle73");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.rectangle56);
    obj.edit7:setLeft(68);
    obj.edit7:setTop(268);
    obj.edit7:setWidth(360);
    obj.edit7:setFontSize(18);
    obj.edit7:setHorzTextAlign("leading");
    obj.edit7:setFontColor("#49244F");
    obj.edit7:setTransparent(true);
    obj.edit7:setField("nomeArma02");
    obj.edit7:setName("edit7");

    obj.rectangle74 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle74:setParent(obj.rectangle56);
    obj.rectangle74:setLeft(445);
    obj.rectangle74:setTop(270);
    obj.rectangle74:setWidth(100);
    obj.rectangle74:setHeight(30);
    obj.rectangle74:setColor("#49244F");
    obj.rectangle74:setName("rectangle74");

    obj.comboBox5 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox5:setParent(obj.rectangle56);
    obj.comboBox5:setLeft(445);
    obj.comboBox5:setTop(274);
    obj.comboBox5:setItems({'Atributo', 'Força', 'Agilidade', 'Intelecto', 'Vontade'});
    obj.comboBox5:setField("atributoArma02");
    obj.comboBox5:setFontColor("#D5D5D5");
    obj.comboBox5:setTransparent(true);
    obj.comboBox5:setValue("Atributo");
    obj.comboBox5:setName("comboBox5");

    obj.rectangle75 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle75:setParent(obj.rectangle56);
    obj.rectangle75:setLeft(546);
    obj.rectangle75:setTop(270);
    obj.rectangle75:setWidth(115);
    obj.rectangle75:setHeight(30);
    obj.rectangle75:setColor("#49244F");
    obj.rectangle75:setName("rectangle75");

    obj.comboBox6 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox6:setParent(obj.rectangle56);
    obj.comboBox6:setLeft(546);
    obj.comboBox6:setTop(274);
    obj.comboBox6:setItems({'Mãos', 'Mão Principal', 'Duas mãos', 'Mão Inábil', 'Gestos / Palavras', 'Símbolo Sagrado', 'Outro'});
    obj.comboBox6:setField("maosArma02");
    obj.comboBox6:setFontColor("#D5D5D5");
    obj.comboBox6:setTransparent(true);
    obj.comboBox6:setValue("Mãos");
    obj.comboBox6:setWidth(115);
    obj.comboBox6:setName("comboBox6");

    obj.rectangle76 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle76:setParent(obj.rectangle56);
    obj.rectangle76:setLeft(662);
    obj.rectangle76:setTop(270);
    obj.rectangle76:setWidth(118);
    obj.rectangle76:setHeight(30);
    obj.rectangle76:setColor("#49244F");
    obj.rectangle76:setName("rectangle76");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.rectangle56);
    obj.edit8:setLeft(662);
    obj.edit8:setTop(269);
    obj.edit8:setWidth(118);
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setField("dadivaRevesArma02");
    obj.edit8:setTransparent(true);
    obj.edit8:setText("Dádiva / Revés");
    obj.edit8:setName("edit8");

    obj.rectangle77 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle77:setParent(obj.rectangle56);
    obj.rectangle77:setLeft(60);
    obj.rectangle77:setTop(302);
    obj.rectangle77:setWidth(130);
    obj.rectangle77:setHeight(35);
    obj.rectangle77:setColor("#49244F");
    obj.rectangle77:setName("rectangle77");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.rectangle56);
    obj.label60:setLeft(70);
    obj.label60:setTop(309);
    obj.label60:setWidth(280);
    obj.label60:setFontSize(18);
    obj.label60:setText("Propriedades:");
    obj.label60:setFontColor("#D5D5D5");
    obj.label60:setName("label60");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.rectangle56);
    obj.edit9:setLeft(197);
    obj.edit9:setTop(303);
    obj.edit9:setWidth(460);
    obj.edit9:setFontSize(18);
    obj.edit9:setFontColor("#49244F");
    obj.edit9:setTransparent(true);
    obj.edit9:setField("propriedadesArma02");
    obj.edit9:setName("edit9");

    obj.rectangle78 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle78:setParent(obj.rectangle56);
    obj.rectangle78:setLeft(662);
    obj.rectangle78:setTop(303);
    obj.rectangle78:setWidth(118);
    obj.rectangle78:setHeight(30);
    obj.rectangle78:setColor("#49244F");
    obj.rectangle78:setName("rectangle78");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.rectangle56);
    obj.label61:setLeft(680);
    obj.label61:setTop(309);
    obj.label61:setWidth(280);
    obj.label61:setFontSize(18);
    obj.label61:setText("Dano:");
    obj.label61:setFontColor("#D5D5D5");
    obj.label61:setName("label61");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.rectangle56);
    obj.edit10:setLeft(730);
    obj.edit10:setTop(303);
    obj.edit10:setWidth(40);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setField("danoArma02");
    obj.edit10:setTransparent(true);
    obj.edit10:setName("edit10");

    obj.rectangle79 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle79:setParent(obj.rectangle56);
    obj.rectangle79:setLeft(65);
    obj.rectangle79:setTop(270);
    obj.rectangle79:setWidth(712);
    obj.rectangle79:setHeight(1);
    obj.rectangle79:setColor("#D5D5D5");
    obj.rectangle79:setName("rectangle79");

    obj.rectangle80 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle80:setParent(obj.rectangle56);
    obj.rectangle80:setLeft(60);
    obj.rectangle80:setTop(345);
    obj.rectangle80:setWidth(720);
    obj.rectangle80:setHeight(118);
    obj.rectangle80:setColor("#D5D5D5");
    obj.rectangle80:setStrokeColor("#49244F");
    obj.rectangle80:setStrokeSize(3);
    obj.rectangle80:setName("rectangle80");

    obj.rectangle81 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle81:setParent(obj.rectangle56);
    obj.rectangle81:setLeft(60);
    obj.rectangle81:setTop(345);
    obj.rectangle81:setWidth(720);
    obj.rectangle81:setHeight(50);
    obj.rectangle81:setColor("#49244F");
    obj.rectangle81:setName("rectangle81");

    obj.comboBox7 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox7:setParent(obj.rectangle56);
    obj.comboBox7:setLeft(65);
    obj.comboBox7:setTop(353);
    obj.comboBox7:setWidth(615);
    obj.comboBox7:setFontSize(20);
    obj.comboBox7:setHeight(30);
    obj.comboBox7:setItems({'Arma', 'Talento', 'Magia', 'Feitiço'});
    obj.comboBox7:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.comboBox7, "fontStyle", "bold");
    obj.comboBox7:setTransparent(true);
    obj.comboBox7:setField("escolherAtaque03");
    obj.comboBox7:setValue("Arma");
    obj.comboBox7:setName("comboBox7");

    obj.rectangle82 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle82:setParent(obj.rectangle56);
    obj.rectangle82:setLeft(685);
    obj.rectangle82:setTop(345);
    obj.rectangle82:setWidth(1);
    obj.rectangle82:setHeight(50);
    obj.rectangle82:setColor("#D5D5D5");
    obj.rectangle82:setName("rectangle82");

    obj.image12 = GUI.fromHandle(_obj_newObject("image"));
    obj.image12:setParent(obj.rectangle56);
    obj.image12:setLeft(694);
    obj.image12:setTop(353);
    obj.image12:setWidth(27);
    obj.image12:setHeight(33);
    obj.image12:setSRC("/img/d20.png");
    obj.image12:setHitTest(true);
    obj.image12:setCursor("handPoint");
    obj.image12:setHint("Ataque");
    obj.image12:setName("image12");

    obj.rectangle83 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle83:setParent(obj.rectangle56);
    obj.rectangle83:setLeft(730);
    obj.rectangle83:setTop(345);
    obj.rectangle83:setWidth(1);
    obj.rectangle83:setHeight(50);
    obj.rectangle83:setColor("#D5D5D5");
    obj.rectangle83:setName("rectangle83");

    obj.image13 = GUI.fromHandle(_obj_newObject("image"));
    obj.image13:setParent(obj.rectangle56);
    obj.image13:setLeft(741);
    obj.image13:setTop(357);
    obj.image13:setWidth(28);
    obj.image13:setHeight(28);
    obj.image13:setSRC("/img/d6.png");
    obj.image13:setHitTest(true);
    obj.image13:setCursor("handPoint");
    obj.image13:setHint("Dano");
    obj.image13:setName("image13");

    obj.rectangle84 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle84:setParent(obj.rectangle56);
    obj.rectangle84:setLeft(65);
    obj.rectangle84:setTop(428);
    obj.rectangle84:setWidth(712);
    obj.rectangle84:setHeight(1);
    obj.rectangle84:setColor("#49244F");
    obj.rectangle84:setName("rectangle84");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.rectangle56);
    obj.edit11:setLeft(68);
    obj.edit11:setTop(393);
    obj.edit11:setWidth(360);
    obj.edit11:setFontSize(18);
    obj.edit11:setHorzTextAlign("leading");
    obj.edit11:setFontColor("#49244F");
    obj.edit11:setTransparent(true);
    obj.edit11:setField("nomeArma03");
    obj.edit11:setName("edit11");

    obj.rectangle85 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle85:setParent(obj.rectangle56);
    obj.rectangle85:setLeft(445);
    obj.rectangle85:setTop(396);
    obj.rectangle85:setWidth(100);
    obj.rectangle85:setHeight(30);
    obj.rectangle85:setColor("#49244F");
    obj.rectangle85:setName("rectangle85");

    obj.comboBox8 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox8:setParent(obj.rectangle56);
    obj.comboBox8:setLeft(445);
    obj.comboBox8:setTop(399);
    obj.comboBox8:setItems({'Atributo', 'Força', 'Agilidade', 'Intelecto', 'Vontade'});
    obj.comboBox8:setField("atributoArma03");
    obj.comboBox8:setFontColor("#D5D5D5");
    obj.comboBox8:setTransparent(true);
    obj.comboBox8:setValue("Atributo");
    obj.comboBox8:setName("comboBox8");

    obj.rectangle86 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle86:setParent(obj.rectangle56);
    obj.rectangle86:setLeft(546);
    obj.rectangle86:setTop(396);
    obj.rectangle86:setWidth(115);
    obj.rectangle86:setHeight(30);
    obj.rectangle86:setColor("#49244F");
    obj.rectangle86:setName("rectangle86");

    obj.comboBox9 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox9:setParent(obj.rectangle56);
    obj.comboBox9:setLeft(546);
    obj.comboBox9:setTop(399);
    obj.comboBox9:setItems({'Mãos', 'Mão Principal', 'Duas mãos', 'Mão Inábil', 'Gestos / Palavras', 'Símbolo Sagrado', 'Outro'});
    obj.comboBox9:setField("maosArma03");
    obj.comboBox9:setFontColor("#D5D5D5");
    obj.comboBox9:setTransparent(true);
    obj.comboBox9:setValue("Mãos");
    obj.comboBox9:setWidth(115);
    obj.comboBox9:setName("comboBox9");

    obj.rectangle87 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle87:setParent(obj.rectangle56);
    obj.rectangle87:setLeft(662);
    obj.rectangle87:setTop(396);
    obj.rectangle87:setWidth(118);
    obj.rectangle87:setHeight(30);
    obj.rectangle87:setColor("#49244F");
    obj.rectangle87:setName("rectangle87");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.rectangle56);
    obj.edit12:setLeft(662);
    obj.edit12:setTop(395);
    obj.edit12:setWidth(118);
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setField("dadivaRevesArma03");
    obj.edit12:setTransparent(true);
    obj.edit12:setText("Dádiva / Revés");
    obj.edit12:setName("edit12");

    obj.rectangle88 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle88:setParent(obj.rectangle56);
    obj.rectangle88:setLeft(60);
    obj.rectangle88:setTop(427);
    obj.rectangle88:setWidth(130);
    obj.rectangle88:setHeight(35);
    obj.rectangle88:setColor("#49244F");
    obj.rectangle88:setName("rectangle88");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.rectangle56);
    obj.label62:setLeft(70);
    obj.label62:setTop(434);
    obj.label62:setWidth(280);
    obj.label62:setFontSize(18);
    obj.label62:setText("Propriedades:");
    obj.label62:setFontColor("#D5D5D5");
    obj.label62:setName("label62");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.rectangle56);
    obj.edit13:setLeft(197);
    obj.edit13:setTop(428);
    obj.edit13:setWidth(460);
    obj.edit13:setFontSize(18);
    obj.edit13:setFontColor("#49244F");
    obj.edit13:setTransparent(true);
    obj.edit13:setField("propriedadesArma03");
    obj.edit13:setName("edit13");

    obj.rectangle89 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle89:setParent(obj.rectangle56);
    obj.rectangle89:setLeft(662);
    obj.rectangle89:setTop(429);
    obj.rectangle89:setWidth(118);
    obj.rectangle89:setHeight(30);
    obj.rectangle89:setColor("#49244F");
    obj.rectangle89:setName("rectangle89");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.rectangle56);
    obj.label63:setLeft(680);
    obj.label63:setTop(435);
    obj.label63:setWidth(280);
    obj.label63:setFontSize(18);
    obj.label63:setText("Dano:");
    obj.label63:setFontColor("#D5D5D5");
    obj.label63:setName("label63");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.rectangle56);
    obj.edit14:setLeft(730);
    obj.edit14:setTop(429);
    obj.edit14:setWidth(40);
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setField("danoArma03");
    obj.edit14:setTransparent(true);
    obj.edit14:setName("edit14");

    obj.rectangle90 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle90:setParent(obj.rectangle56);
    obj.rectangle90:setLeft(60);
    obj.rectangle90:setTop(470);
    obj.rectangle90:setWidth(720);
    obj.rectangle90:setHeight(118);
    obj.rectangle90:setColor("#D5D5D5");
    obj.rectangle90:setStrokeColor("#49244F");
    obj.rectangle90:setStrokeSize(3);
    obj.rectangle90:setName("rectangle90");

    obj.rectangle91 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle91:setParent(obj.rectangle56);
    obj.rectangle91:setLeft(60);
    obj.rectangle91:setTop(470);
    obj.rectangle91:setWidth(720);
    obj.rectangle91:setHeight(50);
    obj.rectangle91:setColor("#49244F");
    obj.rectangle91:setName("rectangle91");

    obj.comboBox10 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox10:setParent(obj.rectangle56);
    obj.comboBox10:setLeft(65);
    obj.comboBox10:setTop(478);
    obj.comboBox10:setWidth(615);
    obj.comboBox10:setFontSize(20);
    obj.comboBox10:setHeight(30);
    obj.comboBox10:setItems({'Arma', 'Talento', 'Magia', 'Feitiço'});
    obj.comboBox10:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.comboBox10, "fontStyle", "bold");
    obj.comboBox10:setTransparent(true);
    obj.comboBox10:setField("escolherAtaque04");
    obj.comboBox10:setValue("Arma");
    obj.comboBox10:setName("comboBox10");

    obj.rectangle92 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle92:setParent(obj.rectangle56);
    obj.rectangle92:setLeft(685);
    obj.rectangle92:setTop(470);
    obj.rectangle92:setWidth(1);
    obj.rectangle92:setHeight(50);
    obj.rectangle92:setColor("#D5D5D5");
    obj.rectangle92:setName("rectangle92");

    obj.image14 = GUI.fromHandle(_obj_newObject("image"));
    obj.image14:setParent(obj.rectangle56);
    obj.image14:setLeft(694);
    obj.image14:setTop(478);
    obj.image14:setWidth(27);
    obj.image14:setHeight(33);
    obj.image14:setSRC("/img/d20.png");
    obj.image14:setHitTest(true);
    obj.image14:setCursor("handPoint");
    obj.image14:setHint("Ataque");
    obj.image14:setName("image14");

    obj.rectangle93 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle93:setParent(obj.rectangle56);
    obj.rectangle93:setLeft(730);
    obj.rectangle93:setTop(470);
    obj.rectangle93:setWidth(1);
    obj.rectangle93:setHeight(50);
    obj.rectangle93:setColor("#D5D5D5");
    obj.rectangle93:setName("rectangle93");

    obj.image15 = GUI.fromHandle(_obj_newObject("image"));
    obj.image15:setParent(obj.rectangle56);
    obj.image15:setLeft(741);
    obj.image15:setTop(482);
    obj.image15:setWidth(28);
    obj.image15:setHeight(28);
    obj.image15:setSRC("/img/d6.png");
    obj.image15:setHitTest(true);
    obj.image15:setCursor("handPoint");
    obj.image15:setHint("Dano");
    obj.image15:setName("image15");

    obj.rectangle94 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle94:setParent(obj.rectangle56);
    obj.rectangle94:setLeft(65);
    obj.rectangle94:setTop(552);
    obj.rectangle94:setWidth(712);
    obj.rectangle94:setHeight(1);
    obj.rectangle94:setColor("#49244F");
    obj.rectangle94:setName("rectangle94");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.rectangle56);
    obj.edit15:setLeft(68);
    obj.edit15:setTop(518);
    obj.edit15:setWidth(360);
    obj.edit15:setFontSize(18);
    obj.edit15:setHorzTextAlign("leading");
    obj.edit15:setFontColor("#49244F");
    obj.edit15:setTransparent(true);
    obj.edit15:setField("nomeArma04");
    obj.edit15:setName("edit15");

    obj.rectangle95 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle95:setParent(obj.rectangle56);
    obj.rectangle95:setLeft(445);
    obj.rectangle95:setTop(521);
    obj.rectangle95:setWidth(100);
    obj.rectangle95:setHeight(30);
    obj.rectangle95:setColor("#49244F");
    obj.rectangle95:setName("rectangle95");

    obj.comboBox11 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox11:setParent(obj.rectangle56);
    obj.comboBox11:setLeft(445);
    obj.comboBox11:setTop(524);
    obj.comboBox11:setItems({'Atributo', 'Força', 'Agilidade', 'Intelecto', 'Vontade'});
    obj.comboBox11:setField("atributoArma04");
    obj.comboBox11:setFontColor("#D5D5D5");
    obj.comboBox11:setTransparent(true);
    obj.comboBox11:setValue("Atributo");
    obj.comboBox11:setName("comboBox11");

    obj.rectangle96 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle96:setParent(obj.rectangle56);
    obj.rectangle96:setLeft(546);
    obj.rectangle96:setTop(521);
    obj.rectangle96:setWidth(115);
    obj.rectangle96:setHeight(30);
    obj.rectangle96:setColor("#49244F");
    obj.rectangle96:setName("rectangle96");

    obj.comboBox12 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox12:setParent(obj.rectangle56);
    obj.comboBox12:setLeft(546);
    obj.comboBox12:setTop(524);
    obj.comboBox12:setItems({'Mãos', 'Mão Principal', 'Duas mãos', 'Mão Inábil', 'Gestos / Palavras', 'Símbolo Sagrado', 'Outro'});
    obj.comboBox12:setField("maosArma04");
    obj.comboBox12:setFontColor("#D5D5D5");
    obj.comboBox12:setTransparent(true);
    obj.comboBox12:setValue("Mãos");
    obj.comboBox12:setWidth(115);
    obj.comboBox12:setName("comboBox12");

    obj.rectangle97 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle97:setParent(obj.rectangle56);
    obj.rectangle97:setLeft(662);
    obj.rectangle97:setTop(521);
    obj.rectangle97:setWidth(118);
    obj.rectangle97:setHeight(30);
    obj.rectangle97:setColor("#49244F");
    obj.rectangle97:setName("rectangle97");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.rectangle56);
    obj.edit16:setLeft(662);
    obj.edit16:setTop(520);
    obj.edit16:setWidth(118);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setField("dadivaRevesArma04");
    obj.edit16:setTransparent(true);
    obj.edit16:setText("Dádiva / Revés");
    obj.edit16:setName("edit16");

    obj.rectangle98 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle98:setParent(obj.rectangle56);
    obj.rectangle98:setLeft(60);
    obj.rectangle98:setTop(552);
    obj.rectangle98:setWidth(130);
    obj.rectangle98:setHeight(35);
    obj.rectangle98:setColor("#49244F");
    obj.rectangle98:setName("rectangle98");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.rectangle56);
    obj.label64:setLeft(70);
    obj.label64:setTop(559);
    obj.label64:setWidth(280);
    obj.label64:setFontSize(18);
    obj.label64:setText("Propriedades:");
    obj.label64:setFontColor("#D5D5D5");
    obj.label64:setName("label64");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.rectangle56);
    obj.edit17:setLeft(197);
    obj.edit17:setTop(553);
    obj.edit17:setWidth(460);
    obj.edit17:setFontSize(18);
    obj.edit17:setFontColor("#49244F");
    obj.edit17:setTransparent(true);
    obj.edit17:setField("propriedadesArma04");
    obj.edit17:setName("edit17");

    obj.rectangle99 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle99:setParent(obj.rectangle56);
    obj.rectangle99:setLeft(662);
    obj.rectangle99:setTop(554);
    obj.rectangle99:setWidth(118);
    obj.rectangle99:setHeight(30);
    obj.rectangle99:setColor("#49244F");
    obj.rectangle99:setName("rectangle99");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.rectangle56);
    obj.label65:setLeft(680);
    obj.label65:setTop(560);
    obj.label65:setWidth(280);
    obj.label65:setFontSize(18);
    obj.label65:setText("Dano:");
    obj.label65:setFontColor("#D5D5D5");
    obj.label65:setName("label65");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.rectangle56);
    obj.edit18:setLeft(730);
    obj.edit18:setTop(554);
    obj.edit18:setWidth(40);
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setField("danoArma04");
    obj.edit18:setTransparent(true);
    obj.edit18:setName("edit18");

    obj.rectangle100 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle100:setParent(obj.rectangle56);
    obj.rectangle100:setLeft(60);
    obj.rectangle100:setTop(595);
    obj.rectangle100:setWidth(720);
    obj.rectangle100:setHeight(118);
    obj.rectangle100:setColor("#D5D5D5");
    obj.rectangle100:setStrokeColor("#49244F");
    obj.rectangle100:setStrokeSize(3);
    obj.rectangle100:setName("rectangle100");

    obj.rectangle101 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle101:setParent(obj.rectangle56);
    obj.rectangle101:setLeft(60);
    obj.rectangle101:setTop(595);
    obj.rectangle101:setWidth(720);
    obj.rectangle101:setHeight(50);
    obj.rectangle101:setColor("#49244F");
    obj.rectangle101:setName("rectangle101");

    obj.comboBox13 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox13:setParent(obj.rectangle56);
    obj.comboBox13:setLeft(65);
    obj.comboBox13:setTop(603);
    obj.comboBox13:setWidth(615);
    obj.comboBox13:setFontSize(20);
    obj.comboBox13:setHeight(30);
    obj.comboBox13:setItems({'Arma', 'Talento', 'Magia', 'Feitiço'});
    obj.comboBox13:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.comboBox13, "fontStyle", "bold");
    obj.comboBox13:setTransparent(true);
    obj.comboBox13:setField("escolherAtaque05");
    obj.comboBox13:setValue("Arma");
    obj.comboBox13:setName("comboBox13");

    obj.rectangle102 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle102:setParent(obj.rectangle56);
    obj.rectangle102:setLeft(685);
    obj.rectangle102:setTop(595);
    obj.rectangle102:setWidth(1);
    obj.rectangle102:setHeight(50);
    obj.rectangle102:setColor("#D5D5D5");
    obj.rectangle102:setName("rectangle102");

    obj.image16 = GUI.fromHandle(_obj_newObject("image"));
    obj.image16:setParent(obj.rectangle56);
    obj.image16:setLeft(694);
    obj.image16:setTop(603);
    obj.image16:setWidth(27);
    obj.image16:setHeight(33);
    obj.image16:setSRC("/img/d20.png");
    obj.image16:setHitTest(true);
    obj.image16:setCursor("handPoint");
    obj.image16:setHint("Ataque");
    obj.image16:setName("image16");

    obj.rectangle103 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle103:setParent(obj.rectangle56);
    obj.rectangle103:setLeft(730);
    obj.rectangle103:setTop(595);
    obj.rectangle103:setWidth(1);
    obj.rectangle103:setHeight(50);
    obj.rectangle103:setColor("#D5D5D5");
    obj.rectangle103:setName("rectangle103");

    obj.image17 = GUI.fromHandle(_obj_newObject("image"));
    obj.image17:setParent(obj.rectangle56);
    obj.image17:setLeft(741);
    obj.image17:setTop(607);
    obj.image17:setWidth(28);
    obj.image17:setHeight(28);
    obj.image17:setSRC("/img/d6.png");
    obj.image17:setHitTest(true);
    obj.image17:setCursor("handPoint");
    obj.image17:setHint("Dano");
    obj.image17:setName("image17");

    obj.rectangle104 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle104:setParent(obj.rectangle56);
    obj.rectangle104:setLeft(65);
    obj.rectangle104:setTop(677);
    obj.rectangle104:setWidth(712);
    obj.rectangle104:setHeight(1);
    obj.rectangle104:setColor("#49244F");
    obj.rectangle104:setName("rectangle104");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.rectangle56);
    obj.edit19:setLeft(68);
    obj.edit19:setTop(643);
    obj.edit19:setWidth(360);
    obj.edit19:setFontSize(18);
    obj.edit19:setHorzTextAlign("leading");
    obj.edit19:setFontColor("#49244F");
    obj.edit19:setTransparent(true);
    obj.edit19:setField("nomeArma05");
    obj.edit19:setName("edit19");

    obj.rectangle105 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle105:setParent(obj.rectangle56);
    obj.rectangle105:setLeft(445);
    obj.rectangle105:setTop(646);
    obj.rectangle105:setWidth(100);
    obj.rectangle105:setHeight(30);
    obj.rectangle105:setColor("#49244F");
    obj.rectangle105:setName("rectangle105");

    obj.comboBox14 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox14:setParent(obj.rectangle56);
    obj.comboBox14:setLeft(445);
    obj.comboBox14:setTop(649);
    obj.comboBox14:setItems({'Atributo', 'Força', 'Agilidade', 'Intelecto', 'Vontade'});
    obj.comboBox14:setField("atributoArma05");
    obj.comboBox14:setFontColor("#D5D5D5");
    obj.comboBox14:setTransparent(true);
    obj.comboBox14:setValue("Atributo");
    obj.comboBox14:setName("comboBox14");

    obj.rectangle106 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle106:setParent(obj.rectangle56);
    obj.rectangle106:setLeft(546);
    obj.rectangle106:setTop(646);
    obj.rectangle106:setWidth(115);
    obj.rectangle106:setHeight(30);
    obj.rectangle106:setColor("#49244F");
    obj.rectangle106:setName("rectangle106");

    obj.comboBox15 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox15:setParent(obj.rectangle56);
    obj.comboBox15:setLeft(546);
    obj.comboBox15:setTop(649);
    obj.comboBox15:setItems({'Mãos', 'Mão Principal', 'Duas mãos', 'Mão Inábil', 'Gestos / Palavras', 'Símbolo Sagrado', 'Outro'});
    obj.comboBox15:setField("maosArma05");
    obj.comboBox15:setFontColor("#D5D5D5");
    obj.comboBox15:setTransparent(true);
    obj.comboBox15:setValue("Mãos");
    obj.comboBox15:setWidth(115);
    obj.comboBox15:setName("comboBox15");

    obj.rectangle107 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle107:setParent(obj.rectangle56);
    obj.rectangle107:setLeft(662);
    obj.rectangle107:setTop(646);
    obj.rectangle107:setWidth(118);
    obj.rectangle107:setHeight(30);
    obj.rectangle107:setColor("#49244F");
    obj.rectangle107:setName("rectangle107");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.rectangle56);
    obj.edit20:setLeft(662);
    obj.edit20:setTop(645);
    obj.edit20:setWidth(118);
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setField("dadivaRevesArma05");
    obj.edit20:setTransparent(true);
    obj.edit20:setText("Dádiva / Revés");
    obj.edit20:setName("edit20");

    obj.rectangle108 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle108:setParent(obj.rectangle56);
    obj.rectangle108:setLeft(60);
    obj.rectangle108:setTop(677);
    obj.rectangle108:setWidth(130);
    obj.rectangle108:setHeight(35);
    obj.rectangle108:setColor("#49244F");
    obj.rectangle108:setName("rectangle108");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.rectangle56);
    obj.label66:setLeft(70);
    obj.label66:setTop(684);
    obj.label66:setWidth(280);
    obj.label66:setFontSize(18);
    obj.label66:setText("Propriedades:");
    obj.label66:setFontColor("#D5D5D5");
    obj.label66:setName("label66");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.rectangle56);
    obj.edit21:setLeft(197);
    obj.edit21:setTop(678);
    obj.edit21:setWidth(460);
    obj.edit21:setFontSize(18);
    obj.edit21:setFontColor("#49244F");
    obj.edit21:setTransparent(true);
    obj.edit21:setField("propriedadesArma05");
    obj.edit21:setName("edit21");

    obj.rectangle109 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle109:setParent(obj.rectangle56);
    obj.rectangle109:setLeft(662);
    obj.rectangle109:setTop(679);
    obj.rectangle109:setWidth(118);
    obj.rectangle109:setHeight(30);
    obj.rectangle109:setColor("#49244F");
    obj.rectangle109:setName("rectangle109");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.rectangle56);
    obj.label67:setLeft(680);
    obj.label67:setTop(685);
    obj.label67:setWidth(280);
    obj.label67:setFontSize(18);
    obj.label67:setText("Dano:");
    obj.label67:setFontColor("#D5D5D5");
    obj.label67:setName("label67");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.rectangle56);
    obj.edit22:setLeft(730);
    obj.edit22:setTop(679);
    obj.edit22:setWidth(40);
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setField("danoArma05");
    obj.edit22:setTransparent(true);
    obj.edit22:setName("edit22");

    obj.rectangle110 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle110:setParent(obj.rectangle56);
    obj.rectangle110:setLeft(60);
    obj.rectangle110:setTop(720);
    obj.rectangle110:setWidth(720);
    obj.rectangle110:setHeight(118);
    obj.rectangle110:setColor("#D5D5D5");
    obj.rectangle110:setStrokeColor("#49244F");
    obj.rectangle110:setStrokeSize(3);
    obj.rectangle110:setName("rectangle110");

    obj.rectangle111 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle111:setParent(obj.rectangle56);
    obj.rectangle111:setLeft(60);
    obj.rectangle111:setTop(720);
    obj.rectangle111:setWidth(720);
    obj.rectangle111:setHeight(50);
    obj.rectangle111:setColor("#49244F");
    obj.rectangle111:setName("rectangle111");

    obj.comboBox16 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox16:setParent(obj.rectangle56);
    obj.comboBox16:setLeft(65);
    obj.comboBox16:setTop(728);
    obj.comboBox16:setWidth(615);
    obj.comboBox16:setFontSize(20);
    obj.comboBox16:setHeight(30);
    obj.comboBox16:setItems({'Arma', 'Talento', 'Magia', 'Feitiço'});
    obj.comboBox16:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.comboBox16, "fontStyle", "bold");
    obj.comboBox16:setTransparent(true);
    obj.comboBox16:setField("escolherAtaque06");
    obj.comboBox16:setValue("Arma");
    obj.comboBox16:setName("comboBox16");

    obj.rectangle112 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle112:setParent(obj.rectangle56);
    obj.rectangle112:setLeft(685);
    obj.rectangle112:setTop(720);
    obj.rectangle112:setWidth(1);
    obj.rectangle112:setHeight(50);
    obj.rectangle112:setColor("#D5D5D5");
    obj.rectangle112:setName("rectangle112");

    obj.image18 = GUI.fromHandle(_obj_newObject("image"));
    obj.image18:setParent(obj.rectangle56);
    obj.image18:setLeft(694);
    obj.image18:setTop(728);
    obj.image18:setWidth(27);
    obj.image18:setHeight(33);
    obj.image18:setSRC("/img/d20.png");
    obj.image18:setHitTest(true);
    obj.image18:setCursor("handPoint");
    obj.image18:setHint("Ataque");
    obj.image18:setName("image18");

    obj.rectangle113 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle113:setParent(obj.rectangle56);
    obj.rectangle113:setLeft(730);
    obj.rectangle113:setTop(720);
    obj.rectangle113:setWidth(1);
    obj.rectangle113:setHeight(50);
    obj.rectangle113:setColor("#D5D5D5");
    obj.rectangle113:setName("rectangle113");

    obj.image19 = GUI.fromHandle(_obj_newObject("image"));
    obj.image19:setParent(obj.rectangle56);
    obj.image19:setLeft(741);
    obj.image19:setTop(732);
    obj.image19:setWidth(28);
    obj.image19:setHeight(28);
    obj.image19:setSRC("/img/d6.png");
    obj.image19:setHitTest(true);
    obj.image19:setCursor("handPoint");
    obj.image19:setHint("Dano");
    obj.image19:setName("image19");

    obj.rectangle114 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle114:setParent(obj.rectangle56);
    obj.rectangle114:setLeft(65);
    obj.rectangle114:setTop(802);
    obj.rectangle114:setWidth(712);
    obj.rectangle114:setHeight(1);
    obj.rectangle114:setColor("#49244F");
    obj.rectangle114:setName("rectangle114");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.rectangle56);
    obj.edit23:setLeft(68);
    obj.edit23:setTop(768);
    obj.edit23:setWidth(360);
    obj.edit23:setFontSize(18);
    obj.edit23:setHorzTextAlign("leading");
    obj.edit23:setFontColor("#49244F");
    obj.edit23:setTransparent(true);
    obj.edit23:setField("nomeArma06");
    obj.edit23:setName("edit23");

    obj.rectangle115 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle115:setParent(obj.rectangle56);
    obj.rectangle115:setLeft(445);
    obj.rectangle115:setTop(771);
    obj.rectangle115:setWidth(100);
    obj.rectangle115:setHeight(30);
    obj.rectangle115:setColor("#49244F");
    obj.rectangle115:setName("rectangle115");

    obj.comboBox17 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox17:setParent(obj.rectangle56);
    obj.comboBox17:setLeft(445);
    obj.comboBox17:setTop(774);
    obj.comboBox17:setItems({'Atributo', 'Força', 'Agilidade', 'Intelecto', 'Vontade'});
    obj.comboBox17:setField("atributoArma06");
    obj.comboBox17:setFontColor("#D5D5D5");
    obj.comboBox17:setTransparent(true);
    obj.comboBox17:setValue("Atributo");
    obj.comboBox17:setName("comboBox17");

    obj.rectangle116 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle116:setParent(obj.rectangle56);
    obj.rectangle116:setLeft(546);
    obj.rectangle116:setTop(771);
    obj.rectangle116:setWidth(115);
    obj.rectangle116:setHeight(30);
    obj.rectangle116:setColor("#49244F");
    obj.rectangle116:setName("rectangle116");

    obj.comboBox18 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox18:setParent(obj.rectangle56);
    obj.comboBox18:setLeft(546);
    obj.comboBox18:setTop(774);
    obj.comboBox18:setItems({'Mãos', 'Mão Principal', 'Duas mãos', 'Mão Inábil', 'Gestos / Palavras', 'Símbolo Sagrado', 'Outro'});
    obj.comboBox18:setField("maosArma06");
    obj.comboBox18:setFontColor("#D5D5D5");
    obj.comboBox18:setTransparent(true);
    obj.comboBox18:setValue("Mãos");
    obj.comboBox18:setWidth(115);
    obj.comboBox18:setName("comboBox18");

    obj.rectangle117 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle117:setParent(obj.rectangle56);
    obj.rectangle117:setLeft(662);
    obj.rectangle117:setTop(771);
    obj.rectangle117:setWidth(118);
    obj.rectangle117:setHeight(30);
    obj.rectangle117:setColor("#49244F");
    obj.rectangle117:setName("rectangle117");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.rectangle56);
    obj.edit24:setLeft(662);
    obj.edit24:setTop(770);
    obj.edit24:setWidth(118);
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setField("dadivaRevesArma06");
    obj.edit24:setTransparent(true);
    obj.edit24:setText("Dádiva / Revés");
    obj.edit24:setName("edit24");

    obj.rectangle118 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle118:setParent(obj.rectangle56);
    obj.rectangle118:setLeft(60);
    obj.rectangle118:setTop(802);
    obj.rectangle118:setWidth(130);
    obj.rectangle118:setHeight(35);
    obj.rectangle118:setColor("#49244F");
    obj.rectangle118:setName("rectangle118");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.rectangle56);
    obj.label68:setLeft(70);
    obj.label68:setTop(809);
    obj.label68:setWidth(280);
    obj.label68:setFontSize(18);
    obj.label68:setText("Propriedades:");
    obj.label68:setFontColor("#D5D5D5");
    obj.label68:setName("label68");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.rectangle56);
    obj.edit25:setLeft(197);
    obj.edit25:setTop(803);
    obj.edit25:setWidth(460);
    obj.edit25:setFontSize(18);
    obj.edit25:setFontColor("#49244F");
    obj.edit25:setTransparent(true);
    obj.edit25:setField("propriedadesArma06");
    obj.edit25:setName("edit25");

    obj.rectangle119 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle119:setParent(obj.rectangle56);
    obj.rectangle119:setLeft(662);
    obj.rectangle119:setTop(804);
    obj.rectangle119:setWidth(118);
    obj.rectangle119:setHeight(30);
    obj.rectangle119:setColor("#49244F");
    obj.rectangle119:setName("rectangle119");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.rectangle56);
    obj.label69:setLeft(680);
    obj.label69:setTop(810);
    obj.label69:setWidth(280);
    obj.label69:setFontSize(18);
    obj.label69:setText("Dano:");
    obj.label69:setFontColor("#D5D5D5");
    obj.label69:setName("label69");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.rectangle56);
    obj.edit26:setLeft(730);
    obj.edit26:setTop(804);
    obj.edit26:setWidth(40);
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setField("danoArma06");
    obj.edit26:setTransparent(true);
    obj.edit26:setName("edit26");

    obj.rectangle120 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle120:setParent(obj.rectangle56);
    obj.rectangle120:setLeft(60);
    obj.rectangle120:setTop(845);
    obj.rectangle120:setWidth(720);
    obj.rectangle120:setHeight(118);
    obj.rectangle120:setColor("#D5D5D5");
    obj.rectangle120:setStrokeColor("#49244F");
    obj.rectangle120:setStrokeSize(3);
    obj.rectangle120:setName("rectangle120");

    obj.rectangle121 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle121:setParent(obj.rectangle56);
    obj.rectangle121:setLeft(60);
    obj.rectangle121:setTop(845);
    obj.rectangle121:setWidth(720);
    obj.rectangle121:setHeight(50);
    obj.rectangle121:setColor("#49244F");
    obj.rectangle121:setName("rectangle121");

    obj.comboBox19 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox19:setParent(obj.rectangle56);
    obj.comboBox19:setLeft(65);
    obj.comboBox19:setTop(853);
    obj.comboBox19:setWidth(615);
    obj.comboBox19:setFontSize(20);
    obj.comboBox19:setHeight(30);
    obj.comboBox19:setItems({'Arma', 'Talento', 'Magia', 'Feitiço'});
    obj.comboBox19:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.comboBox19, "fontStyle", "bold");
    obj.comboBox19:setTransparent(true);
    obj.comboBox19:setField("escolherAtaque07");
    obj.comboBox19:setValue("Arma");
    obj.comboBox19:setName("comboBox19");

    obj.rectangle122 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle122:setParent(obj.rectangle56);
    obj.rectangle122:setLeft(685);
    obj.rectangle122:setTop(845);
    obj.rectangle122:setWidth(1);
    obj.rectangle122:setHeight(50);
    obj.rectangle122:setColor("#D5D5D5");
    obj.rectangle122:setName("rectangle122");

    obj.image20 = GUI.fromHandle(_obj_newObject("image"));
    obj.image20:setParent(obj.rectangle56);
    obj.image20:setLeft(694);
    obj.image20:setTop(853);
    obj.image20:setWidth(27);
    obj.image20:setHeight(33);
    obj.image20:setSRC("/img/d20.png");
    obj.image20:setHitTest(true);
    obj.image20:setCursor("handPoint");
    obj.image20:setHint("Ataque");
    obj.image20:setName("image20");

    obj.rectangle123 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle123:setParent(obj.rectangle56);
    obj.rectangle123:setLeft(730);
    obj.rectangle123:setTop(845);
    obj.rectangle123:setWidth(1);
    obj.rectangle123:setHeight(50);
    obj.rectangle123:setColor("#D5D5D5");
    obj.rectangle123:setName("rectangle123");

    obj.image21 = GUI.fromHandle(_obj_newObject("image"));
    obj.image21:setParent(obj.rectangle56);
    obj.image21:setLeft(741);
    obj.image21:setTop(857);
    obj.image21:setWidth(28);
    obj.image21:setHeight(28);
    obj.image21:setSRC("/img/d6.png");
    obj.image21:setHitTest(true);
    obj.image21:setCursor("handPoint");
    obj.image21:setHint("Dano");
    obj.image21:setName("image21");

    obj.rectangle124 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle124:setParent(obj.rectangle56);
    obj.rectangle124:setLeft(65);
    obj.rectangle124:setTop(927);
    obj.rectangle124:setWidth(712);
    obj.rectangle124:setHeight(1);
    obj.rectangle124:setColor("#49244F");
    obj.rectangle124:setName("rectangle124");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.rectangle56);
    obj.edit27:setLeft(68);
    obj.edit27:setTop(893);
    obj.edit27:setWidth(360);
    obj.edit27:setFontSize(18);
    obj.edit27:setHorzTextAlign("leading");
    obj.edit27:setFontColor("#49244F");
    obj.edit27:setTransparent(true);
    obj.edit27:setField("nomeArma07");
    obj.edit27:setName("edit27");

    obj.rectangle125 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle125:setParent(obj.rectangle56);
    obj.rectangle125:setLeft(445);
    obj.rectangle125:setTop(896);
    obj.rectangle125:setWidth(100);
    obj.rectangle125:setHeight(30);
    obj.rectangle125:setColor("#49244F");
    obj.rectangle125:setName("rectangle125");

    obj.comboBox20 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox20:setParent(obj.rectangle56);
    obj.comboBox20:setLeft(445);
    obj.comboBox20:setTop(899);
    obj.comboBox20:setItems({'Atributo', 'Força', 'Agilidade', 'Intelecto', 'Vontade'});
    obj.comboBox20:setField("atributoArma07");
    obj.comboBox20:setFontColor("#D5D5D5");
    obj.comboBox20:setTransparent(true);
    obj.comboBox20:setValue("Atributo");
    obj.comboBox20:setName("comboBox20");

    obj.rectangle126 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle126:setParent(obj.rectangle56);
    obj.rectangle126:setLeft(546);
    obj.rectangle126:setTop(896);
    obj.rectangle126:setWidth(115);
    obj.rectangle126:setHeight(30);
    obj.rectangle126:setColor("#49244F");
    obj.rectangle126:setName("rectangle126");

    obj.comboBox21 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox21:setParent(obj.rectangle56);
    obj.comboBox21:setLeft(546);
    obj.comboBox21:setTop(899);
    obj.comboBox21:setItems({'Mãos', 'Mão Principal', 'Duas mãos', 'Mão Inábil', 'Gestos / Palavras', 'Símbolo Sagrado', 'Outro'});
    obj.comboBox21:setField("maosArma07");
    obj.comboBox21:setFontColor("#D5D5D5");
    obj.comboBox21:setTransparent(true);
    obj.comboBox21:setValue("Mãos");
    obj.comboBox21:setWidth(115);
    obj.comboBox21:setName("comboBox21");

    obj.rectangle127 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle127:setParent(obj.rectangle56);
    obj.rectangle127:setLeft(662);
    obj.rectangle127:setTop(896);
    obj.rectangle127:setWidth(118);
    obj.rectangle127:setHeight(30);
    obj.rectangle127:setColor("#49244F");
    obj.rectangle127:setName("rectangle127");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.rectangle56);
    obj.edit28:setLeft(662);
    obj.edit28:setTop(895);
    obj.edit28:setWidth(118);
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setField("dadivaRevesArma07");
    obj.edit28:setTransparent(true);
    obj.edit28:setText("Dádiva / Revés");
    obj.edit28:setName("edit28");

    obj.rectangle128 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle128:setParent(obj.rectangle56);
    obj.rectangle128:setLeft(60);
    obj.rectangle128:setTop(927);
    obj.rectangle128:setWidth(130);
    obj.rectangle128:setHeight(35);
    obj.rectangle128:setColor("#49244F");
    obj.rectangle128:setName("rectangle128");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.rectangle56);
    obj.label70:setLeft(70);
    obj.label70:setTop(934);
    obj.label70:setWidth(280);
    obj.label70:setFontSize(18);
    obj.label70:setText("Propriedades:");
    obj.label70:setFontColor("#D5D5D5");
    obj.label70:setName("label70");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.rectangle56);
    obj.edit29:setLeft(197);
    obj.edit29:setTop(928);
    obj.edit29:setWidth(460);
    obj.edit29:setFontSize(18);
    obj.edit29:setFontColor("#49244F");
    obj.edit29:setTransparent(true);
    obj.edit29:setField("propriedadesArma07");
    obj.edit29:setName("edit29");

    obj.rectangle129 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle129:setParent(obj.rectangle56);
    obj.rectangle129:setLeft(662);
    obj.rectangle129:setTop(929);
    obj.rectangle129:setWidth(118);
    obj.rectangle129:setHeight(30);
    obj.rectangle129:setColor("#49244F");
    obj.rectangle129:setName("rectangle129");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.rectangle56);
    obj.label71:setLeft(680);
    obj.label71:setTop(935);
    obj.label71:setWidth(280);
    obj.label71:setFontSize(18);
    obj.label71:setText("Dano:");
    obj.label71:setFontColor("#D5D5D5");
    obj.label71:setName("label71");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.rectangle56);
    obj.edit30:setLeft(730);
    obj.edit30:setTop(929);
    obj.edit30:setWidth(40);
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setField("danoArma07");
    obj.edit30:setTransparent(true);
    obj.edit30:setName("edit30");

    obj.rectangle130 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle130:setParent(obj.rectangle56);
    obj.rectangle130:setLeft(60);
    obj.rectangle130:setTop(970);
    obj.rectangle130:setWidth(720);
    obj.rectangle130:setHeight(118);
    obj.rectangle130:setColor("#D5D5D5");
    obj.rectangle130:setStrokeColor("#49244F");
    obj.rectangle130:setStrokeSize(3);
    obj.rectangle130:setName("rectangle130");

    obj.rectangle131 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle131:setParent(obj.rectangle56);
    obj.rectangle131:setLeft(60);
    obj.rectangle131:setTop(970);
    obj.rectangle131:setWidth(720);
    obj.rectangle131:setHeight(50);
    obj.rectangle131:setColor("#49244F");
    obj.rectangle131:setName("rectangle131");

    obj.comboBox22 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox22:setParent(obj.rectangle56);
    obj.comboBox22:setLeft(65);
    obj.comboBox22:setTop(978);
    obj.comboBox22:setWidth(615);
    obj.comboBox22:setFontSize(20);
    obj.comboBox22:setHeight(30);
    obj.comboBox22:setItems({'Arma', 'Talento', 'Magia', 'Feitiço'});
    obj.comboBox22:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.comboBox22, "fontStyle", "bold");
    obj.comboBox22:setTransparent(true);
    obj.comboBox22:setField("escolherAtaque08");
    obj.comboBox22:setValue("Arma");
    obj.comboBox22:setName("comboBox22");

    obj.rectangle132 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle132:setParent(obj.rectangle56);
    obj.rectangle132:setLeft(685);
    obj.rectangle132:setTop(970);
    obj.rectangle132:setWidth(1);
    obj.rectangle132:setHeight(50);
    obj.rectangle132:setColor("#D5D5D5");
    obj.rectangle132:setName("rectangle132");

    obj.image22 = GUI.fromHandle(_obj_newObject("image"));
    obj.image22:setParent(obj.rectangle56);
    obj.image22:setLeft(694);
    obj.image22:setTop(978);
    obj.image22:setWidth(27);
    obj.image22:setHeight(33);
    obj.image22:setSRC("/img/d20.png");
    obj.image22:setHitTest(true);
    obj.image22:setCursor("handPoint");
    obj.image22:setHint("Ataque");
    obj.image22:setName("image22");

    obj.rectangle133 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle133:setParent(obj.rectangle56);
    obj.rectangle133:setLeft(730);
    obj.rectangle133:setTop(970);
    obj.rectangle133:setWidth(1);
    obj.rectangle133:setHeight(50);
    obj.rectangle133:setColor("#D5D5D5");
    obj.rectangle133:setName("rectangle133");

    obj.image23 = GUI.fromHandle(_obj_newObject("image"));
    obj.image23:setParent(obj.rectangle56);
    obj.image23:setLeft(741);
    obj.image23:setTop(982);
    obj.image23:setWidth(28);
    obj.image23:setHeight(28);
    obj.image23:setSRC("/img/d6.png");
    obj.image23:setHitTest(true);
    obj.image23:setCursor("handPoint");
    obj.image23:setHint("Dano");
    obj.image23:setName("image23");

    obj.rectangle134 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle134:setParent(obj.rectangle56);
    obj.rectangle134:setLeft(65);
    obj.rectangle134:setTop(1052);
    obj.rectangle134:setWidth(712);
    obj.rectangle134:setHeight(1);
    obj.rectangle134:setColor("#49244F");
    obj.rectangle134:setName("rectangle134");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.rectangle56);
    obj.edit31:setLeft(68);
    obj.edit31:setTop(1018);
    obj.edit31:setWidth(360);
    obj.edit31:setFontSize(18);
    obj.edit31:setHorzTextAlign("leading");
    obj.edit31:setFontColor("#49244F");
    obj.edit31:setTransparent(true);
    obj.edit31:setField("nomeArma08");
    obj.edit31:setName("edit31");

    obj.rectangle135 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle135:setParent(obj.rectangle56);
    obj.rectangle135:setLeft(445);
    obj.rectangle135:setTop(1021);
    obj.rectangle135:setWidth(100);
    obj.rectangle135:setHeight(30);
    obj.rectangle135:setColor("#49244F");
    obj.rectangle135:setName("rectangle135");

    obj.comboBox23 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox23:setParent(obj.rectangle56);
    obj.comboBox23:setLeft(445);
    obj.comboBox23:setTop(1024);
    obj.comboBox23:setItems({'Atributo', 'Força', 'Agilidade', 'Intelecto', 'Vontade'});
    obj.comboBox23:setField("atributoArma08");
    obj.comboBox23:setFontColor("#D5D5D5");
    obj.comboBox23:setTransparent(true);
    obj.comboBox23:setValue("Atributo");
    obj.comboBox23:setName("comboBox23");

    obj.rectangle136 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle136:setParent(obj.rectangle56);
    obj.rectangle136:setLeft(546);
    obj.rectangle136:setTop(1021);
    obj.rectangle136:setWidth(115);
    obj.rectangle136:setHeight(30);
    obj.rectangle136:setColor("#49244F");
    obj.rectangle136:setName("rectangle136");

    obj.comboBox24 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox24:setParent(obj.rectangle56);
    obj.comboBox24:setLeft(546);
    obj.comboBox24:setTop(1024);
    obj.comboBox24:setItems({'Mãos', 'Mão Principal', 'Duas mãos', 'Mão Inábil', 'Gestos / Palavras', 'Símbolo Sagrado', 'Outro'});
    obj.comboBox24:setField("maosArma08");
    obj.comboBox24:setFontColor("#D5D5D5");
    obj.comboBox24:setTransparent(true);
    obj.comboBox24:setValue("Mãos");
    obj.comboBox24:setWidth(115);
    obj.comboBox24:setName("comboBox24");

    obj.rectangle137 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle137:setParent(obj.rectangle56);
    obj.rectangle137:setLeft(662);
    obj.rectangle137:setTop(1021);
    obj.rectangle137:setWidth(118);
    obj.rectangle137:setHeight(30);
    obj.rectangle137:setColor("#49244F");
    obj.rectangle137:setName("rectangle137");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.rectangle56);
    obj.edit32:setLeft(662);
    obj.edit32:setTop(1020);
    obj.edit32:setWidth(118);
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setField("dadivaRevesArma08");
    obj.edit32:setTransparent(true);
    obj.edit32:setText("Dádiva / Revés");
    obj.edit32:setName("edit32");

    obj.rectangle138 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle138:setParent(obj.rectangle56);
    obj.rectangle138:setLeft(60);
    obj.rectangle138:setTop(1052);
    obj.rectangle138:setWidth(130);
    obj.rectangle138:setHeight(35);
    obj.rectangle138:setColor("#49244F");
    obj.rectangle138:setName("rectangle138");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.rectangle56);
    obj.label72:setLeft(70);
    obj.label72:setTop(1059);
    obj.label72:setWidth(280);
    obj.label72:setFontSize(18);
    obj.label72:setText("Propriedades:");
    obj.label72:setFontColor("#D5D5D5");
    obj.label72:setName("label72");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.rectangle56);
    obj.edit33:setLeft(197);
    obj.edit33:setTop(928);
    obj.edit33:setWidth(460);
    obj.edit33:setFontSize(18);
    obj.edit33:setFontColor("#49244F");
    obj.edit33:setTransparent(true);
    obj.edit33:setField("propriedadesArma08");
    obj.edit33:setName("edit33");

    obj.rectangle139 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle139:setParent(obj.rectangle56);
    obj.rectangle139:setLeft(662);
    obj.rectangle139:setTop(1054);
    obj.rectangle139:setWidth(118);
    obj.rectangle139:setHeight(30);
    obj.rectangle139:setColor("#49244F");
    obj.rectangle139:setName("rectangle139");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.rectangle56);
    obj.label73:setLeft(680);
    obj.label73:setTop(1060);
    obj.label73:setWidth(280);
    obj.label73:setFontSize(18);
    obj.label73:setText("Dano:");
    obj.label73:setFontColor("#D5D5D5");
    obj.label73:setName("label73");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.rectangle56);
    obj.edit34:setLeft(730);
    obj.edit34:setTop(929);
    obj.edit34:setWidth(40);
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setField("danoArma08");
    obj.edit34:setTransparent(true);
    obj.edit34:setName("edit34");

    obj.rectangle140 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle140:setParent(obj.rectangle56);
    obj.rectangle140:setLeft(60);
    obj.rectangle140:setTop(1095);
    obj.rectangle140:setWidth(720);
    obj.rectangle140:setHeight(118);
    obj.rectangle140:setColor("#D5D5D5");
    obj.rectangle140:setStrokeColor("#49244F");
    obj.rectangle140:setStrokeSize(3);
    obj.rectangle140:setName("rectangle140");

    obj.rectangle141 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle141:setParent(obj.rectangle56);
    obj.rectangle141:setLeft(60);
    obj.rectangle141:setTop(1095);
    obj.rectangle141:setWidth(720);
    obj.rectangle141:setHeight(50);
    obj.rectangle141:setColor("#49244F");
    obj.rectangle141:setName("rectangle141");

    obj.comboBox25 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox25:setParent(obj.rectangle56);
    obj.comboBox25:setLeft(65);
    obj.comboBox25:setTop(1103);
    obj.comboBox25:setWidth(615);
    obj.comboBox25:setFontSize(20);
    obj.comboBox25:setHeight(30);
    obj.comboBox25:setItems({'Arma', 'Talento', 'Magia', 'Feitiço'});
    obj.comboBox25:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.comboBox25, "fontStyle", "bold");
    obj.comboBox25:setTransparent(true);
    obj.comboBox25:setField("escolherAtaque09");
    obj.comboBox25:setValue("Arma");
    obj.comboBox25:setName("comboBox25");

    obj.rectangle142 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle142:setParent(obj.rectangle56);
    obj.rectangle142:setLeft(685);
    obj.rectangle142:setTop(1095);
    obj.rectangle142:setWidth(1);
    obj.rectangle142:setHeight(50);
    obj.rectangle142:setColor("#D5D5D5");
    obj.rectangle142:setName("rectangle142");

    obj.image24 = GUI.fromHandle(_obj_newObject("image"));
    obj.image24:setParent(obj.rectangle56);
    obj.image24:setLeft(694);
    obj.image24:setTop(1103);
    obj.image24:setWidth(27);
    obj.image24:setHeight(33);
    obj.image24:setSRC("/img/d20.png");
    obj.image24:setHitTest(true);
    obj.image24:setCursor("handPoint");
    obj.image24:setHint("Ataque");
    obj.image24:setName("image24");

    obj.rectangle143 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle143:setParent(obj.rectangle56);
    obj.rectangle143:setLeft(730);
    obj.rectangle143:setTop(1095);
    obj.rectangle143:setWidth(1);
    obj.rectangle143:setHeight(50);
    obj.rectangle143:setColor("#D5D5D5");
    obj.rectangle143:setName("rectangle143");

    obj.image25 = GUI.fromHandle(_obj_newObject("image"));
    obj.image25:setParent(obj.rectangle56);
    obj.image25:setLeft(741);
    obj.image25:setTop(1107);
    obj.image25:setWidth(28);
    obj.image25:setHeight(28);
    obj.image25:setSRC("/img/d6.png");
    obj.image25:setHitTest(true);
    obj.image25:setCursor("handPoint");
    obj.image25:setHint("Dano");
    obj.image25:setName("image25");

    obj.rectangle144 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle144:setParent(obj.rectangle56);
    obj.rectangle144:setLeft(65);
    obj.rectangle144:setTop(1177);
    obj.rectangle144:setWidth(712);
    obj.rectangle144:setHeight(1);
    obj.rectangle144:setColor("#49244F");
    obj.rectangle144:setName("rectangle144");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.rectangle56);
    obj.edit35:setLeft(68);
    obj.edit35:setTop(1143);
    obj.edit35:setWidth(360);
    obj.edit35:setFontSize(18);
    obj.edit35:setHorzTextAlign("leading");
    obj.edit35:setFontColor("#49244F");
    obj.edit35:setTransparent(true);
    obj.edit35:setField("nomeArma09");
    obj.edit35:setName("edit35");

    obj.rectangle145 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle145:setParent(obj.rectangle56);
    obj.rectangle145:setLeft(445);
    obj.rectangle145:setTop(1146);
    obj.rectangle145:setWidth(100);
    obj.rectangle145:setHeight(30);
    obj.rectangle145:setColor("#49244F");
    obj.rectangle145:setName("rectangle145");

    obj.comboBox26 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox26:setParent(obj.rectangle56);
    obj.comboBox26:setLeft(445);
    obj.comboBox26:setTop(1151);
    obj.comboBox26:setItems({'Atributo', 'Força', 'Agilidade', 'Intelecto', 'Vontade'});
    obj.comboBox26:setField("atributoArma09");
    obj.comboBox26:setFontColor("#D5D5D5");
    obj.comboBox26:setTransparent(true);
    obj.comboBox26:setValue("Atributo");
    obj.comboBox26:setName("comboBox26");

    obj.rectangle146 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle146:setParent(obj.rectangle56);
    obj.rectangle146:setLeft(546);
    obj.rectangle146:setTop(1146);
    obj.rectangle146:setWidth(115);
    obj.rectangle146:setHeight(30);
    obj.rectangle146:setColor("#49244F");
    obj.rectangle146:setName("rectangle146");

    obj.comboBox27 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox27:setParent(obj.rectangle56);
    obj.comboBox27:setLeft(546);
    obj.comboBox27:setTop(1149);
    obj.comboBox27:setItems({'Mãos', 'Mão Principal', 'Duas mãos', 'Mão Inábil', 'Gestos / Palavras', 'Símbolo Sagrado', 'Outro'});
    obj.comboBox27:setField("maosArma09");
    obj.comboBox27:setFontColor("#D5D5D5");
    obj.comboBox27:setTransparent(true);
    obj.comboBox27:setValue("Mãos");
    obj.comboBox27:setWidth(115);
    obj.comboBox27:setName("comboBox27");

    obj.rectangle147 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle147:setParent(obj.rectangle56);
    obj.rectangle147:setLeft(662);
    obj.rectangle147:setTop(1146);
    obj.rectangle147:setWidth(118);
    obj.rectangle147:setHeight(30);
    obj.rectangle147:setColor("#49244F");
    obj.rectangle147:setName("rectangle147");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.rectangle56);
    obj.edit36:setLeft(662);
    obj.edit36:setTop(1145);
    obj.edit36:setWidth(118);
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setField("dadivaRevesArma09");
    obj.edit36:setTransparent(true);
    obj.edit36:setText("Dádiva / Revés");
    obj.edit36:setName("edit36");

    obj.rectangle148 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle148:setParent(obj.rectangle56);
    obj.rectangle148:setLeft(60);
    obj.rectangle148:setTop(1177);
    obj.rectangle148:setWidth(130);
    obj.rectangle148:setHeight(35);
    obj.rectangle148:setColor("#49244F");
    obj.rectangle148:setName("rectangle148");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.rectangle56);
    obj.label74:setLeft(70);
    obj.label74:setTop(1184);
    obj.label74:setWidth(280);
    obj.label74:setFontSize(18);
    obj.label74:setText("Propriedades:");
    obj.label74:setFontColor("#D5D5D5");
    obj.label74:setName("label74");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.rectangle56);
    obj.edit37:setLeft(197);
    obj.edit37:setTop(1053);
    obj.edit37:setWidth(460);
    obj.edit37:setFontSize(18);
    obj.edit37:setFontColor("#49244F");
    obj.edit37:setTransparent(true);
    obj.edit37:setField("propriedadesArma09");
    obj.edit37:setName("edit37");

    obj.rectangle149 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle149:setParent(obj.rectangle56);
    obj.rectangle149:setLeft(662);
    obj.rectangle149:setTop(1179);
    obj.rectangle149:setWidth(118);
    obj.rectangle149:setHeight(30);
    obj.rectangle149:setColor("#49244F");
    obj.rectangle149:setName("rectangle149");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.rectangle56);
    obj.label75:setLeft(680);
    obj.label75:setTop(1185);
    obj.label75:setWidth(280);
    obj.label75:setFontSize(18);
    obj.label75:setText("Dano:");
    obj.label75:setFontColor("#D5D5D5");
    obj.label75:setName("label75");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.rectangle56);
    obj.edit38:setLeft(730);
    obj.edit38:setTop(1054);
    obj.edit38:setWidth(40);
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setField("danoArma09");
    obj.edit38:setTransparent(true);
    obj.edit38:setName("edit38");

    obj.rectangle150 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle150:setParent(obj.rectangle56);
    obj.rectangle150:setLeft(60);
    obj.rectangle150:setTop(1220);
    obj.rectangle150:setWidth(720);
    obj.rectangle150:setHeight(118);
    obj.rectangle150:setColor("#D5D5D5");
    obj.rectangle150:setStrokeColor("#49244F");
    obj.rectangle150:setStrokeSize(3);
    obj.rectangle150:setName("rectangle150");

    obj.rectangle151 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle151:setParent(obj.rectangle56);
    obj.rectangle151:setLeft(60);
    obj.rectangle151:setTop(1220);
    obj.rectangle151:setWidth(720);
    obj.rectangle151:setHeight(50);
    obj.rectangle151:setColor("#49244F");
    obj.rectangle151:setName("rectangle151");

    obj.comboBox28 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox28:setParent(obj.rectangle56);
    obj.comboBox28:setLeft(65);
    obj.comboBox28:setTop(1228);
    obj.comboBox28:setWidth(615);
    obj.comboBox28:setFontSize(20);
    obj.comboBox28:setHeight(30);
    obj.comboBox28:setItems({'Arma', 'Talento', 'Magia', 'Feitiço'});
    obj.comboBox28:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.comboBox28, "fontStyle", "bold");
    obj.comboBox28:setTransparent(true);
    obj.comboBox28:setField("escolherAtaque10");
    obj.comboBox28:setValue("Arma");
    obj.comboBox28:setName("comboBox28");

    obj.rectangle152 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle152:setParent(obj.rectangle56);
    obj.rectangle152:setLeft(685);
    obj.rectangle152:setTop(1220);
    obj.rectangle152:setWidth(1);
    obj.rectangle152:setHeight(50);
    obj.rectangle152:setColor("#D5D5D5");
    obj.rectangle152:setName("rectangle152");

    obj.image26 = GUI.fromHandle(_obj_newObject("image"));
    obj.image26:setParent(obj.rectangle56);
    obj.image26:setLeft(694);
    obj.image26:setTop(1228);
    obj.image26:setWidth(27);
    obj.image26:setHeight(33);
    obj.image26:setSRC("/img/d20.png");
    obj.image26:setHitTest(true);
    obj.image26:setCursor("handPoint");
    obj.image26:setHint("Ataque");
    obj.image26:setName("image26");

    obj.rectangle153 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle153:setParent(obj.rectangle56);
    obj.rectangle153:setLeft(730);
    obj.rectangle153:setTop(1220);
    obj.rectangle153:setWidth(1);
    obj.rectangle153:setHeight(50);
    obj.rectangle153:setColor("#D5D5D5");
    obj.rectangle153:setName("rectangle153");

    obj.image27 = GUI.fromHandle(_obj_newObject("image"));
    obj.image27:setParent(obj.rectangle56);
    obj.image27:setLeft(741);
    obj.image27:setTop(1232);
    obj.image27:setWidth(28);
    obj.image27:setHeight(28);
    obj.image27:setSRC("/img/d6.png");
    obj.image27:setHitTest(true);
    obj.image27:setCursor("handPoint");
    obj.image27:setHint("Dano");
    obj.image27:setName("image27");

    obj.rectangle154 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle154:setParent(obj.rectangle56);
    obj.rectangle154:setLeft(65);
    obj.rectangle154:setTop(1302);
    obj.rectangle154:setWidth(712);
    obj.rectangle154:setHeight(1);
    obj.rectangle154:setColor("#49244F");
    obj.rectangle154:setName("rectangle154");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.rectangle56);
    obj.edit39:setLeft(68);
    obj.edit39:setTop(1268);
    obj.edit39:setWidth(360);
    obj.edit39:setFontSize(18);
    obj.edit39:setHorzTextAlign("leading");
    obj.edit39:setFontColor("#49244F");
    obj.edit39:setTransparent(true);
    obj.edit39:setField("nomeArma10");
    obj.edit39:setName("edit39");

    obj.rectangle155 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle155:setParent(obj.rectangle56);
    obj.rectangle155:setLeft(445);
    obj.rectangle155:setTop(1271);
    obj.rectangle155:setWidth(100);
    obj.rectangle155:setHeight(30);
    obj.rectangle155:setColor("#49244F");
    obj.rectangle155:setName("rectangle155");

    obj.comboBox29 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox29:setParent(obj.rectangle56);
    obj.comboBox29:setLeft(445);
    obj.comboBox29:setTop(1276);
    obj.comboBox29:setItems({'Atributo', 'Força', 'Agilidade', 'Intelecto', 'Vontade'});
    obj.comboBox29:setField("atributoArma10");
    obj.comboBox29:setFontColor("#D5D5D5");
    obj.comboBox29:setTransparent(true);
    obj.comboBox29:setValue("Atributo");
    obj.comboBox29:setName("comboBox29");

    obj.rectangle156 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle156:setParent(obj.rectangle56);
    obj.rectangle156:setLeft(546);
    obj.rectangle156:setTop(1271);
    obj.rectangle156:setWidth(115);
    obj.rectangle156:setHeight(30);
    obj.rectangle156:setColor("#49244F");
    obj.rectangle156:setName("rectangle156");

    obj.comboBox30 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox30:setParent(obj.rectangle56);
    obj.comboBox30:setLeft(546);
    obj.comboBox30:setTop(1274);
    obj.comboBox30:setItems({'Mãos', 'Mão Principal', 'Duas mãos', 'Mão Inábil', 'Gestos / Palavras', 'Símbolo Sagrado', 'Outro'});
    obj.comboBox30:setField("maosArma10");
    obj.comboBox30:setFontColor("#D5D5D5");
    obj.comboBox30:setTransparent(true);
    obj.comboBox30:setValue("Mãos");
    obj.comboBox30:setWidth(115);
    obj.comboBox30:setName("comboBox30");

    obj.rectangle157 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle157:setParent(obj.rectangle56);
    obj.rectangle157:setLeft(662);
    obj.rectangle157:setTop(1271);
    obj.rectangle157:setWidth(118);
    obj.rectangle157:setHeight(30);
    obj.rectangle157:setColor("#49244F");
    obj.rectangle157:setName("rectangle157");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.rectangle56);
    obj.edit40:setLeft(662);
    obj.edit40:setTop(1270);
    obj.edit40:setWidth(118);
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setField("dadivaRevesArma10");
    obj.edit40:setTransparent(true);
    obj.edit40:setText("Dádiva / Revés");
    obj.edit40:setName("edit40");

    obj.rectangle158 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle158:setParent(obj.rectangle56);
    obj.rectangle158:setLeft(60);
    obj.rectangle158:setTop(1302);
    obj.rectangle158:setWidth(130);
    obj.rectangle158:setHeight(35);
    obj.rectangle158:setColor("#49244F");
    obj.rectangle158:setName("rectangle158");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.rectangle56);
    obj.label76:setLeft(70);
    obj.label76:setTop(1309);
    obj.label76:setWidth(280);
    obj.label76:setFontSize(18);
    obj.label76:setText("Propriedades:");
    obj.label76:setFontColor("#D5D5D5");
    obj.label76:setName("label76");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.rectangle56);
    obj.edit41:setLeft(197);
    obj.edit41:setTop(1178);
    obj.edit41:setWidth(460);
    obj.edit41:setFontSize(18);
    obj.edit41:setFontColor("#49244F");
    obj.edit41:setTransparent(true);
    obj.edit41:setField("propriedadesArma10");
    obj.edit41:setName("edit41");

    obj.rectangle159 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle159:setParent(obj.rectangle56);
    obj.rectangle159:setLeft(662);
    obj.rectangle159:setTop(1304);
    obj.rectangle159:setWidth(118);
    obj.rectangle159:setHeight(30);
    obj.rectangle159:setColor("#49244F");
    obj.rectangle159:setName("rectangle159");

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.rectangle56);
    obj.label77:setLeft(680);
    obj.label77:setTop(1310);
    obj.label77:setWidth(280);
    obj.label77:setFontSize(18);
    obj.label77:setText("Dano:");
    obj.label77:setFontColor("#D5D5D5");
    obj.label77:setName("label77");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.rectangle56);
    obj.edit42:setLeft(730);
    obj.edit42:setTop(1179);
    obj.edit42:setWidth(40);
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setField("danoArma10");
    obj.edit42:setTransparent(true);
    obj.edit42:setName("edit42");

    obj.rectangle160 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle160:setParent(obj.rectangle56);
    obj.rectangle160:setLeft(60);
    obj.rectangle160:setTop(1345);
    obj.rectangle160:setWidth(720);
    obj.rectangle160:setHeight(118);
    obj.rectangle160:setColor("#D5D5D5");
    obj.rectangle160:setStrokeColor("#49244F");
    obj.rectangle160:setStrokeSize(3);
    obj.rectangle160:setName("rectangle160");

    obj.rectangle161 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle161:setParent(obj.rectangle56);
    obj.rectangle161:setLeft(60);
    obj.rectangle161:setTop(1345);
    obj.rectangle161:setWidth(720);
    obj.rectangle161:setHeight(50);
    obj.rectangle161:setColor("#49244F");
    obj.rectangle161:setName("rectangle161");

    obj.comboBox31 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox31:setParent(obj.rectangle56);
    obj.comboBox31:setLeft(65);
    obj.comboBox31:setTop(1353);
    obj.comboBox31:setWidth(615);
    obj.comboBox31:setFontSize(20);
    obj.comboBox31:setHeight(30);
    obj.comboBox31:setItems({'Arma', 'Talento', 'Magia', 'Feitiço'});
    obj.comboBox31:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.comboBox31, "fontStyle", "bold");
    obj.comboBox31:setTransparent(true);
    obj.comboBox31:setField("escolherAtaque11");
    obj.comboBox31:setValue("Arma");
    obj.comboBox31:setName("comboBox31");

    obj.rectangle162 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle162:setParent(obj.rectangle56);
    obj.rectangle162:setLeft(685);
    obj.rectangle162:setTop(1345);
    obj.rectangle162:setWidth(1);
    obj.rectangle162:setHeight(50);
    obj.rectangle162:setColor("#D5D5D5");
    obj.rectangle162:setName("rectangle162");

    obj.image28 = GUI.fromHandle(_obj_newObject("image"));
    obj.image28:setParent(obj.rectangle56);
    obj.image28:setLeft(694);
    obj.image28:setTop(1353);
    obj.image28:setWidth(27);
    obj.image28:setHeight(33);
    obj.image28:setSRC("/img/d20.png");
    obj.image28:setHitTest(true);
    obj.image28:setCursor("handPoint");
    obj.image28:setHint("Ataque");
    obj.image28:setName("image28");

    obj.rectangle163 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle163:setParent(obj.rectangle56);
    obj.rectangle163:setLeft(730);
    obj.rectangle163:setTop(1345);
    obj.rectangle163:setWidth(1);
    obj.rectangle163:setHeight(50);
    obj.rectangle163:setColor("#D5D5D5");
    obj.rectangle163:setName("rectangle163");

    obj.image29 = GUI.fromHandle(_obj_newObject("image"));
    obj.image29:setParent(obj.rectangle56);
    obj.image29:setLeft(741);
    obj.image29:setTop(1357);
    obj.image29:setWidth(28);
    obj.image29:setHeight(28);
    obj.image29:setSRC("/img/d6.png");
    obj.image29:setHitTest(true);
    obj.image29:setCursor("handPoint");
    obj.image29:setHint("Dano");
    obj.image29:setName("image29");

    obj.rectangle164 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle164:setParent(obj.rectangle56);
    obj.rectangle164:setLeft(65);
    obj.rectangle164:setTop(1427);
    obj.rectangle164:setWidth(712);
    obj.rectangle164:setHeight(1);
    obj.rectangle164:setColor("#49244F");
    obj.rectangle164:setName("rectangle164");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.rectangle56);
    obj.edit43:setLeft(68);
    obj.edit43:setTop(1393);
    obj.edit43:setWidth(360);
    obj.edit43:setFontSize(18);
    obj.edit43:setHorzTextAlign("leading");
    obj.edit43:setFontColor("#49244F");
    obj.edit43:setTransparent(true);
    obj.edit43:setField("nomeArma11");
    obj.edit43:setName("edit43");

    obj.rectangle165 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle165:setParent(obj.rectangle56);
    obj.rectangle165:setLeft(445);
    obj.rectangle165:setTop(1396);
    obj.rectangle165:setWidth(100);
    obj.rectangle165:setHeight(30);
    obj.rectangle165:setColor("#49244F");
    obj.rectangle165:setName("rectangle165");

    obj.comboBox32 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox32:setParent(obj.rectangle56);
    obj.comboBox32:setLeft(445);
    obj.comboBox32:setTop(1401);
    obj.comboBox32:setItems({'Atributo', 'Força', 'Agilidade', 'Intelecto', 'Vontade'});
    obj.comboBox32:setField("atributoArma11");
    obj.comboBox32:setFontColor("#D5D5D5");
    obj.comboBox32:setTransparent(true);
    obj.comboBox32:setValue("Atributo");
    obj.comboBox32:setName("comboBox32");

    obj.rectangle166 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle166:setParent(obj.rectangle56);
    obj.rectangle166:setLeft(546);
    obj.rectangle166:setTop(1396);
    obj.rectangle166:setWidth(115);
    obj.rectangle166:setHeight(30);
    obj.rectangle166:setColor("#49244F");
    obj.rectangle166:setName("rectangle166");

    obj.comboBox33 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox33:setParent(obj.rectangle56);
    obj.comboBox33:setLeft(546);
    obj.comboBox33:setTop(1399);
    obj.comboBox33:setItems({'Mãos', 'Mão Principal', 'Duas mãos', 'Mão Inábil', 'Gestos / Palavras', 'Símbolo Sagrado', 'Outro'});
    obj.comboBox33:setField("maosArma11");
    obj.comboBox33:setFontColor("#D5D5D5");
    obj.comboBox33:setTransparent(true);
    obj.comboBox33:setValue("Mãos");
    obj.comboBox33:setWidth(115);
    obj.comboBox33:setName("comboBox33");

    obj.rectangle167 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle167:setParent(obj.rectangle56);
    obj.rectangle167:setLeft(662);
    obj.rectangle167:setTop(1396);
    obj.rectangle167:setWidth(118);
    obj.rectangle167:setHeight(30);
    obj.rectangle167:setColor("#49244F");
    obj.rectangle167:setName("rectangle167");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.rectangle56);
    obj.edit44:setLeft(662);
    obj.edit44:setTop(1395);
    obj.edit44:setWidth(118);
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setField("dadivaRevesArma11");
    obj.edit44:setTransparent(true);
    obj.edit44:setText("Dádiva / Revés");
    obj.edit44:setName("edit44");

    obj.rectangle168 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle168:setParent(obj.rectangle56);
    obj.rectangle168:setLeft(60);
    obj.rectangle168:setTop(1427);
    obj.rectangle168:setWidth(130);
    obj.rectangle168:setHeight(35);
    obj.rectangle168:setColor("#49244F");
    obj.rectangle168:setName("rectangle168");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.rectangle56);
    obj.label78:setLeft(70);
    obj.label78:setTop(1434);
    obj.label78:setWidth(280);
    obj.label78:setFontSize(18);
    obj.label78:setText("Propriedades:");
    obj.label78:setFontColor("#D5D5D5");
    obj.label78:setName("label78");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.rectangle56);
    obj.edit45:setLeft(197);
    obj.edit45:setTop(1303);
    obj.edit45:setWidth(460);
    obj.edit45:setFontSize(18);
    obj.edit45:setFontColor("#49244F");
    obj.edit45:setTransparent(true);
    obj.edit45:setField("propriedadesArma11");
    obj.edit45:setName("edit45");

    obj.rectangle169 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle169:setParent(obj.rectangle56);
    obj.rectangle169:setLeft(662);
    obj.rectangle169:setTop(1429);
    obj.rectangle169:setWidth(118);
    obj.rectangle169:setHeight(30);
    obj.rectangle169:setColor("#49244F");
    obj.rectangle169:setName("rectangle169");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.rectangle56);
    obj.label79:setLeft(680);
    obj.label79:setTop(1435);
    obj.label79:setWidth(280);
    obj.label79:setFontSize(18);
    obj.label79:setText("Dano:");
    obj.label79:setFontColor("#D5D5D5");
    obj.label79:setName("label79");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.rectangle56);
    obj.edit46:setLeft(730);
    obj.edit46:setTop(1304);
    obj.edit46:setWidth(40);
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setField("danoArma11");
    obj.edit46:setTransparent(true);
    obj.edit46:setName("edit46");

    obj.rectangle170 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle170:setParent(obj.rectangle56);
    obj.rectangle170:setLeft(60);
    obj.rectangle170:setTop(1470);
    obj.rectangle170:setWidth(720);
    obj.rectangle170:setHeight(118);
    obj.rectangle170:setColor("#D5D5D5");
    obj.rectangle170:setStrokeColor("#49244F");
    obj.rectangle170:setStrokeSize(3);
    obj.rectangle170:setName("rectangle170");

    obj.rectangle171 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle171:setParent(obj.rectangle56);
    obj.rectangle171:setLeft(60);
    obj.rectangle171:setTop(1470);
    obj.rectangle171:setWidth(720);
    obj.rectangle171:setHeight(50);
    obj.rectangle171:setColor("#49244F");
    obj.rectangle171:setName("rectangle171");

    obj.comboBox34 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox34:setParent(obj.rectangle56);
    obj.comboBox34:setLeft(65);
    obj.comboBox34:setTop(1478);
    obj.comboBox34:setWidth(615);
    obj.comboBox34:setFontSize(20);
    obj.comboBox34:setHeight(30);
    obj.comboBox34:setItems({'Arma', 'Talento', 'Magia', 'Feitiço'});
    obj.comboBox34:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.comboBox34, "fontStyle", "bold");
    obj.comboBox34:setTransparent(true);
    obj.comboBox34:setField("escolherAtaque12");
    obj.comboBox34:setValue("Arma");
    obj.comboBox34:setName("comboBox34");

    obj.rectangle172 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle172:setParent(obj.rectangle56);
    obj.rectangle172:setLeft(685);
    obj.rectangle172:setTop(1470);
    obj.rectangle172:setWidth(1);
    obj.rectangle172:setHeight(50);
    obj.rectangle172:setColor("#D5D5D5");
    obj.rectangle172:setName("rectangle172");

    obj.image30 = GUI.fromHandle(_obj_newObject("image"));
    obj.image30:setParent(obj.rectangle56);
    obj.image30:setLeft(694);
    obj.image30:setTop(1478);
    obj.image30:setWidth(27);
    obj.image30:setHeight(33);
    obj.image30:setSRC("/img/d20.png");
    obj.image30:setHitTest(true);
    obj.image30:setCursor("handPoint");
    obj.image30:setHint("Ataque");
    obj.image30:setName("image30");

    obj.rectangle173 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle173:setParent(obj.rectangle56);
    obj.rectangle173:setLeft(730);
    obj.rectangle173:setTop(1470);
    obj.rectangle173:setWidth(1);
    obj.rectangle173:setHeight(50);
    obj.rectangle173:setColor("#D5D5D5");
    obj.rectangle173:setName("rectangle173");

    obj.image31 = GUI.fromHandle(_obj_newObject("image"));
    obj.image31:setParent(obj.rectangle56);
    obj.image31:setLeft(741);
    obj.image31:setTop(1482);
    obj.image31:setWidth(28);
    obj.image31:setHeight(28);
    obj.image31:setSRC("/img/d6.png");
    obj.image31:setHitTest(true);
    obj.image31:setCursor("handPoint");
    obj.image31:setHint("Dano");
    obj.image31:setName("image31");

    obj.rectangle174 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle174:setParent(obj.rectangle56);
    obj.rectangle174:setLeft(65);
    obj.rectangle174:setTop(1552);
    obj.rectangle174:setWidth(712);
    obj.rectangle174:setHeight(1);
    obj.rectangle174:setColor("#49244F");
    obj.rectangle174:setName("rectangle174");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.rectangle56);
    obj.edit47:setLeft(68);
    obj.edit47:setTop(1518);
    obj.edit47:setWidth(360);
    obj.edit47:setFontSize(18);
    obj.edit47:setHorzTextAlign("leading");
    obj.edit47:setFontColor("#49244F");
    obj.edit47:setTransparent(true);
    obj.edit47:setField("nomeArma12");
    obj.edit47:setName("edit47");

    obj.rectangle175 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle175:setParent(obj.rectangle56);
    obj.rectangle175:setLeft(445);
    obj.rectangle175:setTop(1521);
    obj.rectangle175:setWidth(100);
    obj.rectangle175:setHeight(30);
    obj.rectangle175:setColor("#49244F");
    obj.rectangle175:setName("rectangle175");

    obj.comboBox35 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox35:setParent(obj.rectangle56);
    obj.comboBox35:setLeft(445);
    obj.comboBox35:setTop(1526);
    obj.comboBox35:setItems({'Atributo', 'Força', 'Agilidade', 'Intelecto', 'Vontade'});
    obj.comboBox35:setField("atributoArma12");
    obj.comboBox35:setFontColor("#D5D5D5");
    obj.comboBox35:setTransparent(true);
    obj.comboBox35:setValue("Atributo");
    obj.comboBox35:setName("comboBox35");

    obj.rectangle176 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle176:setParent(obj.rectangle56);
    obj.rectangle176:setLeft(546);
    obj.rectangle176:setTop(1521);
    obj.rectangle176:setWidth(115);
    obj.rectangle176:setHeight(30);
    obj.rectangle176:setColor("#49244F");
    obj.rectangle176:setName("rectangle176");

    obj.comboBox36 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox36:setParent(obj.rectangle56);
    obj.comboBox36:setLeft(546);
    obj.comboBox36:setTop(1524);
    obj.comboBox36:setItems({'Mãos', 'Mão Principal', 'Duas mãos', 'Mão Inábil', 'Gestos / Palavras', 'Símbolo Sagrado', 'Outro'});
    obj.comboBox36:setField("maosArma12");
    obj.comboBox36:setFontColor("#D5D5D5");
    obj.comboBox36:setTransparent(true);
    obj.comboBox36:setValue("Mãos");
    obj.comboBox36:setWidth(115);
    obj.comboBox36:setName("comboBox36");

    obj.rectangle177 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle177:setParent(obj.rectangle56);
    obj.rectangle177:setLeft(662);
    obj.rectangle177:setTop(1521);
    obj.rectangle177:setWidth(118);
    obj.rectangle177:setHeight(30);
    obj.rectangle177:setColor("#49244F");
    obj.rectangle177:setName("rectangle177");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.rectangle56);
    obj.edit48:setLeft(662);
    obj.edit48:setTop(1520);
    obj.edit48:setWidth(118);
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setField("dadivaRevesArma12");
    obj.edit48:setTransparent(true);
    obj.edit48:setText("Dádiva / Revés");
    obj.edit48:setName("edit48");

    obj.rectangle178 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle178:setParent(obj.rectangle56);
    obj.rectangle178:setLeft(60);
    obj.rectangle178:setTop(1552);
    obj.rectangle178:setWidth(130);
    obj.rectangle178:setHeight(35);
    obj.rectangle178:setColor("#49244F");
    obj.rectangle178:setName("rectangle178");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.rectangle56);
    obj.label80:setLeft(70);
    obj.label80:setTop(1559);
    obj.label80:setWidth(280);
    obj.label80:setFontSize(18);
    obj.label80:setText("Propriedades:");
    obj.label80:setFontColor("#D5D5D5");
    obj.label80:setName("label80");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.rectangle56);
    obj.edit49:setLeft(197);
    obj.edit49:setTop(1428);
    obj.edit49:setWidth(460);
    obj.edit49:setFontSize(18);
    obj.edit49:setFontColor("#49244F");
    obj.edit49:setTransparent(true);
    obj.edit49:setField("propriedadesArma12");
    obj.edit49:setName("edit49");

    obj.rectangle179 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle179:setParent(obj.rectangle56);
    obj.rectangle179:setLeft(662);
    obj.rectangle179:setTop(1554);
    obj.rectangle179:setWidth(118);
    obj.rectangle179:setHeight(30);
    obj.rectangle179:setColor("#49244F");
    obj.rectangle179:setName("rectangle179");

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.rectangle56);
    obj.label81:setLeft(680);
    obj.label81:setTop(1560);
    obj.label81:setWidth(280);
    obj.label81:setFontSize(18);
    obj.label81:setText("Dano:");
    obj.label81:setFontColor("#D5D5D5");
    obj.label81:setName("label81");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.rectangle56);
    obj.edit50:setLeft(730);
    obj.edit50:setTop(1429);
    obj.edit50:setWidth(40);
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setField("danoArma12");
    obj.edit50:setTransparent(true);
    obj.edit50:setName("edit50");

    obj.rectangle180 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle180:setParent(obj.rectangle56);
    obj.rectangle180:setLeft(60);
    obj.rectangle180:setTop(1595);
    obj.rectangle180:setWidth(720);
    obj.rectangle180:setHeight(118);
    obj.rectangle180:setColor("#D5D5D5");
    obj.rectangle180:setStrokeColor("#49244F");
    obj.rectangle180:setStrokeSize(3);
    obj.rectangle180:setName("rectangle180");

    obj.rectangle181 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle181:setParent(obj.rectangle56);
    obj.rectangle181:setLeft(60);
    obj.rectangle181:setTop(1595);
    obj.rectangle181:setWidth(720);
    obj.rectangle181:setHeight(50);
    obj.rectangle181:setColor("#49244F");
    obj.rectangle181:setName("rectangle181");

    obj.comboBox37 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox37:setParent(obj.rectangle56);
    obj.comboBox37:setLeft(65);
    obj.comboBox37:setTop(1603);
    obj.comboBox37:setWidth(615);
    obj.comboBox37:setFontSize(20);
    obj.comboBox37:setHeight(30);
    obj.comboBox37:setItems({'Arma', 'Talento', 'Magia', 'Feitiço'});
    obj.comboBox37:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.comboBox37, "fontStyle", "bold");
    obj.comboBox37:setTransparent(true);
    obj.comboBox37:setField("escolherAtaque13");
    obj.comboBox37:setValue("Arma");
    obj.comboBox37:setName("comboBox37");

    obj.rectangle182 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle182:setParent(obj.rectangle56);
    obj.rectangle182:setLeft(685);
    obj.rectangle182:setTop(1595);
    obj.rectangle182:setWidth(1);
    obj.rectangle182:setHeight(50);
    obj.rectangle182:setColor("#D5D5D5");
    obj.rectangle182:setName("rectangle182");

    obj.image32 = GUI.fromHandle(_obj_newObject("image"));
    obj.image32:setParent(obj.rectangle56);
    obj.image32:setLeft(694);
    obj.image32:setTop(1603);
    obj.image32:setWidth(27);
    obj.image32:setHeight(33);
    obj.image32:setSRC("/img/d20.png");
    obj.image32:setHitTest(true);
    obj.image32:setCursor("handPoint");
    obj.image32:setHint("Ataque");
    obj.image32:setName("image32");

    obj.rectangle183 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle183:setParent(obj.rectangle56);
    obj.rectangle183:setLeft(730);
    obj.rectangle183:setTop(1595);
    obj.rectangle183:setWidth(1);
    obj.rectangle183:setHeight(50);
    obj.rectangle183:setColor("#D5D5D5");
    obj.rectangle183:setName("rectangle183");

    obj.image33 = GUI.fromHandle(_obj_newObject("image"));
    obj.image33:setParent(obj.rectangle56);
    obj.image33:setLeft(741);
    obj.image33:setTop(1607);
    obj.image33:setWidth(28);
    obj.image33:setHeight(28);
    obj.image33:setSRC("/img/d6.png");
    obj.image33:setHitTest(true);
    obj.image33:setCursor("handPoint");
    obj.image33:setHint("Dano");
    obj.image33:setName("image33");

    obj.rectangle184 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle184:setParent(obj.rectangle56);
    obj.rectangle184:setLeft(65);
    obj.rectangle184:setTop(1677);
    obj.rectangle184:setWidth(712);
    obj.rectangle184:setHeight(1);
    obj.rectangle184:setColor("#49244F");
    obj.rectangle184:setName("rectangle184");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.rectangle56);
    obj.edit51:setLeft(68);
    obj.edit51:setTop(1643);
    obj.edit51:setWidth(360);
    obj.edit51:setFontSize(18);
    obj.edit51:setHorzTextAlign("leading");
    obj.edit51:setFontColor("#49244F");
    obj.edit51:setTransparent(true);
    obj.edit51:setField("nomeArma13");
    obj.edit51:setName("edit51");

    obj.rectangle185 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle185:setParent(obj.rectangle56);
    obj.rectangle185:setLeft(445);
    obj.rectangle185:setTop(1646);
    obj.rectangle185:setWidth(100);
    obj.rectangle185:setHeight(30);
    obj.rectangle185:setColor("#49244F");
    obj.rectangle185:setName("rectangle185");

    obj.comboBox38 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox38:setParent(obj.rectangle56);
    obj.comboBox38:setLeft(445);
    obj.comboBox38:setTop(1651);
    obj.comboBox38:setItems({'Atributo', 'Força', 'Agilidade', 'Intelecto', 'Vontade'});
    obj.comboBox38:setField("atributoArma13");
    obj.comboBox38:setFontColor("#D5D5D5");
    obj.comboBox38:setTransparent(true);
    obj.comboBox38:setValue("Atributo");
    obj.comboBox38:setName("comboBox38");

    obj.rectangle186 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle186:setParent(obj.rectangle56);
    obj.rectangle186:setLeft(546);
    obj.rectangle186:setTop(1646);
    obj.rectangle186:setWidth(115);
    obj.rectangle186:setHeight(30);
    obj.rectangle186:setColor("#49244F");
    obj.rectangle186:setName("rectangle186");

    obj.comboBox39 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox39:setParent(obj.rectangle56);
    obj.comboBox39:setLeft(546);
    obj.comboBox39:setTop(1649);
    obj.comboBox39:setItems({'Mãos', 'Mão Principal', 'Duas mãos', 'Mão Inábil', 'Gestos / Palavras', 'Símbolo Sagrado', 'Outro'});
    obj.comboBox39:setField("maosArma13");
    obj.comboBox39:setFontColor("#D5D5D5");
    obj.comboBox39:setTransparent(true);
    obj.comboBox39:setValue("Mãos");
    obj.comboBox39:setWidth(115);
    obj.comboBox39:setName("comboBox39");

    obj.rectangle187 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle187:setParent(obj.rectangle56);
    obj.rectangle187:setLeft(662);
    obj.rectangle187:setTop(1646);
    obj.rectangle187:setWidth(118);
    obj.rectangle187:setHeight(30);
    obj.rectangle187:setColor("#49244F");
    obj.rectangle187:setName("rectangle187");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.rectangle56);
    obj.edit52:setLeft(662);
    obj.edit52:setTop(1645);
    obj.edit52:setWidth(118);
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setField("dadivaRevesArma13");
    obj.edit52:setTransparent(true);
    obj.edit52:setText("Dádiva / Revés");
    obj.edit52:setName("edit52");

    obj.rectangle188 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle188:setParent(obj.rectangle56);
    obj.rectangle188:setLeft(60);
    obj.rectangle188:setTop(1677);
    obj.rectangle188:setWidth(130);
    obj.rectangle188:setHeight(35);
    obj.rectangle188:setColor("#49244F");
    obj.rectangle188:setName("rectangle188");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.rectangle56);
    obj.label82:setLeft(70);
    obj.label82:setTop(1684);
    obj.label82:setWidth(280);
    obj.label82:setFontSize(18);
    obj.label82:setText("Propriedades:");
    obj.label82:setFontColor("#D5D5D5");
    obj.label82:setName("label82");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.rectangle56);
    obj.edit53:setLeft(197);
    obj.edit53:setTop(1553);
    obj.edit53:setWidth(460);
    obj.edit53:setFontSize(18);
    obj.edit53:setFontColor("#49244F");
    obj.edit53:setTransparent(true);
    obj.edit53:setField("propriedadesArma13");
    obj.edit53:setName("edit53");

    obj.rectangle189 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle189:setParent(obj.rectangle56);
    obj.rectangle189:setLeft(662);
    obj.rectangle189:setTop(1679);
    obj.rectangle189:setWidth(118);
    obj.rectangle189:setHeight(30);
    obj.rectangle189:setColor("#49244F");
    obj.rectangle189:setName("rectangle189");

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.rectangle56);
    obj.label83:setLeft(680);
    obj.label83:setTop(1685);
    obj.label83:setWidth(280);
    obj.label83:setFontSize(18);
    obj.label83:setText("Dano:");
    obj.label83:setFontColor("#D5D5D5");
    obj.label83:setName("label83");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.rectangle56);
    obj.edit54:setLeft(730);
    obj.edit54:setTop(1554);
    obj.edit54:setWidth(40);
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setField("danoArma13");
    obj.edit54:setTransparent(true);
    obj.edit54:setName("edit54");

    obj.rectangle190 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle190:setParent(obj.rectangle56);
    obj.rectangle190:setLeft(60);
    obj.rectangle190:setTop(1720);
    obj.rectangle190:setWidth(720);
    obj.rectangle190:setHeight(118);
    obj.rectangle190:setColor("#D5D5D5");
    obj.rectangle190:setStrokeColor("#49244F");
    obj.rectangle190:setStrokeSize(3);
    obj.rectangle190:setName("rectangle190");

    obj.rectangle191 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle191:setParent(obj.rectangle56);
    obj.rectangle191:setLeft(60);
    obj.rectangle191:setTop(1720);
    obj.rectangle191:setWidth(720);
    obj.rectangle191:setHeight(50);
    obj.rectangle191:setColor("#49244F");
    obj.rectangle191:setName("rectangle191");

    obj.comboBox40 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox40:setParent(obj.rectangle56);
    obj.comboBox40:setLeft(65);
    obj.comboBox40:setTop(1728);
    obj.comboBox40:setWidth(615);
    obj.comboBox40:setFontSize(20);
    obj.comboBox40:setHeight(30);
    obj.comboBox40:setItems({'Arma', 'Talento', 'Magia', 'Feitiço'});
    obj.comboBox40:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.comboBox40, "fontStyle", "bold");
    obj.comboBox40:setTransparent(true);
    obj.comboBox40:setField("escolherAtaque14");
    obj.comboBox40:setValue("Arma");
    obj.comboBox40:setName("comboBox40");

    obj.rectangle192 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle192:setParent(obj.rectangle56);
    obj.rectangle192:setLeft(685);
    obj.rectangle192:setTop(1720);
    obj.rectangle192:setWidth(1);
    obj.rectangle192:setHeight(50);
    obj.rectangle192:setColor("#D5D5D5");
    obj.rectangle192:setName("rectangle192");

    obj.image34 = GUI.fromHandle(_obj_newObject("image"));
    obj.image34:setParent(obj.rectangle56);
    obj.image34:setLeft(694);
    obj.image34:setTop(1728);
    obj.image34:setWidth(27);
    obj.image34:setHeight(33);
    obj.image34:setSRC("/img/d20.png");
    obj.image34:setHitTest(true);
    obj.image34:setCursor("handPoint");
    obj.image34:setHint("Ataque");
    obj.image34:setName("image34");

    obj.rectangle193 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle193:setParent(obj.rectangle56);
    obj.rectangle193:setLeft(730);
    obj.rectangle193:setTop(1720);
    obj.rectangle193:setWidth(1);
    obj.rectangle193:setHeight(50);
    obj.rectangle193:setColor("#D5D5D5");
    obj.rectangle193:setName("rectangle193");

    obj.image35 = GUI.fromHandle(_obj_newObject("image"));
    obj.image35:setParent(obj.rectangle56);
    obj.image35:setLeft(741);
    obj.image35:setTop(1732);
    obj.image35:setWidth(28);
    obj.image35:setHeight(28);
    obj.image35:setSRC("/img/d6.png");
    obj.image35:setHitTest(true);
    obj.image35:setCursor("handPoint");
    obj.image35:setHint("Dano");
    obj.image35:setName("image35");

    obj.rectangle194 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle194:setParent(obj.rectangle56);
    obj.rectangle194:setLeft(65);
    obj.rectangle194:setTop(1802);
    obj.rectangle194:setWidth(712);
    obj.rectangle194:setHeight(1);
    obj.rectangle194:setColor("#49244F");
    obj.rectangle194:setName("rectangle194");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.rectangle56);
    obj.edit55:setLeft(68);
    obj.edit55:setTop(1768);
    obj.edit55:setWidth(360);
    obj.edit55:setFontSize(18);
    obj.edit55:setHorzTextAlign("leading");
    obj.edit55:setFontColor("#49244F");
    obj.edit55:setTransparent(true);
    obj.edit55:setField("nomeArma14");
    obj.edit55:setName("edit55");

    obj.rectangle195 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle195:setParent(obj.rectangle56);
    obj.rectangle195:setLeft(445);
    obj.rectangle195:setTop(1771);
    obj.rectangle195:setWidth(100);
    obj.rectangle195:setHeight(30);
    obj.rectangle195:setColor("#49244F");
    obj.rectangle195:setName("rectangle195");

    obj.comboBox41 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox41:setParent(obj.rectangle56);
    obj.comboBox41:setLeft(445);
    obj.comboBox41:setTop(1776);
    obj.comboBox41:setItems({'Atributo', 'Força', 'Agilidade', 'Intelecto', 'Vontade'});
    obj.comboBox41:setField("atributoArma14");
    obj.comboBox41:setFontColor("#D5D5D5");
    obj.comboBox41:setTransparent(true);
    obj.comboBox41:setValue("Atributo");
    obj.comboBox41:setName("comboBox41");

    obj.rectangle196 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle196:setParent(obj.rectangle56);
    obj.rectangle196:setLeft(546);
    obj.rectangle196:setTop(1771);
    obj.rectangle196:setWidth(115);
    obj.rectangle196:setHeight(30);
    obj.rectangle196:setColor("#49244F");
    obj.rectangle196:setName("rectangle196");

    obj.comboBox42 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox42:setParent(obj.rectangle56);
    obj.comboBox42:setLeft(546);
    obj.comboBox42:setTop(1774);
    obj.comboBox42:setItems({'Mãos', 'Mão Principal', 'Duas mãos', 'Mão Inábil', 'Gestos / Palavras', 'Símbolo Sagrado', 'Outro'});
    obj.comboBox42:setField("maosArma14");
    obj.comboBox42:setFontColor("#D5D5D5");
    obj.comboBox42:setTransparent(true);
    obj.comboBox42:setValue("Mãos");
    obj.comboBox42:setWidth(115);
    obj.comboBox42:setName("comboBox42");

    obj.rectangle197 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle197:setParent(obj.rectangle56);
    obj.rectangle197:setLeft(662);
    obj.rectangle197:setTop(1771);
    obj.rectangle197:setWidth(118);
    obj.rectangle197:setHeight(30);
    obj.rectangle197:setColor("#49244F");
    obj.rectangle197:setName("rectangle197");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.rectangle56);
    obj.edit56:setLeft(662);
    obj.edit56:setTop(1770);
    obj.edit56:setWidth(118);
    obj.edit56:setHorzTextAlign("center");
    obj.edit56:setField("dadivaRevesArma14");
    obj.edit56:setTransparent(true);
    obj.edit56:setText("Dádiva / Revés");
    obj.edit56:setName("edit56");

    obj.rectangle198 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle198:setParent(obj.rectangle56);
    obj.rectangle198:setLeft(60);
    obj.rectangle198:setTop(1802);
    obj.rectangle198:setWidth(130);
    obj.rectangle198:setHeight(35);
    obj.rectangle198:setColor("#49244F");
    obj.rectangle198:setName("rectangle198");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.rectangle56);
    obj.label84:setLeft(70);
    obj.label84:setTop(1809);
    obj.label84:setWidth(280);
    obj.label84:setFontSize(18);
    obj.label84:setText("Propriedades:");
    obj.label84:setFontColor("#D5D5D5");
    obj.label84:setName("label84");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.rectangle56);
    obj.edit57:setLeft(197);
    obj.edit57:setTop(1678);
    obj.edit57:setWidth(460);
    obj.edit57:setFontSize(18);
    obj.edit57:setFontColor("#49244F");
    obj.edit57:setTransparent(true);
    obj.edit57:setField("propriedadesArma14");
    obj.edit57:setName("edit57");

    obj.rectangle199 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle199:setParent(obj.rectangle56);
    obj.rectangle199:setLeft(662);
    obj.rectangle199:setTop(1804);
    obj.rectangle199:setWidth(118);
    obj.rectangle199:setHeight(30);
    obj.rectangle199:setColor("#49244F");
    obj.rectangle199:setName("rectangle199");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.rectangle56);
    obj.label85:setLeft(680);
    obj.label85:setTop(1810);
    obj.label85:setWidth(280);
    obj.label85:setFontSize(18);
    obj.label85:setText("Dano:");
    obj.label85:setFontColor("#D5D5D5");
    obj.label85:setName("label85");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.rectangle56);
    obj.edit58:setLeft(730);
    obj.edit58:setTop(1679);
    obj.edit58:setWidth(40);
    obj.edit58:setHorzTextAlign("center");
    obj.edit58:setField("danoArma14");
    obj.edit58:setTransparent(true);
    obj.edit58:setName("edit58");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.tab2);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(10);
    obj.layout3:setWidth(815);
    obj.layout3:setHeight(825);
    obj.layout3:setName("layout3");

    obj.rectangle200 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle200:setParent(obj.layout3);
    obj.rectangle200:setLeft(0);
    obj.rectangle200:setTop(725);
    obj.rectangle200:setWidth(799);
    obj.rectangle200:setHeight(105);
    obj.rectangle200:setColor("#D5D5D5");
    obj.rectangle200:setName("rectangle200");

    obj.rectangle201 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle201:setParent(obj.layout3);
    obj.rectangle201:setLeft(65);
    obj.rectangle201:setTop(730);
    obj.rectangle201:setWidth(712);
    obj.rectangle201:setHeight(1);
    obj.rectangle201:setColor("#49244F");
    obj.rectangle201:setName("rectangle201");

    obj.rectangle202 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle202:setParent(obj.layout3);
    obj.rectangle202:setLeft(65);
    obj.rectangle202:setTop(735);
    obj.rectangle202:setWidth(712);
    obj.rectangle202:setHeight(1);
    obj.rectangle202:setColor("#49244F");
    obj.rectangle202:setName("rectangle202");

    obj.rectangle203 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle203:setParent(obj.layout3);
    obj.rectangle203:setLeft(60);
    obj.rectangle203:setTop(745);
    obj.rectangle203:setWidth(720);
    obj.rectangle203:setHeight(68);
    obj.rectangle203:setColor("#D5D5D5");
    obj.rectangle203:setStrokeColor("#49244F");
    obj.rectangle203:setStrokeSize(3);
    obj.rectangle203:setName("rectangle203");

    obj.rectangle204 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle204:setParent(obj.layout3);
    obj.rectangle204:setLeft(60);
    obj.rectangle204:setTop(745);
    obj.rectangle204:setWidth(720);
    obj.rectangle204:setHeight(34);
    obj.rectangle204:setColor("#49244F");
    obj.rectangle204:setName("rectangle204");

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.layout3);
    obj.label86:setLeft(70);
    obj.label86:setTop(752);
    obj.label86:setWidth(280);
    obj.label86:setFontSize(20);
    obj.label86:setText("Armadura e Escudo");
    obj.label86:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label86, "fontStyle", "bold");
    obj.label86:setName("label86");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout3);
    obj.edit59:setLeft(68);
    obj.edit59:setTop(779);
    obj.edit59:setWidth(705);
    obj.edit59:setFontSize(18);
    obj.edit59:setHorzTextAlign("leading");
    obj.edit59:setFontColor("#49244F");
    obj.edit59:setTransparent(true);
    obj.edit59:setField("armaduraEscudo");
    obj.edit59:setName("edit59");

    obj.rectangle205 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle205:setParent(obj.layout3);
    obj.rectangle205:setLeft(0);
    obj.rectangle205:setTop(0);
    obj.rectangle205:setWidth(799);
    obj.rectangle205:setHeight(5);
    obj.rectangle205:setColor("#D5D5D5");
    obj.rectangle205:setName("rectangle205");

    obj.image36 = GUI.fromHandle(_obj_newObject("image"));
    obj.image36:setParent(obj.layout3);
    obj.image36:setLeft(0);
    obj.image36:setTop(0);
    obj.image36:setWidth(799);
    obj.image36:setHeight(825);
    obj.image36:setSRC("/img/borda.png");
    obj.image36:setName("image36");

    obj.image37 = GUI.fromHandle(_obj_newObject("image"));
    obj.image37:setParent(obj.tab2);
    obj.image37:setLeft(69);
    obj.image37:setTop(875);
    obj.image37:setWidth(676);
    obj.image37:setHeight(194);
    obj.image37:setSRC("/img/logo.png");
    obj.image37:setName("image37");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Benefícios e Talentos");
    obj.tab3:setName("tab3");

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.tab3);
    obj.scrollBox3:setLeft(0);
    obj.scrollBox3:setTop(10);
    obj.scrollBox3:setWidth(815);
    obj.scrollBox3:setHeight(725);
    obj.scrollBox3:setName("scrollBox3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox3);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(10);
    obj.layout4:setWidth(799);
    obj.layout4:setHeight(3830);
    obj.layout4:setName("layout4");

    obj.rectangle206 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle206:setParent(obj.layout4);
    obj.rectangle206:setLeft(0);
    obj.rectangle206:setTop(0);
    obj.rectangle206:setWidth(799);
    obj.rectangle206:setHeight(3830);
    obj.rectangle206:setColor("#D5D5D5");
    obj.rectangle206:setName("rectangle206");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.rectangle206);
    obj.label87:setLeft(170);
    obj.label87:setTop(60);
    obj.label87:setWidth(480);
    obj.label87:setFontSize(24);
    obj.label87:setHorzTextAlign("center");
    obj.label87:setText("BENEFÍCIOS E TALENTOS");
    obj.label87:setFontColor("#49244F");
    lfm_setPropAsString(obj.label87, "fontStyle", "bold");
    obj.label87:setName("label87");

    obj.rectangle207 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle207:setParent(obj.rectangle206);
    obj.rectangle207:setLeft(60);
    obj.rectangle207:setTop(95);
    obj.rectangle207:setWidth(720);
    obj.rectangle207:setHeight(231);
    obj.rectangle207:setColor("#D5D5D5");
    obj.rectangle207:setStrokeColor("#49244F");
    obj.rectangle207:setStrokeSize(3);
    obj.rectangle207:setName("rectangle207");

    obj.rectangle208 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle208:setParent(obj.rectangle206);
    obj.rectangle208:setLeft(60);
    obj.rectangle208:setTop(95);
    obj.rectangle208:setWidth(720);
    obj.rectangle208:setHeight(50);
    obj.rectangle208:setColor("#49244F");
    obj.rectangle208:setName("rectangle208");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.rectangle206);
    obj.edit60:setLeft(68);
    obj.edit60:setTop(103);
    obj.edit60:setWidth(715);
    obj.edit60:setFontSize(20);
    obj.edit60:setHeight(30);
    obj.edit60:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit60, "fontStyle", "bold");
    obj.edit60:setTransparent(true);
    obj.edit60:setField("Talento01");
    obj.edit60:setName("edit60");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.rectangle206);
    obj.textEditor1:setLeft(68);
    obj.textEditor1:setTop(143);
    obj.textEditor1:setWidth(710);
    obj.textEditor1:setFontSize(18);
    obj.textEditor1:setHeight(183);
    obj.textEditor1:setFontColor("#49244F");
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setField("descricaoTalento01");
    obj.textEditor1:setName("textEditor1");

    obj.rectangle209 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle209:setParent(obj.rectangle206);
    obj.rectangle209:setLeft(60);
    obj.rectangle209:setTop(337);
    obj.rectangle209:setWidth(720);
    obj.rectangle209:setHeight(1);
    obj.rectangle209:setColor("#49244F");
    obj.rectangle209:setName("rectangle209");

    obj.rectangle210 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle210:setParent(obj.rectangle206);
    obj.rectangle210:setLeft(60);
    obj.rectangle210:setTop(332);
    obj.rectangle210:setWidth(720);
    obj.rectangle210:setHeight(1);
    obj.rectangle210:setColor("#49244F");
    obj.rectangle210:setName("rectangle210");

    obj.rectangle211 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle211:setParent(obj.rectangle206);
    obj.rectangle211:setLeft(60);
    obj.rectangle211:setTop(345);
    obj.rectangle211:setWidth(720);
    obj.rectangle211:setHeight(231);
    obj.rectangle211:setColor("#D5D5D5");
    obj.rectangle211:setStrokeColor("#49244F");
    obj.rectangle211:setStrokeSize(3);
    obj.rectangle211:setName("rectangle211");

    obj.rectangle212 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle212:setParent(obj.rectangle206);
    obj.rectangle212:setLeft(60);
    obj.rectangle212:setTop(345);
    obj.rectangle212:setWidth(720);
    obj.rectangle212:setHeight(50);
    obj.rectangle212:setColor("#49244F");
    obj.rectangle212:setName("rectangle212");

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.rectangle206);
    obj.edit61:setLeft(65);
    obj.edit61:setTop(353);
    obj.edit61:setWidth(715);
    obj.edit61:setFontSize(20);
    obj.edit61:setHeight(30);
    obj.edit61:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit61, "fontStyle", "bold");
    obj.edit61:setTransparent(true);
    obj.edit61:setField("Talento02");
    obj.edit61:setName("edit61");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.rectangle206);
    obj.textEditor2:setLeft(68);
    obj.textEditor2:setTop(393);
    obj.textEditor2:setWidth(710);
    obj.textEditor2:setFontSize(18);
    obj.textEditor2:setHeight(183);
    obj.textEditor2:setFontColor("#49244F");
    obj.textEditor2:setTransparent(true);
    obj.textEditor2:setField("descricaoTalento02");
    obj.textEditor2:setName("textEditor2");

    obj.rectangle213 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle213:setParent(obj.rectangle206);
    obj.rectangle213:setLeft(60);
    obj.rectangle213:setTop(582);
    obj.rectangle213:setWidth(720);
    obj.rectangle213:setHeight(1);
    obj.rectangle213:setColor("#49244F");
    obj.rectangle213:setName("rectangle213");

    obj.rectangle214 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle214:setParent(obj.rectangle206);
    obj.rectangle214:setLeft(60);
    obj.rectangle214:setTop(587);
    obj.rectangle214:setWidth(720);
    obj.rectangle214:setHeight(1);
    obj.rectangle214:setColor("#49244F");
    obj.rectangle214:setName("rectangle214");

    obj.rectangle215 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle215:setParent(obj.rectangle206);
    obj.rectangle215:setLeft(60);
    obj.rectangle215:setTop(595);
    obj.rectangle215:setWidth(720);
    obj.rectangle215:setHeight(231);
    obj.rectangle215:setColor("#D5D5D5");
    obj.rectangle215:setStrokeColor("#49244F");
    obj.rectangle215:setStrokeSize(3);
    obj.rectangle215:setName("rectangle215");

    obj.rectangle216 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle216:setParent(obj.rectangle206);
    obj.rectangle216:setLeft(60);
    obj.rectangle216:setTop(595);
    obj.rectangle216:setWidth(720);
    obj.rectangle216:setHeight(50);
    obj.rectangle216:setColor("#49244F");
    obj.rectangle216:setName("rectangle216");

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.rectangle206);
    obj.edit62:setLeft(65);
    obj.edit62:setTop(603);
    obj.edit62:setWidth(715);
    obj.edit62:setFontSize(20);
    obj.edit62:setHeight(30);
    obj.edit62:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit62, "fontStyle", "bold");
    obj.edit62:setTransparent(true);
    obj.edit62:setField("Talento03");
    obj.edit62:setName("edit62");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.rectangle206);
    obj.textEditor3:setLeft(68);
    obj.textEditor3:setTop(643);
    obj.textEditor3:setWidth(710);
    obj.textEditor3:setFontSize(18);
    obj.textEditor3:setHeight(183);
    obj.textEditor3:setFontColor("#49244F");
    obj.textEditor3:setTransparent(true);
    obj.textEditor3:setField("descricaoTalento03");
    obj.textEditor3:setName("textEditor3");

    obj.rectangle217 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle217:setParent(obj.rectangle206);
    obj.rectangle217:setLeft(60);
    obj.rectangle217:setTop(832);
    obj.rectangle217:setWidth(720);
    obj.rectangle217:setHeight(1);
    obj.rectangle217:setColor("#49244F");
    obj.rectangle217:setName("rectangle217");

    obj.rectangle218 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle218:setParent(obj.rectangle206);
    obj.rectangle218:setLeft(60);
    obj.rectangle218:setTop(837);
    obj.rectangle218:setWidth(720);
    obj.rectangle218:setHeight(1);
    obj.rectangle218:setColor("#49244F");
    obj.rectangle218:setName("rectangle218");

    obj.rectangle219 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle219:setParent(obj.rectangle206);
    obj.rectangle219:setLeft(60);
    obj.rectangle219:setTop(845);
    obj.rectangle219:setWidth(720);
    obj.rectangle219:setHeight(231);
    obj.rectangle219:setColor("#D5D5D5");
    obj.rectangle219:setStrokeColor("#49244F");
    obj.rectangle219:setStrokeSize(3);
    obj.rectangle219:setName("rectangle219");

    obj.rectangle220 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle220:setParent(obj.rectangle206);
    obj.rectangle220:setLeft(60);
    obj.rectangle220:setTop(845);
    obj.rectangle220:setWidth(720);
    obj.rectangle220:setHeight(50);
    obj.rectangle220:setColor("#49244F");
    obj.rectangle220:setName("rectangle220");

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.rectangle206);
    obj.edit63:setLeft(65);
    obj.edit63:setTop(853);
    obj.edit63:setWidth(715);
    obj.edit63:setFontSize(20);
    obj.edit63:setHeight(30);
    obj.edit63:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit63, "fontStyle", "bold");
    obj.edit63:setTransparent(true);
    obj.edit63:setField("Talento04");
    obj.edit63:setName("edit63");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.rectangle206);
    obj.textEditor4:setLeft(68);
    obj.textEditor4:setTop(893);
    obj.textEditor4:setWidth(710);
    obj.textEditor4:setFontSize(18);
    obj.textEditor4:setHeight(183);
    obj.textEditor4:setFontColor("#49244F");
    obj.textEditor4:setTransparent(true);
    obj.textEditor4:setField("descricaoTalento04");
    obj.textEditor4:setName("textEditor4");

    obj.rectangle221 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle221:setParent(obj.rectangle206);
    obj.rectangle221:setLeft(60);
    obj.rectangle221:setTop(1082);
    obj.rectangle221:setWidth(720);
    obj.rectangle221:setHeight(1);
    obj.rectangle221:setColor("#49244F");
    obj.rectangle221:setName("rectangle221");

    obj.rectangle222 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle222:setParent(obj.rectangle206);
    obj.rectangle222:setLeft(60);
    obj.rectangle222:setTop(1087);
    obj.rectangle222:setWidth(720);
    obj.rectangle222:setHeight(1);
    obj.rectangle222:setColor("#49244F");
    obj.rectangle222:setName("rectangle222");

    obj.rectangle223 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle223:setParent(obj.rectangle206);
    obj.rectangle223:setLeft(60);
    obj.rectangle223:setTop(1095);
    obj.rectangle223:setWidth(720);
    obj.rectangle223:setHeight(231);
    obj.rectangle223:setColor("#D5D5D5");
    obj.rectangle223:setStrokeColor("#49244F");
    obj.rectangle223:setStrokeSize(3);
    obj.rectangle223:setName("rectangle223");

    obj.rectangle224 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle224:setParent(obj.rectangle206);
    obj.rectangle224:setLeft(60);
    obj.rectangle224:setTop(1095);
    obj.rectangle224:setWidth(720);
    obj.rectangle224:setHeight(50);
    obj.rectangle224:setColor("#49244F");
    obj.rectangle224:setName("rectangle224");

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.rectangle206);
    obj.edit64:setLeft(65);
    obj.edit64:setTop(1103);
    obj.edit64:setWidth(715);
    obj.edit64:setFontSize(20);
    obj.edit64:setHeight(30);
    obj.edit64:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit64, "fontStyle", "bold");
    obj.edit64:setTransparent(true);
    obj.edit64:setField("Talento05");
    obj.edit64:setName("edit64");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.rectangle206);
    obj.textEditor5:setLeft(68);
    obj.textEditor5:setTop(1143);
    obj.textEditor5:setWidth(710);
    obj.textEditor5:setFontSize(18);
    obj.textEditor5:setHeight(183);
    obj.textEditor5:setFontColor("#49244F");
    obj.textEditor5:setTransparent(true);
    obj.textEditor5:setField("descricaoTalento05");
    obj.textEditor5:setName("textEditor5");

    obj.rectangle225 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle225:setParent(obj.rectangle206);
    obj.rectangle225:setLeft(60);
    obj.rectangle225:setTop(1332);
    obj.rectangle225:setWidth(720);
    obj.rectangle225:setHeight(1);
    obj.rectangle225:setColor("#49244F");
    obj.rectangle225:setName("rectangle225");

    obj.rectangle226 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle226:setParent(obj.rectangle206);
    obj.rectangle226:setLeft(60);
    obj.rectangle226:setTop(1337);
    obj.rectangle226:setWidth(720);
    obj.rectangle226:setHeight(1);
    obj.rectangle226:setColor("#49244F");
    obj.rectangle226:setName("rectangle226");

    obj.rectangle227 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle227:setParent(obj.rectangle206);
    obj.rectangle227:setLeft(60);
    obj.rectangle227:setTop(1345);
    obj.rectangle227:setWidth(720);
    obj.rectangle227:setHeight(231);
    obj.rectangle227:setColor("#D5D5D5");
    obj.rectangle227:setStrokeColor("#49244F");
    obj.rectangle227:setStrokeSize(3);
    obj.rectangle227:setName("rectangle227");

    obj.rectangle228 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle228:setParent(obj.rectangle206);
    obj.rectangle228:setLeft(60);
    obj.rectangle228:setTop(1345);
    obj.rectangle228:setWidth(720);
    obj.rectangle228:setHeight(50);
    obj.rectangle228:setColor("#49244F");
    obj.rectangle228:setName("rectangle228");

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.rectangle206);
    obj.edit65:setLeft(65);
    obj.edit65:setTop(1353);
    obj.edit65:setWidth(715);
    obj.edit65:setFontSize(20);
    obj.edit65:setHeight(30);
    obj.edit65:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit65, "fontStyle", "bold");
    obj.edit65:setTransparent(true);
    obj.edit65:setField("Talento06");
    obj.edit65:setName("edit65");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.rectangle206);
    obj.textEditor6:setLeft(68);
    obj.textEditor6:setTop(1393);
    obj.textEditor6:setWidth(710);
    obj.textEditor6:setFontSize(18);
    obj.textEditor6:setHeight(183);
    obj.textEditor6:setFontColor("#49244F");
    obj.textEditor6:setTransparent(true);
    obj.textEditor6:setField("descricaoTalento06");
    obj.textEditor6:setName("textEditor6");

    obj.rectangle229 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle229:setParent(obj.rectangle206);
    obj.rectangle229:setLeft(60);
    obj.rectangle229:setTop(1582);
    obj.rectangle229:setWidth(720);
    obj.rectangle229:setHeight(1);
    obj.rectangle229:setColor("#49244F");
    obj.rectangle229:setName("rectangle229");

    obj.rectangle230 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle230:setParent(obj.rectangle206);
    obj.rectangle230:setLeft(60);
    obj.rectangle230:setTop(1587);
    obj.rectangle230:setWidth(720);
    obj.rectangle230:setHeight(1);
    obj.rectangle230:setColor("#49244F");
    obj.rectangle230:setName("rectangle230");

    obj.rectangle231 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle231:setParent(obj.rectangle206);
    obj.rectangle231:setLeft(60);
    obj.rectangle231:setTop(1595);
    obj.rectangle231:setWidth(720);
    obj.rectangle231:setHeight(231);
    obj.rectangle231:setColor("#D5D5D5");
    obj.rectangle231:setStrokeColor("#49244F");
    obj.rectangle231:setStrokeSize(3);
    obj.rectangle231:setName("rectangle231");

    obj.rectangle232 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle232:setParent(obj.rectangle206);
    obj.rectangle232:setLeft(60);
    obj.rectangle232:setTop(1595);
    obj.rectangle232:setWidth(720);
    obj.rectangle232:setHeight(50);
    obj.rectangle232:setColor("#49244F");
    obj.rectangle232:setName("rectangle232");

    obj.edit66 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.rectangle206);
    obj.edit66:setLeft(65);
    obj.edit66:setTop(1603);
    obj.edit66:setWidth(715);
    obj.edit66:setFontSize(20);
    obj.edit66:setHeight(30);
    obj.edit66:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit66, "fontStyle", "bold");
    obj.edit66:setTransparent(true);
    obj.edit66:setField("Talento07");
    obj.edit66:setName("edit66");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.rectangle206);
    obj.textEditor7:setLeft(68);
    obj.textEditor7:setTop(1643);
    obj.textEditor7:setWidth(710);
    obj.textEditor7:setFontSize(18);
    obj.textEditor7:setHeight(183);
    obj.textEditor7:setFontColor("#49244F");
    obj.textEditor7:setTransparent(true);
    obj.textEditor7:setField("descricaoTalento07");
    obj.textEditor7:setName("textEditor7");

    obj.rectangle233 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle233:setParent(obj.rectangle206);
    obj.rectangle233:setLeft(60);
    obj.rectangle233:setTop(1832);
    obj.rectangle233:setWidth(720);
    obj.rectangle233:setHeight(1);
    obj.rectangle233:setColor("#49244F");
    obj.rectangle233:setName("rectangle233");

    obj.rectangle234 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle234:setParent(obj.rectangle206);
    obj.rectangle234:setLeft(60);
    obj.rectangle234:setTop(1837);
    obj.rectangle234:setWidth(720);
    obj.rectangle234:setHeight(1);
    obj.rectangle234:setColor("#49244F");
    obj.rectangle234:setName("rectangle234");

    obj.rectangle235 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle235:setParent(obj.rectangle206);
    obj.rectangle235:setLeft(60);
    obj.rectangle235:setTop(1845);
    obj.rectangle235:setWidth(720);
    obj.rectangle235:setHeight(231);
    obj.rectangle235:setColor("#D5D5D5");
    obj.rectangle235:setStrokeColor("#49244F");
    obj.rectangle235:setStrokeSize(3);
    obj.rectangle235:setName("rectangle235");

    obj.rectangle236 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle236:setParent(obj.rectangle206);
    obj.rectangle236:setLeft(60);
    obj.rectangle236:setTop(1845);
    obj.rectangle236:setWidth(720);
    obj.rectangle236:setHeight(50);
    obj.rectangle236:setColor("#49244F");
    obj.rectangle236:setName("rectangle236");

    obj.edit67 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.rectangle206);
    obj.edit67:setLeft(65);
    obj.edit67:setTop(1853);
    obj.edit67:setWidth(715);
    obj.edit67:setFontSize(20);
    obj.edit67:setHeight(30);
    obj.edit67:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit67, "fontStyle", "bold");
    obj.edit67:setTransparent(true);
    obj.edit67:setField("Talento08");
    obj.edit67:setName("edit67");

    obj.textEditor8 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.rectangle206);
    obj.textEditor8:setLeft(68);
    obj.textEditor8:setTop(1893);
    obj.textEditor8:setWidth(710);
    obj.textEditor8:setFontSize(18);
    obj.textEditor8:setHeight(183);
    obj.textEditor8:setFontColor("#49244F");
    obj.textEditor8:setTransparent(true);
    obj.textEditor8:setField("descricaoTalento08");
    obj.textEditor8:setName("textEditor8");

    obj.rectangle237 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle237:setParent(obj.rectangle206);
    obj.rectangle237:setLeft(60);
    obj.rectangle237:setTop(2082);
    obj.rectangle237:setWidth(720);
    obj.rectangle237:setHeight(1);
    obj.rectangle237:setColor("#49244F");
    obj.rectangle237:setName("rectangle237");

    obj.rectangle238 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle238:setParent(obj.rectangle206);
    obj.rectangle238:setLeft(60);
    obj.rectangle238:setTop(2087);
    obj.rectangle238:setWidth(720);
    obj.rectangle238:setHeight(1);
    obj.rectangle238:setColor("#49244F");
    obj.rectangle238:setName("rectangle238");

    obj.rectangle239 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle239:setParent(obj.rectangle206);
    obj.rectangle239:setLeft(60);
    obj.rectangle239:setTop(2095);
    obj.rectangle239:setWidth(720);
    obj.rectangle239:setHeight(231);
    obj.rectangle239:setColor("#D5D5D5");
    obj.rectangle239:setStrokeColor("#49244F");
    obj.rectangle239:setStrokeSize(3);
    obj.rectangle239:setName("rectangle239");

    obj.rectangle240 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle240:setParent(obj.rectangle206);
    obj.rectangle240:setLeft(60);
    obj.rectangle240:setTop(2095);
    obj.rectangle240:setWidth(720);
    obj.rectangle240:setHeight(50);
    obj.rectangle240:setColor("#49244F");
    obj.rectangle240:setName("rectangle240");

    obj.edit68 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.rectangle206);
    obj.edit68:setLeft(65);
    obj.edit68:setTop(2103);
    obj.edit68:setWidth(715);
    obj.edit68:setFontSize(20);
    obj.edit68:setHeight(30);
    obj.edit68:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit68, "fontStyle", "bold");
    obj.edit68:setTransparent(true);
    obj.edit68:setField("Talento09");
    obj.edit68:setName("edit68");

    obj.textEditor9 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.rectangle206);
    obj.textEditor9:setLeft(68);
    obj.textEditor9:setTop(2143);
    obj.textEditor9:setWidth(710);
    obj.textEditor9:setFontSize(18);
    obj.textEditor9:setHeight(183);
    obj.textEditor9:setFontColor("#49244F");
    obj.textEditor9:setTransparent(true);
    obj.textEditor9:setField("descricaoTalento09");
    obj.textEditor9:setName("textEditor9");

    obj.rectangle241 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle241:setParent(obj.rectangle206);
    obj.rectangle241:setLeft(60);
    obj.rectangle241:setTop(2332);
    obj.rectangle241:setWidth(720);
    obj.rectangle241:setHeight(1);
    obj.rectangle241:setColor("#49244F");
    obj.rectangle241:setName("rectangle241");

    obj.rectangle242 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle242:setParent(obj.rectangle206);
    obj.rectangle242:setLeft(60);
    obj.rectangle242:setTop(2337);
    obj.rectangle242:setWidth(720);
    obj.rectangle242:setHeight(1);
    obj.rectangle242:setColor("#49244F");
    obj.rectangle242:setName("rectangle242");

    obj.rectangle243 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle243:setParent(obj.rectangle206);
    obj.rectangle243:setLeft(60);
    obj.rectangle243:setTop(2345);
    obj.rectangle243:setWidth(720);
    obj.rectangle243:setHeight(231);
    obj.rectangle243:setColor("#D5D5D5");
    obj.rectangle243:setStrokeColor("#49244F");
    obj.rectangle243:setStrokeSize(3);
    obj.rectangle243:setName("rectangle243");

    obj.rectangle244 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle244:setParent(obj.rectangle206);
    obj.rectangle244:setLeft(60);
    obj.rectangle244:setTop(2345);
    obj.rectangle244:setWidth(720);
    obj.rectangle244:setHeight(50);
    obj.rectangle244:setColor("#49244F");
    obj.rectangle244:setName("rectangle244");

    obj.edit69 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.rectangle206);
    obj.edit69:setLeft(65);
    obj.edit69:setTop(2353);
    obj.edit69:setWidth(715);
    obj.edit69:setFontSize(20);
    obj.edit69:setHeight(30);
    obj.edit69:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit69, "fontStyle", "bold");
    obj.edit69:setTransparent(true);
    obj.edit69:setField("Talento10");
    obj.edit69:setName("edit69");

    obj.textEditor10 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.rectangle206);
    obj.textEditor10:setLeft(68);
    obj.textEditor10:setTop(2393);
    obj.textEditor10:setWidth(710);
    obj.textEditor10:setFontSize(18);
    obj.textEditor10:setHeight(183);
    obj.textEditor10:setFontColor("#49244F");
    obj.textEditor10:setTransparent(true);
    obj.textEditor10:setField("descricaoTalento10");
    obj.textEditor10:setName("textEditor10");

    obj.rectangle245 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle245:setParent(obj.rectangle206);
    obj.rectangle245:setLeft(60);
    obj.rectangle245:setTop(2582);
    obj.rectangle245:setWidth(720);
    obj.rectangle245:setHeight(1);
    obj.rectangle245:setColor("#49244F");
    obj.rectangle245:setName("rectangle245");

    obj.rectangle246 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle246:setParent(obj.rectangle206);
    obj.rectangle246:setLeft(60);
    obj.rectangle246:setTop(2587);
    obj.rectangle246:setWidth(720);
    obj.rectangle246:setHeight(1);
    obj.rectangle246:setColor("#49244F");
    obj.rectangle246:setName("rectangle246");

    obj.rectangle247 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle247:setParent(obj.rectangle206);
    obj.rectangle247:setLeft(60);
    obj.rectangle247:setTop(2595);
    obj.rectangle247:setWidth(720);
    obj.rectangle247:setHeight(231);
    obj.rectangle247:setColor("#D5D5D5");
    obj.rectangle247:setStrokeColor("#49244F");
    obj.rectangle247:setStrokeSize(3);
    obj.rectangle247:setName("rectangle247");

    obj.rectangle248 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle248:setParent(obj.rectangle206);
    obj.rectangle248:setLeft(60);
    obj.rectangle248:setTop(2595);
    obj.rectangle248:setWidth(720);
    obj.rectangle248:setHeight(50);
    obj.rectangle248:setColor("#49244F");
    obj.rectangle248:setName("rectangle248");

    obj.edit70 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.rectangle206);
    obj.edit70:setLeft(65);
    obj.edit70:setTop(2603);
    obj.edit70:setWidth(715);
    obj.edit70:setFontSize(20);
    obj.edit70:setHeight(30);
    obj.edit70:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit70, "fontStyle", "bold");
    obj.edit70:setTransparent(true);
    obj.edit70:setField("Talento11");
    obj.edit70:setName("edit70");

    obj.textEditor11 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor11:setParent(obj.rectangle206);
    obj.textEditor11:setLeft(68);
    obj.textEditor11:setTop(2643);
    obj.textEditor11:setWidth(710);
    obj.textEditor11:setFontSize(18);
    obj.textEditor11:setHeight(183);
    obj.textEditor11:setFontColor("#49244F");
    obj.textEditor11:setTransparent(true);
    obj.textEditor11:setField("descricaoTalento11");
    obj.textEditor11:setName("textEditor11");

    obj.rectangle249 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle249:setParent(obj.rectangle206);
    obj.rectangle249:setLeft(60);
    obj.rectangle249:setTop(2832);
    obj.rectangle249:setWidth(720);
    obj.rectangle249:setHeight(1);
    obj.rectangle249:setColor("#49244F");
    obj.rectangle249:setName("rectangle249");

    obj.rectangle250 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle250:setParent(obj.rectangle206);
    obj.rectangle250:setLeft(60);
    obj.rectangle250:setTop(2837);
    obj.rectangle250:setWidth(720);
    obj.rectangle250:setHeight(1);
    obj.rectangle250:setColor("#49244F");
    obj.rectangle250:setName("rectangle250");

    obj.rectangle251 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle251:setParent(obj.rectangle206);
    obj.rectangle251:setLeft(60);
    obj.rectangle251:setTop(2845);
    obj.rectangle251:setWidth(720);
    obj.rectangle251:setHeight(231);
    obj.rectangle251:setColor("#D5D5D5");
    obj.rectangle251:setStrokeColor("#49244F");
    obj.rectangle251:setStrokeSize(3);
    obj.rectangle251:setName("rectangle251");

    obj.rectangle252 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle252:setParent(obj.rectangle206);
    obj.rectangle252:setLeft(60);
    obj.rectangle252:setTop(2845);
    obj.rectangle252:setWidth(720);
    obj.rectangle252:setHeight(50);
    obj.rectangle252:setColor("#49244F");
    obj.rectangle252:setName("rectangle252");

    obj.edit71 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.rectangle206);
    obj.edit71:setLeft(65);
    obj.edit71:setTop(2853);
    obj.edit71:setWidth(715);
    obj.edit71:setFontSize(20);
    obj.edit71:setHeight(30);
    obj.edit71:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit71, "fontStyle", "bold");
    obj.edit71:setTransparent(true);
    obj.edit71:setField("Talento12");
    obj.edit71:setName("edit71");

    obj.textEditor12 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor12:setParent(obj.rectangle206);
    obj.textEditor12:setLeft(68);
    obj.textEditor12:setTop(2893);
    obj.textEditor12:setWidth(710);
    obj.textEditor12:setFontSize(18);
    obj.textEditor12:setHeight(183);
    obj.textEditor12:setFontColor("#49244F");
    obj.textEditor12:setTransparent(true);
    obj.textEditor12:setField("descricaoTalento12");
    obj.textEditor12:setName("textEditor12");

    obj.rectangle253 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle253:setParent(obj.rectangle206);
    obj.rectangle253:setLeft(60);
    obj.rectangle253:setTop(3082);
    obj.rectangle253:setWidth(720);
    obj.rectangle253:setHeight(1);
    obj.rectangle253:setColor("#49244F");
    obj.rectangle253:setName("rectangle253");

    obj.rectangle254 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle254:setParent(obj.rectangle206);
    obj.rectangle254:setLeft(60);
    obj.rectangle254:setTop(3087);
    obj.rectangle254:setWidth(720);
    obj.rectangle254:setHeight(1);
    obj.rectangle254:setColor("#49244F");
    obj.rectangle254:setName("rectangle254");

    obj.rectangle255 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle255:setParent(obj.rectangle206);
    obj.rectangle255:setLeft(60);
    obj.rectangle255:setTop(3095);
    obj.rectangle255:setWidth(720);
    obj.rectangle255:setHeight(231);
    obj.rectangle255:setColor("#D5D5D5");
    obj.rectangle255:setStrokeColor("#49244F");
    obj.rectangle255:setStrokeSize(3);
    obj.rectangle255:setName("rectangle255");

    obj.rectangle256 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle256:setParent(obj.rectangle206);
    obj.rectangle256:setLeft(60);
    obj.rectangle256:setTop(3095);
    obj.rectangle256:setWidth(720);
    obj.rectangle256:setHeight(50);
    obj.rectangle256:setColor("#49244F");
    obj.rectangle256:setName("rectangle256");

    obj.edit72 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.rectangle206);
    obj.edit72:setLeft(65);
    obj.edit72:setTop(3103);
    obj.edit72:setWidth(715);
    obj.edit72:setFontSize(20);
    obj.edit72:setHeight(30);
    obj.edit72:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit72, "fontStyle", "bold");
    obj.edit72:setTransparent(true);
    obj.edit72:setField("Talento13");
    obj.edit72:setName("edit72");

    obj.textEditor13 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor13:setParent(obj.rectangle206);
    obj.textEditor13:setLeft(68);
    obj.textEditor13:setTop(3143);
    obj.textEditor13:setWidth(710);
    obj.textEditor13:setFontSize(18);
    obj.textEditor13:setHeight(183);
    obj.textEditor13:setFontColor("#49244F");
    obj.textEditor13:setTransparent(true);
    obj.textEditor13:setField("descricaoTalento13");
    obj.textEditor13:setName("textEditor13");

    obj.rectangle257 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle257:setParent(obj.rectangle206);
    obj.rectangle257:setLeft(60);
    obj.rectangle257:setTop(3332);
    obj.rectangle257:setWidth(720);
    obj.rectangle257:setHeight(1);
    obj.rectangle257:setColor("#49244F");
    obj.rectangle257:setName("rectangle257");

    obj.rectangle258 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle258:setParent(obj.rectangle206);
    obj.rectangle258:setLeft(60);
    obj.rectangle258:setTop(3337);
    obj.rectangle258:setWidth(720);
    obj.rectangle258:setHeight(1);
    obj.rectangle258:setColor("#49244F");
    obj.rectangle258:setName("rectangle258");

    obj.rectangle259 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle259:setParent(obj.rectangle206);
    obj.rectangle259:setLeft(60);
    obj.rectangle259:setTop(3345);
    obj.rectangle259:setWidth(720);
    obj.rectangle259:setHeight(231);
    obj.rectangle259:setColor("#D5D5D5");
    obj.rectangle259:setStrokeColor("#49244F");
    obj.rectangle259:setStrokeSize(3);
    obj.rectangle259:setName("rectangle259");

    obj.rectangle260 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle260:setParent(obj.rectangle206);
    obj.rectangle260:setLeft(60);
    obj.rectangle260:setTop(3345);
    obj.rectangle260:setWidth(720);
    obj.rectangle260:setHeight(50);
    obj.rectangle260:setColor("#49244F");
    obj.rectangle260:setName("rectangle260");

    obj.edit73 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.rectangle206);
    obj.edit73:setLeft(65);
    obj.edit73:setTop(3353);
    obj.edit73:setWidth(715);
    obj.edit73:setFontSize(20);
    obj.edit73:setHeight(30);
    obj.edit73:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit73, "fontStyle", "bold");
    obj.edit73:setTransparent(true);
    obj.edit73:setField("Talento14");
    obj.edit73:setName("edit73");

    obj.textEditor14 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor14:setParent(obj.rectangle206);
    obj.textEditor14:setLeft(68);
    obj.textEditor14:setTop(3393);
    obj.textEditor14:setWidth(710);
    obj.textEditor14:setFontSize(18);
    obj.textEditor14:setHeight(183);
    obj.textEditor14:setFontColor("#49244F");
    obj.textEditor14:setTransparent(true);
    obj.textEditor14:setField("descricaoTalento14");
    obj.textEditor14:setName("textEditor14");

    obj.rectangle261 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle261:setParent(obj.rectangle206);
    obj.rectangle261:setLeft(60);
    obj.rectangle261:setTop(3582);
    obj.rectangle261:setWidth(720);
    obj.rectangle261:setHeight(1);
    obj.rectangle261:setColor("#49244F");
    obj.rectangle261:setName("rectangle261");

    obj.rectangle262 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle262:setParent(obj.rectangle206);
    obj.rectangle262:setLeft(60);
    obj.rectangle262:setTop(3587);
    obj.rectangle262:setWidth(720);
    obj.rectangle262:setHeight(1);
    obj.rectangle262:setColor("#49244F");
    obj.rectangle262:setName("rectangle262");

    obj.rectangle263 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle263:setParent(obj.rectangle206);
    obj.rectangle263:setLeft(60);
    obj.rectangle263:setTop(3595);
    obj.rectangle263:setWidth(720);
    obj.rectangle263:setHeight(231);
    obj.rectangle263:setColor("#D5D5D5");
    obj.rectangle263:setStrokeColor("#49244F");
    obj.rectangle263:setStrokeSize(3);
    obj.rectangle263:setName("rectangle263");

    obj.rectangle264 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle264:setParent(obj.rectangle206);
    obj.rectangle264:setLeft(60);
    obj.rectangle264:setTop(3595);
    obj.rectangle264:setWidth(720);
    obj.rectangle264:setHeight(50);
    obj.rectangle264:setColor("#49244F");
    obj.rectangle264:setName("rectangle264");

    obj.edit74 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.rectangle206);
    obj.edit74:setLeft(65);
    obj.edit74:setTop(3603);
    obj.edit74:setWidth(715);
    obj.edit74:setFontSize(20);
    obj.edit74:setHeight(30);
    obj.edit74:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit74, "fontStyle", "bold");
    obj.edit74:setTransparent(true);
    obj.edit74:setField("Talento15");
    obj.edit74:setName("edit74");

    obj.textEditor15 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor15:setParent(obj.rectangle206);
    obj.textEditor15:setLeft(68);
    obj.textEditor15:setTop(3643);
    obj.textEditor15:setWidth(710);
    obj.textEditor15:setFontSize(18);
    obj.textEditor15:setHeight(183);
    obj.textEditor15:setFontColor("#49244F");
    obj.textEditor15:setTransparent(true);
    obj.textEditor15:setField("descricaoTalento15");
    obj.textEditor15:setName("textEditor15");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.tab3);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(10);
    obj.layout5:setWidth(815);
    obj.layout5:setHeight(825);
    obj.layout5:setName("layout5");

    obj.rectangle265 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle265:setParent(obj.layout5);
    obj.rectangle265:setLeft(0);
    obj.rectangle265:setTop(725);
    obj.rectangle265:setWidth(799);
    obj.rectangle265:setHeight(105);
    obj.rectangle265:setColor("#D5D5D5");
    obj.rectangle265:setName("rectangle265");

    obj.rectangle266 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle266:setParent(obj.layout5);
    obj.rectangle266:setLeft(65);
    obj.rectangle266:setTop(730);
    obj.rectangle266:setWidth(712);
    obj.rectangle266:setHeight(1);
    obj.rectangle266:setColor("#49244F");
    obj.rectangle266:setName("rectangle266");

    obj.rectangle267 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle267:setParent(obj.layout5);
    obj.rectangle267:setLeft(65);
    obj.rectangle267:setTop(735);
    obj.rectangle267:setWidth(712);
    obj.rectangle267:setHeight(1);
    obj.rectangle267:setColor("#49244F");
    obj.rectangle267:setName("rectangle267");

    obj.image38 = GUI.fromHandle(_obj_newObject("image"));
    obj.image38:setParent(obj.layout5);
    obj.image38:setLeft(260);
    obj.image38:setTop(745);
    obj.image38:setWidth(324);
    obj.image38:setHeight(72);
    obj.image38:setSRC("/img/libelula.png");
    obj.image38:setName("image38");

    obj.rectangle268 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle268:setParent(obj.layout5);
    obj.rectangle268:setLeft(0);
    obj.rectangle268:setTop(0);
    obj.rectangle268:setWidth(799);
    obj.rectangle268:setHeight(5);
    obj.rectangle268:setColor("#D5D5D5");
    obj.rectangle268:setName("rectangle268");

    obj.image39 = GUI.fromHandle(_obj_newObject("image"));
    obj.image39:setParent(obj.layout5);
    obj.image39:setLeft(0);
    obj.image39:setTop(0);
    obj.image39:setWidth(799);
    obj.image39:setHeight(825);
    obj.image39:setSRC("/img/borda.png");
    obj.image39:setName("image39");

    obj.image40 = GUI.fromHandle(_obj_newObject("image"));
    obj.image40:setParent(obj.tab3);
    obj.image40:setLeft(69);
    obj.image40:setTop(875);
    obj.image40:setWidth(676);
    obj.image40:setHeight(194);
    obj.image40:setSRC("/img/logo.png");
    obj.image40:setName("image40");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Inventário");
    obj.tab4:setName("tab4");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.tab4);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(10);
    obj.layout6:setWidth(799);
    obj.layout6:setHeight(825);
    obj.layout6:setName("layout6");

    obj.rectangle269 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle269:setParent(obj.layout6);
    obj.rectangle269:setLeft(0);
    obj.rectangle269:setTop(0);
    obj.rectangle269:setWidth(799);
    obj.rectangle269:setHeight(825);
    obj.rectangle269:setColor("#D5D5D5");
    obj.rectangle269:setName("rectangle269");

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.rectangle269);
    obj.label88:setLeft(180);
    obj.label88:setTop(60);
    obj.label88:setWidth(480);
    obj.label88:setFontSize(24);
    obj.label88:setHorzTextAlign("center");
    obj.label88:setText("EQUIPAMENTOS E ACESSÓRIOS");
    obj.label88:setFontColor("#49244F");
    lfm_setPropAsString(obj.label88, "fontStyle", "bold");
    obj.label88:setName("label88");

    obj.rectangle270 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle270:setParent(obj.rectangle269);
    obj.rectangle270:setLeft(60);
    obj.rectangle270:setTop(95);
    obj.rectangle270:setWidth(720);
    obj.rectangle270:setHeight(631);
    obj.rectangle270:setColor("#D5D5D5");
    obj.rectangle270:setStrokeColor("#49244F");
    obj.rectangle270:setStrokeSize(3);
    obj.rectangle270:setName("rectangle270");

    obj.rectangle271 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle271:setParent(obj.rectangle269);
    obj.rectangle271:setLeft(60);
    obj.rectangle271:setTop(95);
    obj.rectangle271:setWidth(720);
    obj.rectangle271:setHeight(50);
    obj.rectangle271:setColor("#49244F");
    obj.rectangle271:setName("rectangle271");

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.rectangle269);
    obj.label89:setLeft(70);
    obj.label89:setTop(110);
    obj.label89:setWidth(100);
    obj.label89:setFontSize(20);
    obj.label89:setText("Itens");
    obj.label89:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label89, "fontStyle", "bold");
    obj.label89:setName("label89");

    obj.textEditor16 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor16:setParent(obj.rectangle269);
    obj.textEditor16:setLeft(68);
    obj.textEditor16:setTop(143);
    obj.textEditor16:setWidth(710);
    obj.textEditor16:setFontSize(18);
    obj.textEditor16:setHeight(581);
    obj.textEditor16:setFontColor("black");
    obj.textEditor16:setTransparent(true);
    obj.textEditor16:setField("Itens");
    obj.textEditor16:setName("textEditor16");

    obj.rectangle272 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle272:setParent(obj.rectangle269);
    obj.rectangle272:setLeft(70);
    obj.rectangle272:setTop(168);
    obj.rectangle272:setWidth(700);
    obj.rectangle272:setHeight(1);
    obj.rectangle272:setColor("#49244F");
    obj.rectangle272:setName("rectangle272");

    obj.rectangle273 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle273:setParent(obj.rectangle269);
    obj.rectangle273:setLeft(70);
    obj.rectangle273:setTop(191);
    obj.rectangle273:setWidth(700);
    obj.rectangle273:setHeight(1);
    obj.rectangle273:setColor("#49244F");
    obj.rectangle273:setName("rectangle273");

    obj.rectangle274 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle274:setParent(obj.rectangle269);
    obj.rectangle274:setLeft(70);
    obj.rectangle274:setTop(214);
    obj.rectangle274:setWidth(700);
    obj.rectangle274:setHeight(1);
    obj.rectangle274:setColor("#49244F");
    obj.rectangle274:setName("rectangle274");

    obj.rectangle275 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle275:setParent(obj.rectangle269);
    obj.rectangle275:setLeft(70);
    obj.rectangle275:setTop(237);
    obj.rectangle275:setWidth(700);
    obj.rectangle275:setHeight(1);
    obj.rectangle275:setColor("#49244F");
    obj.rectangle275:setName("rectangle275");

    obj.rectangle276 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle276:setParent(obj.rectangle269);
    obj.rectangle276:setLeft(70);
    obj.rectangle276:setTop(262);
    obj.rectangle276:setWidth(700);
    obj.rectangle276:setHeight(1);
    obj.rectangle276:setColor("#49244F");
    obj.rectangle276:setName("rectangle276");

    obj.rectangle277 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle277:setParent(obj.rectangle269);
    obj.rectangle277:setLeft(70);
    obj.rectangle277:setTop(285);
    obj.rectangle277:setWidth(700);
    obj.rectangle277:setHeight(1);
    obj.rectangle277:setColor("#49244F");
    obj.rectangle277:setName("rectangle277");

    obj.rectangle278 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle278:setParent(obj.rectangle269);
    obj.rectangle278:setLeft(70);
    obj.rectangle278:setTop(310);
    obj.rectangle278:setWidth(700);
    obj.rectangle278:setHeight(1);
    obj.rectangle278:setColor("#49244F");
    obj.rectangle278:setName("rectangle278");

    obj.rectangle279 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle279:setParent(obj.rectangle269);
    obj.rectangle279:setLeft(70);
    obj.rectangle279:setTop(334);
    obj.rectangle279:setWidth(700);
    obj.rectangle279:setHeight(1);
    obj.rectangle279:setColor("#49244F");
    obj.rectangle279:setName("rectangle279");

    obj.rectangle280 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle280:setParent(obj.rectangle269);
    obj.rectangle280:setLeft(70);
    obj.rectangle280:setTop(359);
    obj.rectangle280:setWidth(700);
    obj.rectangle280:setHeight(1);
    obj.rectangle280:setColor("#49244F");
    obj.rectangle280:setName("rectangle280");

    obj.rectangle281 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle281:setParent(obj.rectangle269);
    obj.rectangle281:setLeft(70);
    obj.rectangle281:setTop(382);
    obj.rectangle281:setWidth(700);
    obj.rectangle281:setHeight(1);
    obj.rectangle281:setColor("#49244F");
    obj.rectangle281:setName("rectangle281");

    obj.rectangle282 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle282:setParent(obj.rectangle269);
    obj.rectangle282:setLeft(70);
    obj.rectangle282:setTop(407);
    obj.rectangle282:setWidth(700);
    obj.rectangle282:setHeight(1);
    obj.rectangle282:setColor("#49244F");
    obj.rectangle282:setName("rectangle282");

    obj.rectangle283 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle283:setParent(obj.rectangle269);
    obj.rectangle283:setLeft(70);
    obj.rectangle283:setTop(432);
    obj.rectangle283:setWidth(700);
    obj.rectangle283:setHeight(1);
    obj.rectangle283:setColor("#49244F");
    obj.rectangle283:setName("rectangle283");

    obj.rectangle284 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle284:setParent(obj.rectangle269);
    obj.rectangle284:setLeft(70);
    obj.rectangle284:setTop(457);
    obj.rectangle284:setWidth(700);
    obj.rectangle284:setHeight(1);
    obj.rectangle284:setColor("#49244F");
    obj.rectangle284:setName("rectangle284");

    obj.rectangle285 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle285:setParent(obj.rectangle269);
    obj.rectangle285:setLeft(70);
    obj.rectangle285:setTop(481);
    obj.rectangle285:setWidth(700);
    obj.rectangle285:setHeight(1);
    obj.rectangle285:setColor("#49244F");
    obj.rectangle285:setName("rectangle285");

    obj.rectangle286 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle286:setParent(obj.rectangle269);
    obj.rectangle286:setLeft(70);
    obj.rectangle286:setTop(505);
    obj.rectangle286:setWidth(700);
    obj.rectangle286:setHeight(1);
    obj.rectangle286:setColor("#49244F");
    obj.rectangle286:setName("rectangle286");

    obj.rectangle287 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle287:setParent(obj.rectangle269);
    obj.rectangle287:setLeft(70);
    obj.rectangle287:setTop(529);
    obj.rectangle287:setWidth(700);
    obj.rectangle287:setHeight(1);
    obj.rectangle287:setColor("#49244F");
    obj.rectangle287:setName("rectangle287");

    obj.rectangle288 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle288:setParent(obj.rectangle269);
    obj.rectangle288:setLeft(70);
    obj.rectangle288:setTop(553);
    obj.rectangle288:setWidth(700);
    obj.rectangle288:setHeight(1);
    obj.rectangle288:setColor("#49244F");
    obj.rectangle288:setName("rectangle288");

    obj.rectangle289 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle289:setParent(obj.rectangle269);
    obj.rectangle289:setLeft(70);
    obj.rectangle289:setTop(576);
    obj.rectangle289:setWidth(700);
    obj.rectangle289:setHeight(1);
    obj.rectangle289:setColor("#49244F");
    obj.rectangle289:setName("rectangle289");

    obj.rectangle290 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle290:setParent(obj.rectangle269);
    obj.rectangle290:setLeft(70);
    obj.rectangle290:setTop(599);
    obj.rectangle290:setWidth(700);
    obj.rectangle290:setHeight(1);
    obj.rectangle290:setColor("#49244F");
    obj.rectangle290:setName("rectangle290");

    obj.rectangle291 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle291:setParent(obj.rectangle269);
    obj.rectangle291:setLeft(70);
    obj.rectangle291:setTop(622);
    obj.rectangle291:setWidth(700);
    obj.rectangle291:setHeight(1);
    obj.rectangle291:setColor("#49244F");
    obj.rectangle291:setName("rectangle291");

    obj.rectangle292 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle292:setParent(obj.rectangle269);
    obj.rectangle292:setLeft(70);
    obj.rectangle292:setTop(646);
    obj.rectangle292:setWidth(700);
    obj.rectangle292:setHeight(1);
    obj.rectangle292:setColor("#49244F");
    obj.rectangle292:setName("rectangle292");

    obj.rectangle293 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle293:setParent(obj.rectangle269);
    obj.rectangle293:setLeft(70);
    obj.rectangle293:setTop(670);
    obj.rectangle293:setWidth(700);
    obj.rectangle293:setHeight(1);
    obj.rectangle293:setColor("#49244F");
    obj.rectangle293:setName("rectangle293");

    obj.rectangle294 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle294:setParent(obj.rectangle269);
    obj.rectangle294:setLeft(70);
    obj.rectangle294:setTop(694);
    obj.rectangle294:setWidth(700);
    obj.rectangle294:setHeight(1);
    obj.rectangle294:setColor("#49244F");
    obj.rectangle294:setName("rectangle294");

    obj.rectangle295 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle295:setParent(obj.rectangle269);
    obj.rectangle295:setLeft(65);
    obj.rectangle295:setTop(730);
    obj.rectangle295:setWidth(712);
    obj.rectangle295:setHeight(1);
    obj.rectangle295:setColor("#49244F");
    obj.rectangle295:setName("rectangle295");

    obj.rectangle296 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle296:setParent(obj.rectangle269);
    obj.rectangle296:setLeft(65);
    obj.rectangle296:setTop(735);
    obj.rectangle296:setWidth(712);
    obj.rectangle296:setHeight(1);
    obj.rectangle296:setColor("#49244F");
    obj.rectangle296:setName("rectangle296");

    obj.image41 = GUI.fromHandle(_obj_newObject("image"));
    obj.image41:setParent(obj.rectangle269);
    obj.image41:setLeft(305);
    obj.image41:setTop(745);
    obj.image41:setWidth(43);
    obj.image41:setHeight(40);
    obj.image41:setSRC("/img/pc.png");
    obj.image41:setName("image41");

    obj.label90 = GUI.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.rectangle269);
    obj.label90:setLeft(275);
    obj.label90:setTop(795);
    obj.label90:setText("PC _______");
    obj.label90:setFontColor("#49244F");
    obj.label90:setFontSize(18);
    lfm_setPropAsString(obj.label90, "fontStyle", "bold");
    obj.label90:setName("label90");

    obj.edit75 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.rectangle269);
    obj.edit75:setLeft(297);
    obj.edit75:setTop(785);
    obj.edit75:setFontColor("#49244F");
    obj.edit75:setField("pCobre");
    obj.edit75:setHorzTextAlign("center");
    obj.edit75:setFontSize(18);
    obj.edit75:setTransparent(true);
    obj.edit75:setWidth(60);
    obj.edit75:setName("edit75");

    obj.image42 = GUI.fromHandle(_obj_newObject("image"));
    obj.image42:setParent(obj.rectangle269);
    obj.image42:setLeft(405);
    obj.image42:setTop(745);
    obj.image42:setWidth(43);
    obj.image42:setHeight(40);
    obj.image42:setSRC("/img/pp.png");
    obj.image42:setName("image42");

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.rectangle269);
    obj.label91:setLeft(375);
    obj.label91:setTop(795);
    obj.label91:setText("PP _______");
    obj.label91:setFontColor("#49244F");
    obj.label91:setFontSize(18);
    lfm_setPropAsString(obj.label91, "fontStyle", "bold");
    obj.label91:setName("label91");

    obj.edit76 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.rectangle269);
    obj.edit76:setLeft(397);
    obj.edit76:setTop(785);
    obj.edit76:setFontColor("#49244F");
    obj.edit76:setField("pPrata");
    obj.edit76:setHorzTextAlign("center");
    obj.edit76:setFontSize(18);
    obj.edit76:setTransparent(true);
    obj.edit76:setWidth(60);
    obj.edit76:setName("edit76");

    obj.image43 = GUI.fromHandle(_obj_newObject("image"));
    obj.image43:setParent(obj.rectangle269);
    obj.image43:setLeft(505);
    obj.image43:setTop(745);
    obj.image43:setWidth(43);
    obj.image43:setHeight(40);
    obj.image43:setSRC("/img/po.png");
    obj.image43:setName("image43");

    obj.label92 = GUI.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.rectangle269);
    obj.label92:setLeft(475);
    obj.label92:setTop(795);
    obj.label92:setText("PO _______");
    obj.label92:setFontColor("#49244F");
    obj.label92:setFontSize(18);
    lfm_setPropAsString(obj.label92, "fontStyle", "bold");
    obj.label92:setName("label92");

    obj.edit77 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.rectangle269);
    obj.edit77:setLeft(497);
    obj.edit77:setTop(785);
    obj.edit77:setFontColor("#49244F");
    obj.edit77:setField("pOuro");
    obj.edit77:setHorzTextAlign("center");
    obj.edit77:setFontSize(18);
    obj.edit77:setTransparent(true);
    obj.edit77:setWidth(60);
    obj.edit77:setName("edit77");

    obj.image44 = GUI.fromHandle(_obj_newObject("image"));
    obj.image44:setParent(obj.layout6);
    obj.image44:setLeft(0);
    obj.image44:setTop(0);
    obj.image44:setWidth(799);
    obj.image44:setHeight(825);
    obj.image44:setSRC("/img/borda.png");
    obj.image44:setName("image44");

    obj.image45 = GUI.fromHandle(_obj_newObject("image"));
    obj.image45:setParent(obj.tab4);
    obj.image45:setLeft(69);
    obj.image45:setTop(875);
    obj.image45:setWidth(676);
    obj.image45:setHeight(194);
    obj.image45:setSRC("/img/logo.png");
    obj.image45:setName("image45");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Feitiços");
    obj.tab5:setName("tab5");

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.tab5);
    obj.scrollBox4:setLeft(0);
    obj.scrollBox4:setTop(10);
    obj.scrollBox4:setWidth(815);
    obj.scrollBox4:setHeight(725);
    obj.scrollBox4:setName("scrollBox4");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox4);
    obj.layout7:setLeft(0);
    obj.layout7:setTop(10);
    obj.layout7:setWidth(799);
    obj.layout7:setHeight(1790);
    obj.layout7:setName("layout7");

    obj.rectangle297 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle297:setParent(obj.layout7);
    obj.rectangle297:setLeft(0);
    obj.rectangle297:setTop(0);
    obj.rectangle297:setWidth(799);
    obj.rectangle297:setHeight(1790);
    obj.rectangle297:setColor("#D5D5D5");
    obj.rectangle297:setName("rectangle297");

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.rectangle297);
    obj.label93:setLeft(270);
    obj.label93:setTop(60);
    obj.label93:setWidth(280);
    obj.label93:setFontSize(24);
    obj.label93:setHorzTextAlign("center");
    obj.label93:setText("FEITIÇOS");
    obj.label93:setFontColor("#49244F");
    lfm_setPropAsString(obj.label93, "fontStyle", "bold");
    obj.label93:setName("label93");

    obj.rectangle298 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle298:setParent(obj.rectangle297);
    obj.rectangle298:setLeft(60);
    obj.rectangle298:setTop(95);
    obj.rectangle298:setWidth(350);
    obj.rectangle298:setHeight(318);
    obj.rectangle298:setColor("#D5D5D5");
    obj.rectangle298:setStrokeColor("#49244F");
    obj.rectangle298:setStrokeSize(3);
    obj.rectangle298:setName("rectangle298");

    obj.rectangle299 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle299:setParent(obj.rectangle297);
    obj.rectangle299:setLeft(60);
    obj.rectangle299:setTop(95);
    obj.rectangle299:setWidth(350);
    obj.rectangle299:setHeight(50);
    obj.rectangle299:setColor("#49244F");
    obj.rectangle299:setName("rectangle299");

    obj.edit78 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.rectangle297);
    obj.edit78:setLeft(65);
    obj.edit78:setTop(103);
    obj.edit78:setWidth(340);
    obj.edit78:setFontSize(18);
    obj.edit78:setHeight(30);
    obj.edit78:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit78, "fontStyle", "bold");
    obj.edit78:setTransparent(true);
    obj.edit78:setField("Magia01");
    obj.edit78:setName("edit78");

    obj.rectangle300 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle300:setParent(obj.rectangle297);
    obj.rectangle300:setLeft(60);
    obj.rectangle300:setTop(176);
    obj.rectangle300:setWidth(350);
    obj.rectangle300:setHeight(1);
    obj.rectangle300:setColor("#49244F");
    obj.rectangle300:setName("rectangle300");

    obj.label94 = GUI.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.rectangle297);
    obj.label94:setLeft(70);
    obj.label94:setTop(149);
    obj.label94:setWidth(280);
    obj.label94:setFontSize(18);
    obj.label94:setText("Tradição:");
    obj.label94:setFontColor("#49244F");
    lfm_setPropAsString(obj.label94, "fontStyle", "bold");
    obj.label94:setName("label94");

    obj.edit79 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.rectangle297);
    obj.edit79:setLeft(150);
    obj.edit79:setTop(143);
    obj.edit79:setWidth(260);
    obj.edit79:setFontSize(18);
    obj.edit79:setFontColor("#49244F");
    obj.edit79:setTransparent(true);
    obj.edit79:setField("tradicaoMagia01");
    obj.edit79:setName("edit79");

    obj.rectangle301 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle301:setParent(obj.rectangle297);
    obj.rectangle301:setLeft(60);
    obj.rectangle301:setTop(211);
    obj.rectangle301:setWidth(350);
    obj.rectangle301:setHeight(1);
    obj.rectangle301:setColor("#49244F");
    obj.rectangle301:setName("rectangle301");

    obj.label95 = GUI.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.rectangle297);
    obj.label95:setLeft(70);
    obj.label95:setTop(184);
    obj.label95:setWidth(280);
    obj.label95:setFontSize(18);
    obj.label95:setText("Alvo:");
    obj.label95:setFontColor("#49244F");
    lfm_setPropAsString(obj.label95, "fontStyle", "bold");
    obj.label95:setName("label95");

    obj.edit80 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.rectangle297);
    obj.edit80:setLeft(115);
    obj.edit80:setTop(178);
    obj.edit80:setWidth(295);
    obj.edit80:setFontSize(18);
    obj.edit80:setFontColor("#49244F");
    obj.edit80:setTransparent(true);
    obj.edit80:setField("alvoMagia01");
    obj.edit80:setName("edit80");

    obj.rectangle302 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle302:setParent(obj.rectangle297);
    obj.rectangle302:setLeft(60);
    obj.rectangle302:setTop(246);
    obj.rectangle302:setWidth(350);
    obj.rectangle302:setHeight(3);
    obj.rectangle302:setColor("#49244F");
    obj.rectangle302:setName("rectangle302");

    obj.label96 = GUI.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.rectangle297);
    obj.label96:setLeft(70);
    obj.label96:setTop(219);
    obj.label96:setWidth(280);
    obj.label96:setFontSize(18);
    obj.label96:setText("Duração:");
    obj.label96:setFontColor("#49244F");
    lfm_setPropAsString(obj.label96, "fontStyle", "bold");
    obj.label96:setName("label96");

    obj.edit81 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.rectangle297);
    obj.edit81:setLeft(150);
    obj.edit81:setTop(213);
    obj.edit81:setWidth(260);
    obj.edit81:setFontSize(18);
    obj.edit81:setFontColor("#49244F");
    obj.edit81:setTransparent(true);
    obj.edit81:setField("duracaoMagia01");
    obj.edit81:setName("edit81");

    obj.rectangle303 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle303:setParent(obj.rectangle297);
    obj.rectangle303:setLeft(60);
    obj.rectangle303:setTop(246);
    obj.rectangle303:setWidth(350);
    obj.rectangle303:setHeight(125);
    obj.rectangle303:setColor("#49244F");
    obj.rectangle303:setName("rectangle303");

    obj.textEditor17 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor17:setParent(obj.rectangle297);
    obj.textEditor17:setLeft(65);
    obj.textEditor17:setTop(251);
    obj.textEditor17:setWidth(340);
    obj.textEditor17:setHeight(115);
    obj.textEditor17:setFontColor("#D5D5D5");
    obj.textEditor17:setTransparent(true);
    obj.textEditor17:setField("descricaoMagia01");
    obj.textEditor17:setFontSize(18);
    obj.textEditor17:setName("textEditor17");

    obj.rectangle304 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle304:setParent(obj.rectangle297);
    obj.rectangle304:setLeft(60);
    obj.rectangle304:setTop(371);
    obj.rectangle304:setWidth(350);
    obj.rectangle304:setHeight(3);
    obj.rectangle304:setColor("#49244F");
    obj.rectangle304:setName("rectangle304");

    obj.rectangle305 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle305:setParent(obj.rectangle297);
    obj.rectangle305:setLeft(64);
    obj.rectangle305:setTop(378);
    obj.rectangle305:setWidth(135);
    obj.rectangle305:setHeight(29);
    obj.rectangle305:setColor("#49244F");
    obj.rectangle305:setHitTest(true);
    obj.rectangle305:setCursor("handPoint");
    obj.rectangle305:setName("rectangle305");

    obj.label97 = GUI.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.rectangle297);
    obj.label97:setLeft(70);
    obj.label97:setTop(382);
    obj.label97:setWidth(280);
    obj.label97:setFontSize(18);
    obj.label97:setText("Conjurar Feitiço");
    obj.label97:setFontColor("#D5D5D5");
    obj.label97:setName("label97");

    obj.rectangle306 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle306:setParent(obj.rectangle297);
    obj.rectangle306:setLeft(324);
    obj.rectangle306:setTop(378);
    obj.rectangle306:setWidth(29);
    obj.rectangle306:setHeight(29);
    obj.rectangle306:setColor("#49244F");
    obj.rectangle306:setCornerType("round");
    obj.rectangle306:setXradius(15);
    obj.rectangle306:setYradius(15);
    obj.rectangle306:setName("rectangle306");

    obj.edit82 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.rectangle297);
    obj.edit82:setLeft(318);
    obj.edit82:setTop(375);
    obj.edit82:setWidth(40);
    obj.edit82:setFontSize(18);
    obj.edit82:setHorzTextAlign("center");
    obj.edit82:setFontColor("#D5D5D5");
    obj.edit82:setTransparent(true);
    obj.edit82:setField("qtdMagia01");
    obj.edit82:setHitTest(true);
    obj.edit82:setCursor("handPoint");
    obj.edit82:setHint("Quantidade");
    obj.edit82:setName("edit82");

    obj.label98 = GUI.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.rectangle297);
    obj.label98:setLeft(360);
    obj.label98:setTop(382);
    obj.label98:setWidth(280);
    obj.label98:setFontSize(18);
    obj.label98:setText("/");
    obj.label98:setFontColor("#49244F");
    obj.label98:setName("label98");

    obj.rectangle307 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle307:setParent(obj.rectangle297);
    obj.rectangle307:setLeft(374);
    obj.rectangle307:setTop(376);
    obj.rectangle307:setWidth(29);
    obj.rectangle307:setHeight(29);
    obj.rectangle307:setColor("#49244F");
    obj.rectangle307:setCornerType("round");
    obj.rectangle307:setXradius(15);
    obj.rectangle307:setYradius(15);
    obj.rectangle307:setName("rectangle307");

    obj.edit83 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.rectangle297);
    obj.edit83:setLeft(368);
    obj.edit83:setTop(375);
    obj.edit83:setWidth(40);
    obj.edit83:setFontSize(18);
    obj.edit83:setHorzTextAlign("center");
    obj.edit83:setFontColor("#D5D5D5");
    obj.edit83:setTransparent(true);
    obj.edit83:setField("maxMagia01");
    obj.edit83:setHitTest(true);
    obj.edit83:setCursor("handPoint");
    obj.edit83:setHint("Total");
    obj.edit83:setName("edit83");

    obj.rectangle308 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle308:setParent(obj.rectangle297);
    obj.rectangle308:setLeft(434);
    obj.rectangle308:setTop(95);
    obj.rectangle308:setWidth(350);
    obj.rectangle308:setHeight(318);
    obj.rectangle308:setColor("#D5D5D5");
    obj.rectangle308:setStrokeColor("#49244F");
    obj.rectangle308:setStrokeSize(3);
    obj.rectangle308:setName("rectangle308");

    obj.rectangle309 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle309:setParent(obj.rectangle297);
    obj.rectangle309:setLeft(434);
    obj.rectangle309:setTop(95);
    obj.rectangle309:setWidth(350);
    obj.rectangle309:setHeight(50);
    obj.rectangle309:setColor("#49244F");
    obj.rectangle309:setName("rectangle309");

    obj.edit84 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.rectangle297);
    obj.edit84:setLeft(439);
    obj.edit84:setTop(103);
    obj.edit84:setWidth(340);
    obj.edit84:setFontSize(18);
    obj.edit84:setHeight(30);
    obj.edit84:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit84, "fontStyle", "bold");
    obj.edit84:setTransparent(true);
    obj.edit84:setField("Magia02");
    obj.edit84:setName("edit84");

    obj.rectangle310 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle310:setParent(obj.rectangle297);
    obj.rectangle310:setLeft(434);
    obj.rectangle310:setTop(176);
    obj.rectangle310:setWidth(350);
    obj.rectangle310:setHeight(1);
    obj.rectangle310:setColor("#49244F");
    obj.rectangle310:setName("rectangle310");

    obj.label99 = GUI.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.rectangle297);
    obj.label99:setLeft(444);
    obj.label99:setTop(149);
    obj.label99:setWidth(280);
    obj.label99:setFontSize(18);
    obj.label99:setText("Tradição:");
    obj.label99:setFontColor("#49244F");
    lfm_setPropAsString(obj.label99, "fontStyle", "bold");
    obj.label99:setName("label99");

    obj.edit85 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.rectangle297);
    obj.edit85:setLeft(524);
    obj.edit85:setTop(143);
    obj.edit85:setWidth(260);
    obj.edit85:setFontSize(18);
    obj.edit85:setFontColor("#49244F");
    obj.edit85:setTransparent(true);
    obj.edit85:setField("tradicaoMagia02");
    obj.edit85:setName("edit85");

    obj.rectangle311 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle311:setParent(obj.rectangle297);
    obj.rectangle311:setLeft(434);
    obj.rectangle311:setTop(211);
    obj.rectangle311:setWidth(350);
    obj.rectangle311:setHeight(1);
    obj.rectangle311:setColor("#49244F");
    obj.rectangle311:setName("rectangle311");

    obj.label100 = GUI.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.rectangle297);
    obj.label100:setLeft(444);
    obj.label100:setTop(184);
    obj.label100:setWidth(280);
    obj.label100:setFontSize(18);
    obj.label100:setText("Alvo:");
    obj.label100:setFontColor("#49244F");
    lfm_setPropAsString(obj.label100, "fontStyle", "bold");
    obj.label100:setName("label100");

    obj.edit86 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.rectangle297);
    obj.edit86:setLeft(489);
    obj.edit86:setTop(178);
    obj.edit86:setWidth(295);
    obj.edit86:setFontSize(18);
    obj.edit86:setFontColor("#49244F");
    obj.edit86:setTransparent(true);
    obj.edit86:setField("alvoMagia02");
    obj.edit86:setName("edit86");

    obj.rectangle312 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle312:setParent(obj.rectangle297);
    obj.rectangle312:setLeft(434);
    obj.rectangle312:setTop(246);
    obj.rectangle312:setWidth(350);
    obj.rectangle312:setHeight(3);
    obj.rectangle312:setColor("#49244F");
    obj.rectangle312:setName("rectangle312");

    obj.label101 = GUI.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.rectangle297);
    obj.label101:setLeft(444);
    obj.label101:setTop(219);
    obj.label101:setWidth(280);
    obj.label101:setFontSize(18);
    obj.label101:setText("Duração:");
    obj.label101:setFontColor("#49244F");
    lfm_setPropAsString(obj.label101, "fontStyle", "bold");
    obj.label101:setName("label101");

    obj.edit87 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.rectangle297);
    obj.edit87:setLeft(524);
    obj.edit87:setTop(213);
    obj.edit87:setWidth(260);
    obj.edit87:setFontSize(18);
    obj.edit87:setFontColor("#49244F");
    obj.edit87:setTransparent(true);
    obj.edit87:setField("duracaoMagia02");
    obj.edit87:setName("edit87");

    obj.rectangle313 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle313:setParent(obj.rectangle297);
    obj.rectangle313:setLeft(434);
    obj.rectangle313:setTop(246);
    obj.rectangle313:setWidth(350);
    obj.rectangle313:setHeight(125);
    obj.rectangle313:setColor("#49244F");
    obj.rectangle313:setName("rectangle313");

    obj.textEditor18 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor18:setParent(obj.rectangle297);
    obj.textEditor18:setLeft(439);
    obj.textEditor18:setTop(251);
    obj.textEditor18:setWidth(340);
    obj.textEditor18:setHeight(115);
    obj.textEditor18:setFontColor("#D5D5D5");
    obj.textEditor18:setTransparent(true);
    obj.textEditor18:setField("descricaoMagia02");
    obj.textEditor18:setFontSize(18);
    obj.textEditor18:setName("textEditor18");

    obj.rectangle314 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle314:setParent(obj.rectangle297);
    obj.rectangle314:setLeft(434);
    obj.rectangle314:setTop(371);
    obj.rectangle314:setWidth(350);
    obj.rectangle314:setHeight(3);
    obj.rectangle314:setColor("#49244F");
    obj.rectangle314:setName("rectangle314");

    obj.rectangle315 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle315:setParent(obj.rectangle297);
    obj.rectangle315:setLeft(438);
    obj.rectangle315:setTop(378);
    obj.rectangle315:setWidth(135);
    obj.rectangle315:setHeight(29);
    obj.rectangle315:setColor("#49244F");
    obj.rectangle315:setHitTest(true);
    obj.rectangle315:setCursor("handPoint");
    obj.rectangle315:setName("rectangle315");

    obj.label102 = GUI.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.rectangle297);
    obj.label102:setLeft(444);
    obj.label102:setTop(382);
    obj.label102:setWidth(280);
    obj.label102:setFontSize(18);
    obj.label102:setText("Conjurar Feitiço");
    obj.label102:setFontColor("#D5D5D5");
    obj.label102:setName("label102");

    obj.rectangle316 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle316:setParent(obj.rectangle297);
    obj.rectangle316:setLeft(698);
    obj.rectangle316:setTop(378);
    obj.rectangle316:setWidth(29);
    obj.rectangle316:setHeight(29);
    obj.rectangle316:setColor("#49244F");
    obj.rectangle316:setCornerType("round");
    obj.rectangle316:setXradius(15);
    obj.rectangle316:setYradius(15);
    obj.rectangle316:setName("rectangle316");

    obj.edit88 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.rectangle297);
    obj.edit88:setLeft(692);
    obj.edit88:setTop(375);
    obj.edit88:setWidth(40);
    obj.edit88:setFontSize(18);
    obj.edit88:setHorzTextAlign("center");
    obj.edit88:setFontColor("#D5D5D5");
    obj.edit88:setTransparent(true);
    obj.edit88:setField("qtdMagia02");
    obj.edit88:setHitTest(true);
    obj.edit88:setCursor("handPoint");
    obj.edit88:setHint("Quantidade");
    obj.edit88:setName("edit88");

    obj.label103 = GUI.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.rectangle297);
    obj.label103:setLeft(734);
    obj.label103:setTop(382);
    obj.label103:setWidth(280);
    obj.label103:setFontSize(18);
    obj.label103:setText("/");
    obj.label103:setFontColor("#49244F");
    obj.label103:setName("label103");

    obj.rectangle317 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle317:setParent(obj.rectangle297);
    obj.rectangle317:setLeft(748);
    obj.rectangle317:setTop(376);
    obj.rectangle317:setWidth(29);
    obj.rectangle317:setHeight(29);
    obj.rectangle317:setColor("#49244F");
    obj.rectangle317:setCornerType("round");
    obj.rectangle317:setXradius(15);
    obj.rectangle317:setYradius(15);
    obj.rectangle317:setName("rectangle317");

    obj.edit89 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.rectangle297);
    obj.edit89:setLeft(743);
    obj.edit89:setTop(375);
    obj.edit89:setWidth(40);
    obj.edit89:setFontSize(18);
    obj.edit89:setHorzTextAlign("center");
    obj.edit89:setFontColor("#D5D5D5");
    obj.edit89:setTransparent(true);
    obj.edit89:setField("maxMagia02");
    obj.edit89:setHitTest(true);
    obj.edit89:setCursor("handPoint");
    obj.edit89:setHint("Total");
    obj.edit89:setName("edit89");

    obj.rectangle318 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle318:setParent(obj.rectangle297);
    obj.rectangle318:setLeft(60);
    obj.rectangle318:setTop(435);
    obj.rectangle318:setWidth(350);
    obj.rectangle318:setHeight(318);
    obj.rectangle318:setColor("#D5D5D5");
    obj.rectangle318:setStrokeColor("#49244F");
    obj.rectangle318:setStrokeSize(3);
    obj.rectangle318:setName("rectangle318");

    obj.rectangle319 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle319:setParent(obj.rectangle297);
    obj.rectangle319:setLeft(60);
    obj.rectangle319:setTop(435);
    obj.rectangle319:setWidth(350);
    obj.rectangle319:setHeight(50);
    obj.rectangle319:setColor("#49244F");
    obj.rectangle319:setName("rectangle319");

    obj.edit90 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.rectangle297);
    obj.edit90:setLeft(65);
    obj.edit90:setTop(443);
    obj.edit90:setWidth(340);
    obj.edit90:setFontSize(18);
    obj.edit90:setHeight(30);
    obj.edit90:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit90, "fontStyle", "bold");
    obj.edit90:setTransparent(true);
    obj.edit90:setField("Magia03");
    obj.edit90:setName("edit90");

    obj.rectangle320 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle320:setParent(obj.rectangle297);
    obj.rectangle320:setLeft(60);
    obj.rectangle320:setTop(516);
    obj.rectangle320:setWidth(350);
    obj.rectangle320:setHeight(1);
    obj.rectangle320:setColor("#49244F");
    obj.rectangle320:setName("rectangle320");

    obj.label104 = GUI.fromHandle(_obj_newObject("label"));
    obj.label104:setParent(obj.rectangle297);
    obj.label104:setLeft(70);
    obj.label104:setTop(489);
    obj.label104:setWidth(280);
    obj.label104:setFontSize(18);
    obj.label104:setText("Tradição:");
    obj.label104:setFontColor("#49244F");
    lfm_setPropAsString(obj.label104, "fontStyle", "bold");
    obj.label104:setName("label104");

    obj.edit91 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit91:setParent(obj.rectangle297);
    obj.edit91:setLeft(150);
    obj.edit91:setTop(483);
    obj.edit91:setWidth(260);
    obj.edit91:setFontSize(18);
    obj.edit91:setFontColor("#49244F");
    obj.edit91:setTransparent(true);
    obj.edit91:setField("tradicaoMagia03");
    obj.edit91:setName("edit91");

    obj.rectangle321 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle321:setParent(obj.rectangle297);
    obj.rectangle321:setLeft(60);
    obj.rectangle321:setTop(551);
    obj.rectangle321:setWidth(350);
    obj.rectangle321:setHeight(1);
    obj.rectangle321:setColor("#49244F");
    obj.rectangle321:setName("rectangle321");

    obj.label105 = GUI.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.rectangle297);
    obj.label105:setLeft(70);
    obj.label105:setTop(524);
    obj.label105:setWidth(280);
    obj.label105:setFontSize(18);
    obj.label105:setText("Alvo:");
    obj.label105:setFontColor("#49244F");
    lfm_setPropAsString(obj.label105, "fontStyle", "bold");
    obj.label105:setName("label105");

    obj.edit92 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit92:setParent(obj.rectangle297);
    obj.edit92:setLeft(115);
    obj.edit92:setTop(518);
    obj.edit92:setWidth(295);
    obj.edit92:setFontSize(18);
    obj.edit92:setFontColor("#49244F");
    obj.edit92:setTransparent(true);
    obj.edit92:setField("alvoMagia03");
    obj.edit92:setName("edit92");

    obj.rectangle322 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle322:setParent(obj.rectangle297);
    obj.rectangle322:setLeft(60);
    obj.rectangle322:setTop(586);
    obj.rectangle322:setWidth(350);
    obj.rectangle322:setHeight(3);
    obj.rectangle322:setColor("#49244F");
    obj.rectangle322:setName("rectangle322");

    obj.label106 = GUI.fromHandle(_obj_newObject("label"));
    obj.label106:setParent(obj.rectangle297);
    obj.label106:setLeft(70);
    obj.label106:setTop(559);
    obj.label106:setWidth(280);
    obj.label106:setFontSize(18);
    obj.label106:setText("Duração:");
    obj.label106:setFontColor("#49244F");
    lfm_setPropAsString(obj.label106, "fontStyle", "bold");
    obj.label106:setName("label106");

    obj.edit93 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit93:setParent(obj.rectangle297);
    obj.edit93:setLeft(150);
    obj.edit93:setTop(553);
    obj.edit93:setWidth(260);
    obj.edit93:setFontSize(18);
    obj.edit93:setFontColor("#49244F");
    obj.edit93:setTransparent(true);
    obj.edit93:setField("duracaoMagia03");
    obj.edit93:setName("edit93");

    obj.rectangle323 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle323:setParent(obj.rectangle297);
    obj.rectangle323:setLeft(60);
    obj.rectangle323:setTop(586);
    obj.rectangle323:setWidth(350);
    obj.rectangle323:setHeight(125);
    obj.rectangle323:setColor("#49244F");
    obj.rectangle323:setName("rectangle323");

    obj.textEditor19 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor19:setParent(obj.rectangle297);
    obj.textEditor19:setLeft(65);
    obj.textEditor19:setTop(591);
    obj.textEditor19:setWidth(340);
    obj.textEditor19:setHeight(115);
    obj.textEditor19:setFontColor("#D5D5D5");
    obj.textEditor19:setTransparent(true);
    obj.textEditor19:setField("descricaoMagia03");
    obj.textEditor19:setFontSize(18);
    obj.textEditor19:setName("textEditor19");

    obj.rectangle324 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle324:setParent(obj.rectangle297);
    obj.rectangle324:setLeft(60);
    obj.rectangle324:setTop(711);
    obj.rectangle324:setWidth(350);
    obj.rectangle324:setHeight(3);
    obj.rectangle324:setColor("#49244F");
    obj.rectangle324:setName("rectangle324");

    obj.rectangle325 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle325:setParent(obj.rectangle297);
    obj.rectangle325:setLeft(64);
    obj.rectangle325:setTop(718);
    obj.rectangle325:setWidth(135);
    obj.rectangle325:setHeight(29);
    obj.rectangle325:setColor("#49244F");
    obj.rectangle325:setHitTest(true);
    obj.rectangle325:setCursor("handPoint");
    obj.rectangle325:setName("rectangle325");

    obj.label107 = GUI.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.rectangle297);
    obj.label107:setLeft(70);
    obj.label107:setTop(722);
    obj.label107:setWidth(280);
    obj.label107:setFontSize(18);
    obj.label107:setText("Conjurar Feitiço");
    obj.label107:setFontColor("#D5D5D5");
    obj.label107:setName("label107");

    obj.rectangle326 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle326:setParent(obj.rectangle297);
    obj.rectangle326:setLeft(324);
    obj.rectangle326:setTop(718);
    obj.rectangle326:setWidth(29);
    obj.rectangle326:setHeight(29);
    obj.rectangle326:setColor("#49244F");
    obj.rectangle326:setCornerType("round");
    obj.rectangle326:setXradius(15);
    obj.rectangle326:setYradius(15);
    obj.rectangle326:setName("rectangle326");

    obj.edit94 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit94:setParent(obj.rectangle297);
    obj.edit94:setLeft(318);
    obj.edit94:setTop(715);
    obj.edit94:setWidth(40);
    obj.edit94:setFontSize(18);
    obj.edit94:setHorzTextAlign("center");
    obj.edit94:setFontColor("#D5D5D5");
    obj.edit94:setTransparent(true);
    obj.edit94:setField("qtdMagia03");
    obj.edit94:setHitTest(true);
    obj.edit94:setCursor("handPoint");
    obj.edit94:setHint("Quantidade");
    obj.edit94:setName("edit94");

    obj.label108 = GUI.fromHandle(_obj_newObject("label"));
    obj.label108:setParent(obj.rectangle297);
    obj.label108:setLeft(360);
    obj.label108:setTop(722);
    obj.label108:setWidth(280);
    obj.label108:setFontSize(18);
    obj.label108:setText("/");
    obj.label108:setFontColor("#49244F");
    obj.label108:setName("label108");

    obj.rectangle327 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle327:setParent(obj.rectangle297);
    obj.rectangle327:setLeft(374);
    obj.rectangle327:setTop(716);
    obj.rectangle327:setWidth(29);
    obj.rectangle327:setHeight(29);
    obj.rectangle327:setColor("#49244F");
    obj.rectangle327:setCornerType("round");
    obj.rectangle327:setXradius(15);
    obj.rectangle327:setYradius(15);
    obj.rectangle327:setName("rectangle327");

    obj.edit95 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit95:setParent(obj.rectangle297);
    obj.edit95:setLeft(368);
    obj.edit95:setTop(715);
    obj.edit95:setWidth(40);
    obj.edit95:setFontSize(18);
    obj.edit95:setHorzTextAlign("center");
    obj.edit95:setFontColor("#D5D5D5");
    obj.edit95:setTransparent(true);
    obj.edit95:setField("maxMagia03");
    obj.edit95:setHitTest(true);
    obj.edit95:setCursor("handPoint");
    obj.edit95:setHint("Total");
    obj.edit95:setName("edit95");

    obj.rectangle328 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle328:setParent(obj.rectangle297);
    obj.rectangle328:setLeft(434);
    obj.rectangle328:setTop(435);
    obj.rectangle328:setWidth(350);
    obj.rectangle328:setHeight(318);
    obj.rectangle328:setColor("#D5D5D5");
    obj.rectangle328:setStrokeColor("#49244F");
    obj.rectangle328:setStrokeSize(3);
    obj.rectangle328:setName("rectangle328");

    obj.rectangle329 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle329:setParent(obj.rectangle297);
    obj.rectangle329:setLeft(434);
    obj.rectangle329:setTop(435);
    obj.rectangle329:setWidth(350);
    obj.rectangle329:setHeight(50);
    obj.rectangle329:setColor("#49244F");
    obj.rectangle329:setName("rectangle329");

    obj.edit96 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit96:setParent(obj.rectangle297);
    obj.edit96:setLeft(439);
    obj.edit96:setTop(443);
    obj.edit96:setWidth(340);
    obj.edit96:setFontSize(18);
    obj.edit96:setHeight(30);
    obj.edit96:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit96, "fontStyle", "bold");
    obj.edit96:setTransparent(true);
    obj.edit96:setField("Magia04");
    obj.edit96:setName("edit96");

    obj.rectangle330 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle330:setParent(obj.rectangle297);
    obj.rectangle330:setLeft(434);
    obj.rectangle330:setTop(516);
    obj.rectangle330:setWidth(350);
    obj.rectangle330:setHeight(1);
    obj.rectangle330:setColor("#49244F");
    obj.rectangle330:setName("rectangle330");

    obj.label109 = GUI.fromHandle(_obj_newObject("label"));
    obj.label109:setParent(obj.rectangle297);
    obj.label109:setLeft(444);
    obj.label109:setTop(489);
    obj.label109:setWidth(280);
    obj.label109:setFontSize(18);
    obj.label109:setText("Tradição:");
    obj.label109:setFontColor("#49244F");
    lfm_setPropAsString(obj.label109, "fontStyle", "bold");
    obj.label109:setName("label109");

    obj.edit97 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit97:setParent(obj.rectangle297);
    obj.edit97:setLeft(524);
    obj.edit97:setTop(483);
    obj.edit97:setWidth(260);
    obj.edit97:setFontSize(18);
    obj.edit97:setFontColor("#49244F");
    obj.edit97:setTransparent(true);
    obj.edit97:setField("tradicaoMagia04");
    obj.edit97:setName("edit97");

    obj.rectangle331 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle331:setParent(obj.rectangle297);
    obj.rectangle331:setLeft(434);
    obj.rectangle331:setTop(551);
    obj.rectangle331:setWidth(350);
    obj.rectangle331:setHeight(1);
    obj.rectangle331:setColor("#49244F");
    obj.rectangle331:setName("rectangle331");

    obj.label110 = GUI.fromHandle(_obj_newObject("label"));
    obj.label110:setParent(obj.rectangle297);
    obj.label110:setLeft(444);
    obj.label110:setTop(524);
    obj.label110:setWidth(280);
    obj.label110:setFontSize(18);
    obj.label110:setText("Alvo:");
    obj.label110:setFontColor("#49244F");
    lfm_setPropAsString(obj.label110, "fontStyle", "bold");
    obj.label110:setName("label110");

    obj.edit98 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit98:setParent(obj.rectangle297);
    obj.edit98:setLeft(489);
    obj.edit98:setTop(518);
    obj.edit98:setWidth(295);
    obj.edit98:setFontSize(18);
    obj.edit98:setFontColor("#49244F");
    obj.edit98:setTransparent(true);
    obj.edit98:setField("alvoMagia04");
    obj.edit98:setName("edit98");

    obj.rectangle332 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle332:setParent(obj.rectangle297);
    obj.rectangle332:setLeft(434);
    obj.rectangle332:setTop(586);
    obj.rectangle332:setWidth(350);
    obj.rectangle332:setHeight(3);
    obj.rectangle332:setColor("#49244F");
    obj.rectangle332:setName("rectangle332");

    obj.label111 = GUI.fromHandle(_obj_newObject("label"));
    obj.label111:setParent(obj.rectangle297);
    obj.label111:setLeft(444);
    obj.label111:setTop(559);
    obj.label111:setWidth(280);
    obj.label111:setFontSize(18);
    obj.label111:setText("Duração:");
    obj.label111:setFontColor("#49244F");
    lfm_setPropAsString(obj.label111, "fontStyle", "bold");
    obj.label111:setName("label111");

    obj.edit99 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit99:setParent(obj.rectangle297);
    obj.edit99:setLeft(524);
    obj.edit99:setTop(553);
    obj.edit99:setWidth(260);
    obj.edit99:setFontSize(18);
    obj.edit99:setFontColor("#49244F");
    obj.edit99:setTransparent(true);
    obj.edit99:setField("duracaoMagia04");
    obj.edit99:setName("edit99");

    obj.rectangle333 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle333:setParent(obj.rectangle297);
    obj.rectangle333:setLeft(434);
    obj.rectangle333:setTop(586);
    obj.rectangle333:setWidth(350);
    obj.rectangle333:setHeight(125);
    obj.rectangle333:setColor("#49244F");
    obj.rectangle333:setName("rectangle333");

    obj.textEditor20 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor20:setParent(obj.rectangle297);
    obj.textEditor20:setLeft(439);
    obj.textEditor20:setTop(591);
    obj.textEditor20:setWidth(340);
    obj.textEditor20:setHeight(115);
    obj.textEditor20:setFontColor("#D5D5D5");
    obj.textEditor20:setTransparent(true);
    obj.textEditor20:setField("descricaoMagia04");
    obj.textEditor20:setFontSize(18);
    obj.textEditor20:setName("textEditor20");

    obj.rectangle334 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle334:setParent(obj.rectangle297);
    obj.rectangle334:setLeft(434);
    obj.rectangle334:setTop(711);
    obj.rectangle334:setWidth(350);
    obj.rectangle334:setHeight(3);
    obj.rectangle334:setColor("#49244F");
    obj.rectangle334:setName("rectangle334");

    obj.rectangle335 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle335:setParent(obj.rectangle297);
    obj.rectangle335:setLeft(438);
    obj.rectangle335:setTop(718);
    obj.rectangle335:setWidth(135);
    obj.rectangle335:setHeight(29);
    obj.rectangle335:setColor("#49244F");
    obj.rectangle335:setHitTest(true);
    obj.rectangle335:setCursor("handPoint");
    obj.rectangle335:setName("rectangle335");

    obj.label112 = GUI.fromHandle(_obj_newObject("label"));
    obj.label112:setParent(obj.rectangle297);
    obj.label112:setLeft(444);
    obj.label112:setTop(722);
    obj.label112:setWidth(280);
    obj.label112:setFontSize(18);
    obj.label112:setText("Conjurar Feitiço");
    obj.label112:setFontColor("#D5D5D5");
    obj.label112:setName("label112");

    obj.rectangle336 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle336:setParent(obj.rectangle297);
    obj.rectangle336:setLeft(698);
    obj.rectangle336:setTop(718);
    obj.rectangle336:setWidth(29);
    obj.rectangle336:setHeight(29);
    obj.rectangle336:setColor("#49244F");
    obj.rectangle336:setCornerType("round");
    obj.rectangle336:setXradius(15);
    obj.rectangle336:setYradius(15);
    obj.rectangle336:setName("rectangle336");

    obj.edit100 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit100:setParent(obj.rectangle297);
    obj.edit100:setLeft(692);
    obj.edit100:setTop(715);
    obj.edit100:setWidth(40);
    obj.edit100:setFontSize(18);
    obj.edit100:setHorzTextAlign("center");
    obj.edit100:setFontColor("#D5D5D5");
    obj.edit100:setTransparent(true);
    obj.edit100:setField("qtdMagia04");
    obj.edit100:setHitTest(true);
    obj.edit100:setCursor("handPoint");
    obj.edit100:setHint("Quantidade");
    obj.edit100:setName("edit100");

    obj.label113 = GUI.fromHandle(_obj_newObject("label"));
    obj.label113:setParent(obj.rectangle297);
    obj.label113:setLeft(734);
    obj.label113:setTop(722);
    obj.label113:setWidth(280);
    obj.label113:setFontSize(18);
    obj.label113:setText("/");
    obj.label113:setFontColor("#49244F");
    obj.label113:setName("label113");

    obj.rectangle337 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle337:setParent(obj.rectangle297);
    obj.rectangle337:setLeft(748);
    obj.rectangle337:setTop(716);
    obj.rectangle337:setWidth(29);
    obj.rectangle337:setHeight(29);
    obj.rectangle337:setColor("#49244F");
    obj.rectangle337:setCornerType("round");
    obj.rectangle337:setXradius(15);
    obj.rectangle337:setYradius(15);
    obj.rectangle337:setName("rectangle337");

    obj.edit101 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit101:setParent(obj.rectangle297);
    obj.edit101:setLeft(743);
    obj.edit101:setTop(715);
    obj.edit101:setWidth(40);
    obj.edit101:setFontSize(18);
    obj.edit101:setHorzTextAlign("center");
    obj.edit101:setFontColor("#D5D5D5");
    obj.edit101:setTransparent(true);
    obj.edit101:setField("maxMagia04");
    obj.edit101:setHitTest(true);
    obj.edit101:setCursor("handPoint");
    obj.edit101:setHint("Total");
    obj.edit101:setName("edit101");

    obj.rectangle338 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle338:setParent(obj.rectangle297);
    obj.rectangle338:setLeft(60);
    obj.rectangle338:setTop(775);
    obj.rectangle338:setWidth(350);
    obj.rectangle338:setHeight(318);
    obj.rectangle338:setColor("#D5D5D5");
    obj.rectangle338:setStrokeColor("#49244F");
    obj.rectangle338:setStrokeSize(3);
    obj.rectangle338:setName("rectangle338");

    obj.rectangle339 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle339:setParent(obj.rectangle297);
    obj.rectangle339:setLeft(60);
    obj.rectangle339:setTop(775);
    obj.rectangle339:setWidth(350);
    obj.rectangle339:setHeight(50);
    obj.rectangle339:setColor("#49244F");
    obj.rectangle339:setName("rectangle339");

    obj.edit102 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit102:setParent(obj.rectangle297);
    obj.edit102:setLeft(65);
    obj.edit102:setTop(783);
    obj.edit102:setWidth(340);
    obj.edit102:setFontSize(18);
    obj.edit102:setHeight(30);
    obj.edit102:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit102, "fontStyle", "bold");
    obj.edit102:setTransparent(true);
    obj.edit102:setField("Magia05");
    obj.edit102:setName("edit102");

    obj.rectangle340 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle340:setParent(obj.rectangle297);
    obj.rectangle340:setLeft(60);
    obj.rectangle340:setTop(856);
    obj.rectangle340:setWidth(350);
    obj.rectangle340:setHeight(1);
    obj.rectangle340:setColor("#49244F");
    obj.rectangle340:setName("rectangle340");

    obj.label114 = GUI.fromHandle(_obj_newObject("label"));
    obj.label114:setParent(obj.rectangle297);
    obj.label114:setLeft(70);
    obj.label114:setTop(829);
    obj.label114:setWidth(280);
    obj.label114:setFontSize(18);
    obj.label114:setText("Tradição:");
    obj.label114:setFontColor("#49244F");
    lfm_setPropAsString(obj.label114, "fontStyle", "bold");
    obj.label114:setName("label114");

    obj.edit103 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit103:setParent(obj.rectangle297);
    obj.edit103:setLeft(150);
    obj.edit103:setTop(823);
    obj.edit103:setWidth(260);
    obj.edit103:setFontSize(18);
    obj.edit103:setFontColor("#49244F");
    obj.edit103:setTransparent(true);
    obj.edit103:setField("tradicaoMagia05");
    obj.edit103:setName("edit103");

    obj.rectangle341 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle341:setParent(obj.rectangle297);
    obj.rectangle341:setLeft(60);
    obj.rectangle341:setTop(891);
    obj.rectangle341:setWidth(350);
    obj.rectangle341:setHeight(1);
    obj.rectangle341:setColor("#49244F");
    obj.rectangle341:setName("rectangle341");

    obj.label115 = GUI.fromHandle(_obj_newObject("label"));
    obj.label115:setParent(obj.rectangle297);
    obj.label115:setLeft(70);
    obj.label115:setTop(864);
    obj.label115:setWidth(280);
    obj.label115:setFontSize(18);
    obj.label115:setText("Alvo:");
    obj.label115:setFontColor("#49244F");
    lfm_setPropAsString(obj.label115, "fontStyle", "bold");
    obj.label115:setName("label115");

    obj.edit104 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit104:setParent(obj.rectangle297);
    obj.edit104:setLeft(115);
    obj.edit104:setTop(858);
    obj.edit104:setWidth(295);
    obj.edit104:setFontSize(18);
    obj.edit104:setFontColor("#49244F");
    obj.edit104:setTransparent(true);
    obj.edit104:setField("alvoMagia05");
    obj.edit104:setName("edit104");

    obj.rectangle342 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle342:setParent(obj.rectangle297);
    obj.rectangle342:setLeft(60);
    obj.rectangle342:setTop(926);
    obj.rectangle342:setWidth(350);
    obj.rectangle342:setHeight(3);
    obj.rectangle342:setColor("#49244F");
    obj.rectangle342:setName("rectangle342");

    obj.label116 = GUI.fromHandle(_obj_newObject("label"));
    obj.label116:setParent(obj.rectangle297);
    obj.label116:setLeft(70);
    obj.label116:setTop(899);
    obj.label116:setWidth(280);
    obj.label116:setFontSize(18);
    obj.label116:setText("Duração:");
    obj.label116:setFontColor("#49244F");
    lfm_setPropAsString(obj.label116, "fontStyle", "bold");
    obj.label116:setName("label116");

    obj.edit105 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit105:setParent(obj.rectangle297);
    obj.edit105:setLeft(150);
    obj.edit105:setTop(893);
    obj.edit105:setWidth(260);
    obj.edit105:setFontSize(18);
    obj.edit105:setFontColor("#49244F");
    obj.edit105:setTransparent(true);
    obj.edit105:setField("duracaoMagia05");
    obj.edit105:setName("edit105");

    obj.rectangle343 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle343:setParent(obj.rectangle297);
    obj.rectangle343:setLeft(60);
    obj.rectangle343:setTop(926);
    obj.rectangle343:setWidth(350);
    obj.rectangle343:setHeight(125);
    obj.rectangle343:setColor("#49244F");
    obj.rectangle343:setName("rectangle343");

    obj.textEditor21 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor21:setParent(obj.rectangle297);
    obj.textEditor21:setLeft(65);
    obj.textEditor21:setTop(931);
    obj.textEditor21:setWidth(340);
    obj.textEditor21:setHeight(115);
    obj.textEditor21:setFontColor("#D5D5D5");
    obj.textEditor21:setTransparent(true);
    obj.textEditor21:setField("descricaoMagia05");
    obj.textEditor21:setFontSize(18);
    obj.textEditor21:setName("textEditor21");

    obj.rectangle344 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle344:setParent(obj.rectangle297);
    obj.rectangle344:setLeft(60);
    obj.rectangle344:setTop(1051);
    obj.rectangle344:setWidth(350);
    obj.rectangle344:setHeight(3);
    obj.rectangle344:setColor("#49244F");
    obj.rectangle344:setName("rectangle344");

    obj.rectangle345 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle345:setParent(obj.rectangle297);
    obj.rectangle345:setLeft(64);
    obj.rectangle345:setTop(1058);
    obj.rectangle345:setWidth(135);
    obj.rectangle345:setHeight(29);
    obj.rectangle345:setColor("#49244F");
    obj.rectangle345:setHitTest(true);
    obj.rectangle345:setCursor("handPoint");
    obj.rectangle345:setName("rectangle345");

    obj.label117 = GUI.fromHandle(_obj_newObject("label"));
    obj.label117:setParent(obj.rectangle297);
    obj.label117:setLeft(70);
    obj.label117:setTop(1062);
    obj.label117:setWidth(280);
    obj.label117:setFontSize(18);
    obj.label117:setText("Conjurar Feitiço");
    obj.label117:setFontColor("#D5D5D5");
    obj.label117:setName("label117");

    obj.rectangle346 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle346:setParent(obj.rectangle297);
    obj.rectangle346:setLeft(324);
    obj.rectangle346:setTop(1058);
    obj.rectangle346:setWidth(29);
    obj.rectangle346:setHeight(29);
    obj.rectangle346:setColor("#49244F");
    obj.rectangle346:setCornerType("round");
    obj.rectangle346:setXradius(15);
    obj.rectangle346:setYradius(15);
    obj.rectangle346:setName("rectangle346");

    obj.edit106 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit106:setParent(obj.rectangle297);
    obj.edit106:setLeft(318);
    obj.edit106:setTop(1055);
    obj.edit106:setWidth(40);
    obj.edit106:setFontSize(18);
    obj.edit106:setHorzTextAlign("center");
    obj.edit106:setFontColor("#D5D5D5");
    obj.edit106:setTransparent(true);
    obj.edit106:setField("qtdMagia05");
    obj.edit106:setHitTest(true);
    obj.edit106:setCursor("handPoint");
    obj.edit106:setHint("Quantidade");
    obj.edit106:setName("edit106");

    obj.label118 = GUI.fromHandle(_obj_newObject("label"));
    obj.label118:setParent(obj.rectangle297);
    obj.label118:setLeft(360);
    obj.label118:setTop(1062);
    obj.label118:setWidth(280);
    obj.label118:setFontSize(18);
    obj.label118:setText("/");
    obj.label118:setFontColor("#49244F");
    obj.label118:setName("label118");

    obj.rectangle347 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle347:setParent(obj.rectangle297);
    obj.rectangle347:setLeft(374);
    obj.rectangle347:setTop(1056);
    obj.rectangle347:setWidth(29);
    obj.rectangle347:setHeight(29);
    obj.rectangle347:setColor("#49244F");
    obj.rectangle347:setCornerType("round");
    obj.rectangle347:setXradius(15);
    obj.rectangle347:setYradius(15);
    obj.rectangle347:setName("rectangle347");

    obj.edit107 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit107:setParent(obj.rectangle297);
    obj.edit107:setLeft(368);
    obj.edit107:setTop(1055);
    obj.edit107:setWidth(40);
    obj.edit107:setFontSize(18);
    obj.edit107:setHorzTextAlign("center");
    obj.edit107:setFontColor("#D5D5D5");
    obj.edit107:setTransparent(true);
    obj.edit107:setField("maxMagia05");
    obj.edit107:setHitTest(true);
    obj.edit107:setCursor("handPoint");
    obj.edit107:setHint("Total");
    obj.edit107:setName("edit107");

    obj.rectangle348 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle348:setParent(obj.rectangle297);
    obj.rectangle348:setLeft(434);
    obj.rectangle348:setTop(775);
    obj.rectangle348:setWidth(350);
    obj.rectangle348:setHeight(318);
    obj.rectangle348:setColor("#D5D5D5");
    obj.rectangle348:setStrokeColor("#49244F");
    obj.rectangle348:setStrokeSize(3);
    obj.rectangle348:setName("rectangle348");

    obj.rectangle349 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle349:setParent(obj.rectangle297);
    obj.rectangle349:setLeft(434);
    obj.rectangle349:setTop(775);
    obj.rectangle349:setWidth(350);
    obj.rectangle349:setHeight(50);
    obj.rectangle349:setColor("#49244F");
    obj.rectangle349:setName("rectangle349");

    obj.edit108 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit108:setParent(obj.rectangle297);
    obj.edit108:setLeft(439);
    obj.edit108:setTop(783);
    obj.edit108:setWidth(340);
    obj.edit108:setFontSize(18);
    obj.edit108:setHeight(30);
    obj.edit108:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit108, "fontStyle", "bold");
    obj.edit108:setTransparent(true);
    obj.edit108:setField("Magia06");
    obj.edit108:setName("edit108");

    obj.rectangle350 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle350:setParent(obj.rectangle297);
    obj.rectangle350:setLeft(434);
    obj.rectangle350:setTop(856);
    obj.rectangle350:setWidth(350);
    obj.rectangle350:setHeight(1);
    obj.rectangle350:setColor("#49244F");
    obj.rectangle350:setName("rectangle350");

    obj.label119 = GUI.fromHandle(_obj_newObject("label"));
    obj.label119:setParent(obj.rectangle297);
    obj.label119:setLeft(444);
    obj.label119:setTop(829);
    obj.label119:setWidth(280);
    obj.label119:setFontSize(18);
    obj.label119:setText("Tradição:");
    obj.label119:setFontColor("#49244F");
    lfm_setPropAsString(obj.label119, "fontStyle", "bold");
    obj.label119:setName("label119");

    obj.edit109 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit109:setParent(obj.rectangle297);
    obj.edit109:setLeft(524);
    obj.edit109:setTop(823);
    obj.edit109:setWidth(260);
    obj.edit109:setFontSize(18);
    obj.edit109:setFontColor("#49244F");
    obj.edit109:setTransparent(true);
    obj.edit109:setField("tradicaoMagia06");
    obj.edit109:setName("edit109");

    obj.rectangle351 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle351:setParent(obj.rectangle297);
    obj.rectangle351:setLeft(434);
    obj.rectangle351:setTop(891);
    obj.rectangle351:setWidth(350);
    obj.rectangle351:setHeight(1);
    obj.rectangle351:setColor("#49244F");
    obj.rectangle351:setName("rectangle351");

    obj.label120 = GUI.fromHandle(_obj_newObject("label"));
    obj.label120:setParent(obj.rectangle297);
    obj.label120:setLeft(444);
    obj.label120:setTop(864);
    obj.label120:setWidth(280);
    obj.label120:setFontSize(18);
    obj.label120:setText("Alvo:");
    obj.label120:setFontColor("#49244F");
    lfm_setPropAsString(obj.label120, "fontStyle", "bold");
    obj.label120:setName("label120");

    obj.edit110 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit110:setParent(obj.rectangle297);
    obj.edit110:setLeft(489);
    obj.edit110:setTop(858);
    obj.edit110:setWidth(295);
    obj.edit110:setFontSize(18);
    obj.edit110:setFontColor("#49244F");
    obj.edit110:setTransparent(true);
    obj.edit110:setField("alvoMagia06");
    obj.edit110:setName("edit110");

    obj.rectangle352 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle352:setParent(obj.rectangle297);
    obj.rectangle352:setLeft(434);
    obj.rectangle352:setTop(926);
    obj.rectangle352:setWidth(350);
    obj.rectangle352:setHeight(3);
    obj.rectangle352:setColor("#49244F");
    obj.rectangle352:setName("rectangle352");

    obj.label121 = GUI.fromHandle(_obj_newObject("label"));
    obj.label121:setParent(obj.rectangle297);
    obj.label121:setLeft(444);
    obj.label121:setTop(899);
    obj.label121:setWidth(280);
    obj.label121:setFontSize(18);
    obj.label121:setText("Duração:");
    obj.label121:setFontColor("#49244F");
    lfm_setPropAsString(obj.label121, "fontStyle", "bold");
    obj.label121:setName("label121");

    obj.edit111 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit111:setParent(obj.rectangle297);
    obj.edit111:setLeft(524);
    obj.edit111:setTop(893);
    obj.edit111:setWidth(260);
    obj.edit111:setFontSize(18);
    obj.edit111:setFontColor("#49244F");
    obj.edit111:setTransparent(true);
    obj.edit111:setField("duracaoMagia06");
    obj.edit111:setName("edit111");

    obj.rectangle353 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle353:setParent(obj.rectangle297);
    obj.rectangle353:setLeft(434);
    obj.rectangle353:setTop(926);
    obj.rectangle353:setWidth(350);
    obj.rectangle353:setHeight(125);
    obj.rectangle353:setColor("#49244F");
    obj.rectangle353:setName("rectangle353");

    obj.textEditor22 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor22:setParent(obj.rectangle297);
    obj.textEditor22:setLeft(439);
    obj.textEditor22:setTop(931);
    obj.textEditor22:setWidth(340);
    obj.textEditor22:setHeight(115);
    obj.textEditor22:setFontColor("#D5D5D5");
    obj.textEditor22:setTransparent(true);
    obj.textEditor22:setField("descricaoMagia06");
    obj.textEditor22:setFontSize(18);
    obj.textEditor22:setName("textEditor22");

    obj.rectangle354 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle354:setParent(obj.rectangle297);
    obj.rectangle354:setLeft(434);
    obj.rectangle354:setTop(1051);
    obj.rectangle354:setWidth(350);
    obj.rectangle354:setHeight(3);
    obj.rectangle354:setColor("#49244F");
    obj.rectangle354:setName("rectangle354");

    obj.rectangle355 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle355:setParent(obj.rectangle297);
    obj.rectangle355:setLeft(438);
    obj.rectangle355:setTop(1058);
    obj.rectangle355:setWidth(135);
    obj.rectangle355:setHeight(29);
    obj.rectangle355:setColor("#49244F");
    obj.rectangle355:setHitTest(true);
    obj.rectangle355:setCursor("handPoint");
    obj.rectangle355:setName("rectangle355");

    obj.label122 = GUI.fromHandle(_obj_newObject("label"));
    obj.label122:setParent(obj.rectangle297);
    obj.label122:setLeft(444);
    obj.label122:setTop(1062);
    obj.label122:setWidth(280);
    obj.label122:setFontSize(18);
    obj.label122:setText("Conjurar Feitiço");
    obj.label122:setFontColor("#D5D5D5");
    obj.label122:setName("label122");

    obj.rectangle356 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle356:setParent(obj.rectangle297);
    obj.rectangle356:setLeft(698);
    obj.rectangle356:setTop(1058);
    obj.rectangle356:setWidth(29);
    obj.rectangle356:setHeight(29);
    obj.rectangle356:setColor("#49244F");
    obj.rectangle356:setCornerType("round");
    obj.rectangle356:setXradius(15);
    obj.rectangle356:setYradius(15);
    obj.rectangle356:setName("rectangle356");

    obj.edit112 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit112:setParent(obj.rectangle297);
    obj.edit112:setLeft(692);
    obj.edit112:setTop(1055);
    obj.edit112:setWidth(40);
    obj.edit112:setFontSize(18);
    obj.edit112:setHorzTextAlign("center");
    obj.edit112:setFontColor("#D5D5D5");
    obj.edit112:setTransparent(true);
    obj.edit112:setField("qtdMagia06");
    obj.edit112:setHitTest(true);
    obj.edit112:setCursor("handPoint");
    obj.edit112:setHint("Quantidade");
    obj.edit112:setName("edit112");

    obj.label123 = GUI.fromHandle(_obj_newObject("label"));
    obj.label123:setParent(obj.rectangle297);
    obj.label123:setLeft(734);
    obj.label123:setTop(1062);
    obj.label123:setWidth(280);
    obj.label123:setFontSize(18);
    obj.label123:setText("/");
    obj.label123:setFontColor("#49244F");
    obj.label123:setName("label123");

    obj.rectangle357 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle357:setParent(obj.rectangle297);
    obj.rectangle357:setLeft(748);
    obj.rectangle357:setTop(1056);
    obj.rectangle357:setWidth(29);
    obj.rectangle357:setHeight(29);
    obj.rectangle357:setColor("#49244F");
    obj.rectangle357:setCornerType("round");
    obj.rectangle357:setXradius(15);
    obj.rectangle357:setYradius(15);
    obj.rectangle357:setName("rectangle357");

    obj.edit113 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit113:setParent(obj.rectangle297);
    obj.edit113:setLeft(743);
    obj.edit113:setTop(1055);
    obj.edit113:setWidth(40);
    obj.edit113:setFontSize(18);
    obj.edit113:setHorzTextAlign("center");
    obj.edit113:setFontColor("#D5D5D5");
    obj.edit113:setTransparent(true);
    obj.edit113:setField("maxMagia06");
    obj.edit113:setHitTest(true);
    obj.edit113:setCursor("handPoint");
    obj.edit113:setHint("Total");
    obj.edit113:setName("edit113");

    obj.rectangle358 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle358:setParent(obj.rectangle297);
    obj.rectangle358:setLeft(60);
    obj.rectangle358:setTop(1115);
    obj.rectangle358:setWidth(350);
    obj.rectangle358:setHeight(318);
    obj.rectangle358:setColor("#D5D5D5");
    obj.rectangle358:setStrokeColor("#49244F");
    obj.rectangle358:setStrokeSize(3);
    obj.rectangle358:setName("rectangle358");

    obj.rectangle359 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle359:setParent(obj.rectangle297);
    obj.rectangle359:setLeft(60);
    obj.rectangle359:setTop(1115);
    obj.rectangle359:setWidth(350);
    obj.rectangle359:setHeight(50);
    obj.rectangle359:setColor("#49244F");
    obj.rectangle359:setName("rectangle359");

    obj.edit114 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit114:setParent(obj.rectangle297);
    obj.edit114:setLeft(65);
    obj.edit114:setTop(1123);
    obj.edit114:setWidth(340);
    obj.edit114:setFontSize(18);
    obj.edit114:setHeight(30);
    obj.edit114:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit114, "fontStyle", "bold");
    obj.edit114:setTransparent(true);
    obj.edit114:setField("Magia07");
    obj.edit114:setName("edit114");

    obj.rectangle360 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle360:setParent(obj.rectangle297);
    obj.rectangle360:setLeft(60);
    obj.rectangle360:setTop(1196);
    obj.rectangle360:setWidth(350);
    obj.rectangle360:setHeight(1);
    obj.rectangle360:setColor("#49244F");
    obj.rectangle360:setName("rectangle360");

    obj.label124 = GUI.fromHandle(_obj_newObject("label"));
    obj.label124:setParent(obj.rectangle297);
    obj.label124:setLeft(70);
    obj.label124:setTop(1169);
    obj.label124:setWidth(280);
    obj.label124:setFontSize(18);
    obj.label124:setText("Tradição:");
    obj.label124:setFontColor("#49244F");
    lfm_setPropAsString(obj.label124, "fontStyle", "bold");
    obj.label124:setName("label124");

    obj.edit115 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit115:setParent(obj.rectangle297);
    obj.edit115:setLeft(150);
    obj.edit115:setTop(1163);
    obj.edit115:setWidth(260);
    obj.edit115:setFontSize(18);
    obj.edit115:setFontColor("#49244F");
    obj.edit115:setTransparent(true);
    obj.edit115:setField("tradicaoMagia07");
    obj.edit115:setName("edit115");

    obj.rectangle361 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle361:setParent(obj.rectangle297);
    obj.rectangle361:setLeft(60);
    obj.rectangle361:setTop(1231);
    obj.rectangle361:setWidth(350);
    obj.rectangle361:setHeight(1);
    obj.rectangle361:setColor("#49244F");
    obj.rectangle361:setName("rectangle361");

    obj.label125 = GUI.fromHandle(_obj_newObject("label"));
    obj.label125:setParent(obj.rectangle297);
    obj.label125:setLeft(70);
    obj.label125:setTop(1204);
    obj.label125:setWidth(280);
    obj.label125:setFontSize(18);
    obj.label125:setText("Alvo:");
    obj.label125:setFontColor("#49244F");
    lfm_setPropAsString(obj.label125, "fontStyle", "bold");
    obj.label125:setName("label125");

    obj.edit116 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit116:setParent(obj.rectangle297);
    obj.edit116:setLeft(115);
    obj.edit116:setTop(1198);
    obj.edit116:setWidth(295);
    obj.edit116:setFontSize(18);
    obj.edit116:setFontColor("#49244F");
    obj.edit116:setTransparent(true);
    obj.edit116:setField("alvoMagia07");
    obj.edit116:setName("edit116");

    obj.rectangle362 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle362:setParent(obj.rectangle297);
    obj.rectangle362:setLeft(60);
    obj.rectangle362:setTop(1266);
    obj.rectangle362:setWidth(350);
    obj.rectangle362:setHeight(3);
    obj.rectangle362:setColor("#49244F");
    obj.rectangle362:setName("rectangle362");

    obj.label126 = GUI.fromHandle(_obj_newObject("label"));
    obj.label126:setParent(obj.rectangle297);
    obj.label126:setLeft(70);
    obj.label126:setTop(1239);
    obj.label126:setWidth(280);
    obj.label126:setFontSize(18);
    obj.label126:setText("Duração:");
    obj.label126:setFontColor("#49244F");
    lfm_setPropAsString(obj.label126, "fontStyle", "bold");
    obj.label126:setName("label126");

    obj.edit117 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit117:setParent(obj.rectangle297);
    obj.edit117:setLeft(150);
    obj.edit117:setTop(1233);
    obj.edit117:setWidth(260);
    obj.edit117:setFontSize(18);
    obj.edit117:setFontColor("#49244F");
    obj.edit117:setTransparent(true);
    obj.edit117:setField("duracaoMagia07");
    obj.edit117:setName("edit117");

    obj.rectangle363 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle363:setParent(obj.rectangle297);
    obj.rectangle363:setLeft(60);
    obj.rectangle363:setTop(1266);
    obj.rectangle363:setWidth(350);
    obj.rectangle363:setHeight(125);
    obj.rectangle363:setColor("#49244F");
    obj.rectangle363:setName("rectangle363");

    obj.textEditor23 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor23:setParent(obj.rectangle297);
    obj.textEditor23:setLeft(65);
    obj.textEditor23:setTop(1271);
    obj.textEditor23:setWidth(340);
    obj.textEditor23:setHeight(115);
    obj.textEditor23:setFontColor("#D5D5D5");
    obj.textEditor23:setTransparent(true);
    obj.textEditor23:setField("descricaoMagia07");
    obj.textEditor23:setFontSize(18);
    obj.textEditor23:setName("textEditor23");

    obj.rectangle364 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle364:setParent(obj.rectangle297);
    obj.rectangle364:setLeft(60);
    obj.rectangle364:setTop(1391);
    obj.rectangle364:setWidth(350);
    obj.rectangle364:setHeight(3);
    obj.rectangle364:setColor("#49244F");
    obj.rectangle364:setName("rectangle364");

    obj.rectangle365 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle365:setParent(obj.rectangle297);
    obj.rectangle365:setLeft(64);
    obj.rectangle365:setTop(1398);
    obj.rectangle365:setWidth(135);
    obj.rectangle365:setHeight(29);
    obj.rectangle365:setColor("#49244F");
    obj.rectangle365:setHitTest(true);
    obj.rectangle365:setCursor("handPoint");
    obj.rectangle365:setName("rectangle365");

    obj.label127 = GUI.fromHandle(_obj_newObject("label"));
    obj.label127:setParent(obj.rectangle297);
    obj.label127:setLeft(70);
    obj.label127:setTop(1402);
    obj.label127:setWidth(280);
    obj.label127:setFontSize(18);
    obj.label127:setText("Conjurar Feitiço");
    obj.label127:setFontColor("#D5D5D5");
    obj.label127:setName("label127");

    obj.rectangle366 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle366:setParent(obj.rectangle297);
    obj.rectangle366:setLeft(324);
    obj.rectangle366:setTop(1398);
    obj.rectangle366:setWidth(29);
    obj.rectangle366:setHeight(29);
    obj.rectangle366:setColor("#49244F");
    obj.rectangle366:setCornerType("round");
    obj.rectangle366:setXradius(15);
    obj.rectangle366:setYradius(15);
    obj.rectangle366:setName("rectangle366");

    obj.edit118 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit118:setParent(obj.rectangle297);
    obj.edit118:setLeft(318);
    obj.edit118:setTop(1395);
    obj.edit118:setWidth(40);
    obj.edit118:setFontSize(18);
    obj.edit118:setHorzTextAlign("center");
    obj.edit118:setFontColor("#D5D5D5");
    obj.edit118:setTransparent(true);
    obj.edit118:setField("qtdMagia07");
    obj.edit118:setHitTest(true);
    obj.edit118:setCursor("handPoint");
    obj.edit118:setHint("Quantidade");
    obj.edit118:setName("edit118");

    obj.label128 = GUI.fromHandle(_obj_newObject("label"));
    obj.label128:setParent(obj.rectangle297);
    obj.label128:setLeft(360);
    obj.label128:setTop(1402);
    obj.label128:setWidth(280);
    obj.label128:setFontSize(18);
    obj.label128:setText("/");
    obj.label128:setFontColor("#49244F");
    obj.label128:setName("label128");

    obj.rectangle367 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle367:setParent(obj.rectangle297);
    obj.rectangle367:setLeft(374);
    obj.rectangle367:setTop(1396);
    obj.rectangle367:setWidth(29);
    obj.rectangle367:setHeight(29);
    obj.rectangle367:setColor("#49244F");
    obj.rectangle367:setCornerType("round");
    obj.rectangle367:setXradius(15);
    obj.rectangle367:setYradius(15);
    obj.rectangle367:setName("rectangle367");

    obj.edit119 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit119:setParent(obj.rectangle297);
    obj.edit119:setLeft(368);
    obj.edit119:setTop(1395);
    obj.edit119:setWidth(40);
    obj.edit119:setFontSize(18);
    obj.edit119:setHorzTextAlign("center");
    obj.edit119:setFontColor("#D5D5D5");
    obj.edit119:setTransparent(true);
    obj.edit119:setField("maxMagia07");
    obj.edit119:setHitTest(true);
    obj.edit119:setCursor("handPoint");
    obj.edit119:setHint("Total");
    obj.edit119:setName("edit119");

    obj.rectangle368 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle368:setParent(obj.rectangle297);
    obj.rectangle368:setLeft(434);
    obj.rectangle368:setTop(1115);
    obj.rectangle368:setWidth(350);
    obj.rectangle368:setHeight(318);
    obj.rectangle368:setColor("#D5D5D5");
    obj.rectangle368:setStrokeColor("#49244F");
    obj.rectangle368:setStrokeSize(3);
    obj.rectangle368:setName("rectangle368");

    obj.rectangle369 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle369:setParent(obj.rectangle297);
    obj.rectangle369:setLeft(434);
    obj.rectangle369:setTop(1115);
    obj.rectangle369:setWidth(350);
    obj.rectangle369:setHeight(50);
    obj.rectangle369:setColor("#49244F");
    obj.rectangle369:setName("rectangle369");

    obj.edit120 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit120:setParent(obj.rectangle297);
    obj.edit120:setLeft(439);
    obj.edit120:setTop(1123);
    obj.edit120:setWidth(340);
    obj.edit120:setFontSize(18);
    obj.edit120:setHeight(30);
    obj.edit120:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit120, "fontStyle", "bold");
    obj.edit120:setTransparent(true);
    obj.edit120:setField("Magia08");
    obj.edit120:setName("edit120");

    obj.rectangle370 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle370:setParent(obj.rectangle297);
    obj.rectangle370:setLeft(434);
    obj.rectangle370:setTop(1196);
    obj.rectangle370:setWidth(350);
    obj.rectangle370:setHeight(1);
    obj.rectangle370:setColor("#49244F");
    obj.rectangle370:setName("rectangle370");

    obj.label129 = GUI.fromHandle(_obj_newObject("label"));
    obj.label129:setParent(obj.rectangle297);
    obj.label129:setLeft(444);
    obj.label129:setTop(1169);
    obj.label129:setWidth(280);
    obj.label129:setFontSize(18);
    obj.label129:setText("Tradição:");
    obj.label129:setFontColor("#49244F");
    lfm_setPropAsString(obj.label129, "fontStyle", "bold");
    obj.label129:setName("label129");

    obj.edit121 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit121:setParent(obj.rectangle297);
    obj.edit121:setLeft(524);
    obj.edit121:setTop(1163);
    obj.edit121:setWidth(260);
    obj.edit121:setFontSize(18);
    obj.edit121:setFontColor("#49244F");
    obj.edit121:setTransparent(true);
    obj.edit121:setField("tradicaoMagia08");
    obj.edit121:setName("edit121");

    obj.rectangle371 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle371:setParent(obj.rectangle297);
    obj.rectangle371:setLeft(434);
    obj.rectangle371:setTop(1231);
    obj.rectangle371:setWidth(350);
    obj.rectangle371:setHeight(1);
    obj.rectangle371:setColor("#49244F");
    obj.rectangle371:setName("rectangle371");

    obj.label130 = GUI.fromHandle(_obj_newObject("label"));
    obj.label130:setParent(obj.rectangle297);
    obj.label130:setLeft(444);
    obj.label130:setTop(1204);
    obj.label130:setWidth(280);
    obj.label130:setFontSize(18);
    obj.label130:setText("Alvo:");
    obj.label130:setFontColor("#49244F");
    lfm_setPropAsString(obj.label130, "fontStyle", "bold");
    obj.label130:setName("label130");

    obj.edit122 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit122:setParent(obj.rectangle297);
    obj.edit122:setLeft(489);
    obj.edit122:setTop(1198);
    obj.edit122:setWidth(295);
    obj.edit122:setFontSize(18);
    obj.edit122:setFontColor("#49244F");
    obj.edit122:setTransparent(true);
    obj.edit122:setField("alvoMagia08");
    obj.edit122:setName("edit122");

    obj.rectangle372 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle372:setParent(obj.rectangle297);
    obj.rectangle372:setLeft(434);
    obj.rectangle372:setTop(1266);
    obj.rectangle372:setWidth(350);
    obj.rectangle372:setHeight(3);
    obj.rectangle372:setColor("#49244F");
    obj.rectangle372:setName("rectangle372");

    obj.label131 = GUI.fromHandle(_obj_newObject("label"));
    obj.label131:setParent(obj.rectangle297);
    obj.label131:setLeft(444);
    obj.label131:setTop(1239);
    obj.label131:setWidth(280);
    obj.label131:setFontSize(18);
    obj.label131:setText("Duração:");
    obj.label131:setFontColor("#49244F");
    lfm_setPropAsString(obj.label131, "fontStyle", "bold");
    obj.label131:setName("label131");

    obj.edit123 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit123:setParent(obj.rectangle297);
    obj.edit123:setLeft(524);
    obj.edit123:setTop(1233);
    obj.edit123:setWidth(260);
    obj.edit123:setFontSize(18);
    obj.edit123:setFontColor("#49244F");
    obj.edit123:setTransparent(true);
    obj.edit123:setField("duracaoMagia08");
    obj.edit123:setName("edit123");

    obj.rectangle373 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle373:setParent(obj.rectangle297);
    obj.rectangle373:setLeft(434);
    obj.rectangle373:setTop(1266);
    obj.rectangle373:setWidth(350);
    obj.rectangle373:setHeight(125);
    obj.rectangle373:setColor("#49244F");
    obj.rectangle373:setName("rectangle373");

    obj.textEditor24 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor24:setParent(obj.rectangle297);
    obj.textEditor24:setLeft(439);
    obj.textEditor24:setTop(1271);
    obj.textEditor24:setWidth(340);
    obj.textEditor24:setHeight(115);
    obj.textEditor24:setFontColor("#D5D5D5");
    obj.textEditor24:setTransparent(true);
    obj.textEditor24:setField("descricaoMagia08");
    obj.textEditor24:setFontSize(18);
    obj.textEditor24:setName("textEditor24");

    obj.rectangle374 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle374:setParent(obj.rectangle297);
    obj.rectangle374:setLeft(434);
    obj.rectangle374:setTop(1391);
    obj.rectangle374:setWidth(350);
    obj.rectangle374:setHeight(3);
    obj.rectangle374:setColor("#49244F");
    obj.rectangle374:setName("rectangle374");

    obj.rectangle375 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle375:setParent(obj.rectangle297);
    obj.rectangle375:setLeft(438);
    obj.rectangle375:setTop(1398);
    obj.rectangle375:setWidth(135);
    obj.rectangle375:setHeight(29);
    obj.rectangle375:setColor("#49244F");
    obj.rectangle375:setHitTest(true);
    obj.rectangle375:setCursor("handPoint");
    obj.rectangle375:setName("rectangle375");

    obj.label132 = GUI.fromHandle(_obj_newObject("label"));
    obj.label132:setParent(obj.rectangle297);
    obj.label132:setLeft(444);
    obj.label132:setTop(1402);
    obj.label132:setWidth(280);
    obj.label132:setFontSize(18);
    obj.label132:setText("Conjurar Feitiço");
    obj.label132:setFontColor("#D5D5D5");
    obj.label132:setName("label132");

    obj.rectangle376 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle376:setParent(obj.rectangle297);
    obj.rectangle376:setLeft(698);
    obj.rectangle376:setTop(1398);
    obj.rectangle376:setWidth(29);
    obj.rectangle376:setHeight(29);
    obj.rectangle376:setColor("#49244F");
    obj.rectangle376:setCornerType("round");
    obj.rectangle376:setXradius(15);
    obj.rectangle376:setYradius(15);
    obj.rectangle376:setName("rectangle376");

    obj.edit124 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit124:setParent(obj.rectangle297);
    obj.edit124:setLeft(692);
    obj.edit124:setTop(1395);
    obj.edit124:setWidth(40);
    obj.edit124:setFontSize(18);
    obj.edit124:setHorzTextAlign("center");
    obj.edit124:setFontColor("#D5D5D5");
    obj.edit124:setTransparent(true);
    obj.edit124:setField("qtdMagia08");
    obj.edit124:setHitTest(true);
    obj.edit124:setCursor("handPoint");
    obj.edit124:setHint("Quantidade");
    obj.edit124:setName("edit124");

    obj.label133 = GUI.fromHandle(_obj_newObject("label"));
    obj.label133:setParent(obj.rectangle297);
    obj.label133:setLeft(734);
    obj.label133:setTop(1402);
    obj.label133:setWidth(280);
    obj.label133:setFontSize(18);
    obj.label133:setText("/");
    obj.label133:setFontColor("#49244F");
    obj.label133:setName("label133");

    obj.rectangle377 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle377:setParent(obj.rectangle297);
    obj.rectangle377:setLeft(748);
    obj.rectangle377:setTop(1396);
    obj.rectangle377:setWidth(29);
    obj.rectangle377:setHeight(29);
    obj.rectangle377:setColor("#49244F");
    obj.rectangle377:setCornerType("round");
    obj.rectangle377:setXradius(15);
    obj.rectangle377:setYradius(15);
    obj.rectangle377:setName("rectangle377");

    obj.edit125 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit125:setParent(obj.rectangle297);
    obj.edit125:setLeft(743);
    obj.edit125:setTop(1395);
    obj.edit125:setWidth(40);
    obj.edit125:setFontSize(18);
    obj.edit125:setHorzTextAlign("center");
    obj.edit125:setFontColor("#D5D5D5");
    obj.edit125:setTransparent(true);
    obj.edit125:setField("maxMagia08");
    obj.edit125:setHitTest(true);
    obj.edit125:setCursor("handPoint");
    obj.edit125:setHint("Total");
    obj.edit125:setName("edit125");

    obj.rectangle378 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle378:setParent(obj.rectangle297);
    obj.rectangle378:setLeft(60);
    obj.rectangle378:setTop(1455);
    obj.rectangle378:setWidth(350);
    obj.rectangle378:setHeight(318);
    obj.rectangle378:setColor("#D5D5D5");
    obj.rectangle378:setStrokeColor("#49244F");
    obj.rectangle378:setStrokeSize(3);
    obj.rectangle378:setName("rectangle378");

    obj.rectangle379 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle379:setParent(obj.rectangle297);
    obj.rectangle379:setLeft(60);
    obj.rectangle379:setTop(1455);
    obj.rectangle379:setWidth(350);
    obj.rectangle379:setHeight(50);
    obj.rectangle379:setColor("#49244F");
    obj.rectangle379:setName("rectangle379");

    obj.edit126 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit126:setParent(obj.rectangle297);
    obj.edit126:setLeft(65);
    obj.edit126:setTop(1463);
    obj.edit126:setWidth(340);
    obj.edit126:setFontSize(18);
    obj.edit126:setHeight(30);
    obj.edit126:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit126, "fontStyle", "bold");
    obj.edit126:setTransparent(true);
    obj.edit126:setField("Magia09");
    obj.edit126:setName("edit126");

    obj.rectangle380 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle380:setParent(obj.rectangle297);
    obj.rectangle380:setLeft(60);
    obj.rectangle380:setTop(1536);
    obj.rectangle380:setWidth(350);
    obj.rectangle380:setHeight(1);
    obj.rectangle380:setColor("#49244F");
    obj.rectangle380:setName("rectangle380");

    obj.label134 = GUI.fromHandle(_obj_newObject("label"));
    obj.label134:setParent(obj.rectangle297);
    obj.label134:setLeft(70);
    obj.label134:setTop(1509);
    obj.label134:setWidth(280);
    obj.label134:setFontSize(18);
    obj.label134:setText("Tradição:");
    obj.label134:setFontColor("#49244F");
    lfm_setPropAsString(obj.label134, "fontStyle", "bold");
    obj.label134:setName("label134");

    obj.edit127 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit127:setParent(obj.rectangle297);
    obj.edit127:setLeft(150);
    obj.edit127:setTop(1503);
    obj.edit127:setWidth(260);
    obj.edit127:setFontSize(18);
    obj.edit127:setFontColor("#49244F");
    obj.edit127:setTransparent(true);
    obj.edit127:setField("tradicaoMagia09");
    obj.edit127:setName("edit127");

    obj.rectangle381 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle381:setParent(obj.rectangle297);
    obj.rectangle381:setLeft(60);
    obj.rectangle381:setTop(1571);
    obj.rectangle381:setWidth(350);
    obj.rectangle381:setHeight(1);
    obj.rectangle381:setColor("#49244F");
    obj.rectangle381:setName("rectangle381");

    obj.label135 = GUI.fromHandle(_obj_newObject("label"));
    obj.label135:setParent(obj.rectangle297);
    obj.label135:setLeft(70);
    obj.label135:setTop(1544);
    obj.label135:setWidth(280);
    obj.label135:setFontSize(18);
    obj.label135:setText("Alvo:");
    obj.label135:setFontColor("#49244F");
    lfm_setPropAsString(obj.label135, "fontStyle", "bold");
    obj.label135:setName("label135");

    obj.edit128 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit128:setParent(obj.rectangle297);
    obj.edit128:setLeft(115);
    obj.edit128:setTop(1538);
    obj.edit128:setWidth(295);
    obj.edit128:setFontSize(18);
    obj.edit128:setFontColor("#49244F");
    obj.edit128:setTransparent(true);
    obj.edit128:setField("alvoMagia09");
    obj.edit128:setName("edit128");

    obj.rectangle382 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle382:setParent(obj.rectangle297);
    obj.rectangle382:setLeft(60);
    obj.rectangle382:setTop(1606);
    obj.rectangle382:setWidth(350);
    obj.rectangle382:setHeight(3);
    obj.rectangle382:setColor("#49244F");
    obj.rectangle382:setName("rectangle382");

    obj.label136 = GUI.fromHandle(_obj_newObject("label"));
    obj.label136:setParent(obj.rectangle297);
    obj.label136:setLeft(70);
    obj.label136:setTop(1579);
    obj.label136:setWidth(280);
    obj.label136:setFontSize(18);
    obj.label136:setText("Duração:");
    obj.label136:setFontColor("#49244F");
    lfm_setPropAsString(obj.label136, "fontStyle", "bold");
    obj.label136:setName("label136");

    obj.edit129 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit129:setParent(obj.rectangle297);
    obj.edit129:setLeft(150);
    obj.edit129:setTop(1573);
    obj.edit129:setWidth(260);
    obj.edit129:setFontSize(18);
    obj.edit129:setFontColor("#49244F");
    obj.edit129:setTransparent(true);
    obj.edit129:setField("duracaoMagia09");
    obj.edit129:setName("edit129");

    obj.rectangle383 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle383:setParent(obj.rectangle297);
    obj.rectangle383:setLeft(60);
    obj.rectangle383:setTop(1606);
    obj.rectangle383:setWidth(350);
    obj.rectangle383:setHeight(125);
    obj.rectangle383:setColor("#49244F");
    obj.rectangle383:setName("rectangle383");

    obj.textEditor25 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor25:setParent(obj.rectangle297);
    obj.textEditor25:setLeft(65);
    obj.textEditor25:setTop(1611);
    obj.textEditor25:setWidth(340);
    obj.textEditor25:setHeight(115);
    obj.textEditor25:setFontColor("#D5D5D5");
    obj.textEditor25:setTransparent(true);
    obj.textEditor25:setField("descricaoMagia09");
    obj.textEditor25:setFontSize(18);
    obj.textEditor25:setName("textEditor25");

    obj.rectangle384 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle384:setParent(obj.rectangle297);
    obj.rectangle384:setLeft(60);
    obj.rectangle384:setTop(1731);
    obj.rectangle384:setWidth(350);
    obj.rectangle384:setHeight(3);
    obj.rectangle384:setColor("#49244F");
    obj.rectangle384:setName("rectangle384");

    obj.rectangle385 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle385:setParent(obj.rectangle297);
    obj.rectangle385:setLeft(64);
    obj.rectangle385:setTop(1738);
    obj.rectangle385:setWidth(135);
    obj.rectangle385:setHeight(29);
    obj.rectangle385:setColor("#49244F");
    obj.rectangle385:setHitTest(true);
    obj.rectangle385:setCursor("handPoint");
    obj.rectangle385:setName("rectangle385");

    obj.label137 = GUI.fromHandle(_obj_newObject("label"));
    obj.label137:setParent(obj.rectangle297);
    obj.label137:setLeft(70);
    obj.label137:setTop(1742);
    obj.label137:setWidth(280);
    obj.label137:setFontSize(18);
    obj.label137:setText("Conjurar Feitiço");
    obj.label137:setFontColor("#D5D5D5");
    obj.label137:setName("label137");

    obj.rectangle386 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle386:setParent(obj.rectangle297);
    obj.rectangle386:setLeft(324);
    obj.rectangle386:setTop(1738);
    obj.rectangle386:setWidth(29);
    obj.rectangle386:setHeight(29);
    obj.rectangle386:setColor("#49244F");
    obj.rectangle386:setCornerType("round");
    obj.rectangle386:setXradius(15);
    obj.rectangle386:setYradius(15);
    obj.rectangle386:setName("rectangle386");

    obj.edit130 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit130:setParent(obj.rectangle297);
    obj.edit130:setLeft(318);
    obj.edit130:setTop(1735);
    obj.edit130:setWidth(40);
    obj.edit130:setFontSize(18);
    obj.edit130:setHorzTextAlign("center");
    obj.edit130:setFontColor("#D5D5D5");
    obj.edit130:setTransparent(true);
    obj.edit130:setField("qtdMagia09");
    obj.edit130:setHitTest(true);
    obj.edit130:setCursor("handPoint");
    obj.edit130:setHint("Quantidade");
    obj.edit130:setName("edit130");

    obj.label138 = GUI.fromHandle(_obj_newObject("label"));
    obj.label138:setParent(obj.rectangle297);
    obj.label138:setLeft(360);
    obj.label138:setTop(1742);
    obj.label138:setWidth(280);
    obj.label138:setFontSize(18);
    obj.label138:setText("/");
    obj.label138:setFontColor("#49244F");
    obj.label138:setName("label138");

    obj.rectangle387 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle387:setParent(obj.rectangle297);
    obj.rectangle387:setLeft(374);
    obj.rectangle387:setTop(1736);
    obj.rectangle387:setWidth(29);
    obj.rectangle387:setHeight(29);
    obj.rectangle387:setColor("#49244F");
    obj.rectangle387:setCornerType("round");
    obj.rectangle387:setXradius(15);
    obj.rectangle387:setYradius(15);
    obj.rectangle387:setName("rectangle387");

    obj.edit131 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit131:setParent(obj.rectangle297);
    obj.edit131:setLeft(368);
    obj.edit131:setTop(1735);
    obj.edit131:setWidth(40);
    obj.edit131:setFontSize(18);
    obj.edit131:setHorzTextAlign("center");
    obj.edit131:setFontColor("#D5D5D5");
    obj.edit131:setTransparent(true);
    obj.edit131:setField("maxMagia09");
    obj.edit131:setHitTest(true);
    obj.edit131:setCursor("handPoint");
    obj.edit131:setHint("Total");
    obj.edit131:setName("edit131");

    obj.rectangle388 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle388:setParent(obj.rectangle297);
    obj.rectangle388:setLeft(434);
    obj.rectangle388:setTop(1455);
    obj.rectangle388:setWidth(350);
    obj.rectangle388:setHeight(318);
    obj.rectangle388:setColor("#D5D5D5");
    obj.rectangle388:setStrokeColor("#49244F");
    obj.rectangle388:setStrokeSize(3);
    obj.rectangle388:setName("rectangle388");

    obj.rectangle389 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle389:setParent(obj.rectangle297);
    obj.rectangle389:setLeft(434);
    obj.rectangle389:setTop(1455);
    obj.rectangle389:setWidth(350);
    obj.rectangle389:setHeight(50);
    obj.rectangle389:setColor("#49244F");
    obj.rectangle389:setName("rectangle389");

    obj.edit132 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit132:setParent(obj.rectangle297);
    obj.edit132:setLeft(439);
    obj.edit132:setTop(1463);
    obj.edit132:setWidth(340);
    obj.edit132:setFontSize(18);
    obj.edit132:setHeight(30);
    obj.edit132:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit132, "fontStyle", "bold");
    obj.edit132:setTransparent(true);
    obj.edit132:setField("Magia10");
    obj.edit132:setName("edit132");

    obj.rectangle390 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle390:setParent(obj.rectangle297);
    obj.rectangle390:setLeft(434);
    obj.rectangle390:setTop(1536);
    obj.rectangle390:setWidth(350);
    obj.rectangle390:setHeight(1);
    obj.rectangle390:setColor("#49244F");
    obj.rectangle390:setName("rectangle390");

    obj.label139 = GUI.fromHandle(_obj_newObject("label"));
    obj.label139:setParent(obj.rectangle297);
    obj.label139:setLeft(444);
    obj.label139:setTop(1509);
    obj.label139:setWidth(280);
    obj.label139:setFontSize(18);
    obj.label139:setText("Tradição:");
    obj.label139:setFontColor("#49244F");
    lfm_setPropAsString(obj.label139, "fontStyle", "bold");
    obj.label139:setName("label139");

    obj.edit133 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit133:setParent(obj.rectangle297);
    obj.edit133:setLeft(524);
    obj.edit133:setTop(1503);
    obj.edit133:setWidth(260);
    obj.edit133:setFontSize(18);
    obj.edit133:setFontColor("#49244F");
    obj.edit133:setTransparent(true);
    obj.edit133:setField("tradicaoMagia10");
    obj.edit133:setName("edit133");

    obj.rectangle391 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle391:setParent(obj.rectangle297);
    obj.rectangle391:setLeft(434);
    obj.rectangle391:setTop(1571);
    obj.rectangle391:setWidth(350);
    obj.rectangle391:setHeight(1);
    obj.rectangle391:setColor("#49244F");
    obj.rectangle391:setName("rectangle391");

    obj.label140 = GUI.fromHandle(_obj_newObject("label"));
    obj.label140:setParent(obj.rectangle297);
    obj.label140:setLeft(444);
    obj.label140:setTop(1544);
    obj.label140:setWidth(280);
    obj.label140:setFontSize(18);
    obj.label140:setText("Alvo:");
    obj.label140:setFontColor("#49244F");
    lfm_setPropAsString(obj.label140, "fontStyle", "bold");
    obj.label140:setName("label140");

    obj.edit134 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit134:setParent(obj.rectangle297);
    obj.edit134:setLeft(489);
    obj.edit134:setTop(1538);
    obj.edit134:setWidth(295);
    obj.edit134:setFontSize(18);
    obj.edit134:setFontColor("#49244F");
    obj.edit134:setTransparent(true);
    obj.edit134:setField("alvoMagia10");
    obj.edit134:setName("edit134");

    obj.rectangle392 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle392:setParent(obj.rectangle297);
    obj.rectangle392:setLeft(434);
    obj.rectangle392:setTop(1606);
    obj.rectangle392:setWidth(350);
    obj.rectangle392:setHeight(3);
    obj.rectangle392:setColor("#49244F");
    obj.rectangle392:setName("rectangle392");

    obj.label141 = GUI.fromHandle(_obj_newObject("label"));
    obj.label141:setParent(obj.rectangle297);
    obj.label141:setLeft(444);
    obj.label141:setTop(1579);
    obj.label141:setWidth(280);
    obj.label141:setFontSize(18);
    obj.label141:setText("Duração:");
    obj.label141:setFontColor("#49244F");
    lfm_setPropAsString(obj.label141, "fontStyle", "bold");
    obj.label141:setName("label141");

    obj.edit135 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit135:setParent(obj.rectangle297);
    obj.edit135:setLeft(524);
    obj.edit135:setTop(1573);
    obj.edit135:setWidth(260);
    obj.edit135:setFontSize(18);
    obj.edit135:setFontColor("#49244F");
    obj.edit135:setTransparent(true);
    obj.edit135:setField("duracaoMagia10");
    obj.edit135:setName("edit135");

    obj.rectangle393 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle393:setParent(obj.rectangle297);
    obj.rectangle393:setLeft(434);
    obj.rectangle393:setTop(1606);
    obj.rectangle393:setWidth(350);
    obj.rectangle393:setHeight(125);
    obj.rectangle393:setColor("#49244F");
    obj.rectangle393:setName("rectangle393");

    obj.textEditor26 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor26:setParent(obj.rectangle297);
    obj.textEditor26:setLeft(439);
    obj.textEditor26:setTop(1611);
    obj.textEditor26:setWidth(340);
    obj.textEditor26:setHeight(115);
    obj.textEditor26:setFontColor("#D5D5D5");
    obj.textEditor26:setTransparent(true);
    obj.textEditor26:setField("descricaoMagia10");
    obj.textEditor26:setFontSize(18);
    obj.textEditor26:setName("textEditor26");

    obj.rectangle394 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle394:setParent(obj.rectangle297);
    obj.rectangle394:setLeft(434);
    obj.rectangle394:setTop(1731);
    obj.rectangle394:setWidth(350);
    obj.rectangle394:setHeight(3);
    obj.rectangle394:setColor("#49244F");
    obj.rectangle394:setName("rectangle394");

    obj.rectangle395 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle395:setParent(obj.rectangle297);
    obj.rectangle395:setLeft(438);
    obj.rectangle395:setTop(1738);
    obj.rectangle395:setWidth(135);
    obj.rectangle395:setHeight(29);
    obj.rectangle395:setColor("#49244F");
    obj.rectangle395:setHitTest(true);
    obj.rectangle395:setCursor("handPoint");
    obj.rectangle395:setName("rectangle395");

    obj.label142 = GUI.fromHandle(_obj_newObject("label"));
    obj.label142:setParent(obj.rectangle297);
    obj.label142:setLeft(444);
    obj.label142:setTop(1742);
    obj.label142:setWidth(280);
    obj.label142:setFontSize(18);
    obj.label142:setText("Conjurar Feitiço");
    obj.label142:setFontColor("#D5D5D5");
    obj.label142:setName("label142");

    obj.rectangle396 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle396:setParent(obj.rectangle297);
    obj.rectangle396:setLeft(698);
    obj.rectangle396:setTop(1738);
    obj.rectangle396:setWidth(29);
    obj.rectangle396:setHeight(29);
    obj.rectangle396:setColor("#49244F");
    obj.rectangle396:setCornerType("round");
    obj.rectangle396:setXradius(15);
    obj.rectangle396:setYradius(15);
    obj.rectangle396:setName("rectangle396");

    obj.edit136 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit136:setParent(obj.rectangle297);
    obj.edit136:setLeft(692);
    obj.edit136:setTop(1735);
    obj.edit136:setWidth(40);
    obj.edit136:setFontSize(18);
    obj.edit136:setHorzTextAlign("center");
    obj.edit136:setFontColor("#D5D5D5");
    obj.edit136:setTransparent(true);
    obj.edit136:setField("qtdMagia10");
    obj.edit136:setHitTest(true);
    obj.edit136:setCursor("handPoint");
    obj.edit136:setHint("Quantidade");
    obj.edit136:setName("edit136");

    obj.label143 = GUI.fromHandle(_obj_newObject("label"));
    obj.label143:setParent(obj.rectangle297);
    obj.label143:setLeft(734);
    obj.label143:setTop(1742);
    obj.label143:setWidth(280);
    obj.label143:setFontSize(18);
    obj.label143:setText("/");
    obj.label143:setFontColor("#49244F");
    obj.label143:setName("label143");

    obj.rectangle397 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle397:setParent(obj.rectangle297);
    obj.rectangle397:setLeft(748);
    obj.rectangle397:setTop(1736);
    obj.rectangle397:setWidth(29);
    obj.rectangle397:setHeight(29);
    obj.rectangle397:setColor("#49244F");
    obj.rectangle397:setCornerType("round");
    obj.rectangle397:setXradius(15);
    obj.rectangle397:setYradius(15);
    obj.rectangle397:setName("rectangle397");

    obj.edit137 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit137:setParent(obj.rectangle297);
    obj.edit137:setLeft(743);
    obj.edit137:setTop(1735);
    obj.edit137:setWidth(40);
    obj.edit137:setFontSize(18);
    obj.edit137:setHorzTextAlign("center");
    obj.edit137:setFontColor("#D5D5D5");
    obj.edit137:setTransparent(true);
    obj.edit137:setField("maxMagia10");
    obj.edit137:setHitTest(true);
    obj.edit137:setCursor("handPoint");
    obj.edit137:setHint("Total");
    obj.edit137:setName("edit137");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.tab5);
    obj.layout8:setLeft(0);
    obj.layout8:setTop(10);
    obj.layout8:setWidth(815);
    obj.layout8:setHeight(825);
    obj.layout8:setName("layout8");

    obj.rectangle398 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle398:setParent(obj.layout8);
    obj.rectangle398:setLeft(0);
    obj.rectangle398:setTop(725);
    obj.rectangle398:setWidth(799);
    obj.rectangle398:setHeight(105);
    obj.rectangle398:setColor("#D5D5D5");
    obj.rectangle398:setName("rectangle398");

    obj.rectangle399 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle399:setParent(obj.layout8);
    obj.rectangle399:setLeft(65);
    obj.rectangle399:setTop(730);
    obj.rectangle399:setWidth(712);
    obj.rectangle399:setHeight(1);
    obj.rectangle399:setColor("#49244F");
    obj.rectangle399:setName("rectangle399");

    obj.rectangle400 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle400:setParent(obj.layout8);
    obj.rectangle400:setLeft(65);
    obj.rectangle400:setTop(735);
    obj.rectangle400:setWidth(712);
    obj.rectangle400:setHeight(1);
    obj.rectangle400:setColor("#49244F");
    obj.rectangle400:setName("rectangle400");

    obj.image46 = GUI.fromHandle(_obj_newObject("image"));
    obj.image46:setParent(obj.layout8);
    obj.image46:setLeft(270);
    obj.image46:setTop(750);
    obj.image46:setWidth(288);
    obj.image46:setHeight(56);
    obj.image46:setSRC("/img/livrosMagicos.png");
    obj.image46:setName("image46");

    obj.rectangle401 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle401:setParent(obj.layout8);
    obj.rectangle401:setLeft(0);
    obj.rectangle401:setTop(0);
    obj.rectangle401:setWidth(799);
    obj.rectangle401:setHeight(5);
    obj.rectangle401:setColor("#D5D5D5");
    obj.rectangle401:setName("rectangle401");

    obj.image47 = GUI.fromHandle(_obj_newObject("image"));
    obj.image47:setParent(obj.layout8);
    obj.image47:setLeft(0);
    obj.image47:setTop(0);
    obj.image47:setWidth(799);
    obj.image47:setHeight(825);
    obj.image47:setSRC("/img/borda.png");
    obj.image47:setName("image47");

    obj.image48 = GUI.fromHandle(_obj_newObject("image"));
    obj.image48:setParent(obj.tab5);
    obj.image48:setLeft(69);
    obj.image48:setTop(875);
    obj.image48:setWidth(676);
    obj.image48:setHeight(194);
    obj.image48:setSRC("/img/logo.png");
    obj.image48:setName("image48");

    obj.tab6 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab6:setParent(obj.tabControl1);
    obj.tab6:setTitle("Feitiços");
    obj.tab6:setName("tab6");

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.tab6);
    obj.scrollBox5:setLeft(0);
    obj.scrollBox5:setTop(10);
    obj.scrollBox5:setWidth(815);
    obj.scrollBox5:setHeight(725);
    obj.scrollBox5:setName("scrollBox5");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox5);
    obj.layout9:setLeft(0);
    obj.layout9:setTop(10);
    obj.layout9:setWidth(799);
    obj.layout9:setHeight(1790);
    obj.layout9:setName("layout9");

    obj.rectangle402 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle402:setParent(obj.layout9);
    obj.rectangle402:setLeft(0);
    obj.rectangle402:setTop(0);
    obj.rectangle402:setWidth(799);
    obj.rectangle402:setHeight(1790);
    obj.rectangle402:setColor("#D5D5D5");
    obj.rectangle402:setName("rectangle402");

    obj.label144 = GUI.fromHandle(_obj_newObject("label"));
    obj.label144:setParent(obj.rectangle402);
    obj.label144:setLeft(270);
    obj.label144:setTop(60);
    obj.label144:setWidth(280);
    obj.label144:setFontSize(24);
    obj.label144:setHorzTextAlign("center");
    obj.label144:setText("FEITIÇOS");
    obj.label144:setFontColor("#49244F");
    lfm_setPropAsString(obj.label144, "fontStyle", "bold");
    obj.label144:setName("label144");

    obj.rectangle403 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle403:setParent(obj.rectangle402);
    obj.rectangle403:setLeft(60);
    obj.rectangle403:setTop(95);
    obj.rectangle403:setWidth(350);
    obj.rectangle403:setHeight(318);
    obj.rectangle403:setColor("#D5D5D5");
    obj.rectangle403:setStrokeColor("#49244F");
    obj.rectangle403:setStrokeSize(3);
    obj.rectangle403:setName("rectangle403");

    obj.rectangle404 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle404:setParent(obj.rectangle402);
    obj.rectangle404:setLeft(60);
    obj.rectangle404:setTop(95);
    obj.rectangle404:setWidth(350);
    obj.rectangle404:setHeight(50);
    obj.rectangle404:setColor("#49244F");
    obj.rectangle404:setName("rectangle404");

    obj.edit138 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit138:setParent(obj.rectangle402);
    obj.edit138:setLeft(65);
    obj.edit138:setTop(103);
    obj.edit138:setWidth(340);
    obj.edit138:setFontSize(18);
    obj.edit138:setHeight(30);
    obj.edit138:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit138, "fontStyle", "bold");
    obj.edit138:setTransparent(true);
    obj.edit138:setField("Magia11");
    obj.edit138:setName("edit138");

    obj.rectangle405 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle405:setParent(obj.rectangle402);
    obj.rectangle405:setLeft(60);
    obj.rectangle405:setTop(176);
    obj.rectangle405:setWidth(350);
    obj.rectangle405:setHeight(1);
    obj.rectangle405:setColor("#49244F");
    obj.rectangle405:setName("rectangle405");

    obj.label145 = GUI.fromHandle(_obj_newObject("label"));
    obj.label145:setParent(obj.rectangle402);
    obj.label145:setLeft(70);
    obj.label145:setTop(149);
    obj.label145:setWidth(280);
    obj.label145:setFontSize(18);
    obj.label145:setText("Tradição:");
    obj.label145:setFontColor("#49244F");
    lfm_setPropAsString(obj.label145, "fontStyle", "bold");
    obj.label145:setName("label145");

    obj.edit139 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit139:setParent(obj.rectangle402);
    obj.edit139:setLeft(150);
    obj.edit139:setTop(143);
    obj.edit139:setWidth(260);
    obj.edit139:setFontSize(18);
    obj.edit139:setFontColor("#49244F");
    obj.edit139:setTransparent(true);
    obj.edit139:setField("tradicaoMagia11");
    obj.edit139:setName("edit139");

    obj.rectangle406 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle406:setParent(obj.rectangle402);
    obj.rectangle406:setLeft(60);
    obj.rectangle406:setTop(211);
    obj.rectangle406:setWidth(350);
    obj.rectangle406:setHeight(1);
    obj.rectangle406:setColor("#49244F");
    obj.rectangle406:setName("rectangle406");

    obj.label146 = GUI.fromHandle(_obj_newObject("label"));
    obj.label146:setParent(obj.rectangle402);
    obj.label146:setLeft(70);
    obj.label146:setTop(184);
    obj.label146:setWidth(280);
    obj.label146:setFontSize(18);
    obj.label146:setText("Alvo:");
    obj.label146:setFontColor("#49244F");
    lfm_setPropAsString(obj.label146, "fontStyle", "bold");
    obj.label146:setName("label146");

    obj.edit140 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit140:setParent(obj.rectangle402);
    obj.edit140:setLeft(115);
    obj.edit140:setTop(178);
    obj.edit140:setWidth(295);
    obj.edit140:setFontSize(18);
    obj.edit140:setFontColor("#49244F");
    obj.edit140:setTransparent(true);
    obj.edit140:setField("alvoMagia11");
    obj.edit140:setName("edit140");

    obj.rectangle407 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle407:setParent(obj.rectangle402);
    obj.rectangle407:setLeft(60);
    obj.rectangle407:setTop(246);
    obj.rectangle407:setWidth(350);
    obj.rectangle407:setHeight(3);
    obj.rectangle407:setColor("#49244F");
    obj.rectangle407:setName("rectangle407");

    obj.label147 = GUI.fromHandle(_obj_newObject("label"));
    obj.label147:setParent(obj.rectangle402);
    obj.label147:setLeft(70);
    obj.label147:setTop(219);
    obj.label147:setWidth(280);
    obj.label147:setFontSize(18);
    obj.label147:setText("Duração:");
    obj.label147:setFontColor("#49244F");
    lfm_setPropAsString(obj.label147, "fontStyle", "bold");
    obj.label147:setName("label147");

    obj.edit141 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit141:setParent(obj.rectangle402);
    obj.edit141:setLeft(150);
    obj.edit141:setTop(213);
    obj.edit141:setWidth(260);
    obj.edit141:setFontSize(18);
    obj.edit141:setFontColor("#49244F");
    obj.edit141:setTransparent(true);
    obj.edit141:setField("duracaoMagia11");
    obj.edit141:setName("edit141");

    obj.rectangle408 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle408:setParent(obj.rectangle402);
    obj.rectangle408:setLeft(60);
    obj.rectangle408:setTop(246);
    obj.rectangle408:setWidth(350);
    obj.rectangle408:setHeight(125);
    obj.rectangle408:setColor("#49244F");
    obj.rectangle408:setName("rectangle408");

    obj.textEditor27 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor27:setParent(obj.rectangle402);
    obj.textEditor27:setLeft(65);
    obj.textEditor27:setTop(251);
    obj.textEditor27:setWidth(340);
    obj.textEditor27:setHeight(115);
    obj.textEditor27:setFontColor("#D5D5D5");
    obj.textEditor27:setTransparent(true);
    obj.textEditor27:setField("descricaoMagia11");
    obj.textEditor27:setFontSize(18);
    obj.textEditor27:setName("textEditor27");

    obj.rectangle409 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle409:setParent(obj.rectangle402);
    obj.rectangle409:setLeft(60);
    obj.rectangle409:setTop(371);
    obj.rectangle409:setWidth(350);
    obj.rectangle409:setHeight(3);
    obj.rectangle409:setColor("#49244F");
    obj.rectangle409:setName("rectangle409");

    obj.rectangle410 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle410:setParent(obj.rectangle402);
    obj.rectangle410:setLeft(64);
    obj.rectangle410:setTop(378);
    obj.rectangle410:setWidth(135);
    obj.rectangle410:setHeight(29);
    obj.rectangle410:setColor("#49244F");
    obj.rectangle410:setHitTest(true);
    obj.rectangle410:setCursor("handPoint");
    obj.rectangle410:setName("rectangle410");

    obj.label148 = GUI.fromHandle(_obj_newObject("label"));
    obj.label148:setParent(obj.rectangle402);
    obj.label148:setLeft(70);
    obj.label148:setTop(382);
    obj.label148:setWidth(280);
    obj.label148:setFontSize(18);
    obj.label148:setText("Conjurar Feitiço");
    obj.label148:setFontColor("#D5D5D5");
    obj.label148:setName("label148");

    obj.rectangle411 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle411:setParent(obj.rectangle402);
    obj.rectangle411:setLeft(324);
    obj.rectangle411:setTop(378);
    obj.rectangle411:setWidth(29);
    obj.rectangle411:setHeight(29);
    obj.rectangle411:setColor("#49244F");
    obj.rectangle411:setCornerType("round");
    obj.rectangle411:setXradius(15);
    obj.rectangle411:setYradius(15);
    obj.rectangle411:setName("rectangle411");

    obj.edit142 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit142:setParent(obj.rectangle402);
    obj.edit142:setLeft(318);
    obj.edit142:setTop(375);
    obj.edit142:setWidth(40);
    obj.edit142:setFontSize(18);
    obj.edit142:setHorzTextAlign("center");
    obj.edit142:setFontColor("#D5D5D5");
    obj.edit142:setTransparent(true);
    obj.edit142:setField("qtdMagia11");
    obj.edit142:setHitTest(true);
    obj.edit142:setCursor("handPoint");
    obj.edit142:setHint("Quantidade");
    obj.edit142:setName("edit142");

    obj.label149 = GUI.fromHandle(_obj_newObject("label"));
    obj.label149:setParent(obj.rectangle402);
    obj.label149:setLeft(360);
    obj.label149:setTop(382);
    obj.label149:setWidth(280);
    obj.label149:setFontSize(18);
    obj.label149:setText("/");
    obj.label149:setFontColor("#49244F");
    obj.label149:setName("label149");

    obj.rectangle412 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle412:setParent(obj.rectangle402);
    obj.rectangle412:setLeft(374);
    obj.rectangle412:setTop(376);
    obj.rectangle412:setWidth(29);
    obj.rectangle412:setHeight(29);
    obj.rectangle412:setColor("#49244F");
    obj.rectangle412:setCornerType("round");
    obj.rectangle412:setXradius(15);
    obj.rectangle412:setYradius(15);
    obj.rectangle412:setName("rectangle412");

    obj.edit143 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit143:setParent(obj.rectangle402);
    obj.edit143:setLeft(368);
    obj.edit143:setTop(375);
    obj.edit143:setWidth(40);
    obj.edit143:setFontSize(18);
    obj.edit143:setHorzTextAlign("center");
    obj.edit143:setFontColor("#D5D5D5");
    obj.edit143:setTransparent(true);
    obj.edit143:setField("maxMagia11");
    obj.edit143:setHitTest(true);
    obj.edit143:setCursor("handPoint");
    obj.edit143:setHint("Total");
    obj.edit143:setName("edit143");

    obj.rectangle413 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle413:setParent(obj.rectangle402);
    obj.rectangle413:setLeft(434);
    obj.rectangle413:setTop(95);
    obj.rectangle413:setWidth(350);
    obj.rectangle413:setHeight(318);
    obj.rectangle413:setColor("#D5D5D5");
    obj.rectangle413:setStrokeColor("#49244F");
    obj.rectangle413:setStrokeSize(3);
    obj.rectangle413:setName("rectangle413");

    obj.rectangle414 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle414:setParent(obj.rectangle402);
    obj.rectangle414:setLeft(434);
    obj.rectangle414:setTop(95);
    obj.rectangle414:setWidth(350);
    obj.rectangle414:setHeight(50);
    obj.rectangle414:setColor("#49244F");
    obj.rectangle414:setName("rectangle414");

    obj.edit144 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit144:setParent(obj.rectangle402);
    obj.edit144:setLeft(439);
    obj.edit144:setTop(103);
    obj.edit144:setWidth(340);
    obj.edit144:setFontSize(18);
    obj.edit144:setHeight(30);
    obj.edit144:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit144, "fontStyle", "bold");
    obj.edit144:setTransparent(true);
    obj.edit144:setField("Magia12");
    obj.edit144:setName("edit144");

    obj.rectangle415 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle415:setParent(obj.rectangle402);
    obj.rectangle415:setLeft(434);
    obj.rectangle415:setTop(176);
    obj.rectangle415:setWidth(350);
    obj.rectangle415:setHeight(1);
    obj.rectangle415:setColor("#49244F");
    obj.rectangle415:setName("rectangle415");

    obj.label150 = GUI.fromHandle(_obj_newObject("label"));
    obj.label150:setParent(obj.rectangle402);
    obj.label150:setLeft(444);
    obj.label150:setTop(149);
    obj.label150:setWidth(280);
    obj.label150:setFontSize(18);
    obj.label150:setText("Tradição:");
    obj.label150:setFontColor("#49244F");
    lfm_setPropAsString(obj.label150, "fontStyle", "bold");
    obj.label150:setName("label150");

    obj.edit145 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit145:setParent(obj.rectangle402);
    obj.edit145:setLeft(524);
    obj.edit145:setTop(143);
    obj.edit145:setWidth(260);
    obj.edit145:setFontSize(18);
    obj.edit145:setFontColor("#49244F");
    obj.edit145:setTransparent(true);
    obj.edit145:setField("tradicaoMagia12");
    obj.edit145:setName("edit145");

    obj.rectangle416 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle416:setParent(obj.rectangle402);
    obj.rectangle416:setLeft(434);
    obj.rectangle416:setTop(211);
    obj.rectangle416:setWidth(350);
    obj.rectangle416:setHeight(1);
    obj.rectangle416:setColor("#49244F");
    obj.rectangle416:setName("rectangle416");

    obj.label151 = GUI.fromHandle(_obj_newObject("label"));
    obj.label151:setParent(obj.rectangle402);
    obj.label151:setLeft(444);
    obj.label151:setTop(184);
    obj.label151:setWidth(280);
    obj.label151:setFontSize(18);
    obj.label151:setText("Alvo:");
    obj.label151:setFontColor("#49244F");
    lfm_setPropAsString(obj.label151, "fontStyle", "bold");
    obj.label151:setName("label151");

    obj.edit146 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit146:setParent(obj.rectangle402);
    obj.edit146:setLeft(489);
    obj.edit146:setTop(178);
    obj.edit146:setWidth(295);
    obj.edit146:setFontSize(18);
    obj.edit146:setFontColor("#49244F");
    obj.edit146:setTransparent(true);
    obj.edit146:setField("alvoMagia12");
    obj.edit146:setName("edit146");

    obj.rectangle417 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle417:setParent(obj.rectangle402);
    obj.rectangle417:setLeft(434);
    obj.rectangle417:setTop(246);
    obj.rectangle417:setWidth(350);
    obj.rectangle417:setHeight(3);
    obj.rectangle417:setColor("#49244F");
    obj.rectangle417:setName("rectangle417");

    obj.label152 = GUI.fromHandle(_obj_newObject("label"));
    obj.label152:setParent(obj.rectangle402);
    obj.label152:setLeft(444);
    obj.label152:setTop(219);
    obj.label152:setWidth(280);
    obj.label152:setFontSize(18);
    obj.label152:setText("Duração:");
    obj.label152:setFontColor("#49244F");
    lfm_setPropAsString(obj.label152, "fontStyle", "bold");
    obj.label152:setName("label152");

    obj.edit147 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit147:setParent(obj.rectangle402);
    obj.edit147:setLeft(524);
    obj.edit147:setTop(213);
    obj.edit147:setWidth(260);
    obj.edit147:setFontSize(18);
    obj.edit147:setFontColor("#49244F");
    obj.edit147:setTransparent(true);
    obj.edit147:setField("duracaoMagia12");
    obj.edit147:setName("edit147");

    obj.rectangle418 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle418:setParent(obj.rectangle402);
    obj.rectangle418:setLeft(434);
    obj.rectangle418:setTop(246);
    obj.rectangle418:setWidth(350);
    obj.rectangle418:setHeight(125);
    obj.rectangle418:setColor("#49244F");
    obj.rectangle418:setName("rectangle418");

    obj.textEditor28 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor28:setParent(obj.rectangle402);
    obj.textEditor28:setLeft(439);
    obj.textEditor28:setTop(251);
    obj.textEditor28:setWidth(340);
    obj.textEditor28:setHeight(115);
    obj.textEditor28:setFontColor("#D5D5D5");
    obj.textEditor28:setTransparent(true);
    obj.textEditor28:setField("descricaoMagia12");
    obj.textEditor28:setFontSize(18);
    obj.textEditor28:setName("textEditor28");

    obj.rectangle419 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle419:setParent(obj.rectangle402);
    obj.rectangle419:setLeft(434);
    obj.rectangle419:setTop(371);
    obj.rectangle419:setWidth(350);
    obj.rectangle419:setHeight(3);
    obj.rectangle419:setColor("#49244F");
    obj.rectangle419:setName("rectangle419");

    obj.rectangle420 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle420:setParent(obj.rectangle402);
    obj.rectangle420:setLeft(438);
    obj.rectangle420:setTop(378);
    obj.rectangle420:setWidth(135);
    obj.rectangle420:setHeight(29);
    obj.rectangle420:setColor("#49244F");
    obj.rectangle420:setHitTest(true);
    obj.rectangle420:setCursor("handPoint");
    obj.rectangle420:setName("rectangle420");

    obj.label153 = GUI.fromHandle(_obj_newObject("label"));
    obj.label153:setParent(obj.rectangle402);
    obj.label153:setLeft(444);
    obj.label153:setTop(382);
    obj.label153:setWidth(280);
    obj.label153:setFontSize(18);
    obj.label153:setText("Conjurar Feitiço");
    obj.label153:setFontColor("#D5D5D5");
    obj.label153:setName("label153");

    obj.rectangle421 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle421:setParent(obj.rectangle402);
    obj.rectangle421:setLeft(698);
    obj.rectangle421:setTop(378);
    obj.rectangle421:setWidth(29);
    obj.rectangle421:setHeight(29);
    obj.rectangle421:setColor("#49244F");
    obj.rectangle421:setCornerType("round");
    obj.rectangle421:setXradius(15);
    obj.rectangle421:setYradius(15);
    obj.rectangle421:setName("rectangle421");

    obj.edit148 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit148:setParent(obj.rectangle402);
    obj.edit148:setLeft(692);
    obj.edit148:setTop(375);
    obj.edit148:setWidth(40);
    obj.edit148:setFontSize(18);
    obj.edit148:setHorzTextAlign("center");
    obj.edit148:setFontColor("#D5D5D5");
    obj.edit148:setTransparent(true);
    obj.edit148:setField("qtdMagia12");
    obj.edit148:setHitTest(true);
    obj.edit148:setCursor("handPoint");
    obj.edit148:setHint("Quantidade");
    obj.edit148:setName("edit148");

    obj.label154 = GUI.fromHandle(_obj_newObject("label"));
    obj.label154:setParent(obj.rectangle402);
    obj.label154:setLeft(734);
    obj.label154:setTop(382);
    obj.label154:setWidth(280);
    obj.label154:setFontSize(18);
    obj.label154:setText("/");
    obj.label154:setFontColor("#49244F");
    obj.label154:setName("label154");

    obj.rectangle422 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle422:setParent(obj.rectangle402);
    obj.rectangle422:setLeft(748);
    obj.rectangle422:setTop(376);
    obj.rectangle422:setWidth(29);
    obj.rectangle422:setHeight(29);
    obj.rectangle422:setColor("#49244F");
    obj.rectangle422:setCornerType("round");
    obj.rectangle422:setXradius(15);
    obj.rectangle422:setYradius(15);
    obj.rectangle422:setName("rectangle422");

    obj.edit149 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit149:setParent(obj.rectangle402);
    obj.edit149:setLeft(743);
    obj.edit149:setTop(375);
    obj.edit149:setWidth(40);
    obj.edit149:setFontSize(18);
    obj.edit149:setHorzTextAlign("center");
    obj.edit149:setFontColor("#D5D5D5");
    obj.edit149:setTransparent(true);
    obj.edit149:setField("maxMagia12");
    obj.edit149:setHitTest(true);
    obj.edit149:setCursor("handPoint");
    obj.edit149:setHint("Total");
    obj.edit149:setName("edit149");

    obj.rectangle423 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle423:setParent(obj.rectangle402);
    obj.rectangle423:setLeft(60);
    obj.rectangle423:setTop(435);
    obj.rectangle423:setWidth(350);
    obj.rectangle423:setHeight(318);
    obj.rectangle423:setColor("#D5D5D5");
    obj.rectangle423:setStrokeColor("#49244F");
    obj.rectangle423:setStrokeSize(3);
    obj.rectangle423:setName("rectangle423");

    obj.rectangle424 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle424:setParent(obj.rectangle402);
    obj.rectangle424:setLeft(60);
    obj.rectangle424:setTop(435);
    obj.rectangle424:setWidth(350);
    obj.rectangle424:setHeight(50);
    obj.rectangle424:setColor("#49244F");
    obj.rectangle424:setName("rectangle424");

    obj.edit150 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit150:setParent(obj.rectangle402);
    obj.edit150:setLeft(65);
    obj.edit150:setTop(443);
    obj.edit150:setWidth(340);
    obj.edit150:setFontSize(18);
    obj.edit150:setHeight(30);
    obj.edit150:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit150, "fontStyle", "bold");
    obj.edit150:setTransparent(true);
    obj.edit150:setField("Magia13");
    obj.edit150:setName("edit150");

    obj.rectangle425 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle425:setParent(obj.rectangle402);
    obj.rectangle425:setLeft(60);
    obj.rectangle425:setTop(516);
    obj.rectangle425:setWidth(350);
    obj.rectangle425:setHeight(1);
    obj.rectangle425:setColor("#49244F");
    obj.rectangle425:setName("rectangle425");

    obj.label155 = GUI.fromHandle(_obj_newObject("label"));
    obj.label155:setParent(obj.rectangle402);
    obj.label155:setLeft(70);
    obj.label155:setTop(489);
    obj.label155:setWidth(280);
    obj.label155:setFontSize(18);
    obj.label155:setText("Tradição:");
    obj.label155:setFontColor("#49244F");
    lfm_setPropAsString(obj.label155, "fontStyle", "bold");
    obj.label155:setName("label155");

    obj.edit151 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit151:setParent(obj.rectangle402);
    obj.edit151:setLeft(150);
    obj.edit151:setTop(483);
    obj.edit151:setWidth(260);
    obj.edit151:setFontSize(18);
    obj.edit151:setFontColor("#49244F");
    obj.edit151:setTransparent(true);
    obj.edit151:setField("tradicaoMagia13");
    obj.edit151:setName("edit151");

    obj.rectangle426 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle426:setParent(obj.rectangle402);
    obj.rectangle426:setLeft(60);
    obj.rectangle426:setTop(551);
    obj.rectangle426:setWidth(350);
    obj.rectangle426:setHeight(1);
    obj.rectangle426:setColor("#49244F");
    obj.rectangle426:setName("rectangle426");

    obj.label156 = GUI.fromHandle(_obj_newObject("label"));
    obj.label156:setParent(obj.rectangle402);
    obj.label156:setLeft(70);
    obj.label156:setTop(524);
    obj.label156:setWidth(280);
    obj.label156:setFontSize(18);
    obj.label156:setText("Alvo:");
    obj.label156:setFontColor("#49244F");
    lfm_setPropAsString(obj.label156, "fontStyle", "bold");
    obj.label156:setName("label156");

    obj.edit152 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit152:setParent(obj.rectangle402);
    obj.edit152:setLeft(115);
    obj.edit152:setTop(518);
    obj.edit152:setWidth(295);
    obj.edit152:setFontSize(18);
    obj.edit152:setFontColor("#49244F");
    obj.edit152:setTransparent(true);
    obj.edit152:setField("alvoMagia13");
    obj.edit152:setName("edit152");

    obj.rectangle427 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle427:setParent(obj.rectangle402);
    obj.rectangle427:setLeft(60);
    obj.rectangle427:setTop(586);
    obj.rectangle427:setWidth(350);
    obj.rectangle427:setHeight(3);
    obj.rectangle427:setColor("#49244F");
    obj.rectangle427:setName("rectangle427");

    obj.label157 = GUI.fromHandle(_obj_newObject("label"));
    obj.label157:setParent(obj.rectangle402);
    obj.label157:setLeft(70);
    obj.label157:setTop(559);
    obj.label157:setWidth(280);
    obj.label157:setFontSize(18);
    obj.label157:setText("Duração:");
    obj.label157:setFontColor("#49244F");
    lfm_setPropAsString(obj.label157, "fontStyle", "bold");
    obj.label157:setName("label157");

    obj.edit153 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit153:setParent(obj.rectangle402);
    obj.edit153:setLeft(150);
    obj.edit153:setTop(553);
    obj.edit153:setWidth(260);
    obj.edit153:setFontSize(18);
    obj.edit153:setFontColor("#49244F");
    obj.edit153:setTransparent(true);
    obj.edit153:setField("duracaoMagia13");
    obj.edit153:setName("edit153");

    obj.rectangle428 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle428:setParent(obj.rectangle402);
    obj.rectangle428:setLeft(60);
    obj.rectangle428:setTop(586);
    obj.rectangle428:setWidth(350);
    obj.rectangle428:setHeight(125);
    obj.rectangle428:setColor("#49244F");
    obj.rectangle428:setName("rectangle428");

    obj.textEditor29 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor29:setParent(obj.rectangle402);
    obj.textEditor29:setLeft(65);
    obj.textEditor29:setTop(591);
    obj.textEditor29:setWidth(340);
    obj.textEditor29:setHeight(115);
    obj.textEditor29:setFontColor("#D5D5D5");
    obj.textEditor29:setTransparent(true);
    obj.textEditor29:setField("descricaoMagia13");
    obj.textEditor29:setFontSize(18);
    obj.textEditor29:setName("textEditor29");

    obj.rectangle429 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle429:setParent(obj.rectangle402);
    obj.rectangle429:setLeft(60);
    obj.rectangle429:setTop(711);
    obj.rectangle429:setWidth(350);
    obj.rectangle429:setHeight(3);
    obj.rectangle429:setColor("#49244F");
    obj.rectangle429:setName("rectangle429");

    obj.rectangle430 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle430:setParent(obj.rectangle402);
    obj.rectangle430:setLeft(64);
    obj.rectangle430:setTop(718);
    obj.rectangle430:setWidth(135);
    obj.rectangle430:setHeight(29);
    obj.rectangle430:setColor("#49244F");
    obj.rectangle430:setHitTest(true);
    obj.rectangle430:setCursor("handPoint");
    obj.rectangle430:setName("rectangle430");

    obj.label158 = GUI.fromHandle(_obj_newObject("label"));
    obj.label158:setParent(obj.rectangle402);
    obj.label158:setLeft(70);
    obj.label158:setTop(722);
    obj.label158:setWidth(280);
    obj.label158:setFontSize(18);
    obj.label158:setText("Conjurar Feitiço");
    obj.label158:setFontColor("#D5D5D5");
    obj.label158:setName("label158");

    obj.rectangle431 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle431:setParent(obj.rectangle402);
    obj.rectangle431:setLeft(324);
    obj.rectangle431:setTop(718);
    obj.rectangle431:setWidth(29);
    obj.rectangle431:setHeight(29);
    obj.rectangle431:setColor("#49244F");
    obj.rectangle431:setCornerType("round");
    obj.rectangle431:setXradius(15);
    obj.rectangle431:setYradius(15);
    obj.rectangle431:setName("rectangle431");

    obj.edit154 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit154:setParent(obj.rectangle402);
    obj.edit154:setLeft(318);
    obj.edit154:setTop(715);
    obj.edit154:setWidth(40);
    obj.edit154:setFontSize(18);
    obj.edit154:setHorzTextAlign("center");
    obj.edit154:setFontColor("#D5D5D5");
    obj.edit154:setTransparent(true);
    obj.edit154:setField("qtdMagia13");
    obj.edit154:setHitTest(true);
    obj.edit154:setCursor("handPoint");
    obj.edit154:setHint("Quantidade");
    obj.edit154:setName("edit154");

    obj.label159 = GUI.fromHandle(_obj_newObject("label"));
    obj.label159:setParent(obj.rectangle402);
    obj.label159:setLeft(360);
    obj.label159:setTop(722);
    obj.label159:setWidth(280);
    obj.label159:setFontSize(18);
    obj.label159:setText("/");
    obj.label159:setFontColor("#49244F");
    obj.label159:setName("label159");

    obj.rectangle432 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle432:setParent(obj.rectangle402);
    obj.rectangle432:setLeft(374);
    obj.rectangle432:setTop(716);
    obj.rectangle432:setWidth(29);
    obj.rectangle432:setHeight(29);
    obj.rectangle432:setColor("#49244F");
    obj.rectangle432:setCornerType("round");
    obj.rectangle432:setXradius(15);
    obj.rectangle432:setYradius(15);
    obj.rectangle432:setName("rectangle432");

    obj.edit155 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit155:setParent(obj.rectangle402);
    obj.edit155:setLeft(368);
    obj.edit155:setTop(715);
    obj.edit155:setWidth(40);
    obj.edit155:setFontSize(18);
    obj.edit155:setHorzTextAlign("center");
    obj.edit155:setFontColor("#D5D5D5");
    obj.edit155:setTransparent(true);
    obj.edit155:setField("maxMagia13");
    obj.edit155:setHitTest(true);
    obj.edit155:setCursor("handPoint");
    obj.edit155:setHint("Total");
    obj.edit155:setName("edit155");

    obj.rectangle433 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle433:setParent(obj.rectangle402);
    obj.rectangle433:setLeft(434);
    obj.rectangle433:setTop(435);
    obj.rectangle433:setWidth(350);
    obj.rectangle433:setHeight(318);
    obj.rectangle433:setColor("#D5D5D5");
    obj.rectangle433:setStrokeColor("#49244F");
    obj.rectangle433:setStrokeSize(3);
    obj.rectangle433:setName("rectangle433");

    obj.rectangle434 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle434:setParent(obj.rectangle402);
    obj.rectangle434:setLeft(434);
    obj.rectangle434:setTop(435);
    obj.rectangle434:setWidth(350);
    obj.rectangle434:setHeight(50);
    obj.rectangle434:setColor("#49244F");
    obj.rectangle434:setName("rectangle434");

    obj.edit156 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit156:setParent(obj.rectangle402);
    obj.edit156:setLeft(439);
    obj.edit156:setTop(443);
    obj.edit156:setWidth(340);
    obj.edit156:setFontSize(18);
    obj.edit156:setHeight(30);
    obj.edit156:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit156, "fontStyle", "bold");
    obj.edit156:setTransparent(true);
    obj.edit156:setField("Magia14");
    obj.edit156:setName("edit156");

    obj.rectangle435 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle435:setParent(obj.rectangle402);
    obj.rectangle435:setLeft(434);
    obj.rectangle435:setTop(516);
    obj.rectangle435:setWidth(350);
    obj.rectangle435:setHeight(1);
    obj.rectangle435:setColor("#49244F");
    obj.rectangle435:setName("rectangle435");

    obj.label160 = GUI.fromHandle(_obj_newObject("label"));
    obj.label160:setParent(obj.rectangle402);
    obj.label160:setLeft(444);
    obj.label160:setTop(489);
    obj.label160:setWidth(280);
    obj.label160:setFontSize(18);
    obj.label160:setText("Tradição:");
    obj.label160:setFontColor("#49244F");
    lfm_setPropAsString(obj.label160, "fontStyle", "bold");
    obj.label160:setName("label160");

    obj.edit157 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit157:setParent(obj.rectangle402);
    obj.edit157:setLeft(524);
    obj.edit157:setTop(483);
    obj.edit157:setWidth(260);
    obj.edit157:setFontSize(18);
    obj.edit157:setFontColor("#49244F");
    obj.edit157:setTransparent(true);
    obj.edit157:setField("tradicaoMagia14");
    obj.edit157:setName("edit157");

    obj.rectangle436 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle436:setParent(obj.rectangle402);
    obj.rectangle436:setLeft(434);
    obj.rectangle436:setTop(551);
    obj.rectangle436:setWidth(350);
    obj.rectangle436:setHeight(1);
    obj.rectangle436:setColor("#49244F");
    obj.rectangle436:setName("rectangle436");

    obj.label161 = GUI.fromHandle(_obj_newObject("label"));
    obj.label161:setParent(obj.rectangle402);
    obj.label161:setLeft(444);
    obj.label161:setTop(524);
    obj.label161:setWidth(280);
    obj.label161:setFontSize(18);
    obj.label161:setText("Alvo:");
    obj.label161:setFontColor("#49244F");
    lfm_setPropAsString(obj.label161, "fontStyle", "bold");
    obj.label161:setName("label161");

    obj.edit158 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit158:setParent(obj.rectangle402);
    obj.edit158:setLeft(489);
    obj.edit158:setTop(518);
    obj.edit158:setWidth(295);
    obj.edit158:setFontSize(18);
    obj.edit158:setFontColor("#49244F");
    obj.edit158:setTransparent(true);
    obj.edit158:setField("alvoMagia14");
    obj.edit158:setName("edit158");

    obj.rectangle437 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle437:setParent(obj.rectangle402);
    obj.rectangle437:setLeft(434);
    obj.rectangle437:setTop(586);
    obj.rectangle437:setWidth(350);
    obj.rectangle437:setHeight(3);
    obj.rectangle437:setColor("#49244F");
    obj.rectangle437:setName("rectangle437");

    obj.label162 = GUI.fromHandle(_obj_newObject("label"));
    obj.label162:setParent(obj.rectangle402);
    obj.label162:setLeft(444);
    obj.label162:setTop(559);
    obj.label162:setWidth(280);
    obj.label162:setFontSize(18);
    obj.label162:setText("Duração:");
    obj.label162:setFontColor("#49244F");
    lfm_setPropAsString(obj.label162, "fontStyle", "bold");
    obj.label162:setName("label162");

    obj.edit159 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit159:setParent(obj.rectangle402);
    obj.edit159:setLeft(524);
    obj.edit159:setTop(553);
    obj.edit159:setWidth(260);
    obj.edit159:setFontSize(18);
    obj.edit159:setFontColor("#49244F");
    obj.edit159:setTransparent(true);
    obj.edit159:setField("duracaoMagia14");
    obj.edit159:setName("edit159");

    obj.rectangle438 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle438:setParent(obj.rectangle402);
    obj.rectangle438:setLeft(434);
    obj.rectangle438:setTop(586);
    obj.rectangle438:setWidth(350);
    obj.rectangle438:setHeight(125);
    obj.rectangle438:setColor("#49244F");
    obj.rectangle438:setName("rectangle438");

    obj.textEditor30 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor30:setParent(obj.rectangle402);
    obj.textEditor30:setLeft(439);
    obj.textEditor30:setTop(591);
    obj.textEditor30:setWidth(340);
    obj.textEditor30:setHeight(115);
    obj.textEditor30:setFontColor("#D5D5D5");
    obj.textEditor30:setTransparent(true);
    obj.textEditor30:setField("descricaoMagia14");
    obj.textEditor30:setFontSize(18);
    obj.textEditor30:setName("textEditor30");

    obj.rectangle439 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle439:setParent(obj.rectangle402);
    obj.rectangle439:setLeft(434);
    obj.rectangle439:setTop(711);
    obj.rectangle439:setWidth(350);
    obj.rectangle439:setHeight(3);
    obj.rectangle439:setColor("#49244F");
    obj.rectangle439:setName("rectangle439");

    obj.rectangle440 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle440:setParent(obj.rectangle402);
    obj.rectangle440:setLeft(438);
    obj.rectangle440:setTop(718);
    obj.rectangle440:setWidth(135);
    obj.rectangle440:setHeight(29);
    obj.rectangle440:setColor("#49244F");
    obj.rectangle440:setHitTest(true);
    obj.rectangle440:setCursor("handPoint");
    obj.rectangle440:setName("rectangle440");

    obj.label163 = GUI.fromHandle(_obj_newObject("label"));
    obj.label163:setParent(obj.rectangle402);
    obj.label163:setLeft(444);
    obj.label163:setTop(722);
    obj.label163:setWidth(280);
    obj.label163:setFontSize(18);
    obj.label163:setText("Conjurar Feitiço");
    obj.label163:setFontColor("#D5D5D5");
    obj.label163:setName("label163");

    obj.rectangle441 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle441:setParent(obj.rectangle402);
    obj.rectangle441:setLeft(698);
    obj.rectangle441:setTop(718);
    obj.rectangle441:setWidth(29);
    obj.rectangle441:setHeight(29);
    obj.rectangle441:setColor("#49244F");
    obj.rectangle441:setCornerType("round");
    obj.rectangle441:setXradius(15);
    obj.rectangle441:setYradius(15);
    obj.rectangle441:setName("rectangle441");

    obj.edit160 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit160:setParent(obj.rectangle402);
    obj.edit160:setLeft(692);
    obj.edit160:setTop(715);
    obj.edit160:setWidth(40);
    obj.edit160:setFontSize(18);
    obj.edit160:setHorzTextAlign("center");
    obj.edit160:setFontColor("#D5D5D5");
    obj.edit160:setTransparent(true);
    obj.edit160:setField("qtdMagia14");
    obj.edit160:setHitTest(true);
    obj.edit160:setCursor("handPoint");
    obj.edit160:setHint("Quantidade");
    obj.edit160:setName("edit160");

    obj.label164 = GUI.fromHandle(_obj_newObject("label"));
    obj.label164:setParent(obj.rectangle402);
    obj.label164:setLeft(734);
    obj.label164:setTop(722);
    obj.label164:setWidth(280);
    obj.label164:setFontSize(18);
    obj.label164:setText("/");
    obj.label164:setFontColor("#49244F");
    obj.label164:setName("label164");

    obj.rectangle442 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle442:setParent(obj.rectangle402);
    obj.rectangle442:setLeft(748);
    obj.rectangle442:setTop(716);
    obj.rectangle442:setWidth(29);
    obj.rectangle442:setHeight(29);
    obj.rectangle442:setColor("#49244F");
    obj.rectangle442:setCornerType("round");
    obj.rectangle442:setXradius(15);
    obj.rectangle442:setYradius(15);
    obj.rectangle442:setName("rectangle442");

    obj.edit161 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit161:setParent(obj.rectangle402);
    obj.edit161:setLeft(743);
    obj.edit161:setTop(715);
    obj.edit161:setWidth(40);
    obj.edit161:setFontSize(18);
    obj.edit161:setHorzTextAlign("center");
    obj.edit161:setFontColor("#D5D5D5");
    obj.edit161:setTransparent(true);
    obj.edit161:setField("maxMagia14");
    obj.edit161:setHitTest(true);
    obj.edit161:setCursor("handPoint");
    obj.edit161:setHint("Total");
    obj.edit161:setName("edit161");

    obj.rectangle443 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle443:setParent(obj.rectangle402);
    obj.rectangle443:setLeft(60);
    obj.rectangle443:setTop(775);
    obj.rectangle443:setWidth(350);
    obj.rectangle443:setHeight(318);
    obj.rectangle443:setColor("#D5D5D5");
    obj.rectangle443:setStrokeColor("#49244F");
    obj.rectangle443:setStrokeSize(3);
    obj.rectangle443:setName("rectangle443");

    obj.rectangle444 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle444:setParent(obj.rectangle402);
    obj.rectangle444:setLeft(60);
    obj.rectangle444:setTop(775);
    obj.rectangle444:setWidth(350);
    obj.rectangle444:setHeight(50);
    obj.rectangle444:setColor("#49244F");
    obj.rectangle444:setName("rectangle444");

    obj.edit162 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit162:setParent(obj.rectangle402);
    obj.edit162:setLeft(65);
    obj.edit162:setTop(783);
    obj.edit162:setWidth(340);
    obj.edit162:setFontSize(18);
    obj.edit162:setHeight(30);
    obj.edit162:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit162, "fontStyle", "bold");
    obj.edit162:setTransparent(true);
    obj.edit162:setField("Magia15");
    obj.edit162:setName("edit162");

    obj.rectangle445 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle445:setParent(obj.rectangle402);
    obj.rectangle445:setLeft(60);
    obj.rectangle445:setTop(856);
    obj.rectangle445:setWidth(350);
    obj.rectangle445:setHeight(1);
    obj.rectangle445:setColor("#49244F");
    obj.rectangle445:setName("rectangle445");

    obj.label165 = GUI.fromHandle(_obj_newObject("label"));
    obj.label165:setParent(obj.rectangle402);
    obj.label165:setLeft(70);
    obj.label165:setTop(829);
    obj.label165:setWidth(280);
    obj.label165:setFontSize(18);
    obj.label165:setText("Tradição:");
    obj.label165:setFontColor("#49244F");
    lfm_setPropAsString(obj.label165, "fontStyle", "bold");
    obj.label165:setName("label165");

    obj.edit163 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit163:setParent(obj.rectangle402);
    obj.edit163:setLeft(150);
    obj.edit163:setTop(823);
    obj.edit163:setWidth(260);
    obj.edit163:setFontSize(18);
    obj.edit163:setFontColor("#49244F");
    obj.edit163:setTransparent(true);
    obj.edit163:setField("tradicaoMagia15");
    obj.edit163:setName("edit163");

    obj.rectangle446 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle446:setParent(obj.rectangle402);
    obj.rectangle446:setLeft(60);
    obj.rectangle446:setTop(891);
    obj.rectangle446:setWidth(350);
    obj.rectangle446:setHeight(1);
    obj.rectangle446:setColor("#49244F");
    obj.rectangle446:setName("rectangle446");

    obj.label166 = GUI.fromHandle(_obj_newObject("label"));
    obj.label166:setParent(obj.rectangle402);
    obj.label166:setLeft(70);
    obj.label166:setTop(864);
    obj.label166:setWidth(280);
    obj.label166:setFontSize(18);
    obj.label166:setText("Alvo:");
    obj.label166:setFontColor("#49244F");
    lfm_setPropAsString(obj.label166, "fontStyle", "bold");
    obj.label166:setName("label166");

    obj.edit164 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit164:setParent(obj.rectangle402);
    obj.edit164:setLeft(115);
    obj.edit164:setTop(858);
    obj.edit164:setWidth(295);
    obj.edit164:setFontSize(18);
    obj.edit164:setFontColor("#49244F");
    obj.edit164:setTransparent(true);
    obj.edit164:setField("alvoMagia15");
    obj.edit164:setName("edit164");

    obj.rectangle447 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle447:setParent(obj.rectangle402);
    obj.rectangle447:setLeft(60);
    obj.rectangle447:setTop(926);
    obj.rectangle447:setWidth(350);
    obj.rectangle447:setHeight(3);
    obj.rectangle447:setColor("#49244F");
    obj.rectangle447:setName("rectangle447");

    obj.label167 = GUI.fromHandle(_obj_newObject("label"));
    obj.label167:setParent(obj.rectangle402);
    obj.label167:setLeft(70);
    obj.label167:setTop(899);
    obj.label167:setWidth(280);
    obj.label167:setFontSize(18);
    obj.label167:setText("Duração:");
    obj.label167:setFontColor("#49244F");
    lfm_setPropAsString(obj.label167, "fontStyle", "bold");
    obj.label167:setName("label167");

    obj.edit165 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit165:setParent(obj.rectangle402);
    obj.edit165:setLeft(150);
    obj.edit165:setTop(893);
    obj.edit165:setWidth(260);
    obj.edit165:setFontSize(18);
    obj.edit165:setFontColor("#49244F");
    obj.edit165:setTransparent(true);
    obj.edit165:setField("duracaoMagia15");
    obj.edit165:setName("edit165");

    obj.rectangle448 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle448:setParent(obj.rectangle402);
    obj.rectangle448:setLeft(60);
    obj.rectangle448:setTop(926);
    obj.rectangle448:setWidth(350);
    obj.rectangle448:setHeight(125);
    obj.rectangle448:setColor("#49244F");
    obj.rectangle448:setName("rectangle448");

    obj.textEditor31 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor31:setParent(obj.rectangle402);
    obj.textEditor31:setLeft(65);
    obj.textEditor31:setTop(931);
    obj.textEditor31:setWidth(340);
    obj.textEditor31:setHeight(115);
    obj.textEditor31:setFontColor("#D5D5D5");
    obj.textEditor31:setTransparent(true);
    obj.textEditor31:setField("descricaoMagia15");
    obj.textEditor31:setFontSize(18);
    obj.textEditor31:setName("textEditor31");

    obj.rectangle449 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle449:setParent(obj.rectangle402);
    obj.rectangle449:setLeft(60);
    obj.rectangle449:setTop(1051);
    obj.rectangle449:setWidth(350);
    obj.rectangle449:setHeight(3);
    obj.rectangle449:setColor("#49244F");
    obj.rectangle449:setName("rectangle449");

    obj.rectangle450 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle450:setParent(obj.rectangle402);
    obj.rectangle450:setLeft(64);
    obj.rectangle450:setTop(1058);
    obj.rectangle450:setWidth(135);
    obj.rectangle450:setHeight(29);
    obj.rectangle450:setColor("#49244F");
    obj.rectangle450:setHitTest(true);
    obj.rectangle450:setCursor("handPoint");
    obj.rectangle450:setName("rectangle450");

    obj.label168 = GUI.fromHandle(_obj_newObject("label"));
    obj.label168:setParent(obj.rectangle402);
    obj.label168:setLeft(70);
    obj.label168:setTop(1062);
    obj.label168:setWidth(280);
    obj.label168:setFontSize(18);
    obj.label168:setText("Conjurar Feitiço");
    obj.label168:setFontColor("#D5D5D5");
    obj.label168:setName("label168");

    obj.rectangle451 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle451:setParent(obj.rectangle402);
    obj.rectangle451:setLeft(324);
    obj.rectangle451:setTop(1058);
    obj.rectangle451:setWidth(29);
    obj.rectangle451:setHeight(29);
    obj.rectangle451:setColor("#49244F");
    obj.rectangle451:setCornerType("round");
    obj.rectangle451:setXradius(15);
    obj.rectangle451:setYradius(15);
    obj.rectangle451:setName("rectangle451");

    obj.edit166 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit166:setParent(obj.rectangle402);
    obj.edit166:setLeft(318);
    obj.edit166:setTop(1055);
    obj.edit166:setWidth(40);
    obj.edit166:setFontSize(18);
    obj.edit166:setHorzTextAlign("center");
    obj.edit166:setFontColor("#D5D5D5");
    obj.edit166:setTransparent(true);
    obj.edit166:setField("qtdMagia15");
    obj.edit166:setHitTest(true);
    obj.edit166:setCursor("handPoint");
    obj.edit166:setHint("Quantidade");
    obj.edit166:setName("edit166");

    obj.label169 = GUI.fromHandle(_obj_newObject("label"));
    obj.label169:setParent(obj.rectangle402);
    obj.label169:setLeft(360);
    obj.label169:setTop(1062);
    obj.label169:setWidth(280);
    obj.label169:setFontSize(18);
    obj.label169:setText("/");
    obj.label169:setFontColor("#49244F");
    obj.label169:setName("label169");

    obj.rectangle452 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle452:setParent(obj.rectangle402);
    obj.rectangle452:setLeft(374);
    obj.rectangle452:setTop(1056);
    obj.rectangle452:setWidth(29);
    obj.rectangle452:setHeight(29);
    obj.rectangle452:setColor("#49244F");
    obj.rectangle452:setCornerType("round");
    obj.rectangle452:setXradius(15);
    obj.rectangle452:setYradius(15);
    obj.rectangle452:setName("rectangle452");

    obj.edit167 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit167:setParent(obj.rectangle402);
    obj.edit167:setLeft(368);
    obj.edit167:setTop(1055);
    obj.edit167:setWidth(40);
    obj.edit167:setFontSize(18);
    obj.edit167:setHorzTextAlign("center");
    obj.edit167:setFontColor("#D5D5D5");
    obj.edit167:setTransparent(true);
    obj.edit167:setField("maxMagia15");
    obj.edit167:setHitTest(true);
    obj.edit167:setCursor("handPoint");
    obj.edit167:setHint("Total");
    obj.edit167:setName("edit167");

    obj.rectangle453 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle453:setParent(obj.rectangle402);
    obj.rectangle453:setLeft(434);
    obj.rectangle453:setTop(775);
    obj.rectangle453:setWidth(350);
    obj.rectangle453:setHeight(318);
    obj.rectangle453:setColor("#D5D5D5");
    obj.rectangle453:setStrokeColor("#49244F");
    obj.rectangle453:setStrokeSize(3);
    obj.rectangle453:setName("rectangle453");

    obj.rectangle454 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle454:setParent(obj.rectangle402);
    obj.rectangle454:setLeft(434);
    obj.rectangle454:setTop(775);
    obj.rectangle454:setWidth(350);
    obj.rectangle454:setHeight(50);
    obj.rectangle454:setColor("#49244F");
    obj.rectangle454:setName("rectangle454");

    obj.edit168 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit168:setParent(obj.rectangle402);
    obj.edit168:setLeft(439);
    obj.edit168:setTop(783);
    obj.edit168:setWidth(340);
    obj.edit168:setFontSize(18);
    obj.edit168:setHeight(30);
    obj.edit168:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit168, "fontStyle", "bold");
    obj.edit168:setTransparent(true);
    obj.edit168:setField("Magia16");
    obj.edit168:setName("edit168");

    obj.rectangle455 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle455:setParent(obj.rectangle402);
    obj.rectangle455:setLeft(434);
    obj.rectangle455:setTop(856);
    obj.rectangle455:setWidth(350);
    obj.rectangle455:setHeight(1);
    obj.rectangle455:setColor("#49244F");
    obj.rectangle455:setName("rectangle455");

    obj.label170 = GUI.fromHandle(_obj_newObject("label"));
    obj.label170:setParent(obj.rectangle402);
    obj.label170:setLeft(444);
    obj.label170:setTop(829);
    obj.label170:setWidth(280);
    obj.label170:setFontSize(18);
    obj.label170:setText("Tradição:");
    obj.label170:setFontColor("#49244F");
    lfm_setPropAsString(obj.label170, "fontStyle", "bold");
    obj.label170:setName("label170");

    obj.edit169 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit169:setParent(obj.rectangle402);
    obj.edit169:setLeft(524);
    obj.edit169:setTop(823);
    obj.edit169:setWidth(260);
    obj.edit169:setFontSize(18);
    obj.edit169:setFontColor("#49244F");
    obj.edit169:setTransparent(true);
    obj.edit169:setField("tradicaoMagia16");
    obj.edit169:setName("edit169");

    obj.rectangle456 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle456:setParent(obj.rectangle402);
    obj.rectangle456:setLeft(434);
    obj.rectangle456:setTop(891);
    obj.rectangle456:setWidth(350);
    obj.rectangle456:setHeight(1);
    obj.rectangle456:setColor("#49244F");
    obj.rectangle456:setName("rectangle456");

    obj.label171 = GUI.fromHandle(_obj_newObject("label"));
    obj.label171:setParent(obj.rectangle402);
    obj.label171:setLeft(444);
    obj.label171:setTop(864);
    obj.label171:setWidth(280);
    obj.label171:setFontSize(18);
    obj.label171:setText("Alvo:");
    obj.label171:setFontColor("#49244F");
    lfm_setPropAsString(obj.label171, "fontStyle", "bold");
    obj.label171:setName("label171");

    obj.edit170 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit170:setParent(obj.rectangle402);
    obj.edit170:setLeft(489);
    obj.edit170:setTop(858);
    obj.edit170:setWidth(295);
    obj.edit170:setFontSize(18);
    obj.edit170:setFontColor("#49244F");
    obj.edit170:setTransparent(true);
    obj.edit170:setField("alvoMagia16");
    obj.edit170:setName("edit170");

    obj.rectangle457 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle457:setParent(obj.rectangle402);
    obj.rectangle457:setLeft(434);
    obj.rectangle457:setTop(926);
    obj.rectangle457:setWidth(350);
    obj.rectangle457:setHeight(3);
    obj.rectangle457:setColor("#49244F");
    obj.rectangle457:setName("rectangle457");

    obj.label172 = GUI.fromHandle(_obj_newObject("label"));
    obj.label172:setParent(obj.rectangle402);
    obj.label172:setLeft(444);
    obj.label172:setTop(899);
    obj.label172:setWidth(280);
    obj.label172:setFontSize(18);
    obj.label172:setText("Duração:");
    obj.label172:setFontColor("#49244F");
    lfm_setPropAsString(obj.label172, "fontStyle", "bold");
    obj.label172:setName("label172");

    obj.edit171 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit171:setParent(obj.rectangle402);
    obj.edit171:setLeft(524);
    obj.edit171:setTop(893);
    obj.edit171:setWidth(260);
    obj.edit171:setFontSize(18);
    obj.edit171:setFontColor("#49244F");
    obj.edit171:setTransparent(true);
    obj.edit171:setField("duracaoMagia16");
    obj.edit171:setName("edit171");

    obj.rectangle458 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle458:setParent(obj.rectangle402);
    obj.rectangle458:setLeft(434);
    obj.rectangle458:setTop(926);
    obj.rectangle458:setWidth(350);
    obj.rectangle458:setHeight(125);
    obj.rectangle458:setColor("#49244F");
    obj.rectangle458:setName("rectangle458");

    obj.textEditor32 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor32:setParent(obj.rectangle402);
    obj.textEditor32:setLeft(439);
    obj.textEditor32:setTop(931);
    obj.textEditor32:setWidth(340);
    obj.textEditor32:setHeight(115);
    obj.textEditor32:setFontColor("#D5D5D5");
    obj.textEditor32:setTransparent(true);
    obj.textEditor32:setField("descricaoMagia16");
    obj.textEditor32:setFontSize(18);
    obj.textEditor32:setName("textEditor32");

    obj.rectangle459 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle459:setParent(obj.rectangle402);
    obj.rectangle459:setLeft(434);
    obj.rectangle459:setTop(1051);
    obj.rectangle459:setWidth(350);
    obj.rectangle459:setHeight(3);
    obj.rectangle459:setColor("#49244F");
    obj.rectangle459:setName("rectangle459");

    obj.rectangle460 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle460:setParent(obj.rectangle402);
    obj.rectangle460:setLeft(438);
    obj.rectangle460:setTop(1058);
    obj.rectangle460:setWidth(135);
    obj.rectangle460:setHeight(29);
    obj.rectangle460:setColor("#49244F");
    obj.rectangle460:setHitTest(true);
    obj.rectangle460:setCursor("handPoint");
    obj.rectangle460:setName("rectangle460");

    obj.label173 = GUI.fromHandle(_obj_newObject("label"));
    obj.label173:setParent(obj.rectangle402);
    obj.label173:setLeft(444);
    obj.label173:setTop(1062);
    obj.label173:setWidth(280);
    obj.label173:setFontSize(18);
    obj.label173:setText("Conjurar Feitiço");
    obj.label173:setFontColor("#D5D5D5");
    obj.label173:setName("label173");

    obj.rectangle461 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle461:setParent(obj.rectangle402);
    obj.rectangle461:setLeft(698);
    obj.rectangle461:setTop(1058);
    obj.rectangle461:setWidth(29);
    obj.rectangle461:setHeight(29);
    obj.rectangle461:setColor("#49244F");
    obj.rectangle461:setCornerType("round");
    obj.rectangle461:setXradius(15);
    obj.rectangle461:setYradius(15);
    obj.rectangle461:setName("rectangle461");

    obj.edit172 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit172:setParent(obj.rectangle402);
    obj.edit172:setLeft(692);
    obj.edit172:setTop(1055);
    obj.edit172:setWidth(40);
    obj.edit172:setFontSize(18);
    obj.edit172:setHorzTextAlign("center");
    obj.edit172:setFontColor("#D5D5D5");
    obj.edit172:setTransparent(true);
    obj.edit172:setField("qtdMagia16");
    obj.edit172:setHitTest(true);
    obj.edit172:setCursor("handPoint");
    obj.edit172:setHint("Quantidade");
    obj.edit172:setName("edit172");

    obj.label174 = GUI.fromHandle(_obj_newObject("label"));
    obj.label174:setParent(obj.rectangle402);
    obj.label174:setLeft(734);
    obj.label174:setTop(1062);
    obj.label174:setWidth(280);
    obj.label174:setFontSize(18);
    obj.label174:setText("/");
    obj.label174:setFontColor("#49244F");
    obj.label174:setName("label174");

    obj.rectangle462 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle462:setParent(obj.rectangle402);
    obj.rectangle462:setLeft(748);
    obj.rectangle462:setTop(1056);
    obj.rectangle462:setWidth(29);
    obj.rectangle462:setHeight(29);
    obj.rectangle462:setColor("#49244F");
    obj.rectangle462:setCornerType("round");
    obj.rectangle462:setXradius(15);
    obj.rectangle462:setYradius(15);
    obj.rectangle462:setName("rectangle462");

    obj.edit173 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit173:setParent(obj.rectangle402);
    obj.edit173:setLeft(743);
    obj.edit173:setTop(1055);
    obj.edit173:setWidth(40);
    obj.edit173:setFontSize(18);
    obj.edit173:setHorzTextAlign("center");
    obj.edit173:setFontColor("#D5D5D5");
    obj.edit173:setTransparent(true);
    obj.edit173:setField("maxMagia16");
    obj.edit173:setHitTest(true);
    obj.edit173:setCursor("handPoint");
    obj.edit173:setHint("Total");
    obj.edit173:setName("edit173");

    obj.rectangle463 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle463:setParent(obj.rectangle402);
    obj.rectangle463:setLeft(60);
    obj.rectangle463:setTop(1115);
    obj.rectangle463:setWidth(350);
    obj.rectangle463:setHeight(318);
    obj.rectangle463:setColor("#D5D5D5");
    obj.rectangle463:setStrokeColor("#49244F");
    obj.rectangle463:setStrokeSize(3);
    obj.rectangle463:setName("rectangle463");

    obj.rectangle464 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle464:setParent(obj.rectangle402);
    obj.rectangle464:setLeft(60);
    obj.rectangle464:setTop(1115);
    obj.rectangle464:setWidth(350);
    obj.rectangle464:setHeight(50);
    obj.rectangle464:setColor("#49244F");
    obj.rectangle464:setName("rectangle464");

    obj.edit174 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit174:setParent(obj.rectangle402);
    obj.edit174:setLeft(65);
    obj.edit174:setTop(1123);
    obj.edit174:setWidth(340);
    obj.edit174:setFontSize(18);
    obj.edit174:setHeight(30);
    obj.edit174:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit174, "fontStyle", "bold");
    obj.edit174:setTransparent(true);
    obj.edit174:setField("Magia17");
    obj.edit174:setName("edit174");

    obj.rectangle465 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle465:setParent(obj.rectangle402);
    obj.rectangle465:setLeft(60);
    obj.rectangle465:setTop(1196);
    obj.rectangle465:setWidth(350);
    obj.rectangle465:setHeight(1);
    obj.rectangle465:setColor("#49244F");
    obj.rectangle465:setName("rectangle465");

    obj.label175 = GUI.fromHandle(_obj_newObject("label"));
    obj.label175:setParent(obj.rectangle402);
    obj.label175:setLeft(70);
    obj.label175:setTop(1169);
    obj.label175:setWidth(280);
    obj.label175:setFontSize(18);
    obj.label175:setText("Tradição:");
    obj.label175:setFontColor("#49244F");
    lfm_setPropAsString(obj.label175, "fontStyle", "bold");
    obj.label175:setName("label175");

    obj.edit175 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit175:setParent(obj.rectangle402);
    obj.edit175:setLeft(150);
    obj.edit175:setTop(1163);
    obj.edit175:setWidth(260);
    obj.edit175:setFontSize(18);
    obj.edit175:setFontColor("#49244F");
    obj.edit175:setTransparent(true);
    obj.edit175:setField("tradicaoMagia17");
    obj.edit175:setName("edit175");

    obj.rectangle466 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle466:setParent(obj.rectangle402);
    obj.rectangle466:setLeft(60);
    obj.rectangle466:setTop(1231);
    obj.rectangle466:setWidth(350);
    obj.rectangle466:setHeight(1);
    obj.rectangle466:setColor("#49244F");
    obj.rectangle466:setName("rectangle466");

    obj.label176 = GUI.fromHandle(_obj_newObject("label"));
    obj.label176:setParent(obj.rectangle402);
    obj.label176:setLeft(70);
    obj.label176:setTop(1204);
    obj.label176:setWidth(280);
    obj.label176:setFontSize(18);
    obj.label176:setText("Alvo:");
    obj.label176:setFontColor("#49244F");
    lfm_setPropAsString(obj.label176, "fontStyle", "bold");
    obj.label176:setName("label176");

    obj.edit176 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit176:setParent(obj.rectangle402);
    obj.edit176:setLeft(115);
    obj.edit176:setTop(1198);
    obj.edit176:setWidth(295);
    obj.edit176:setFontSize(18);
    obj.edit176:setFontColor("#49244F");
    obj.edit176:setTransparent(true);
    obj.edit176:setField("alvoMagia17");
    obj.edit176:setName("edit176");

    obj.rectangle467 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle467:setParent(obj.rectangle402);
    obj.rectangle467:setLeft(60);
    obj.rectangle467:setTop(1266);
    obj.rectangle467:setWidth(350);
    obj.rectangle467:setHeight(3);
    obj.rectangle467:setColor("#49244F");
    obj.rectangle467:setName("rectangle467");

    obj.label177 = GUI.fromHandle(_obj_newObject("label"));
    obj.label177:setParent(obj.rectangle402);
    obj.label177:setLeft(70);
    obj.label177:setTop(1239);
    obj.label177:setWidth(280);
    obj.label177:setFontSize(18);
    obj.label177:setText("Duração:");
    obj.label177:setFontColor("#49244F");
    lfm_setPropAsString(obj.label177, "fontStyle", "bold");
    obj.label177:setName("label177");

    obj.edit177 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit177:setParent(obj.rectangle402);
    obj.edit177:setLeft(150);
    obj.edit177:setTop(1233);
    obj.edit177:setWidth(260);
    obj.edit177:setFontSize(18);
    obj.edit177:setFontColor("#49244F");
    obj.edit177:setTransparent(true);
    obj.edit177:setField("duracaoMagia17");
    obj.edit177:setName("edit177");

    obj.rectangle468 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle468:setParent(obj.rectangle402);
    obj.rectangle468:setLeft(60);
    obj.rectangle468:setTop(1266);
    obj.rectangle468:setWidth(350);
    obj.rectangle468:setHeight(125);
    obj.rectangle468:setColor("#49244F");
    obj.rectangle468:setName("rectangle468");

    obj.textEditor33 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor33:setParent(obj.rectangle402);
    obj.textEditor33:setLeft(65);
    obj.textEditor33:setTop(1271);
    obj.textEditor33:setWidth(340);
    obj.textEditor33:setHeight(115);
    obj.textEditor33:setFontColor("#D5D5D5");
    obj.textEditor33:setTransparent(true);
    obj.textEditor33:setField("descricaoMagia17");
    obj.textEditor33:setFontSize(18);
    obj.textEditor33:setName("textEditor33");

    obj.rectangle469 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle469:setParent(obj.rectangle402);
    obj.rectangle469:setLeft(60);
    obj.rectangle469:setTop(1391);
    obj.rectangle469:setWidth(350);
    obj.rectangle469:setHeight(3);
    obj.rectangle469:setColor("#49244F");
    obj.rectangle469:setName("rectangle469");

    obj.rectangle470 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle470:setParent(obj.rectangle402);
    obj.rectangle470:setLeft(64);
    obj.rectangle470:setTop(1398);
    obj.rectangle470:setWidth(135);
    obj.rectangle470:setHeight(29);
    obj.rectangle470:setColor("#49244F");
    obj.rectangle470:setHitTest(true);
    obj.rectangle470:setCursor("handPoint");
    obj.rectangle470:setName("rectangle470");

    obj.label178 = GUI.fromHandle(_obj_newObject("label"));
    obj.label178:setParent(obj.rectangle402);
    obj.label178:setLeft(70);
    obj.label178:setTop(1402);
    obj.label178:setWidth(280);
    obj.label178:setFontSize(18);
    obj.label178:setText("Conjurar Feitiço");
    obj.label178:setFontColor("#D5D5D5");
    obj.label178:setName("label178");

    obj.rectangle471 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle471:setParent(obj.rectangle402);
    obj.rectangle471:setLeft(324);
    obj.rectangle471:setTop(1398);
    obj.rectangle471:setWidth(29);
    obj.rectangle471:setHeight(29);
    obj.rectangle471:setColor("#49244F");
    obj.rectangle471:setCornerType("round");
    obj.rectangle471:setXradius(15);
    obj.rectangle471:setYradius(15);
    obj.rectangle471:setName("rectangle471");

    obj.edit178 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit178:setParent(obj.rectangle402);
    obj.edit178:setLeft(318);
    obj.edit178:setTop(1395);
    obj.edit178:setWidth(40);
    obj.edit178:setFontSize(18);
    obj.edit178:setHorzTextAlign("center");
    obj.edit178:setFontColor("#D5D5D5");
    obj.edit178:setTransparent(true);
    obj.edit178:setField("qtdMagia17");
    obj.edit178:setHitTest(true);
    obj.edit178:setCursor("handPoint");
    obj.edit178:setHint("Quantidade");
    obj.edit178:setName("edit178");

    obj.label179 = GUI.fromHandle(_obj_newObject("label"));
    obj.label179:setParent(obj.rectangle402);
    obj.label179:setLeft(360);
    obj.label179:setTop(1402);
    obj.label179:setWidth(280);
    obj.label179:setFontSize(18);
    obj.label179:setText("/");
    obj.label179:setFontColor("#49244F");
    obj.label179:setName("label179");

    obj.rectangle472 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle472:setParent(obj.rectangle402);
    obj.rectangle472:setLeft(374);
    obj.rectangle472:setTop(1396);
    obj.rectangle472:setWidth(29);
    obj.rectangle472:setHeight(29);
    obj.rectangle472:setColor("#49244F");
    obj.rectangle472:setCornerType("round");
    obj.rectangle472:setXradius(15);
    obj.rectangle472:setYradius(15);
    obj.rectangle472:setName("rectangle472");

    obj.edit179 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit179:setParent(obj.rectangle402);
    obj.edit179:setLeft(368);
    obj.edit179:setTop(1395);
    obj.edit179:setWidth(40);
    obj.edit179:setFontSize(18);
    obj.edit179:setHorzTextAlign("center");
    obj.edit179:setFontColor("#D5D5D5");
    obj.edit179:setTransparent(true);
    obj.edit179:setField("maxMagia17");
    obj.edit179:setHitTest(true);
    obj.edit179:setCursor("handPoint");
    obj.edit179:setHint("Total");
    obj.edit179:setName("edit179");

    obj.rectangle473 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle473:setParent(obj.rectangle402);
    obj.rectangle473:setLeft(434);
    obj.rectangle473:setTop(1115);
    obj.rectangle473:setWidth(350);
    obj.rectangle473:setHeight(318);
    obj.rectangle473:setColor("#D5D5D5");
    obj.rectangle473:setStrokeColor("#49244F");
    obj.rectangle473:setStrokeSize(3);
    obj.rectangle473:setName("rectangle473");

    obj.rectangle474 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle474:setParent(obj.rectangle402);
    obj.rectangle474:setLeft(434);
    obj.rectangle474:setTop(1115);
    obj.rectangle474:setWidth(350);
    obj.rectangle474:setHeight(50);
    obj.rectangle474:setColor("#49244F");
    obj.rectangle474:setName("rectangle474");

    obj.edit180 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit180:setParent(obj.rectangle402);
    obj.edit180:setLeft(439);
    obj.edit180:setTop(1123);
    obj.edit180:setWidth(340);
    obj.edit180:setFontSize(18);
    obj.edit180:setHeight(30);
    obj.edit180:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit180, "fontStyle", "bold");
    obj.edit180:setTransparent(true);
    obj.edit180:setField("Magia18");
    obj.edit180:setName("edit180");

    obj.rectangle475 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle475:setParent(obj.rectangle402);
    obj.rectangle475:setLeft(434);
    obj.rectangle475:setTop(1196);
    obj.rectangle475:setWidth(350);
    obj.rectangle475:setHeight(1);
    obj.rectangle475:setColor("#49244F");
    obj.rectangle475:setName("rectangle475");

    obj.label180 = GUI.fromHandle(_obj_newObject("label"));
    obj.label180:setParent(obj.rectangle402);
    obj.label180:setLeft(444);
    obj.label180:setTop(1169);
    obj.label180:setWidth(280);
    obj.label180:setFontSize(18);
    obj.label180:setText("Tradição:");
    obj.label180:setFontColor("#49244F");
    lfm_setPropAsString(obj.label180, "fontStyle", "bold");
    obj.label180:setName("label180");

    obj.edit181 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit181:setParent(obj.rectangle402);
    obj.edit181:setLeft(524);
    obj.edit181:setTop(1163);
    obj.edit181:setWidth(260);
    obj.edit181:setFontSize(18);
    obj.edit181:setFontColor("#49244F");
    obj.edit181:setTransparent(true);
    obj.edit181:setField("tradicaoMagia18");
    obj.edit181:setName("edit181");

    obj.rectangle476 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle476:setParent(obj.rectangle402);
    obj.rectangle476:setLeft(434);
    obj.rectangle476:setTop(1231);
    obj.rectangle476:setWidth(350);
    obj.rectangle476:setHeight(1);
    obj.rectangle476:setColor("#49244F");
    obj.rectangle476:setName("rectangle476");

    obj.label181 = GUI.fromHandle(_obj_newObject("label"));
    obj.label181:setParent(obj.rectangle402);
    obj.label181:setLeft(444);
    obj.label181:setTop(1204);
    obj.label181:setWidth(280);
    obj.label181:setFontSize(18);
    obj.label181:setText("Alvo:");
    obj.label181:setFontColor("#49244F");
    lfm_setPropAsString(obj.label181, "fontStyle", "bold");
    obj.label181:setName("label181");

    obj.edit182 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit182:setParent(obj.rectangle402);
    obj.edit182:setLeft(489);
    obj.edit182:setTop(1198);
    obj.edit182:setWidth(295);
    obj.edit182:setFontSize(18);
    obj.edit182:setFontColor("#49244F");
    obj.edit182:setTransparent(true);
    obj.edit182:setField("alvoMagia18");
    obj.edit182:setName("edit182");

    obj.rectangle477 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle477:setParent(obj.rectangle402);
    obj.rectangle477:setLeft(434);
    obj.rectangle477:setTop(1266);
    obj.rectangle477:setWidth(350);
    obj.rectangle477:setHeight(3);
    obj.rectangle477:setColor("#49244F");
    obj.rectangle477:setName("rectangle477");

    obj.label182 = GUI.fromHandle(_obj_newObject("label"));
    obj.label182:setParent(obj.rectangle402);
    obj.label182:setLeft(444);
    obj.label182:setTop(1239);
    obj.label182:setWidth(280);
    obj.label182:setFontSize(18);
    obj.label182:setText("Duração:");
    obj.label182:setFontColor("#49244F");
    lfm_setPropAsString(obj.label182, "fontStyle", "bold");
    obj.label182:setName("label182");

    obj.edit183 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit183:setParent(obj.rectangle402);
    obj.edit183:setLeft(524);
    obj.edit183:setTop(1233);
    obj.edit183:setWidth(260);
    obj.edit183:setFontSize(18);
    obj.edit183:setFontColor("#49244F");
    obj.edit183:setTransparent(true);
    obj.edit183:setField("duracaoMagia18");
    obj.edit183:setName("edit183");

    obj.rectangle478 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle478:setParent(obj.rectangle402);
    obj.rectangle478:setLeft(434);
    obj.rectangle478:setTop(1266);
    obj.rectangle478:setWidth(350);
    obj.rectangle478:setHeight(125);
    obj.rectangle478:setColor("#49244F");
    obj.rectangle478:setName("rectangle478");

    obj.textEditor34 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor34:setParent(obj.rectangle402);
    obj.textEditor34:setLeft(439);
    obj.textEditor34:setTop(1271);
    obj.textEditor34:setWidth(340);
    obj.textEditor34:setHeight(115);
    obj.textEditor34:setFontColor("#D5D5D5");
    obj.textEditor34:setTransparent(true);
    obj.textEditor34:setField("descricaoMagia18");
    obj.textEditor34:setFontSize(18);
    obj.textEditor34:setName("textEditor34");

    obj.rectangle479 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle479:setParent(obj.rectangle402);
    obj.rectangle479:setLeft(434);
    obj.rectangle479:setTop(1391);
    obj.rectangle479:setWidth(350);
    obj.rectangle479:setHeight(3);
    obj.rectangle479:setColor("#49244F");
    obj.rectangle479:setName("rectangle479");

    obj.rectangle480 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle480:setParent(obj.rectangle402);
    obj.rectangle480:setLeft(438);
    obj.rectangle480:setTop(1398);
    obj.rectangle480:setWidth(135);
    obj.rectangle480:setHeight(29);
    obj.rectangle480:setColor("#49244F");
    obj.rectangle480:setHitTest(true);
    obj.rectangle480:setCursor("handPoint");
    obj.rectangle480:setName("rectangle480");

    obj.label183 = GUI.fromHandle(_obj_newObject("label"));
    obj.label183:setParent(obj.rectangle402);
    obj.label183:setLeft(444);
    obj.label183:setTop(1402);
    obj.label183:setWidth(280);
    obj.label183:setFontSize(18);
    obj.label183:setText("Conjurar Feitiço");
    obj.label183:setFontColor("#D5D5D5");
    obj.label183:setName("label183");

    obj.rectangle481 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle481:setParent(obj.rectangle402);
    obj.rectangle481:setLeft(698);
    obj.rectangle481:setTop(1398);
    obj.rectangle481:setWidth(29);
    obj.rectangle481:setHeight(29);
    obj.rectangle481:setColor("#49244F");
    obj.rectangle481:setCornerType("round");
    obj.rectangle481:setXradius(15);
    obj.rectangle481:setYradius(15);
    obj.rectangle481:setName("rectangle481");

    obj.edit184 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit184:setParent(obj.rectangle402);
    obj.edit184:setLeft(692);
    obj.edit184:setTop(1395);
    obj.edit184:setWidth(40);
    obj.edit184:setFontSize(18);
    obj.edit184:setHorzTextAlign("center");
    obj.edit184:setFontColor("#D5D5D5");
    obj.edit184:setTransparent(true);
    obj.edit184:setField("qtdMagia18");
    obj.edit184:setHitTest(true);
    obj.edit184:setCursor("handPoint");
    obj.edit184:setHint("Quantidade");
    obj.edit184:setName("edit184");

    obj.label184 = GUI.fromHandle(_obj_newObject("label"));
    obj.label184:setParent(obj.rectangle402);
    obj.label184:setLeft(734);
    obj.label184:setTop(1402);
    obj.label184:setWidth(280);
    obj.label184:setFontSize(18);
    obj.label184:setText("/");
    obj.label184:setFontColor("#49244F");
    obj.label184:setName("label184");

    obj.rectangle482 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle482:setParent(obj.rectangle402);
    obj.rectangle482:setLeft(748);
    obj.rectangle482:setTop(1396);
    obj.rectangle482:setWidth(29);
    obj.rectangle482:setHeight(29);
    obj.rectangle482:setColor("#49244F");
    obj.rectangle482:setCornerType("round");
    obj.rectangle482:setXradius(15);
    obj.rectangle482:setYradius(15);
    obj.rectangle482:setName("rectangle482");

    obj.edit185 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit185:setParent(obj.rectangle402);
    obj.edit185:setLeft(743);
    obj.edit185:setTop(1395);
    obj.edit185:setWidth(40);
    obj.edit185:setFontSize(18);
    obj.edit185:setHorzTextAlign("center");
    obj.edit185:setFontColor("#D5D5D5");
    obj.edit185:setTransparent(true);
    obj.edit185:setField("maxMagia18");
    obj.edit185:setHitTest(true);
    obj.edit185:setCursor("handPoint");
    obj.edit185:setHint("Total");
    obj.edit185:setName("edit185");

    obj.rectangle483 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle483:setParent(obj.rectangle402);
    obj.rectangle483:setLeft(60);
    obj.rectangle483:setTop(1455);
    obj.rectangle483:setWidth(350);
    obj.rectangle483:setHeight(318);
    obj.rectangle483:setColor("#D5D5D5");
    obj.rectangle483:setStrokeColor("#49244F");
    obj.rectangle483:setStrokeSize(3);
    obj.rectangle483:setName("rectangle483");

    obj.rectangle484 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle484:setParent(obj.rectangle402);
    obj.rectangle484:setLeft(60);
    obj.rectangle484:setTop(1455);
    obj.rectangle484:setWidth(350);
    obj.rectangle484:setHeight(50);
    obj.rectangle484:setColor("#49244F");
    obj.rectangle484:setName("rectangle484");

    obj.edit186 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit186:setParent(obj.rectangle402);
    obj.edit186:setLeft(65);
    obj.edit186:setTop(1463);
    obj.edit186:setWidth(340);
    obj.edit186:setFontSize(18);
    obj.edit186:setHeight(30);
    obj.edit186:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit186, "fontStyle", "bold");
    obj.edit186:setTransparent(true);
    obj.edit186:setField("Magia19");
    obj.edit186:setName("edit186");

    obj.rectangle485 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle485:setParent(obj.rectangle402);
    obj.rectangle485:setLeft(60);
    obj.rectangle485:setTop(1536);
    obj.rectangle485:setWidth(350);
    obj.rectangle485:setHeight(1);
    obj.rectangle485:setColor("#49244F");
    obj.rectangle485:setName("rectangle485");

    obj.label185 = GUI.fromHandle(_obj_newObject("label"));
    obj.label185:setParent(obj.rectangle402);
    obj.label185:setLeft(70);
    obj.label185:setTop(1509);
    obj.label185:setWidth(280);
    obj.label185:setFontSize(18);
    obj.label185:setText("Tradição:");
    obj.label185:setFontColor("#49244F");
    lfm_setPropAsString(obj.label185, "fontStyle", "bold");
    obj.label185:setName("label185");

    obj.edit187 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit187:setParent(obj.rectangle402);
    obj.edit187:setLeft(150);
    obj.edit187:setTop(1503);
    obj.edit187:setWidth(260);
    obj.edit187:setFontSize(18);
    obj.edit187:setFontColor("#49244F");
    obj.edit187:setTransparent(true);
    obj.edit187:setField("tradicaoMagia19");
    obj.edit187:setName("edit187");

    obj.rectangle486 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle486:setParent(obj.rectangle402);
    obj.rectangle486:setLeft(60);
    obj.rectangle486:setTop(1571);
    obj.rectangle486:setWidth(350);
    obj.rectangle486:setHeight(1);
    obj.rectangle486:setColor("#49244F");
    obj.rectangle486:setName("rectangle486");

    obj.label186 = GUI.fromHandle(_obj_newObject("label"));
    obj.label186:setParent(obj.rectangle402);
    obj.label186:setLeft(70);
    obj.label186:setTop(1544);
    obj.label186:setWidth(280);
    obj.label186:setFontSize(18);
    obj.label186:setText("Alvo:");
    obj.label186:setFontColor("#49244F");
    lfm_setPropAsString(obj.label186, "fontStyle", "bold");
    obj.label186:setName("label186");

    obj.edit188 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit188:setParent(obj.rectangle402);
    obj.edit188:setLeft(115);
    obj.edit188:setTop(1538);
    obj.edit188:setWidth(295);
    obj.edit188:setFontSize(18);
    obj.edit188:setFontColor("#49244F");
    obj.edit188:setTransparent(true);
    obj.edit188:setField("alvoMagia19");
    obj.edit188:setName("edit188");

    obj.rectangle487 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle487:setParent(obj.rectangle402);
    obj.rectangle487:setLeft(60);
    obj.rectangle487:setTop(1606);
    obj.rectangle487:setWidth(350);
    obj.rectangle487:setHeight(3);
    obj.rectangle487:setColor("#49244F");
    obj.rectangle487:setName("rectangle487");

    obj.label187 = GUI.fromHandle(_obj_newObject("label"));
    obj.label187:setParent(obj.rectangle402);
    obj.label187:setLeft(70);
    obj.label187:setTop(1579);
    obj.label187:setWidth(280);
    obj.label187:setFontSize(18);
    obj.label187:setText("Duração:");
    obj.label187:setFontColor("#49244F");
    lfm_setPropAsString(obj.label187, "fontStyle", "bold");
    obj.label187:setName("label187");

    obj.edit189 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit189:setParent(obj.rectangle402);
    obj.edit189:setLeft(150);
    obj.edit189:setTop(1573);
    obj.edit189:setWidth(260);
    obj.edit189:setFontSize(18);
    obj.edit189:setFontColor("#49244F");
    obj.edit189:setTransparent(true);
    obj.edit189:setField("duracaoMagia19");
    obj.edit189:setName("edit189");

    obj.rectangle488 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle488:setParent(obj.rectangle402);
    obj.rectangle488:setLeft(60);
    obj.rectangle488:setTop(1606);
    obj.rectangle488:setWidth(350);
    obj.rectangle488:setHeight(125);
    obj.rectangle488:setColor("#49244F");
    obj.rectangle488:setName("rectangle488");

    obj.textEditor35 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor35:setParent(obj.rectangle402);
    obj.textEditor35:setLeft(65);
    obj.textEditor35:setTop(1611);
    obj.textEditor35:setWidth(340);
    obj.textEditor35:setHeight(115);
    obj.textEditor35:setFontColor("#D5D5D5");
    obj.textEditor35:setTransparent(true);
    obj.textEditor35:setField("descricaoMagia19");
    obj.textEditor35:setFontSize(18);
    obj.textEditor35:setName("textEditor35");

    obj.rectangle489 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle489:setParent(obj.rectangle402);
    obj.rectangle489:setLeft(60);
    obj.rectangle489:setTop(1731);
    obj.rectangle489:setWidth(350);
    obj.rectangle489:setHeight(3);
    obj.rectangle489:setColor("#49244F");
    obj.rectangle489:setName("rectangle489");

    obj.rectangle490 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle490:setParent(obj.rectangle402);
    obj.rectangle490:setLeft(64);
    obj.rectangle490:setTop(1738);
    obj.rectangle490:setWidth(135);
    obj.rectangle490:setHeight(29);
    obj.rectangle490:setColor("#49244F");
    obj.rectangle490:setHitTest(true);
    obj.rectangle490:setCursor("handPoint");
    obj.rectangle490:setName("rectangle490");

    obj.label188 = GUI.fromHandle(_obj_newObject("label"));
    obj.label188:setParent(obj.rectangle402);
    obj.label188:setLeft(70);
    obj.label188:setTop(1742);
    obj.label188:setWidth(280);
    obj.label188:setFontSize(18);
    obj.label188:setText("Conjurar Feitiço");
    obj.label188:setFontColor("#D5D5D5");
    obj.label188:setName("label188");

    obj.rectangle491 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle491:setParent(obj.rectangle402);
    obj.rectangle491:setLeft(324);
    obj.rectangle491:setTop(1738);
    obj.rectangle491:setWidth(29);
    obj.rectangle491:setHeight(29);
    obj.rectangle491:setColor("#49244F");
    obj.rectangle491:setCornerType("round");
    obj.rectangle491:setXradius(15);
    obj.rectangle491:setYradius(15);
    obj.rectangle491:setName("rectangle491");

    obj.edit190 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit190:setParent(obj.rectangle402);
    obj.edit190:setLeft(318);
    obj.edit190:setTop(1735);
    obj.edit190:setWidth(40);
    obj.edit190:setFontSize(18);
    obj.edit190:setHorzTextAlign("center");
    obj.edit190:setFontColor("#D5D5D5");
    obj.edit190:setTransparent(true);
    obj.edit190:setField("qtdMagia19");
    obj.edit190:setHitTest(true);
    obj.edit190:setCursor("handPoint");
    obj.edit190:setHint("Quantidade");
    obj.edit190:setName("edit190");

    obj.label189 = GUI.fromHandle(_obj_newObject("label"));
    obj.label189:setParent(obj.rectangle402);
    obj.label189:setLeft(360);
    obj.label189:setTop(1742);
    obj.label189:setWidth(280);
    obj.label189:setFontSize(18);
    obj.label189:setText("/");
    obj.label189:setFontColor("#49244F");
    obj.label189:setName("label189");

    obj.rectangle492 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle492:setParent(obj.rectangle402);
    obj.rectangle492:setLeft(374);
    obj.rectangle492:setTop(1736);
    obj.rectangle492:setWidth(29);
    obj.rectangle492:setHeight(29);
    obj.rectangle492:setColor("#49244F");
    obj.rectangle492:setCornerType("round");
    obj.rectangle492:setXradius(15);
    obj.rectangle492:setYradius(15);
    obj.rectangle492:setName("rectangle492");

    obj.edit191 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit191:setParent(obj.rectangle402);
    obj.edit191:setLeft(368);
    obj.edit191:setTop(1735);
    obj.edit191:setWidth(40);
    obj.edit191:setFontSize(18);
    obj.edit191:setHorzTextAlign("center");
    obj.edit191:setFontColor("#D5D5D5");
    obj.edit191:setTransparent(true);
    obj.edit191:setField("maxMagia19");
    obj.edit191:setHitTest(true);
    obj.edit191:setCursor("handPoint");
    obj.edit191:setHint("Total");
    obj.edit191:setName("edit191");

    obj.rectangle493 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle493:setParent(obj.rectangle402);
    obj.rectangle493:setLeft(434);
    obj.rectangle493:setTop(1455);
    obj.rectangle493:setWidth(350);
    obj.rectangle493:setHeight(318);
    obj.rectangle493:setColor("#D5D5D5");
    obj.rectangle493:setStrokeColor("#49244F");
    obj.rectangle493:setStrokeSize(3);
    obj.rectangle493:setName("rectangle493");

    obj.rectangle494 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle494:setParent(obj.rectangle402);
    obj.rectangle494:setLeft(434);
    obj.rectangle494:setTop(1455);
    obj.rectangle494:setWidth(350);
    obj.rectangle494:setHeight(50);
    obj.rectangle494:setColor("#49244F");
    obj.rectangle494:setName("rectangle494");

    obj.edit192 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit192:setParent(obj.rectangle402);
    obj.edit192:setLeft(439);
    obj.edit192:setTop(1463);
    obj.edit192:setWidth(340);
    obj.edit192:setFontSize(18);
    obj.edit192:setHeight(30);
    obj.edit192:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit192, "fontStyle", "bold");
    obj.edit192:setTransparent(true);
    obj.edit192:setField("Magia20");
    obj.edit192:setName("edit192");

    obj.rectangle495 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle495:setParent(obj.rectangle402);
    obj.rectangle495:setLeft(434);
    obj.rectangle495:setTop(1536);
    obj.rectangle495:setWidth(350);
    obj.rectangle495:setHeight(1);
    obj.rectangle495:setColor("#49244F");
    obj.rectangle495:setName("rectangle495");

    obj.label190 = GUI.fromHandle(_obj_newObject("label"));
    obj.label190:setParent(obj.rectangle402);
    obj.label190:setLeft(444);
    obj.label190:setTop(1509);
    obj.label190:setWidth(280);
    obj.label190:setFontSize(18);
    obj.label190:setText("Tradição:");
    obj.label190:setFontColor("#49244F");
    lfm_setPropAsString(obj.label190, "fontStyle", "bold");
    obj.label190:setName("label190");

    obj.edit193 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit193:setParent(obj.rectangle402);
    obj.edit193:setLeft(524);
    obj.edit193:setTop(1503);
    obj.edit193:setWidth(260);
    obj.edit193:setFontSize(18);
    obj.edit193:setFontColor("#49244F");
    obj.edit193:setTransparent(true);
    obj.edit193:setField("tradicaoMagia20");
    obj.edit193:setName("edit193");

    obj.rectangle496 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle496:setParent(obj.rectangle402);
    obj.rectangle496:setLeft(434);
    obj.rectangle496:setTop(1571);
    obj.rectangle496:setWidth(350);
    obj.rectangle496:setHeight(1);
    obj.rectangle496:setColor("#49244F");
    obj.rectangle496:setName("rectangle496");

    obj.label191 = GUI.fromHandle(_obj_newObject("label"));
    obj.label191:setParent(obj.rectangle402);
    obj.label191:setLeft(444);
    obj.label191:setTop(1544);
    obj.label191:setWidth(280);
    obj.label191:setFontSize(18);
    obj.label191:setText("Alvo:");
    obj.label191:setFontColor("#49244F");
    lfm_setPropAsString(obj.label191, "fontStyle", "bold");
    obj.label191:setName("label191");

    obj.edit194 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit194:setParent(obj.rectangle402);
    obj.edit194:setLeft(489);
    obj.edit194:setTop(1538);
    obj.edit194:setWidth(295);
    obj.edit194:setFontSize(18);
    obj.edit194:setFontColor("#49244F");
    obj.edit194:setTransparent(true);
    obj.edit194:setField("alvoMagia20");
    obj.edit194:setName("edit194");

    obj.rectangle497 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle497:setParent(obj.rectangle402);
    obj.rectangle497:setLeft(434);
    obj.rectangle497:setTop(1606);
    obj.rectangle497:setWidth(350);
    obj.rectangle497:setHeight(3);
    obj.rectangle497:setColor("#49244F");
    obj.rectangle497:setName("rectangle497");

    obj.label192 = GUI.fromHandle(_obj_newObject("label"));
    obj.label192:setParent(obj.rectangle402);
    obj.label192:setLeft(444);
    obj.label192:setTop(1579);
    obj.label192:setWidth(280);
    obj.label192:setFontSize(18);
    obj.label192:setText("Duração:");
    obj.label192:setFontColor("#49244F");
    lfm_setPropAsString(obj.label192, "fontStyle", "bold");
    obj.label192:setName("label192");

    obj.edit195 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit195:setParent(obj.rectangle402);
    obj.edit195:setLeft(524);
    obj.edit195:setTop(1573);
    obj.edit195:setWidth(260);
    obj.edit195:setFontSize(18);
    obj.edit195:setFontColor("#49244F");
    obj.edit195:setTransparent(true);
    obj.edit195:setField("duracaoMagia20");
    obj.edit195:setName("edit195");

    obj.rectangle498 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle498:setParent(obj.rectangle402);
    obj.rectangle498:setLeft(434);
    obj.rectangle498:setTop(1606);
    obj.rectangle498:setWidth(350);
    obj.rectangle498:setHeight(125);
    obj.rectangle498:setColor("#49244F");
    obj.rectangle498:setName("rectangle498");

    obj.textEditor36 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor36:setParent(obj.rectangle402);
    obj.textEditor36:setLeft(439);
    obj.textEditor36:setTop(1611);
    obj.textEditor36:setWidth(340);
    obj.textEditor36:setHeight(115);
    obj.textEditor36:setFontColor("#D5D5D5");
    obj.textEditor36:setTransparent(true);
    obj.textEditor36:setField("descricaoMagia20");
    obj.textEditor36:setFontSize(18);
    obj.textEditor36:setName("textEditor36");

    obj.rectangle499 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle499:setParent(obj.rectangle402);
    obj.rectangle499:setLeft(434);
    obj.rectangle499:setTop(1731);
    obj.rectangle499:setWidth(350);
    obj.rectangle499:setHeight(3);
    obj.rectangle499:setColor("#49244F");
    obj.rectangle499:setName("rectangle499");

    obj.rectangle500 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle500:setParent(obj.rectangle402);
    obj.rectangle500:setLeft(438);
    obj.rectangle500:setTop(1738);
    obj.rectangle500:setWidth(135);
    obj.rectangle500:setHeight(29);
    obj.rectangle500:setColor("#49244F");
    obj.rectangle500:setHitTest(true);
    obj.rectangle500:setCursor("handPoint");
    obj.rectangle500:setName("rectangle500");

    obj.label193 = GUI.fromHandle(_obj_newObject("label"));
    obj.label193:setParent(obj.rectangle402);
    obj.label193:setLeft(444);
    obj.label193:setTop(1742);
    obj.label193:setWidth(280);
    obj.label193:setFontSize(18);
    obj.label193:setText("Conjurar Feitiço");
    obj.label193:setFontColor("#D5D5D5");
    obj.label193:setName("label193");

    obj.rectangle501 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle501:setParent(obj.rectangle402);
    obj.rectangle501:setLeft(698);
    obj.rectangle501:setTop(1738);
    obj.rectangle501:setWidth(29);
    obj.rectangle501:setHeight(29);
    obj.rectangle501:setColor("#49244F");
    obj.rectangle501:setCornerType("round");
    obj.rectangle501:setXradius(15);
    obj.rectangle501:setYradius(15);
    obj.rectangle501:setName("rectangle501");

    obj.edit196 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit196:setParent(obj.rectangle402);
    obj.edit196:setLeft(692);
    obj.edit196:setTop(1735);
    obj.edit196:setWidth(40);
    obj.edit196:setFontSize(18);
    obj.edit196:setHorzTextAlign("center");
    obj.edit196:setFontColor("#D5D5D5");
    obj.edit196:setTransparent(true);
    obj.edit196:setField("qtdMagia20");
    obj.edit196:setHitTest(true);
    obj.edit196:setCursor("handPoint");
    obj.edit196:setHint("Quantidade");
    obj.edit196:setName("edit196");

    obj.label194 = GUI.fromHandle(_obj_newObject("label"));
    obj.label194:setParent(obj.rectangle402);
    obj.label194:setLeft(734);
    obj.label194:setTop(1742);
    obj.label194:setWidth(280);
    obj.label194:setFontSize(18);
    obj.label194:setText("/");
    obj.label194:setFontColor("#49244F");
    obj.label194:setName("label194");

    obj.rectangle502 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle502:setParent(obj.rectangle402);
    obj.rectangle502:setLeft(748);
    obj.rectangle502:setTop(1736);
    obj.rectangle502:setWidth(29);
    obj.rectangle502:setHeight(29);
    obj.rectangle502:setColor("#49244F");
    obj.rectangle502:setCornerType("round");
    obj.rectangle502:setXradius(15);
    obj.rectangle502:setYradius(15);
    obj.rectangle502:setName("rectangle502");

    obj.edit197 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit197:setParent(obj.rectangle402);
    obj.edit197:setLeft(743);
    obj.edit197:setTop(1735);
    obj.edit197:setWidth(40);
    obj.edit197:setFontSize(18);
    obj.edit197:setHorzTextAlign("center");
    obj.edit197:setFontColor("#D5D5D5");
    obj.edit197:setTransparent(true);
    obj.edit197:setField("maxMagia20");
    obj.edit197:setHitTest(true);
    obj.edit197:setCursor("handPoint");
    obj.edit197:setHint("Total");
    obj.edit197:setName("edit197");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.tab6);
    obj.layout10:setLeft(0);
    obj.layout10:setTop(10);
    obj.layout10:setWidth(815);
    obj.layout10:setHeight(825);
    obj.layout10:setName("layout10");

    obj.rectangle503 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle503:setParent(obj.layout10);
    obj.rectangle503:setLeft(0);
    obj.rectangle503:setTop(725);
    obj.rectangle503:setWidth(799);
    obj.rectangle503:setHeight(105);
    obj.rectangle503:setColor("#D5D5D5");
    obj.rectangle503:setName("rectangle503");

    obj.rectangle504 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle504:setParent(obj.layout10);
    obj.rectangle504:setLeft(65);
    obj.rectangle504:setTop(730);
    obj.rectangle504:setWidth(712);
    obj.rectangle504:setHeight(1);
    obj.rectangle504:setColor("#49244F");
    obj.rectangle504:setName("rectangle504");

    obj.rectangle505 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle505:setParent(obj.layout10);
    obj.rectangle505:setLeft(65);
    obj.rectangle505:setTop(735);
    obj.rectangle505:setWidth(712);
    obj.rectangle505:setHeight(1);
    obj.rectangle505:setColor("#49244F");
    obj.rectangle505:setName("rectangle505");

    obj.image49 = GUI.fromHandle(_obj_newObject("image"));
    obj.image49:setParent(obj.layout10);
    obj.image49:setLeft(270);
    obj.image49:setTop(750);
    obj.image49:setWidth(288);
    obj.image49:setHeight(56);
    obj.image49:setSRC("/img/livrosMagicos.png");
    obj.image49:setName("image49");

    obj.rectangle506 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle506:setParent(obj.layout10);
    obj.rectangle506:setLeft(0);
    obj.rectangle506:setTop(0);
    obj.rectangle506:setWidth(799);
    obj.rectangle506:setHeight(5);
    obj.rectangle506:setColor("#D5D5D5");
    obj.rectangle506:setName("rectangle506");

    obj.image50 = GUI.fromHandle(_obj_newObject("image"));
    obj.image50:setParent(obj.layout10);
    obj.image50:setLeft(0);
    obj.image50:setTop(0);
    obj.image50:setWidth(799);
    obj.image50:setHeight(825);
    obj.image50:setSRC("/img/borda.png");
    obj.image50:setName("image50");

    obj.image51 = GUI.fromHandle(_obj_newObject("image"));
    obj.image51:setParent(obj.tab6);
    obj.image51:setLeft(69);
    obj.image51:setTop(875);
    obj.image51:setWidth(676);
    obj.image51:setHeight(194);
    obj.image51:setSRC("/img/logo.png");
    obj.image51:setName("image51");

    obj.tab7 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab7:setParent(obj.tabControl1);
    obj.tab7:setTitle("Aflições");
    obj.tab7:setName("tab7");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.tab7);
    obj.layout11:setLeft(0);
    obj.layout11:setTop(10);
    obj.layout11:setWidth(815);
    obj.layout11:setHeight(825);
    obj.layout11:setName("layout11");

    obj.rectangle507 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle507:setParent(obj.layout11);
    obj.rectangle507:setLeft(0);
    obj.rectangle507:setTop(0);
    obj.rectangle507:setWidth(799);
    obj.rectangle507:setHeight(825);
    obj.rectangle507:setColor("#D5D5D5");
    obj.rectangle507:setName("rectangle507");

    obj.image52 = GUI.fromHandle(_obj_newObject("image"));
    obj.image52:setParent(obj.rectangle507);
    obj.image52:setLeft(0);
    obj.image52:setTop(0);
    obj.image52:setWidth(799);
    obj.image52:setHeight(825);
    obj.image52:setSRC("/img/borda.png");
    obj.image52:setName("image52");

    obj.rectangle508 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle508:setParent(obj.rectangle507);
    obj.rectangle508:setLeft(60);
    obj.rectangle508:setTop(95);
    obj.rectangle508:setWidth(720);
    obj.rectangle508:setHeight(575);
    obj.rectangle508:setColor("#D5D5D5");
    obj.rectangle508:setStrokeColor("#49244F");
    obj.rectangle508:setStrokeSize(3);
    obj.rectangle508:setName("rectangle508");

    obj.rectangle509 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle509:setParent(obj.rectangle507);
    obj.rectangle509:setLeft(418);
    obj.rectangle509:setTop(130);
    obj.rectangle509:setWidth(3);
    obj.rectangle509:setHeight(100);
    obj.rectangle509:setColor("#49244F");
    obj.rectangle509:setName("rectangle509");

    obj.rectangle510 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle510:setParent(obj.rectangle507);
    obj.rectangle510:setLeft(80);
    obj.rectangle510:setTop(260);
    obj.rectangle510:setWidth(680);
    obj.rectangle510:setHeight(3);
    obj.rectangle510:setColor("#49244F");
    obj.rectangle510:setName("rectangle510");

    obj.label195 = GUI.fromHandle(_obj_newObject("label"));
    obj.label195:setParent(obj.rectangle507);
    obj.label195:setLeft(325);
    obj.label195:setTop(60);
    obj.label195:setWidth(180);
    obj.label195:setFontSize(24);
    obj.label195:setHorzTextAlign("center");
    obj.label195:setText("AFLIÇÕES");
    obj.label195:setFontColor("#49244F");
    lfm_setPropAsString(obj.label195, "fontStyle", "bold");
    obj.label195:setName("label195");

    obj.rectangle511 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle511:setParent(obj.rectangle507);
    obj.rectangle511:setLeft(80);
    obj.rectangle511:setTop(130);
    obj.rectangle511:setWidth(320);
    obj.rectangle511:setHeight(40);
    obj.rectangle511:setColor("#49244F");
    obj.rectangle511:setName("rectangle511");

    obj.label196 = GUI.fromHandle(_obj_newObject("label"));
    obj.label196:setParent(obj.rectangle507);
    obj.label196:setLeft(75);
    obj.label196:setTop(140);
    obj.label196:setWidth(210);
    obj.label196:setFontSize(20);
    obj.label196:setHorzTextAlign("center");
    obj.label196:setText("Força Debilitada");
    obj.label196:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label196, "fontStyle", "bold");
    obj.label196:setHitTest(true);
    obj.label196:setCursor("handPoint");
    obj.label196:setName("label196");

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.rectangle507);
    obj.checkBox1:setField("ForçaDebilitada");
    obj.checkBox1:setLeft(370);
    obj.checkBox1:setTop(142);
    obj.checkBox1:setName("checkBox1");

    obj.rectangle512 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle512:setParent(obj.rectangle507);
    obj.rectangle512:setLeft(440);
    obj.rectangle512:setTop(130);
    obj.rectangle512:setWidth(320);
    obj.rectangle512:setHeight(40);
    obj.rectangle512:setColor("#49244F");
    obj.rectangle512:setName("rectangle512");

    obj.label197 = GUI.fromHandle(_obj_newObject("label"));
    obj.label197:setParent(obj.rectangle507);
    obj.label197:setLeft(455);
    obj.label197:setTop(140);
    obj.label197:setWidth(210);
    obj.label197:setFontSize(20);
    obj.label197:setHorzTextAlign("center");
    obj.label197:setText("Agilidade Debilitada");
    obj.label197:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label197, "fontStyle", "bold");
    obj.label197:setHitTest(true);
    obj.label197:setCursor("handPoint");
    obj.label197:setName("label197");

    obj.checkBox2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.rectangle507);
    obj.checkBox2:setField("AgilidadeDebilitada");
    obj.checkBox2:setLeft(730);
    obj.checkBox2:setTop(142);
    obj.checkBox2:setName("checkBox2");

    obj.rectangle513 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle513:setParent(obj.rectangle507);
    obj.rectangle513:setLeft(80);
    obj.rectangle513:setTop(190);
    obj.rectangle513:setWidth(320);
    obj.rectangle513:setHeight(40);
    obj.rectangle513:setColor("#49244F");
    obj.rectangle513:setName("rectangle513");

    obj.label198 = GUI.fromHandle(_obj_newObject("label"));
    obj.label198:setParent(obj.rectangle507);
    obj.label198:setLeft(90);
    obj.label198:setTop(200);
    obj.label198:setWidth(210);
    obj.label198:setFontSize(20);
    obj.label198:setHorzTextAlign("center");
    obj.label198:setText("Intelecto Debilitado");
    obj.label198:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label198, "fontStyle", "bold");
    obj.label198:setHitTest(true);
    obj.label198:setCursor("handPoint");
    obj.label198:setName("label198");

    obj.checkBox3 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox3:setParent(obj.rectangle507);
    obj.checkBox3:setField("IntelectoDebilitado");
    obj.checkBox3:setLeft(370);
    obj.checkBox3:setTop(202);
    obj.checkBox3:setName("checkBox3");

    obj.rectangle514 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle514:setParent(obj.rectangle507);
    obj.rectangle514:setLeft(440);
    obj.rectangle514:setTop(190);
    obj.rectangle514:setWidth(320);
    obj.rectangle514:setHeight(40);
    obj.rectangle514:setColor("#49244F");
    obj.rectangle514:setName("rectangle514");

    obj.label199 = GUI.fromHandle(_obj_newObject("label"));
    obj.label199:setParent(obj.rectangle507);
    obj.label199:setLeft(450);
    obj.label199:setTop(200);
    obj.label199:setWidth(210);
    obj.label199:setFontSize(20);
    obj.label199:setHorzTextAlign("center");
    obj.label199:setText("Vontade Debilitada");
    obj.label199:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label199, "fontStyle", "bold");
    obj.label199:setHitTest(true);
    obj.label199:setCursor("handPoint");
    obj.label199:setName("label199");

    obj.checkBox4 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox4:setParent(obj.rectangle507);
    obj.checkBox4:setField("VontadeDebilitada");
    obj.checkBox4:setLeft(730);
    obj.checkBox4:setTop(202);
    obj.checkBox4:setName("checkBox4");

    obj.rectangle515 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle515:setParent(obj.rectangle507);
    obj.rectangle515:setLeft(80);
    obj.rectangle515:setTop(295);
    obj.rectangle515:setWidth(200);
    obj.rectangle515:setHeight(40);
    obj.rectangle515:setColor("#49244F");
    obj.rectangle515:setName("rectangle515");

    obj.label200 = GUI.fromHandle(_obj_newObject("label"));
    obj.label200:setParent(obj.rectangle507);
    obj.label200:setLeft(85);
    obj.label200:setTop(305);
    obj.label200:setWidth(150);
    obj.label200:setFontSize(20);
    obj.label200:setHorzTextAlign("center");
    obj.label200:setText("Adormecido");
    obj.label200:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label200, "fontStyle", "bold");
    obj.label200:setHitTest(true);
    obj.label200:setCursor("handPoint");
    obj.label200:setName("label200");

    obj.checkBox5 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox5:setParent(obj.rectangle507);
    obj.checkBox5:setField("Adormecido");
    obj.checkBox5:setLeft(250);
    obj.checkBox5:setTop(307);
    obj.checkBox5:setName("checkBox5");

    obj.rectangle516 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle516:setParent(obj.rectangle507);
    obj.rectangle516:setLeft(322);
    obj.rectangle516:setTop(295);
    obj.rectangle516:setWidth(200);
    obj.rectangle516:setHeight(40);
    obj.rectangle516:setColor("#49244F");
    obj.rectangle516:setName("rectangle516");

    obj.label201 = GUI.fromHandle(_obj_newObject("label"));
    obj.label201:setParent(obj.rectangle507);
    obj.label201:setLeft(327);
    obj.label201:setTop(305);
    obj.label201:setWidth(150);
    obj.label201:setFontSize(20);
    obj.label201:setHorzTextAlign("center");
    obj.label201:setText("Amaldiçoado");
    obj.label201:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label201, "fontStyle", "bold");
    obj.label201:setHitTest(true);
    obj.label201:setCursor("handPoint");
    obj.label201:setName("label201");

    obj.checkBox6 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox6:setParent(obj.rectangle507);
    obj.checkBox6:setField("Amaldicoado");
    obj.checkBox6:setLeft(492);
    obj.checkBox6:setTop(307);
    obj.checkBox6:setName("checkBox6");

    obj.rectangle517 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle517:setParent(obj.rectangle507);
    obj.rectangle517:setLeft(560);
    obj.rectangle517:setTop(295);
    obj.rectangle517:setWidth(200);
    obj.rectangle517:setHeight(40);
    obj.rectangle517:setColor("#49244F");
    obj.rectangle517:setName("rectangle517");

    obj.label202 = GUI.fromHandle(_obj_newObject("label"));
    obj.label202:setParent(obj.rectangle507);
    obj.label202:setLeft(565);
    obj.label202:setTop(305);
    obj.label202:setWidth(150);
    obj.label202:setFontSize(20);
    obj.label202:setHorzTextAlign("center");
    obj.label202:setText("Amedrontado");
    obj.label202:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label202, "fontStyle", "bold");
    obj.label202:setHitTest(true);
    obj.label202:setCursor("handPoint");
    obj.label202:setName("label202");

    obj.checkBox7 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox7:setParent(obj.rectangle507);
    obj.checkBox7:setField("Amedrontado");
    obj.checkBox7:setLeft(730);
    obj.checkBox7:setTop(307);
    obj.checkBox7:setName("checkBox7");

    obj.rectangle518 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle518:setParent(obj.rectangle507);
    obj.rectangle518:setLeft(80);
    obj.rectangle518:setTop(355);
    obj.rectangle518:setWidth(200);
    obj.rectangle518:setHeight(40);
    obj.rectangle518:setColor("#49244F");
    obj.rectangle518:setName("rectangle518");

    obj.label203 = GUI.fromHandle(_obj_newObject("label"));
    obj.label203:setParent(obj.rectangle507);
    obj.label203:setLeft(90);
    obj.label203:setTop(365);
    obj.label203:setWidth(120);
    obj.label203:setFontSize(20);
    obj.label203:setHorzTextAlign("center");
    obj.label203:setText("Atordoado");
    obj.label203:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label203, "fontStyle", "bold");
    obj.label203:setHitTest(true);
    obj.label203:setCursor("handPoint");
    obj.label203:setName("label203");

    obj.checkBox8 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox8:setParent(obj.rectangle507);
    obj.checkBox8:setField("Atordoado");
    obj.checkBox8:setLeft(250);
    obj.checkBox8:setTop(367);
    obj.checkBox8:setName("checkBox8");

    obj.rectangle519 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle519:setParent(obj.rectangle507);
    obj.rectangle519:setLeft(322);
    obj.rectangle519:setTop(355);
    obj.rectangle519:setWidth(200);
    obj.rectangle519:setHeight(40);
    obj.rectangle519:setColor("#49244F");
    obj.rectangle519:setName("rectangle519");

    obj.label204 = GUI.fromHandle(_obj_newObject("label"));
    obj.label204:setParent(obj.rectangle507);
    obj.label204:setLeft(327);
    obj.label204:setTop(365);
    obj.label204:setWidth(80);
    obj.label204:setFontSize(20);
    obj.label204:setHorzTextAlign("center");
    obj.label204:setText("Caído");
    obj.label204:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label204, "fontStyle", "bold");
    obj.label204:setHitTest(true);
    obj.label204:setCursor("handPoint");
    obj.label204:setName("label204");

    obj.checkBox9 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox9:setParent(obj.rectangle507);
    obj.checkBox9:setField("Caido");
    obj.checkBox9:setLeft(492);
    obj.checkBox9:setTop(367);
    obj.checkBox9:setName("checkBox9");

    obj.rectangle520 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle520:setParent(obj.rectangle507);
    obj.rectangle520:setLeft(560);
    obj.rectangle520:setTop(355);
    obj.rectangle520:setWidth(200);
    obj.rectangle520:setHeight(40);
    obj.rectangle520:setColor("#49244F");
    obj.rectangle520:setName("rectangle520");

    obj.label205 = GUI.fromHandle(_obj_newObject("label"));
    obj.label205:setParent(obj.rectangle507);
    obj.label205:setLeft(560);
    obj.label205:setTop(365);
    obj.label205:setWidth(80);
    obj.label205:setFontSize(20);
    obj.label205:setHorzTextAlign("center");
    obj.label205:setText("Cego");
    obj.label205:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label205, "fontStyle", "bold");
    obj.label205:setHitTest(true);
    obj.label205:setCursor("handPoint");
    obj.label205:setName("label205");

    obj.checkBox10 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox10:setParent(obj.rectangle507);
    obj.checkBox10:setField("Cego");
    obj.checkBox10:setLeft(730);
    obj.checkBox10:setTop(367);
    obj.checkBox10:setName("checkBox10");

    obj.rectangle521 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle521:setParent(obj.rectangle507);
    obj.rectangle521:setLeft(80);
    obj.rectangle521:setTop(415);
    obj.rectangle521:setWidth(200);
    obj.rectangle521:setHeight(40);
    obj.rectangle521:setColor("#49244F");
    obj.rectangle521:setName("rectangle521");

    obj.label206 = GUI.fromHandle(_obj_newObject("label"));
    obj.label206:setParent(obj.rectangle507);
    obj.label206:setLeft(80);
    obj.label206:setTop(425);
    obj.label206:setWidth(120);
    obj.label206:setFontSize(20);
    obj.label206:setHorzTextAlign("center");
    obj.label206:setText("Confuso");
    obj.label206:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label206, "fontStyle", "bold");
    obj.label206:setHitTest(true);
    obj.label206:setCursor("handPoint");
    obj.label206:setName("label206");

    obj.checkBox11 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox11:setParent(obj.rectangle507);
    obj.checkBox11:setField("Confuso");
    obj.checkBox11:setLeft(250);
    obj.checkBox11:setTop(427);
    obj.checkBox11:setName("checkBox11");

    obj.rectangle522 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle522:setParent(obj.rectangle507);
    obj.rectangle522:setLeft(322);
    obj.rectangle522:setTop(415);
    obj.rectangle522:setWidth(200);
    obj.rectangle522:setHeight(40);
    obj.rectangle522:setColor("#49244F");
    obj.rectangle522:setName("rectangle522");

    obj.label207 = GUI.fromHandle(_obj_newObject("label"));
    obj.label207:setParent(obj.rectangle507);
    obj.label207:setLeft(332);
    obj.label207:setTop(425);
    obj.label207:setWidth(120);
    obj.label207:setFontSize(20);
    obj.label207:setHorzTextAlign("center");
    obj.label207:setText("Controlado");
    obj.label207:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label207, "fontStyle", "bold");
    obj.label207:setHitTest(true);
    obj.label207:setCursor("handPoint");
    obj.label207:setName("label207");

    obj.checkBox12 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox12:setParent(obj.rectangle507);
    obj.checkBox12:setField("Controlado");
    obj.checkBox12:setLeft(492);
    obj.checkBox12:setTop(427);
    obj.checkBox12:setName("checkBox12");

    obj.rectangle523 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle523:setParent(obj.rectangle507);
    obj.rectangle523:setLeft(560);
    obj.rectangle523:setTop(415);
    obj.rectangle523:setWidth(200);
    obj.rectangle523:setHeight(40);
    obj.rectangle523:setColor("#49244F");
    obj.rectangle523:setName("rectangle523");

    obj.label208 = GUI.fromHandle(_obj_newObject("label"));
    obj.label208:setParent(obj.rectangle507);
    obj.label208:setLeft(563);
    obj.label208:setTop(425);
    obj.label208:setWidth(150);
    obj.label208:setFontSize(20);
    obj.label208:setHorzTextAlign("center");
    obj.label208:setText("Enfraquecido");
    obj.label208:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label208, "fontStyle", "bold");
    obj.label208:setHitTest(true);
    obj.label208:setCursor("handPoint");
    obj.label208:setName("label208");

    obj.checkBox13 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox13:setParent(obj.rectangle507);
    obj.checkBox13:setField("Enfraquecido");
    obj.checkBox13:setLeft(730);
    obj.checkBox13:setTop(427);
    obj.checkBox13:setName("checkBox13");

    obj.rectangle524 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle524:setParent(obj.rectangle507);
    obj.rectangle524:setLeft(80);
    obj.rectangle524:setTop(475);
    obj.rectangle524:setWidth(200);
    obj.rectangle524:setHeight(40);
    obj.rectangle524:setColor("#49244F");
    obj.rectangle524:setName("rectangle524");

    obj.label209 = GUI.fromHandle(_obj_newObject("label"));
    obj.label209:setParent(obj.rectangle507);
    obj.label209:setLeft(97);
    obj.label209:setTop(485);
    obj.label209:setWidth(120);
    obj.label209:setFontSize(20);
    obj.label209:setHorzTextAlign("center");
    obj.label209:setText("Envenenado");
    obj.label209:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label209, "fontStyle", "bold");
    obj.label209:setHitTest(true);
    obj.label209:setCursor("handPoint");
    obj.label209:setName("label209");

    obj.checkBox14 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox14:setParent(obj.rectangle507);
    obj.checkBox14:setField("Envenenado");
    obj.checkBox14:setLeft(250);
    obj.checkBox14:setTop(487);
    obj.checkBox14:setName("checkBox14");

    obj.rectangle525 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle525:setParent(obj.rectangle507);
    obj.rectangle525:setLeft(322);
    obj.rectangle525:setTop(475);
    obj.rectangle525:setWidth(200);
    obj.rectangle525:setHeight(40);
    obj.rectangle525:setColor("#49244F");
    obj.rectangle525:setName("rectangle525");

    obj.label210 = GUI.fromHandle(_obj_newObject("label"));
    obj.label210:setParent(obj.rectangle507);
    obj.label210:setLeft(330);
    obj.label210:setTop(485);
    obj.label210:setWidth(80);
    obj.label210:setFontSize(20);
    obj.label210:setHorzTextAlign("center");
    obj.label210:setText("Ferido");
    obj.label210:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label210, "fontStyle", "bold");
    obj.label210:setHitTest(true);
    obj.label210:setCursor("handPoint");
    obj.label210:setName("label210");

    obj.checkBox15 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox15:setParent(obj.rectangle507);
    obj.checkBox15:setField("Ferido");
    obj.checkBox15:setLeft(492);
    obj.checkBox15:setTop(487);
    obj.checkBox15:setName("checkBox15");

    obj.rectangle526 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle526:setParent(obj.rectangle507);
    obj.rectangle526:setLeft(560);
    obj.rectangle526:setTop(475);
    obj.rectangle526:setWidth(200);
    obj.rectangle526:setHeight(40);
    obj.rectangle526:setColor("#49244F");
    obj.rectangle526:setName("rectangle526");

    obj.label211 = GUI.fromHandle(_obj_newObject("label"));
    obj.label211:setParent(obj.rectangle507);
    obj.label211:setLeft(567);
    obj.label211:setTop(485);
    obj.label211:setWidth(140);
    obj.label211:setFontSize(20);
    obj.label211:setHorzTextAlign("center");
    obj.label211:setText("Incapacitado");
    obj.label211:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label211, "fontStyle", "bold");
    obj.label211:setHitTest(true);
    obj.label211:setCursor("handPoint");
    obj.label211:setName("label211");

    obj.checkBox16 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox16:setParent(obj.rectangle507);
    obj.checkBox16:setField("Incapacitado");
    obj.checkBox16:setLeft(730);
    obj.checkBox16:setTop(487);
    obj.checkBox16:setName("checkBox16");

    obj.rectangle527 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle527:setParent(obj.rectangle507);
    obj.rectangle527:setLeft(80);
    obj.rectangle527:setTop(535);
    obj.rectangle527:setWidth(200);
    obj.rectangle527:setHeight(40);
    obj.rectangle527:setColor("#49244F");
    obj.rectangle527:setName("rectangle527");

    obj.label212 = GUI.fromHandle(_obj_newObject("label"));
    obj.label212:setParent(obj.rectangle507);
    obj.label212:setLeft(93);
    obj.label212:setTop(545);
    obj.label212:setWidth(120);
    obj.label212:setFontSize(20);
    obj.label212:setHorzTextAlign("center");
    obj.label212:setText("Incendiado");
    obj.label212:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label212, "fontStyle", "bold");
    obj.label212:setHitTest(true);
    obj.label212:setCursor("handPoint");
    obj.label212:setName("label212");

    obj.checkBox17 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox17:setParent(obj.rectangle507);
    obj.checkBox17:setField("Incendiado");
    obj.checkBox17:setLeft(250);
    obj.checkBox17:setTop(547);
    obj.checkBox17:setName("checkBox17");

    obj.rectangle528 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle528:setParent(obj.rectangle507);
    obj.rectangle528:setLeft(322);
    obj.rectangle528:setTop(535);
    obj.rectangle528:setWidth(200);
    obj.rectangle528:setHeight(40);
    obj.rectangle528:setColor("#49244F");
    obj.rectangle528:setName("rectangle528");

    obj.label213 = GUI.fromHandle(_obj_newObject("label"));
    obj.label213:setParent(obj.rectangle507);
    obj.label213:setLeft(340);
    obj.label213:setTop(545);
    obj.label213:setWidth(120);
    obj.label213:setFontSize(20);
    obj.label213:setHorzTextAlign("center");
    obj.label213:setText("Inconsciente");
    obj.label213:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label213, "fontStyle", "bold");
    obj.label213:setHitTest(true);
    obj.label213:setCursor("handPoint");
    obj.label213:setName("label213");

    obj.checkBox18 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox18:setParent(obj.rectangle507);
    obj.checkBox18:setField("Inconsciente");
    obj.checkBox18:setLeft(492);
    obj.checkBox18:setTop(547);
    obj.checkBox18:setName("checkBox18");

    obj.rectangle529 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle529:setParent(obj.rectangle507);
    obj.rectangle529:setLeft(560);
    obj.rectangle529:setTop(535);
    obj.rectangle529:setWidth(200);
    obj.rectangle529:setHeight(40);
    obj.rectangle529:setColor("#49244F");
    obj.rectangle529:setName("rectangle529");

    obj.label214 = GUI.fromHandle(_obj_newObject("label"));
    obj.label214:setParent(obj.rectangle507);
    obj.label214:setLeft(570);
    obj.label214:setTop(545);
    obj.label214:setWidth(70);
    obj.label214:setFontSize(20);
    obj.label214:setHorzTextAlign("center");
    obj.label214:setText("Lento");
    obj.label214:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label214, "fontStyle", "bold");
    obj.label214:setHitTest(true);
    obj.label214:setCursor("handPoint");
    obj.label214:setName("label214");

    obj.checkBox19 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox19:setParent(obj.rectangle507);
    obj.checkBox19:setField("Lento");
    obj.checkBox19:setLeft(730);
    obj.checkBox19:setTop(547);
    obj.checkBox19:setName("checkBox19");

    obj.rectangle530 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle530:setParent(obj.rectangle507);
    obj.rectangle530:setLeft(80);
    obj.rectangle530:setTop(595);
    obj.rectangle530:setWidth(200);
    obj.rectangle530:setHeight(40);
    obj.rectangle530:setColor("#49244F");
    obj.rectangle530:setName("rectangle530");

    obj.label215 = GUI.fromHandle(_obj_newObject("label"));
    obj.label215:setParent(obj.rectangle507);
    obj.label215:setLeft(95);
    obj.label215:setTop(605);
    obj.label215:setWidth(120);
    obj.label215:setFontSize(20);
    obj.label215:setHorzTextAlign("center");
    obj.label215:setText("Restringido");
    obj.label215:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label215, "fontStyle", "bold");
    obj.label215:setHitTest(true);
    obj.label215:setCursor("handPoint");
    obj.label215:setName("label215");

    obj.checkBox20 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox20:setParent(obj.rectangle507);
    obj.checkBox20:setField("Restringido");
    obj.checkBox20:setLeft(250);
    obj.checkBox20:setTop(607);
    obj.checkBox20:setName("checkBox20");

    obj.rectangle531 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle531:setParent(obj.rectangle507);
    obj.rectangle531:setLeft(322);
    obj.rectangle531:setTop(595);
    obj.rectangle531:setWidth(200);
    obj.rectangle531:setHeight(40);
    obj.rectangle531:setColor("#49244F");
    obj.rectangle531:setName("rectangle531");

    obj.label216 = GUI.fromHandle(_obj_newObject("label"));
    obj.label216:setParent(obj.rectangle507);
    obj.label216:setLeft(334);
    obj.label216:setTop(605);
    obj.label216:setWidth(70);
    obj.label216:setFontSize(20);
    obj.label216:setHorzTextAlign("center");
    obj.label216:setText("Surdo");
    obj.label216:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label216, "fontStyle", "bold");
    obj.label216:setHitTest(true);
    obj.label216:setCursor("handPoint");
    obj.label216:setName("label216");

    obj.checkBox21 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox21:setParent(obj.rectangle507);
    obj.checkBox21:setField("Surdo");
    obj.checkBox21:setLeft(492);
    obj.checkBox21:setTop(607);
    obj.checkBox21:setName("checkBox21");

    obj.rectangle532 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle532:setParent(obj.rectangle507);
    obj.rectangle532:setLeft(560);
    obj.rectangle532:setTop(595);
    obj.rectangle532:setWidth(200);
    obj.rectangle532:setHeight(40);
    obj.rectangle532:setColor("#49244F");
    obj.rectangle532:setName("rectangle532");

    obj.label217 = GUI.fromHandle(_obj_newObject("label"));
    obj.label217:setParent(obj.rectangle507);
    obj.label217:setLeft(573);
    obj.label217:setTop(605);
    obj.label217:setWidth(110);
    obj.label217:setFontSize(20);
    obj.label217:setHorzTextAlign("center");
    obj.label217:setText("Vulnerável");
    obj.label217:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label217, "fontStyle", "bold");
    obj.label217:setHitTest(true);
    obj.label217:setCursor("handPoint");
    obj.label217:setName("label217");

    obj.checkBox22 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox22:setParent(obj.rectangle507);
    obj.checkBox22:setField("Vulnerável");
    obj.checkBox22:setLeft(730);
    obj.checkBox22:setTop(607);
    obj.checkBox22:setName("checkBox22");

    obj.rectangle533 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle533:setParent(obj.rectangle507);
    obj.rectangle533:setLeft(65);
    obj.rectangle533:setTop(690);
    obj.rectangle533:setWidth(712);
    obj.rectangle533:setHeight(1);
    obj.rectangle533:setColor("#49244F");
    obj.rectangle533:setName("rectangle533");

    obj.rectangle534 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle534:setParent(obj.rectangle507);
    obj.rectangle534:setLeft(65);
    obj.rectangle534:setTop(695);
    obj.rectangle534:setWidth(712);
    obj.rectangle534:setHeight(1);
    obj.rectangle534:setColor("#49244F");
    obj.rectangle534:setName("rectangle534");

    obj.rectangle535 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle535:setParent(obj.rectangle507);
    obj.rectangle535:setLeft(65);
    obj.rectangle535:setTop(700);
    obj.rectangle535:setWidth(712);
    obj.rectangle535:setHeight(1);
    obj.rectangle535:setColor("#49244F");
    obj.rectangle535:setName("rectangle535");

    obj.rectangle536 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle536:setParent(obj.rectangle507);
    obj.rectangle536:setLeft(65);
    obj.rectangle536:setTop(705);
    obj.rectangle536:setWidth(712);
    obj.rectangle536:setHeight(1);
    obj.rectangle536:setColor("#49244F");
    obj.rectangle536:setName("rectangle536");

    obj.rectangle537 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle537:setParent(obj.rectangle507);
    obj.rectangle537:setLeft(65);
    obj.rectangle537:setTop(710);
    obj.rectangle537:setWidth(712);
    obj.rectangle537:setHeight(1);
    obj.rectangle537:setColor("#49244F");
    obj.rectangle537:setName("rectangle537");

    obj.rectangle538 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle538:setParent(obj.rectangle507);
    obj.rectangle538:setLeft(65);
    obj.rectangle538:setTop(715);
    obj.rectangle538:setWidth(712);
    obj.rectangle538:setHeight(1);
    obj.rectangle538:setColor("#49244F");
    obj.rectangle538:setName("rectangle538");

    obj.rectangle539 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle539:setParent(obj.rectangle507);
    obj.rectangle539:setLeft(65);
    obj.rectangle539:setTop(720);
    obj.rectangle539:setWidth(712);
    obj.rectangle539:setHeight(1);
    obj.rectangle539:setColor("#49244F");
    obj.rectangle539:setName("rectangle539");

    obj.rectangle540 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle540:setParent(obj.rectangle507);
    obj.rectangle540:setLeft(65);
    obj.rectangle540:setTop(725);
    obj.rectangle540:setWidth(712);
    obj.rectangle540:setHeight(1);
    obj.rectangle540:setColor("#49244F");
    obj.rectangle540:setName("rectangle540");

    obj.rectangle541 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle541:setParent(obj.rectangle507);
    obj.rectangle541:setLeft(65);
    obj.rectangle541:setTop(730);
    obj.rectangle541:setWidth(712);
    obj.rectangle541:setHeight(1);
    obj.rectangle541:setColor("#49244F");
    obj.rectangle541:setName("rectangle541");

    obj.rectangle542 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle542:setParent(obj.rectangle507);
    obj.rectangle542:setLeft(65);
    obj.rectangle542:setTop(735);
    obj.rectangle542:setWidth(712);
    obj.rectangle542:setHeight(1);
    obj.rectangle542:setColor("#49244F");
    obj.rectangle542:setName("rectangle542");

    obj.image53 = GUI.fromHandle(_obj_newObject("image"));
    obj.image53:setParent(obj.rectangle507);
    obj.image53:setLeft(83);
    obj.image53:setTop(755);
    obj.image53:setWidth(672);
    obj.image53:setHeight(65);
    obj.image53:setSRC("/img/dragao.png");
    obj.image53:setName("image53");

    obj.image54 = GUI.fromHandle(_obj_newObject("image"));
    obj.image54:setParent(obj.tab7);
    obj.image54:setLeft(69);
    obj.image54:setTop(875);
    obj.image54:setWidth(676);
    obj.image54:setHeight(194);
    obj.image54:setSRC("/img/logo.png");
    obj.image54:setName("image54");

    obj.tab8 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab8:setParent(obj.tabControl1);
    obj.tab8:setTitle("Anotações");
    obj.tab8:setName("tab8");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.tab8);
    obj.layout12:setLeft(0);
    obj.layout12:setTop(10);
    obj.layout12:setWidth(799);
    obj.layout12:setHeight(825);
    obj.layout12:setName("layout12");

    obj.rectangle543 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle543:setParent(obj.layout12);
    obj.rectangle543:setLeft(0);
    obj.rectangle543:setTop(0);
    obj.rectangle543:setWidth(799);
    obj.rectangle543:setHeight(825);
    obj.rectangle543:setColor("#D5D5D5");
    obj.rectangle543:setName("rectangle543");

    obj.rectangle544 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle544:setParent(obj.rectangle543);
    obj.rectangle544:setLeft(60);
    obj.rectangle544:setTop(55);
    obj.rectangle544:setWidth(720);
    obj.rectangle544:setHeight(755);
    obj.rectangle544:setColor("#D5D5D5");
    obj.rectangle544:setStrokeColor("#49244F");
    obj.rectangle544:setStrokeSize(3);
    obj.rectangle544:setName("rectangle544");

    obj.rectangle545 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle545:setParent(obj.rectangle543);
    obj.rectangle545:setLeft(60);
    obj.rectangle545:setTop(55);
    obj.rectangle545:setWidth(720);
    obj.rectangle545:setHeight(50);
    obj.rectangle545:setColor("#49244F");
    obj.rectangle545:setName("rectangle545");

    obj.label218 = GUI.fromHandle(_obj_newObject("label"));
    obj.label218:setParent(obj.rectangle543);
    obj.label218:setLeft(180);
    obj.label218:setTop(70);
    obj.label218:setWidth(480);
    obj.label218:setFontSize(24);
    obj.label218:setHorzTextAlign("center");
    obj.label218:setText("ANOTAÇÕES");
    obj.label218:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label218, "fontStyle", "bold");
    obj.label218:setName("label218");

    obj.textEditor37 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor37:setParent(obj.rectangle543);
    obj.textEditor37:setLeft(68);
    obj.textEditor37:setTop(100);
    obj.textEditor37:setWidth(710);
    obj.textEditor37:setFontSize(18);
    obj.textEditor37:setHeight(710);
    obj.textEditor37:setFontColor("#49244F");
    obj.textEditor37:setTransparent(true);
    obj.textEditor37:setField("Anotacoes");
    obj.textEditor37:setName("textEditor37");

    obj.image55 = GUI.fromHandle(_obj_newObject("image"));
    obj.image55:setParent(obj.layout12);
    obj.image55:setLeft(0);
    obj.image55:setTop(0);
    obj.image55:setWidth(799);
    obj.image55:setHeight(825);
    obj.image55:setSRC("/img/borda.png");
    obj.image55:setName("image55");

    obj.image56 = GUI.fromHandle(_obj_newObject("image"));
    obj.image56:setParent(obj.tab8);
    obj.image56:setLeft(69);
    obj.image56:setTop(875);
    obj.image56:setWidth(676);
    obj.image56:setHeight(194);
    obj.image56:setSRC("/img/logo.png");
    obj.image56:setName("image56");

    obj.popFrmPrincipal = GUI.fromHandle(_obj_newObject("popup"));
    obj.popFrmPrincipal:setParent(obj);
    obj.popFrmPrincipal:setName("popFrmPrincipal");
    obj.popFrmPrincipal:setWidth(791);
    obj.popFrmPrincipal:setHeight(745);

    obj.rectangle546 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle546:setParent(obj.popFrmPrincipal);
    obj.rectangle546:setColor("#D5D5D5");
    obj.rectangle546:setWidth(781);
    obj.rectangle546:setHeight(735);
    obj.rectangle546:setLeft(5);
    obj.rectangle546:setTop(5);
    obj.rectangle546:setXradius(10);
    obj.rectangle546:setYradius(10);
    obj.rectangle546:setCornerType("round");
    obj.rectangle546:setName("rectangle546");

    obj.rectangle547 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle547:setParent(obj.popFrmPrincipal);
    obj.rectangle547:setLeft(395);
    obj.rectangle547:setTop(70);
    obj.rectangle547:setWidth(1);
    obj.rectangle547:setHeight(600);
    obj.rectangle547:setColor("#49244F");
    obj.rectangle547:setName("rectangle547");

    obj.rectangle548 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle548:setParent(obj.popFrmPrincipal);
    obj.rectangle548:setLeft(401);
    obj.rectangle548:setTop(455);
    obj.rectangle548:setWidth(380);
    obj.rectangle548:setHeight(210);
    obj.rectangle548:setColor("#49244F");
    obj.rectangle548:setName("rectangle548");

    obj.rectangle549 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle549:setParent(obj.popFrmPrincipal);
    obj.rectangle549:setLeft(590);
    obj.rectangle549:setTop(455);
    obj.rectangle549:setWidth(3);
    obj.rectangle549:setHeight(210);
    obj.rectangle549:setColor("#D5D5D5");
    obj.rectangle549:setName("rectangle549");

    obj.rectangle550 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle550:setParent(obj.popFrmPrincipal);
    obj.rectangle550:setLeft(590);
    obj.rectangle550:setTop(465);
    obj.rectangle550:setWidth(190);
    obj.rectangle550:setHeight(1);
    obj.rectangle550:setColor("#D5D5D5");
    obj.rectangle550:setName("rectangle550");

    obj.rectangle551 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle551:setParent(obj.popFrmPrincipal);
    obj.rectangle551:setLeft(590);
    obj.rectangle551:setTop(475);
    obj.rectangle551:setWidth(190);
    obj.rectangle551:setHeight(1);
    obj.rectangle551:setColor("#D5D5D5");
    obj.rectangle551:setName("rectangle551");

    obj.rectangle552 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle552:setParent(obj.popFrmPrincipal);
    obj.rectangle552:setLeft(590);
    obj.rectangle552:setTop(485);
    obj.rectangle552:setWidth(190);
    obj.rectangle552:setHeight(1);
    obj.rectangle552:setColor("#D5D5D5");
    obj.rectangle552:setName("rectangle552");

    obj.rectangle553 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle553:setParent(obj.popFrmPrincipal);
    obj.rectangle553:setLeft(590);
    obj.rectangle553:setTop(495);
    obj.rectangle553:setWidth(190);
    obj.rectangle553:setHeight(1);
    obj.rectangle553:setColor("#D5D5D5");
    obj.rectangle553:setName("rectangle553");

    obj.rectangle554 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle554:setParent(obj.popFrmPrincipal);
    obj.rectangle554:setLeft(590);
    obj.rectangle554:setTop(505);
    obj.rectangle554:setWidth(190);
    obj.rectangle554:setHeight(1);
    obj.rectangle554:setColor("#D5D5D5");
    obj.rectangle554:setName("rectangle554");

    obj.rectangle555 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle555:setParent(obj.popFrmPrincipal);
    obj.rectangle555:setLeft(590);
    obj.rectangle555:setTop(515);
    obj.rectangle555:setWidth(190);
    obj.rectangle555:setHeight(1);
    obj.rectangle555:setColor("#D5D5D5");
    obj.rectangle555:setName("rectangle555");

    obj.rectangle556 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle556:setParent(obj.popFrmPrincipal);
    obj.rectangle556:setLeft(590);
    obj.rectangle556:setTop(525);
    obj.rectangle556:setWidth(190);
    obj.rectangle556:setHeight(1);
    obj.rectangle556:setColor("#D5D5D5");
    obj.rectangle556:setName("rectangle556");

    obj.rectangle557 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle557:setParent(obj.popFrmPrincipal);
    obj.rectangle557:setLeft(590);
    obj.rectangle557:setTop(535);
    obj.rectangle557:setWidth(190);
    obj.rectangle557:setHeight(1);
    obj.rectangle557:setColor("#D5D5D5");
    obj.rectangle557:setName("rectangle557");

    obj.rectangle558 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle558:setParent(obj.popFrmPrincipal);
    obj.rectangle558:setLeft(590);
    obj.rectangle558:setTop(545);
    obj.rectangle558:setWidth(190);
    obj.rectangle558:setHeight(1);
    obj.rectangle558:setColor("#D5D5D5");
    obj.rectangle558:setName("rectangle558");

    obj.rectangle559 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle559:setParent(obj.popFrmPrincipal);
    obj.rectangle559:setLeft(590);
    obj.rectangle559:setTop(555);
    obj.rectangle559:setWidth(190);
    obj.rectangle559:setHeight(1);
    obj.rectangle559:setColor("#D5D5D5");
    obj.rectangle559:setName("rectangle559");

    obj.rectangle560 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle560:setParent(obj.popFrmPrincipal);
    obj.rectangle560:setLeft(590);
    obj.rectangle560:setTop(565);
    obj.rectangle560:setWidth(190);
    obj.rectangle560:setHeight(1);
    obj.rectangle560:setColor("#D5D5D5");
    obj.rectangle560:setName("rectangle560");

    obj.rectangle561 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle561:setParent(obj.popFrmPrincipal);
    obj.rectangle561:setLeft(590);
    obj.rectangle561:setTop(575);
    obj.rectangle561:setWidth(190);
    obj.rectangle561:setHeight(1);
    obj.rectangle561:setColor("#D5D5D5");
    obj.rectangle561:setName("rectangle561");

    obj.rectangle562 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle562:setParent(obj.popFrmPrincipal);
    obj.rectangle562:setLeft(590);
    obj.rectangle562:setTop(585);
    obj.rectangle562:setWidth(190);
    obj.rectangle562:setHeight(1);
    obj.rectangle562:setColor("#D5D5D5");
    obj.rectangle562:setName("rectangle562");

    obj.rectangle563 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle563:setParent(obj.popFrmPrincipal);
    obj.rectangle563:setLeft(590);
    obj.rectangle563:setTop(595);
    obj.rectangle563:setWidth(190);
    obj.rectangle563:setHeight(1);
    obj.rectangle563:setColor("#D5D5D5");
    obj.rectangle563:setName("rectangle563");

    obj.rectangle564 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle564:setParent(obj.popFrmPrincipal);
    obj.rectangle564:setLeft(590);
    obj.rectangle564:setTop(605);
    obj.rectangle564:setWidth(190);
    obj.rectangle564:setHeight(1);
    obj.rectangle564:setColor("#D5D5D5");
    obj.rectangle564:setName("rectangle564");

    obj.rectangle565 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle565:setParent(obj.popFrmPrincipal);
    obj.rectangle565:setLeft(590);
    obj.rectangle565:setTop(615);
    obj.rectangle565:setWidth(190);
    obj.rectangle565:setHeight(1);
    obj.rectangle565:setColor("#D5D5D5");
    obj.rectangle565:setName("rectangle565");

    obj.rectangle566 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle566:setParent(obj.popFrmPrincipal);
    obj.rectangle566:setLeft(590);
    obj.rectangle566:setTop(625);
    obj.rectangle566:setWidth(190);
    obj.rectangle566:setHeight(1);
    obj.rectangle566:setColor("#D5D5D5");
    obj.rectangle566:setName("rectangle566");

    obj.rectangle567 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle567:setParent(obj.popFrmPrincipal);
    obj.rectangle567:setLeft(590);
    obj.rectangle567:setTop(635);
    obj.rectangle567:setWidth(190);
    obj.rectangle567:setHeight(1);
    obj.rectangle567:setColor("#D5D5D5");
    obj.rectangle567:setName("rectangle567");

    obj.rectangle568 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle568:setParent(obj.popFrmPrincipal);
    obj.rectangle568:setLeft(590);
    obj.rectangle568:setTop(645);
    obj.rectangle568:setWidth(190);
    obj.rectangle568:setHeight(1);
    obj.rectangle568:setColor("#D5D5D5");
    obj.rectangle568:setName("rectangle568");

    obj.rectangle569 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle569:setParent(obj.popFrmPrincipal);
    obj.rectangle569:setLeft(590);
    obj.rectangle569:setTop(655);
    obj.rectangle569:setWidth(190);
    obj.rectangle569:setHeight(1);
    obj.rectangle569:setColor("#D5D5D5");
    obj.rectangle569:setName("rectangle569");

    obj.rectangle570 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle570:setParent(obj.popFrmPrincipal);
    obj.rectangle570:setLeft(622);
    obj.rectangle570:setTop(336);
    obj.rectangle570:setWidth(130);
    obj.rectangle570:setHeight(230);
    obj.rectangle570:setColor("#D5D5D5");
    obj.rectangle570:setXradius(170);
    obj.rectangle570:setYradius(170);
    obj.rectangle570:setCornerType("bevel");
    obj.rectangle570:setName("rectangle570");

    obj.rectangle571 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle571:setParent(obj.popFrmPrincipal);
    obj.rectangle571:setLeft(401);
    obj.rectangle571:setTop(445);
    obj.rectangle571:setWidth(380);
    obj.rectangle571:setHeight(1);
    obj.rectangle571:setColor("#49244F");
    obj.rectangle571:setName("rectangle571");

    obj.rectangle572 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle572:setParent(obj.popFrmPrincipal);
    obj.rectangle572:setLeft(10);
    obj.rectangle572:setTop(680);
    obj.rectangle572:setColor("#49244F");
    obj.rectangle572:setWidth(771);
    obj.rectangle572:setHeight(55);
    obj.rectangle572:setXradius(5);
    obj.rectangle572:setYradius(5);
    obj.rectangle572:setHitTest(true);
    obj.rectangle572:setCursor("handPoint");
    obj.rectangle572:setHint("Salvar Alterações");
    obj.rectangle572:setName("rectangle572");

    obj.label219 = GUI.fromHandle(_obj_newObject("label"));
    obj.label219:setParent(obj.popFrmPrincipal);
    obj.label219:setLeft(10);
    obj.label219:setTop(680);
    obj.label219:setFontColor("#D5D5D5");
    obj.label219:setWidth(771);
    obj.label219:setHeight(55);
    obj.label219:setText("SALVAR");
    lfm_setPropAsString(obj.label219, "fontStyle", "bold");
    obj.label219:setFontSize(18);
    obj.label219:setHorzTextAlign("center");
    obj.label219:setName("label219");

    obj.label220 = GUI.fromHandle(_obj_newObject("label"));
    obj.label220:setParent(obj.popFrmPrincipal);
    obj.label220:setLeft(330);
    obj.label220:setTop(30);
    obj.label220:setText("PERSONAGEM");
    obj.label220:setWidth(150);
    obj.label220:setFontSize(20);
    lfm_setPropAsString(obj.label220, "fontStyle", "bold");
    obj.label220:setFontColor("#49244F");
    obj.label220:setName("label220");

    obj.rectangle573 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle573:setParent(obj.popFrmPrincipal);
    obj.rectangle573:setLeft(5);
    obj.rectangle573:setTop(70);
    obj.rectangle573:setWidth(781);
    obj.rectangle573:setHeight(3);
    obj.rectangle573:setColor("#49244F");
    obj.rectangle573:setName("rectangle573");

    obj.rectangle574 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle574:setParent(obj.popFrmPrincipal);
    obj.rectangle574:setLeft(5);
    obj.rectangle574:setTop(670);
    obj.rectangle574:setWidth(781);
    obj.rectangle574:setHeight(3);
    obj.rectangle574:setColor("#49244F");
    obj.rectangle574:setName("rectangle574");

    obj.label221 = GUI.fromHandle(_obj_newObject("label"));
    obj.label221:setParent(obj.popFrmPrincipal);
    obj.label221:setLeft(10);
    obj.label221:setTop(90);
    obj.label221:setText("NOME");
    obj.label221:setFontSize(20);
    lfm_setPropAsString(obj.label221, "fontStyle", "bold");
    obj.label221:setFontColor("#49244F");
    obj.label221:setName("label221");

    obj.rectangle575 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle575:setParent(obj.popFrmPrincipal);
    obj.rectangle575:setLeft(10);
    obj.rectangle575:setTop(115);
    obj.rectangle575:setWidth(380);
    obj.rectangle575:setHeight(50);
    obj.rectangle575:setColor("#49244F");
    obj.rectangle575:setName("rectangle575");

    obj.edit198 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit198:setParent(obj.popFrmPrincipal);
    obj.edit198:setField("frmNome");
    obj.edit198:setLeft(10);
    obj.edit198:setTop(115);
    obj.edit198:setWidth(380);
    obj.edit198:setHeight(50);
    obj.edit198:setTransparent(true);
    obj.edit198:setName("edit198");

    obj.label222 = GUI.fromHandle(_obj_newObject("label"));
    obj.label222:setParent(obj.popFrmPrincipal);
    obj.label222:setLeft(280);
    obj.label222:setTop(130);
    obj.label222:setText("NÍVEL");
    obj.label222:setFontSize(20);
    lfm_setPropAsString(obj.label222, "fontStyle", "bold");
    obj.label222:setName("label222");

    obj.rectangle576 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle576:setParent(obj.popFrmPrincipal);
    obj.rectangle576:setLeft(340);
    obj.rectangle576:setTop(118);
    obj.rectangle576:setWidth(45);
    obj.rectangle576:setHeight(45);
    obj.rectangle576:setColor("#D5D5D5");
    obj.rectangle576:setXradius(20);
    obj.rectangle576:setYradius(20);
    obj.rectangle576:setCornerType("round");
    obj.rectangle576:setStrokeColor("#49244F");
    obj.rectangle576:setStrokeSize(3);
    obj.rectangle576:setName("rectangle576");

    obj.edit199 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit199:setParent(obj.popFrmPrincipal);
    obj.edit199:setField("frmNivel");
    obj.edit199:setLeft(351);
    obj.edit199:setTop(125);
    obj.edit199:setWidth(23);
    obj.edit199:setType("number");
    obj.edit199:setMin(0);
    obj.edit199:setMax(10);
    obj.edit199:setFontColor("#49244F");
    obj.edit199:setTransparent(true);
    obj.edit199:setHorzTextAlign("center");
    obj.edit199:setName("edit199");

    obj.label223 = GUI.fromHandle(_obj_newObject("label"));
    obj.label223:setParent(obj.popFrmPrincipal);
    obj.label223:setLeft(10);
    obj.label223:setTop(180);
    obj.label223:setText("ANCESTRALIDADE");
    obj.label223:setFontSize(20);
    lfm_setPropAsString(obj.label223, "fontStyle", "bold");
    obj.label223:setFontColor("#49244F");
    obj.label223:setWidth(180);
    obj.label223:setName("label223");

    obj.rectangle577 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle577:setParent(obj.popFrmPrincipal);
    obj.rectangle577:setLeft(10);
    obj.rectangle577:setTop(205);
    obj.rectangle577:setWidth(380);
    obj.rectangle577:setHeight(50);
    obj.rectangle577:setColor("#49244F");
    obj.rectangle577:setName("rectangle577");

    obj.edit200 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit200:setParent(obj.popFrmPrincipal);
    obj.edit200:setField("frmAncestralidade");
    obj.edit200:setLeft(10);
    obj.edit200:setTop(205);
    obj.edit200:setWidth(380);
    obj.edit200:setHeight(50);
    obj.edit200:setTransparent(true);
    obj.edit200:setHorzTextAlign("center");
    obj.edit200:setName("edit200");

    obj.label224 = GUI.fromHandle(_obj_newObject("label"));
    obj.label224:setParent(obj.popFrmPrincipal);
    obj.label224:setLeft(10);
    obj.label224:setTop(270);
    obj.label224:setText("DESCRIÇÃO");
    obj.label224:setFontSize(20);
    lfm_setPropAsString(obj.label224, "fontStyle", "bold");
    obj.label224:setFontColor("#49244F");
    obj.label224:setWidth(180);
    obj.label224:setName("label224");

    obj.rectangle578 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle578:setParent(obj.popFrmPrincipal);
    obj.rectangle578:setLeft(10);
    obj.rectangle578:setTop(295);
    obj.rectangle578:setWidth(380);
    obj.rectangle578:setHeight(100);
    obj.rectangle578:setColor("#49244F");
    obj.rectangle578:setName("rectangle578");

    obj.rectangle579 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle579:setParent(obj.popFrmPrincipal);
    obj.rectangle579:setLeft(195);
    obj.rectangle579:setTop(295);
    obj.rectangle579:setWidth(3);
    obj.rectangle579:setHeight(100);
    obj.rectangle579:setColor("#D5D5D5");
    obj.rectangle579:setName("rectangle579");

    obj.label225 = GUI.fromHandle(_obj_newObject("label"));
    obj.label225:setParent(obj.popFrmPrincipal);
    obj.label225:setLeft(15);
    obj.label225:setTop(305);
    obj.label225:setText("Gênero:");
    obj.label225:setFontSize(18);
    lfm_setPropAsString(obj.label225, "fontStyle", "bold");
    obj.label225:setWidth(180);
    obj.label225:setName("label225");

    obj.comboBox43 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox43:setParent(obj.popFrmPrincipal);
    obj.comboBox43:setLeft(85);
    obj.comboBox43:setTop(305);
    obj.comboBox43:setItems({'Feminino', 'Masculino', 'Outro'});
    obj.comboBox43:setTransparent(true);
    obj.comboBox43:setField("frmGenero");
    obj.comboBox43:setName("comboBox43");

    obj.label226 = GUI.fromHandle(_obj_newObject("label"));
    obj.label226:setParent(obj.popFrmPrincipal);
    obj.label226:setLeft(206);
    obj.label226:setTop(305);
    obj.label226:setText("Idade:");
    obj.label226:setFontSize(18);
    lfm_setPropAsString(obj.label226, "fontStyle", "bold");
    obj.label226:setWidth(180);
    obj.label226:setName("label226");

    obj.edit201 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit201:setParent(obj.popFrmPrincipal);
    obj.edit201:setLeft(265);
    obj.edit201:setTop(300);
    obj.edit201:setWidth(110);
    obj.edit201:setTransparent(true);
    obj.edit201:setField("frmIdade");
    obj.edit201:setName("edit201");

    obj.label227 = GUI.fromHandle(_obj_newObject("label"));
    obj.label227:setParent(obj.popFrmPrincipal);
    obj.label227:setLeft(15);
    obj.label227:setTop(335);
    obj.label227:setText("Olhos:");
    obj.label227:setFontSize(18);
    lfm_setPropAsString(obj.label227, "fontStyle", "bold");
    obj.label227:setWidth(180);
    obj.label227:setName("label227");

    obj.edit202 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit202:setParent(obj.popFrmPrincipal);
    obj.edit202:setLeft(75);
    obj.edit202:setTop(330);
    obj.edit202:setWidth(110);
    obj.edit202:setTransparent(true);
    obj.edit202:setField("frmOlhos");
    obj.edit202:setName("edit202");

    obj.label228 = GUI.fromHandle(_obj_newObject("label"));
    obj.label228:setParent(obj.popFrmPrincipal);
    obj.label228:setLeft(206);
    obj.label228:setTop(335);
    obj.label228:setText("Cabelos:");
    obj.label228:setFontSize(18);
    lfm_setPropAsString(obj.label228, "fontStyle", "bold");
    obj.label228:setWidth(180);
    obj.label228:setName("label228");

    obj.edit203 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit203:setParent(obj.popFrmPrincipal);
    obj.edit203:setLeft(285);
    obj.edit203:setTop(330);
    obj.edit203:setWidth(95);
    obj.edit203:setTransparent(true);
    obj.edit203:setField("frmCabelos");
    obj.edit203:setName("edit203");

    obj.label229 = GUI.fromHandle(_obj_newObject("label"));
    obj.label229:setParent(obj.popFrmPrincipal);
    obj.label229:setLeft(15);
    obj.label229:setTop(365);
    obj.label229:setText("Altura:");
    obj.label229:setFontSize(18);
    lfm_setPropAsString(obj.label229, "fontStyle", "bold");
    obj.label229:setWidth(180);
    obj.label229:setName("label229");

    obj.edit204 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit204:setParent(obj.popFrmPrincipal);
    obj.edit204:setLeft(75);
    obj.edit204:setTop(360);
    obj.edit204:setWidth(110);
    obj.edit204:setTransparent(true);
    obj.edit204:setField("frmAltura");
    obj.edit204:setName("edit204");

    obj.label230 = GUI.fromHandle(_obj_newObject("label"));
    obj.label230:setParent(obj.popFrmPrincipal);
    obj.label230:setLeft(206);
    obj.label230:setTop(365);
    obj.label230:setText("Peso:");
    obj.label230:setFontSize(18);
    lfm_setPropAsString(obj.label230, "fontStyle", "bold");
    obj.label230:setWidth(180);
    obj.label230:setName("label230");

    obj.edit205 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit205:setParent(obj.popFrmPrincipal);
    obj.edit205:setLeft(255);
    obj.edit205:setTop(360);
    obj.edit205:setWidth(95);
    obj.edit205:setTransparent(true);
    obj.edit205:setField("frmPeso");
    obj.edit205:setName("edit205");

    obj.label231 = GUI.fromHandle(_obj_newObject("label"));
    obj.label231:setParent(obj.popFrmPrincipal);
    obj.label231:setLeft(10);
    obj.label231:setTop(410);
    obj.label231:setWidth(380);
    obj.label231:setText("IDIOMAS");
    obj.label231:setFontSize(20);
    lfm_setPropAsString(obj.label231, "fontStyle", "bold");
    obj.label231:setFontColor("#49244F");
    obj.label231:setName("label231");

    obj.rectangle580 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle580:setParent(obj.popFrmPrincipal);
    obj.rectangle580:setLeft(10);
    obj.rectangle580:setTop(435);
    obj.rectangle580:setWidth(380);
    obj.rectangle580:setHeight(50);
    obj.rectangle580:setColor("#49244F");
    obj.rectangle580:setName("rectangle580");

    obj.edit206 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit206:setParent(obj.popFrmPrincipal);
    obj.edit206:setField("frmIdiomas");
    obj.edit206:setLeft(10);
    obj.edit206:setTop(435);
    obj.edit206:setHeight(50);
    obj.edit206:setWidth(380);
    obj.edit206:setTransparent(true);
    obj.edit206:setHorzTextAlign("center");
    obj.edit206:setName("edit206");

    obj.label232 = GUI.fromHandle(_obj_newObject("label"));
    obj.label232:setParent(obj.popFrmPrincipal);
    obj.label232:setLeft(10);
    obj.label232:setTop(500);
    obj.label232:setWidth(380);
    obj.label232:setText("PROFISSÕES");
    obj.label232:setFontSize(20);
    lfm_setPropAsString(obj.label232, "fontStyle", "bold");
    obj.label232:setFontColor("#49244F");
    obj.label232:setName("label232");

    obj.rectangle581 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle581:setParent(obj.popFrmPrincipal);
    obj.rectangle581:setLeft(10);
    obj.rectangle581:setTop(525);
    obj.rectangle581:setWidth(380);
    obj.rectangle581:setHeight(50);
    obj.rectangle581:setColor("#49244F");
    obj.rectangle581:setName("rectangle581");

    obj.edit207 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit207:setParent(obj.popFrmPrincipal);
    obj.edit207:setField("frmProfissoes");
    obj.edit207:setLeft(10);
    obj.edit207:setTop(525);
    obj.edit207:setHeight(50);
    obj.edit207:setWidth(380);
    obj.edit207:setTransparent(true);
    obj.edit207:setHorzTextAlign("center");
    obj.edit207:setName("edit207");

    obj.label233 = GUI.fromHandle(_obj_newObject("label"));
    obj.label233:setParent(obj.popFrmPrincipal);
    obj.label233:setLeft(10);
    obj.label233:setTop(590);
    obj.label233:setWidth(380);
    obj.label233:setText("RELIGIÃO");
    obj.label233:setFontSize(20);
    lfm_setPropAsString(obj.label233, "fontStyle", "bold");
    obj.label233:setFontColor("#49244F");
    obj.label233:setName("label233");

    obj.rectangle582 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle582:setParent(obj.popFrmPrincipal);
    obj.rectangle582:setLeft(10);
    obj.rectangle582:setTop(615);
    obj.rectangle582:setWidth(380);
    obj.rectangle582:setHeight(50);
    obj.rectangle582:setColor("#49244F");
    obj.rectangle582:setName("rectangle582");

    obj.edit208 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit208:setParent(obj.popFrmPrincipal);
    obj.edit208:setField("frmReligiao");
    obj.edit208:setLeft(10);
    obj.edit208:setTop(615);
    obj.edit208:setHeight(50);
    obj.edit208:setWidth(380);
    obj.edit208:setTransparent(true);
    obj.edit208:setHorzTextAlign("center");
    obj.edit208:setName("edit208");

    obj.rectangle583 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle583:setParent(obj.popFrmPrincipal);
    obj.rectangle583:setLeft(401);
    obj.rectangle583:setTop(115);
    obj.rectangle583:setWidth(380);
    obj.rectangle583:setHeight(50);
    obj.rectangle583:setColor("#49244F");
    obj.rectangle583:setName("rectangle583");

    obj.label234 = GUI.fromHandle(_obj_newObject("label"));
    obj.label234:setParent(obj.popFrmPrincipal);
    obj.label234:setLeft(406);
    obj.label234:setTop(130);
    obj.label234:setText("TAMANHO");
    obj.label234:setFontSize(20);
    lfm_setPropAsString(obj.label234, "fontStyle", "bold");
    obj.label234:setName("label234");

    obj.rectangle584 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle584:setParent(obj.popFrmPrincipal);
    obj.rectangle584:setLeft(515);
    obj.rectangle584:setTop(118);
    obj.rectangle584:setWidth(45);
    obj.rectangle584:setHeight(45);
    obj.rectangle584:setColor("#D5D5D5");
    obj.rectangle584:setXradius(20);
    obj.rectangle584:setYradius(20);
    obj.rectangle584:setCornerType("round");
    obj.rectangle584:setStrokeColor("#49244F");
    obj.rectangle584:setStrokeSize(3);
    obj.rectangle584:setName("rectangle584");

    obj.edit209 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit209:setParent(obj.popFrmPrincipal);
    obj.edit209:setField("frmTamanho");
    obj.edit209:setLeft(523);
    obj.edit209:setTop(125);
    obj.edit209:setWidth(28);
    obj.edit209:setFontColor("#49244F");
    obj.edit209:setTransparent(true);
    obj.edit209:setHorzTextAlign("center");
    obj.edit209:setName("edit209");

    obj.label235 = GUI.fromHandle(_obj_newObject("label"));
    obj.label235:setParent(obj.popFrmPrincipal);
    obj.label235:setLeft(605);
    obj.label235:setTop(130);
    obj.label235:setWidth(150);
    obj.label235:setText("VELOCIDADE");
    obj.label235:setFontSize(20);
    lfm_setPropAsString(obj.label235, "fontStyle", "bold");
    obj.label235:setName("label235");

    obj.rectangle585 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle585:setParent(obj.popFrmPrincipal);
    obj.rectangle585:setLeft(730);
    obj.rectangle585:setTop(118);
    obj.rectangle585:setWidth(45);
    obj.rectangle585:setHeight(45);
    obj.rectangle585:setColor("#D5D5D5");
    obj.rectangle585:setXradius(20);
    obj.rectangle585:setYradius(20);
    obj.rectangle585:setCornerType("round");
    obj.rectangle585:setStrokeColor("#49244F");
    obj.rectangle585:setStrokeSize(3);
    obj.rectangle585:setName("rectangle585");

    obj.edit210 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit210:setParent(obj.popFrmPrincipal);
    obj.edit210:setField("frmVelocidade");
    obj.edit210:setLeft(738);
    obj.edit210:setTop(125);
    obj.edit210:setWidth(28);
    obj.edit210:setFontColor("#49244F");
    obj.edit210:setType("number");
    obj.edit210:setMin(0);
    obj.edit210:setMax(20);
    obj.edit210:setTransparent(true);
    obj.edit210:setHorzTextAlign("center");
    obj.edit210:setName("edit210");

    obj.label236 = GUI.fromHandle(_obj_newObject("label"));
    obj.label236:setParent(obj.popFrmPrincipal);
    obj.label236:setLeft(401);
    obj.label236:setTop(180);
    obj.label236:setWidth(300);
    obj.label236:setText("CAMINHO DE NOVATO");
    obj.label236:setFontSize(20);
    lfm_setPropAsString(obj.label236, "fontStyle", "bold");
    obj.label236:setFontColor("#49244F");
    obj.label236:setName("label236");

    obj.rectangle586 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle586:setParent(obj.popFrmPrincipal);
    obj.rectangle586:setLeft(401);
    obj.rectangle586:setTop(205);
    obj.rectangle586:setWidth(380);
    obj.rectangle586:setHeight(50);
    obj.rectangle586:setColor("#49244F");
    obj.rectangle586:setName("rectangle586");

    obj.edit211 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit211:setParent(obj.popFrmPrincipal);
    obj.edit211:setField("frmAprendiz");
    obj.edit211:setLeft(401);
    obj.edit211:setTop(205);
    obj.edit211:setWidth(380);
    obj.edit211:setHeight(50);
    obj.edit211:setTransparent(true);
    obj.edit211:setHorzTextAlign("center");
    obj.edit211:setName("edit211");

    obj.label237 = GUI.fromHandle(_obj_newObject("label"));
    obj.label237:setParent(obj.popFrmPrincipal);
    obj.label237:setLeft(401);
    obj.label237:setTop(270);
    obj.label237:setWidth(300);
    obj.label237:setText("CAMINHO DE ESPECIALISTA");
    obj.label237:setFontSize(20);
    lfm_setPropAsString(obj.label237, "fontStyle", "bold");
    obj.label237:setFontColor("#49244F");
    obj.label237:setName("label237");

    obj.rectangle587 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle587:setParent(obj.popFrmPrincipal);
    obj.rectangle587:setLeft(401);
    obj.rectangle587:setTop(295);
    obj.rectangle587:setWidth(380);
    obj.rectangle587:setHeight(50);
    obj.rectangle587:setColor("#49244F");
    obj.rectangle587:setName("rectangle587");

    obj.edit212 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit212:setParent(obj.popFrmPrincipal);
    obj.edit212:setField("frmEspecialista");
    obj.edit212:setLeft(401);
    obj.edit212:setTop(295);
    obj.edit212:setWidth(380);
    obj.edit212:setHeight(50);
    obj.edit212:setTransparent(true);
    obj.edit212:setHorzTextAlign("center");
    obj.edit212:setName("edit212");

    obj.label238 = GUI.fromHandle(_obj_newObject("label"));
    obj.label238:setParent(obj.popFrmPrincipal);
    obj.label238:setLeft(401);
    obj.label238:setTop(360);
    obj.label238:setWidth(300);
    obj.label238:setText("CAMINHO DE MESTRE");
    obj.label238:setFontSize(20);
    lfm_setPropAsString(obj.label238, "fontStyle", "bold");
    obj.label238:setFontColor("#49244F");
    obj.label238:setName("label238");

    obj.rectangle588 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle588:setParent(obj.popFrmPrincipal);
    obj.rectangle588:setLeft(401);
    obj.rectangle588:setTop(385);
    obj.rectangle588:setWidth(380);
    obj.rectangle588:setHeight(50);
    obj.rectangle588:setColor("#49244F");
    obj.rectangle588:setName("rectangle588");

    obj.edit213 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit213:setParent(obj.popFrmPrincipal);
    obj.edit213:setField("frmMestre");
    obj.edit213:setLeft(401);
    obj.edit213:setTop(385);
    obj.edit213:setWidth(380);
    obj.edit213:setHeight(50);
    obj.edit213:setTransparent(true);
    obj.edit213:setHorzTextAlign("center");
    obj.edit213:setName("edit213");

    obj.label239 = GUI.fromHandle(_obj_newObject("label"));
    obj.label239:setParent(obj.popFrmPrincipal);
    obj.label239:setLeft(460);
    obj.label239:setTop(475);
    obj.label239:setText("Força");
    obj.label239:setFontSize(20);
    lfm_setPropAsString(obj.label239, "fontStyle", "bold");
    obj.label239:setName("label239");

    obj.rectangle589 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle589:setParent(obj.popFrmPrincipal);
    obj.rectangle589:setLeft(406);
    obj.rectangle589:setTop(463);
    obj.rectangle589:setWidth(45);
    obj.rectangle589:setHeight(45);
    obj.rectangle589:setColor("#D5D5D5");
    obj.rectangle589:setXradius(20);
    obj.rectangle589:setYradius(20);
    obj.rectangle589:setCornerType("round");
    obj.rectangle589:setStrokeColor("#49244F");
    obj.rectangle589:setStrokeSize(3);
    obj.rectangle589:setName("rectangle589");

    obj.edit214 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit214:setParent(obj.popFrmPrincipal);
    obj.edit214:setField("frmForca");
    obj.edit214:setLeft(414);
    obj.edit214:setTop(470);
    obj.edit214:setWidth(28);
    obj.edit214:setFontColor("#49244F");
    obj.edit214:setType("number");
    obj.edit214:setMin(0);
    obj.edit214:setMax(25);
    obj.edit214:setTransparent(true);
    obj.edit214:setHorzTextAlign("center");
    obj.edit214:setName("edit214");

    obj.label240 = GUI.fromHandle(_obj_newObject("label"));
    obj.label240:setParent(obj.popFrmPrincipal);
    obj.label240:setLeft(460);
    obj.label240:setTop(525);
    obj.label240:setText("Agilidade");
    obj.label240:setFontSize(20);
    lfm_setPropAsString(obj.label240, "fontStyle", "bold");
    obj.label240:setName("label240");

    obj.rectangle590 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle590:setParent(obj.popFrmPrincipal);
    obj.rectangle590:setLeft(406);
    obj.rectangle590:setTop(513);
    obj.rectangle590:setWidth(45);
    obj.rectangle590:setHeight(45);
    obj.rectangle590:setColor("#D5D5D5");
    obj.rectangle590:setXradius(20);
    obj.rectangle590:setYradius(20);
    obj.rectangle590:setCornerType("round");
    obj.rectangle590:setStrokeColor("#49244F");
    obj.rectangle590:setStrokeSize(3);
    obj.rectangle590:setName("rectangle590");

    obj.edit215 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit215:setParent(obj.popFrmPrincipal);
    obj.edit215:setField("frmAgilidade");
    obj.edit215:setLeft(414);
    obj.edit215:setTop(520);
    obj.edit215:setWidth(28);
    obj.edit215:setFontColor("#49244F");
    obj.edit215:setType("number");
    obj.edit215:setMin(0);
    obj.edit215:setMax(25);
    obj.edit215:setTransparent(true);
    obj.edit215:setHorzTextAlign("center");
    obj.edit215:setName("edit215");

    obj.label241 = GUI.fromHandle(_obj_newObject("label"));
    obj.label241:setParent(obj.popFrmPrincipal);
    obj.label241:setLeft(460);
    obj.label241:setTop(575);
    obj.label241:setText("Intelecto");
    obj.label241:setFontSize(20);
    lfm_setPropAsString(obj.label241, "fontStyle", "bold");
    obj.label241:setName("label241");

    obj.rectangle591 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle591:setParent(obj.popFrmPrincipal);
    obj.rectangle591:setLeft(406);
    obj.rectangle591:setTop(563);
    obj.rectangle591:setWidth(45);
    obj.rectangle591:setHeight(45);
    obj.rectangle591:setColor("#D5D5D5");
    obj.rectangle591:setXradius(20);
    obj.rectangle591:setYradius(20);
    obj.rectangle591:setCornerType("round");
    obj.rectangle591:setStrokeColor("#49244F");
    obj.rectangle591:setStrokeSize(3);
    obj.rectangle591:setName("rectangle591");

    obj.edit216 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit216:setParent(obj.popFrmPrincipal);
    obj.edit216:setField("frmIntelecto");
    obj.edit216:setLeft(414);
    obj.edit216:setTop(570);
    obj.edit216:setWidth(28);
    obj.edit216:setFontColor("#49244F");
    obj.edit216:setType("number");
    obj.edit216:setMin(0);
    obj.edit216:setMax(25);
    obj.edit216:setTransparent(true);
    obj.edit216:setHorzTextAlign("center");
    obj.edit216:setName("edit216");

    obj.label242 = GUI.fromHandle(_obj_newObject("label"));
    obj.label242:setParent(obj.popFrmPrincipal);
    obj.label242:setLeft(460);
    obj.label242:setTop(625);
    obj.label242:setText("Vontade");
    obj.label242:setFontSize(20);
    lfm_setPropAsString(obj.label242, "fontStyle", "bold");
    obj.label242:setName("label242");

    obj.rectangle592 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle592:setParent(obj.popFrmPrincipal);
    obj.rectangle592:setLeft(406);
    obj.rectangle592:setTop(613);
    obj.rectangle592:setWidth(45);
    obj.rectangle592:setHeight(45);
    obj.rectangle592:setColor("#D5D5D5");
    obj.rectangle592:setXradius(20);
    obj.rectangle592:setYradius(20);
    obj.rectangle592:setCornerType("round");
    obj.rectangle592:setStrokeColor("#49244F");
    obj.rectangle592:setStrokeSize(3);
    obj.rectangle592:setName("rectangle592");

    obj.edit217 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit217:setParent(obj.popFrmPrincipal);
    obj.edit217:setField("frmVontade");
    obj.edit217:setLeft(414);
    obj.edit217:setTop(620);
    obj.edit217:setWidth(28);
    obj.edit217:setFontColor("#49244F");
    obj.edit217:setType("number");
    obj.edit217:setMin(0);
    obj.edit217:setMax(25);
    obj.edit217:setTransparent(true);
    obj.edit217:setHorzTextAlign("center");
    obj.edit217:setName("edit217");

    obj.label243 = GUI.fromHandle(_obj_newObject("label"));
    obj.label243:setParent(obj.popFrmPrincipal);
    obj.label243:setLeft(651);
    obj.label243:setTop(455);
    obj.label243:setText("Defesas");
    obj.label243:setFontSize(20);
    lfm_setPropAsString(obj.label243, "fontStyle", "bold");
    obj.label243:setFontColor("#49244F");
    obj.label243:setName("label243");

    obj.rectangle593 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle593:setParent(obj.popFrmPrincipal);
    obj.rectangle593:setLeft(593);
    obj.rectangle593:setTop(477);
    obj.rectangle593:setWidth(175);
    obj.rectangle593:setHeight(25);
    obj.rectangle593:setColor("#49244F");
    obj.rectangle593:setStrokeColor("#49244F");
    obj.rectangle593:setStrokeSize(3);
    obj.rectangle593:setName("rectangle593");

    obj.rectangle594 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle594:setParent(obj.popFrmPrincipal);
    obj.rectangle594:setLeft(737);
    obj.rectangle594:setTop(468);
    obj.rectangle594:setWidth(45);
    obj.rectangle594:setHeight(45);
    obj.rectangle594:setColor("#D5D5D5");
    obj.rectangle594:setXradius(20);
    obj.rectangle594:setYradius(20);
    obj.rectangle594:setCornerType("round");
    obj.rectangle594:setStrokeColor("#49244F");
    obj.rectangle594:setStrokeSize(3);
    obj.rectangle594:setName("rectangle594");

    obj.label244 = GUI.fromHandle(_obj_newObject("label"));
    obj.label244:setParent(obj.popFrmPrincipal);
    obj.label244:setLeft(665);
    obj.label244:setTop(480);
    obj.label244:setText("Natural");
    obj.label244:setFontSize(14);
    obj.label244:setFontColor("#D5D5D5");
    obj.label244:setName("label244");

    obj.edit218 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit218:setParent(obj.popFrmPrincipal);
    obj.edit218:setField("frmDefesa");
    obj.edit218:setLeft(745);
    obj.edit218:setTop(475);
    obj.edit218:setWidth(28);
    obj.edit218:setFontColor("#49244F");
    obj.edit218:setType("number");
    obj.edit218:setMin(0);
    obj.edit218:setMax(35);
    obj.edit218:setTransparent(true);
    obj.edit218:setHorzTextAlign("center");
    obj.edit218:setName("edit218");

    obj.rectangle595 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle595:setParent(obj.popFrmPrincipal);
    obj.rectangle595:setLeft(593);
    obj.rectangle595:setTop(527);
    obj.rectangle595:setWidth(175);
    obj.rectangle595:setHeight(25);
    obj.rectangle595:setColor("#49244F");
    obj.rectangle595:setStrokeColor("#49244F");
    obj.rectangle595:setStrokeSize(3);
    obj.rectangle595:setName("rectangle595");

    obj.rectangle596 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle596:setParent(obj.popFrmPrincipal);
    obj.rectangle596:setLeft(737);
    obj.rectangle596:setTop(518);
    obj.rectangle596:setWidth(45);
    obj.rectangle596:setHeight(45);
    obj.rectangle596:setColor("#D5D5D5");
    obj.rectangle596:setXradius(20);
    obj.rectangle596:setYradius(20);
    obj.rectangle596:setCornerType("round");
    obj.rectangle596:setStrokeColor("#49244F");
    obj.rectangle596:setStrokeSize(3);
    obj.rectangle596:setName("rectangle596");

    obj.label245 = GUI.fromHandle(_obj_newObject("label"));
    obj.label245:setParent(obj.popFrmPrincipal);
    obj.label245:setLeft(658);
    obj.label245:setTop(532);
    obj.label245:setText("Armadura");
    obj.label245:setFontSize(14);
    obj.label245:setFontColor("#D5D5D5");
    obj.label245:setName("label245");

    obj.edit219 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit219:setParent(obj.popFrmPrincipal);
    obj.edit219:setField("frmDefesaBlin");
    obj.edit219:setLeft(745);
    obj.edit219:setTop(525);
    obj.edit219:setWidth(28);
    obj.edit219:setFontColor("#49244F");
    obj.edit219:setType("number");
    obj.edit219:setMin(0);
    obj.edit219:setMax(35);
    obj.edit219:setTransparent(true);
    obj.edit219:setHorzTextAlign("center");
    obj.edit219:setName("edit219");

    obj.rectangle597 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle597:setParent(obj.popFrmPrincipal);
    obj.rectangle597:setLeft(642);
    obj.rectangle597:setTop(565);
    obj.rectangle597:setWidth(95);
    obj.rectangle597:setHeight(95);
    obj.rectangle597:setColor("#D5D5D5");
    obj.rectangle597:setXradius(47);
    obj.rectangle597:setYradius(47);
    obj.rectangle597:setCornerType("round");
    obj.rectangle597:setStrokeColor("#49244F");
    obj.rectangle597:setStrokeSize(3);
    obj.rectangle597:setName("rectangle597");

    obj.rectangle598 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle598:setParent(obj.popFrmPrincipal);
    obj.rectangle598:setLeft(665);
    obj.rectangle598:setTop(570);
    obj.rectangle598:setWidth(45);
    obj.rectangle598:setHeight(45);
    obj.rectangle598:setColor("#49244F");
    obj.rectangle598:setXradius(20);
    obj.rectangle598:setYradius(20);
    obj.rectangle598:setCornerType("round");
    obj.rectangle598:setStrokeColor("#49244F");
    obj.rectangle598:setStrokeSize(3);
    obj.rectangle598:setName("rectangle598");

    obj.edit220 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit220:setParent(obj.popFrmPrincipal);
    obj.edit220:setField("frmVida");
    obj.edit220:setLeft(673);
    obj.edit220:setTop(575);
    obj.edit220:setWidth(28);
    obj.edit220:setFontColor("#D5D5D5");
    obj.edit220:setType("number");
    obj.edit220:setMin(0);
    obj.edit220:setMax(1000);
    obj.edit220:setTransparent(true);
    obj.edit220:setHorzTextAlign("center");
    obj.edit220:setName("edit220");

    obj.label246 = GUI.fromHandle(_obj_newObject("label"));
    obj.label246:setParent(obj.popFrmPrincipal);
    obj.label246:setLeft(668);
    obj.label246:setTop(625);
    obj.label246:setText("Vida");
    obj.label246:setFontSize(20);
    lfm_setPropAsString(obj.label246, "fontStyle", "bold");
    obj.label246:setFontColor("#49244F");
    obj.label246:setName("label246");

    obj.popDadivaReves = GUI.fromHandle(_obj_newObject("popup"));
    obj.popDadivaReves:setParent(obj);
    obj.popDadivaReves:setName("popDadivaReves");
    obj.popDadivaReves:setWidth(400);
    obj.popDadivaReves:setHeight(200);
    obj.popDadivaReves:setBackOpacity(0.5);

    obj.rectangle599 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle599:setParent(obj.popDadivaReves);
    obj.rectangle599:setAlign("client");
    obj.rectangle599:setColor("black");
    lfm_setPropAsString(obj.rectangle599, "corners", "");
    obj.rectangle599:setXradius(25);
    obj.rectangle599:setYradius(25);
    obj.rectangle599:setCornerType("round");
    obj.rectangle599:setName("rectangle599");

    obj.label247 = GUI.fromHandle(_obj_newObject("label"));
    obj.label247:setParent(obj.popDadivaReves);
    obj.label247:setText("   DÁDIVA / REVÉS ");
    obj.label247:setAlign("left");
    obj.label247:setLeft(180);
    obj.label247:setTop(-100);
    obj.label247:setName("label247");

    obj.edit221 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit221:setParent(obj.popDadivaReves);
    obj.edit221:setField("dadivaReves");
    obj.edit221:setAlign("top");
    obj.edit221:setWidth(100);
    obj.edit221:setHeight(100);
    obj.edit221:setType("number");
    obj.edit221:setHorzTextAlign("center");
    obj.edit221:setFontSize(40);
    obj.edit221:setName("edit221");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.popDadivaReves);
    obj.button1:setAlign("right");
    obj.button1:setWidth(272);
    obj.button1:setText("Jogar");
    obj.button1:setName("button1");


      -- --------------------------------------------------------
      -- Variáveis Globais
      local escolherTeste = nil
      local combate = false
      local arma = nil
      local revesCombate = 0
      local dadivaCombate = 0
      local dano = nil
      local danoAutomatico = false
      local numeroDados = nil

      -- --------------------------------------------------------
      -- Obter nome da Personagem
      local function getNome()
            local nome
            local genero = sheet.Genero

            if sheet.Nome == nil then
                  nome = " "
            else
                  if genero == nil or genero == "Outro" then
                        nome = " de " .. sheet.Nome
                  end
                  if genero == "Feminino" then
                        nome = " da " .. sheet.Nome
                  end
                  if genero == "Masculino" then
                        nome = " do " .. sheet.Nome
                  end
            end

            return nome
      end
      -- --------------------------------------------------------
      -- Dádiva ou Revés
      local function jogarDadivaReves(modificador, aflicoes, jogada)
            self.popDadivaReves:close()

            local modificador = modificador
            local dadivaReves = sheet.dadivaReves + dadivaCombate
            local aflicoes = aflicoes
            local nome = getNome()
            local modDadivaReves = 0
            local positivoNegativo = false
            local valorAnterior = 0
            local valDadivaReves = 0
            local jogada = jogada
            local dadivaOuReves = nil

            local mesaDeRPG = Firecast.getMesaDe(sheet)
            
            -- Caso o jogador não insira o valor de Dádiva ou Revés o valor será 0
            if dadivaReves == nil then
                  dadivaReves = 0
            end

            -- Caso a jogada seja com Revés
            if (dadivaReves) + (aflicoes) < 0 then
                  positivoNegativo = false
                  dadivaOuReves = "Revés"
            end
            -- Caso a jogada seja com Dádiva
            if (dadivaReves) + (aflicoes) > 0 then
                  positivoNegativo = true
                  dadivaOuReves = "Dádiva"
            end

            -- Quantidade de dados que serão jogados
            if dadivaReves < 0 then
                  modDadivaReves = (dadivaReves * -1) + (aflicoes * -1)
            end
            if dadivaReves == 0 then
                  modDadivaReves = dadivaReves + (aflicoes * -1)
            end
            if dadivaReves > 0 then
                  modDadivaReves = dadivaReves - (aflicoes * -1)
            end 

            -- Jogada sem Dádiva ou Revés
            if jogada == "Teste de Sorte" then
                  if (dadivaReves) + (aflicoes) == 0 then
                        valJogada = Firecast.interpretarRolagem("1d20")
                        mesaDeRPG.chat:rolarDados(valJogada, jogada .. nome)
                  end
            else
                  if (dadivaReves) + (aflicoes) == 0 then
                        if modificador < 0 then
                              valJogada = Firecast.interpretarRolagem("1d20 - " .. (modificador * -1))
                              mesaDeRPG.chat:enviarMensagem("---")
                              mesaDeRPG.chat:rolarDados(valJogada, jogada .. nome)
                        else
                              valJogada = Firecast.interpretarRolagem("1d20 + " .. modificador)
                              mesaDeRPG.chat:enviarMensagem("---")
                              mesaDeRPG.chat:rolarDados(valJogada, jogada .. nome)
                        end
                  end
            end
            
            -- Jogada com Dádiva ou Revés
            if modDadivaReves > 0 and modDadivaReves < 13 then
                  local cont = 0
                  for i = 1, modDadivaReves, 1 do
                        mesaDeRPG.chat:rolarDados("1d6", dadivaOuReves,
                              function (rolado)
                                    valorAnterior = rolado.resultado

                                    if valorAnterior > valDadivaReves then
                                          valDadivaReves = valorAnterior
                                    end

                                    cont = cont + 1
                                    if cont == modDadivaReves then
                                          if jogada == "Teste de Sorte" then
                                                if positivoNegativo == true then
                                                      valJogada = Firecast.interpretarRolagem("1d20 + " .. valDadivaReves)
                                                end
                                                if positivoNegativo == false then
                                                      valJogada = Firecast.interpretarRolagem("1d20 - " .. valDadivaReves)
                                                end
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:rolarDados(valJogada, jogada .. nome)
                                          else
                                                if modificador < 0 then
                                                      if positivoNegativo == true then
                                                            valJogada = Firecast.interpretarRolagem("1d20 - " .. (modificador * -1) .. "+" .. valDadivaReves)
                                                      end
                                                      if positivoNegativo == false then
                                                            valJogada = Firecast.interpretarRolagem("1d20 - " .. (modificador * -1) .. "-" .. valDadivaReves)
                                                      end
                                                      mesaDeRPG.chat:enviarMensagem("---")
                                                      mesaDeRPG.chat:rolarDados(valJogada, jogada .. nome)
                                                else
                                                      if positivoNegativo == true then
                                                            valJogada = Firecast.interpretarRolagem("1d20 + " .. modificador .. "+" .. valDadivaReves)
                                                      end
                                                      if positivoNegativo == false then
                                                            valJogada = Firecast.interpretarRolagem("1d20 + " .. modificador .. "-" .. valDadivaReves)
                                                      end
                                                      mesaDeRPG.chat:enviarMensagem("---")
                                                      mesaDeRPG.chat:rolarDados(valJogada, jogada .. nome)
                                                end
                                          end
                                    end
                        end)
                  end
            end

            -- Atribuindo o valor 0 para Dádiva ou Revés
            sheet.dadivaReves = 0
            dadivaCombate = 0
            
      end

      -- --------------------------------------------------------
      -- Teste de Sorte
      local function testeDeSorte()
            local amaldicoado = 0
            local cego = 0
            local aflicoes = 0
            local jogada = "Teste de Sorte"
            local modificador = nil

            if sheet.Amaldicoado == true then
                  amaldicoado = -1
            elseif sheet.Amaldicoado == false then
                  amaldicoado = 0
            end

            if sheet.Cego == true then
                  cego = -3
            elseif sheet.Cego == false then
                  cego = 0
            end

            aflicoes = (amaldicoado) + (cego)

            jogarDadivaReves(modificador, aflicoes, jogada)

            escolherTeste = nil
      end

      -- --------------------------------------------------------
      -- Teste de Força
      local function testeDeForca()
            local debilitado = 0
            local amedrontado = 0
            local atordoado = 0
            local cego = 0
            local enfraquecido = 0
            local envenenado = 0
            local aflicoes = 0
            local jogada = nil
            local modificador = sheet.modForca

            if combate == false then
                  jogada = "Teste de Força"
            else
                  jogada = "Ataque com " .. arma
                  combate = false
            end

            if sheet.forcaDebilitada == true then
                  debilitado = -1
            elseif sheet.Debilitado == false then
                  debilitado = 0
            end

            if sheet.Amedrontado == true then
                  amedrontado = -1
            elseif sheet.Amedrontado == false then
                  amedrontado = 0
            end

            if sheet.Atordoado == true then
                  atordoado = -2
            elseif sheet.Atordoado == false then
                  atordoado = 0
            end

            if sheet.Cego == true then
                  cego = -3
            elseif sheet.Cego == false then
                  cego = 0
            end

            if sheet.Enfraquecido == true then
                  enfraquecido = -1
            elseif sheet.Enfraquecido == false then
                  enfraquecido = 0
            end

            if sheet.Envenenado == true then
                  envenenado = -1
            elseif sheet.Envenenado == false then
                  envenenado = 0
            end

            aflicoes = (debilitado) + (amedrontado) + (atordoado) + (cego) + (enfraquecido) + (envenenado) + (revesCombate)

            if tonumber(modificador) ~= nil then
                  modificador = tonumber(modificador)
            elseif string.sub(modificador, 1, 1) == "+" then
                  modificador = tonumber(string.sub(modificador, 2))
            else
                  modificador = tonumber(string.sub(modificador, 2)) * -1
            end

            jogarDadivaReves(modificador, aflicoes, jogada)

            escolherTeste = nil
            revesCombate = 0
      end

      -- --------------------------------------------------------
      -- Teste de Agilidade
      local function testeDeAgilidade()
            local debilitado = 0
            local amedrontado = 0
            local atordoado = 0
            local cego = 0
            local enfraquecido = 0
            local envenenado = 0
            local aflicoes = 0
            local jogada = nil
            local modificador = sheet.modAgilidade

            if combate == false then
                  jogada = "Teste de Agilidade"
            else
                  jogada = "Ataque com " .. arma
                  combate = false
            end

            if sheet.agilidadeDebilitada == true then
                  debilitado = -1
            elseif sheet.Debilitado == false then
                  debilitado = 0
            end

            if sheet.Amedrontado == true then
                  amedrontado = -1
            elseif sheet.Amedrontado == false then
                  amedrontado = 0
            end

            if sheet.Atordoado == true then
                  atordoado = -2
            elseif sheet.Atordoado == false then
                  atordoado = 0
            end

            if sheet.Cego == true then
                  cego = -3
            elseif sheet.Cego == false then
                  cego = 0
            end

            if sheet.Enfraquecido == true then
                  enfraquecido = -1
            elseif sheet.Enfraquecido == false then
                  enfraquecido = 0
            end

            if sheet.Envenenado == true then
                  envenenado = -1
            elseif sheet.Envenenado == false then
                  envenenado = 0
            end

            aflicoes = (debilitado) + (amedrontado) + (atordoado) + (cego) + (enfraquecido) + (envenenado) + (revesCombate)

            if tonumber(modificador) ~= nil then
                  modificador = tonumber(modificador)
            elseif string.sub(modificador, 1, 1) == "+" then
                  modificador = tonumber(string.sub(modificador, 2))
            else
                  modificador = tonumber(string.sub(modificador, 2)) * -1
            end

            jogarDadivaReves(modificador, aflicoes, jogada)

            escolherTeste = nil
            revesCombate = 0
      end

      -- --------------------------------------------------------
      -- Teste de Intelecto
      local function testeDeIntelecto()
            local debilitado = 0
            local amedrontado = 0
            local atordoado = 0
            local cego = 0
            local confuso = 0
            local envenenado = 0
            local aflicoes = 0
            local jogada = nil
            local modificador = sheet.modIntelecto

            if combate == false then
                  jogada = "Teste de Intelecto"
            else
                  jogada = "Ataque com " .. arma
                  combate = false
            end
            
            if sheet.intelectoDebilitado == true then
                  debilitado = -1
            elseif sheet.intelectoDebilitado == false then
                  debilitado = 0
            end

            if sheet.Amedrontado == true then
                  amedrontado = -1
            elseif sheet.Amedrontado == false then
                  amedrontado = 0
            end

            if sheet.Atordoado == true then
                  atordoado = -2
            elseif sheet.Atordoado == false then
                  atordoado = 0
            end

            if sheet.Cego == true then
                  cego = -3
            elseif sheet.Cego == false then
                  cego = 0
            end

            if sheet.Confuso == true then
                  confuso = -1
            elseif sheet.Confuso == false then
                  confuso = 0
            end

            if sheet.Envenenado == true then
                  envenenado = -1
            elseif sheet.Envenenado == false then
                  envenenado = 0
            end

            aflicoes = (debilitado) + (amedrontado) + (atordoado) + (cego) + (confuso) + (envenenado) + (revesCombate)

            if tonumber(modificador) ~= nil then
                  modificador = tonumber(modificador)
            elseif string.sub(modificador, 1, 1) == "+" then
                  modificador = tonumber(string.sub(modificador, 2))
            else
                  modificador = tonumber(string.sub(modificador, 2)) * -1
            end

            jogarDadivaReves(modificador, aflicoes, jogada)

            escolherTeste = nil
            revesCombate = 0
      end

      -- --------------------------------------------------------
      -- Teste de Vontade
      local function testeDeVontade()
            local debilitado = 0
            local amedrontado = 0
            local atordoado = 0
            local cego = 0
            local confuso = 0
            local envenenado = 0
            local aflicoes = 0
            local jogada = nil
            local modificador = sheet.modVontade

            if combate == false then
                  jogada = "Teste de Vontade"
            else
                  jogada = "Ataque com " .. arma
                  combate = false
            end

            if sheet.vontadeDebilitada == true then
                  debilitado = -1
            elseif sheet.vontadeDebilitada == false then
                  debilitado = 0
            end

            if sheet.Amedrontado == true then
                  amedrontado = -1
            elseif sheet.Amedrontado == false then
                  amedrontado = 0
            end

            if sheet.Atordoado == true then
                  atordoado = -2
            elseif sheet.Atordoado == false then
                  atordoado = 0
            end

            if sheet.Cego == true then
                  cego = -3
            elseif sheet.Cego == false then
                  cego = 0
            end

            if sheet.Confuso == true then
                  confuso = -1
            elseif sheet.Confuso == false then
                  confuso = 0
            end

            if sheet.Envenenado == true then
                  envenenado = -1
            elseif sheet.Envenenado == false then
                  envenenado = 0
            end

            aflicoes = (debilitado) + (amedrontado) + (atordoado) + (cego) + (confuso) + (envenenado) + (revesCombate)

            if tonumber(modificador) ~= nil then
                  modificador = tonumber(modificador)
            elseif string.sub(modificador, 1, 1) == "+" then
                  modificador = tonumber(string.sub(modificador, 2))
            else
                  modificador = tonumber(string.sub(modificador, 2)) * -1
            end

            jogarDadivaReves(modificador, aflicoes, jogada)

            escolherTeste = nil
            revesCombate = 0
      end

      -- --------------------------------------------------------
      -- Dados de Dano
      local function dadosDeDano(dano, danoAutomatico)
            local nome = getNome()
            local dano = dano
            local danoAutomatico = danoAutomatico
            local valDano = nil
            local mesaDeRPG = Firecast.getMesaDe(sheet)


            if danoAutomatico == true then
                  mesaDeRPG.chat:enviarMensagem("[§K2]Dano [§K1]= [§K9]"..dano.."[§K14] << "..arma.." "..nome.." >>")
            else
                  if numeroDados ~= 0 then
                        valDano = Firecast.interpretarRolagem(dano.."d6")
                        mesaDeRPG.chat:enviarMensagem("---")
                        mesaDeRPG.chat:rolarDados(valDano, "Dano com ".. arma .. nome)
                        mesaDeRPG.chat:enviarMensagem("---")
                  end
            end
            
      end

      -- --------------------------------------------------------
      -- Lançar Magia

      local function lancarMagia(nomeMagia, tradicaoMagia, alvoMagia, duracaoMagia, descricaoMagia)
            local nomeMagia = nomeMagia
            local tradicaoMagia = tradicaoMagia
            local alvoMagia = alvoMagia
            local duracaoMagia = duracaoMagia
            local descricaoMagia = descricaoMagia
            local mesaDeRPG = Firecast.getMesaDe(sheet)

            mesaDeRPG.chat:enviarMensagem("---")
            mesaDeRPG.chat:enviarMensagem("[§K2][§B]"..nomeMagia)
            mesaDeRPG.chat:enviarMensagem("[§K2][§B]Tradição: [§B]".."[§K1]"..tradicaoMagia)
            mesaDeRPG.chat:enviarMensagem("[§K2][§B]Alvo: [§B]".."[§K1]"..alvoMagia)
            mesaDeRPG.chat:enviarMensagem("[§K2][§B]Duração: [§B]".."[§K1]"..duracaoMagia)
            mesaDeRPG.chat:enviarMensagem("---")
            mesaDeRPG.chat:enviarMensagem("[§K1]"..descricaoMagia)
            mesaDeRPG.chat:enviarMensagem("---")
      end

      
      



    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Nome = sheet.frmNome
        end);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Nivel = sheet.frmNivel
        end);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Ancestralidade = sheet.frmAncestralidade
        end);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Idiomas = sheet.frmIdiomas
        end);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Profissoes = sheet.frmProfissoes
        end);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Religiao = sheet.frmReligiao
        end);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Genero = sheet.frmGenero
        end);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Idade = sheet.frmIdade
        end);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Olhos = sheet.frmOlhos
        end);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Cabelos = sheet.frmCabelos
        end);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Altura = sheet.frmAltura
        end);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Peso = sheet.frmPeso
        end);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Aprendiz = sheet.frmAprendiz
        end);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Especialista = sheet.frmEspecialista
        end);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Mestre = sheet.frmMestre
        end);

    obj._e_event15 = obj.rectangle29:addEventListener("onClick",
        function (event)
            escolherTeste = "forca"
                                                self.popDadivaReves:show()
        end);

    obj._e_event16 = obj.dataLink16:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Forca = sheet.frmForca
            
                                                      if sheet.Forca ~= nil then
                                                            if sheet.Forca > 10 then
                                                                  sheet.modForca = "+" .. sheet.Forca - 10
                                                            elseif sheet.Forca < 10 then
                                                                  sheet.modForca = "-" .. (sheet.Forca - 10) * -1
                                                            else
                                                                  sheet.modForca = sheet.Forca - 10
                                                            end
                                                      end
            
                                                      if sheet.Forca == nil then
                                                            sheet.modForca = nil
                                                      end
        end);

    obj._e_event17 = obj.rectangle31:addEventListener("onClick",
        function (event)
            escolherTeste = "agilidade"
                                                self.popDadivaReves:show()
        end);

    obj._e_event18 = obj.dataLink17:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Agilidade = sheet.frmAgilidade
            
                                                      if sheet.Agilidade ~= nil then
                                                            if sheet.Agilidade > 10 then
                                                                  sheet.modAgilidade = "+" .. sheet.Agilidade - 10
                                                            elseif sheet.Agilidade < 10 then
                                                                  sheet.modAgilidade = "-" .. (sheet.Agilidade - 10) * -1
                                                            else
                                                                  sheet.modAgilidade = sheet.Agilidade - 10
                                                            end
                                                      end
            
                                                      if sheet.Agilidade == nil then
                                                            sheet.modAgilidade = nil
                                                      end
        end);

    obj._e_event19 = obj.rectangle33:addEventListener("onClick",
        function (event)
            escolherTeste = "intelecto"
                                                self.popDadivaReves:show()
        end);

    obj._e_event20 = obj.dataLink18:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Intelecto = sheet.frmIntelecto
            
                                                      if sheet.Intelecto ~= nil then
                                                            if sheet.Intelecto > 10 then
                                                                  sheet.modIntelecto = "+" .. sheet.Intelecto - 10
                                                            elseif sheet.Intelecto < 10 then
                                                                  sheet.modIntelecto = "-" .. (sheet.Intelecto - 10) * -1
                                                            else
                                                                  sheet.modIntelecto = sheet.Intelecto - 10
                                                            end
                                                      end
            
                                                      if sheet.Intelecto == nil then
                                                            sheet.modIntelecto = nil
                                                      end
        end);

    obj._e_event21 = obj.rectangle35:addEventListener("onClick",
        function (event)
            escolherTeste = "vontade"
                                                self.popDadivaReves:show()
        end);

    obj._e_event22 = obj.dataLink19:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Vontade = sheet.frmVontade
            
                                                      if sheet.Vontade ~= nil then
                                                            if sheet.Vontade > 10 then
                                                                  sheet.modVontade = "+" .. sheet.Vontade - 10
                                                            elseif sheet.Vontade < 10 then
                                                                  sheet.modVontade = "-" .. (sheet.Vontade - 10) * -1
                                                            else
                                                                  sheet.modVontade = sheet.Vontade - 10
                                                            end
                                                      end
            
                                                      if sheet.Vontade == nil then
                                                            sheet.modVontade = nil
                                                      end
        end);

    obj._e_event23 = obj.dataLink20:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Tamanho = sheet.frmTamanho
        end);

    obj._e_event24 = obj.dataLink21:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Velocidade = sheet.frmVelocidade
        end);

    obj._e_event25 = obj.dataLink22:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Defesa = sheet.frmDefesa
        end);

    obj._e_event26 = obj.dataLink23:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.DefesaBlindada = sheet.frmDefesaBlin
        end);

    obj._e_event27 = obj.image5:addEventListener("onClick",
        function (event)
            escolherTeste = "sorte"
                                                self.popDadivaReves:show()
        end);

    obj._e_event28 = obj.dataLink24:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.Vida = sheet.frmVida
        end);

    obj._e_event29 = obj.edit1:addEventListener("onUserChange",
        function ()
            if sheet.Dano == nil then
                                                      sheet.Dano = 0
                                                end
            
                                                if sheet.vidaAtual == nil then
                                                      sheet.vidaAtual = 0
                                                end
        end);

    obj._e_event30 = obj.label53:addEventListener("onClick",
        function (event)
            if sheet.Dano == nil then
                                                            sheet.Dano = 0
                                                      end
            
                                                      if sheet.Dano == 0 then
                                                            sheet.Dano = 0
                                                      else
                                                            sheet.Dano = sheet.Dano - 1
                                                      end
        end);

    obj._e_event31 = obj.dataLink25:addEventListener("onChange",
        function (field, oldValue, newValue)
            if sheet.vidaAtual < sheet.Dano then
                                                            sheet.Dano = sheet.vidaAtual
                                                      end
        end);

    obj._e_event32 = obj.label54:addEventListener("onClick",
        function (event)
            if sheet.Dano == nil then
                                                            sheet.Dano = 0
                                                      end
            
                                                      if sheet.Dano == sheet.vidaAtual then
                                                            sheet.Dano = sheet.vidaAtual
                                                      else
                                                            sheet.Dano = sheet.Dano + 1
                                                      end
        end);

    obj._e_event33 = obj.dataLink26:addEventListener("onChange",
        function (field, oldValue, newValue)
            sheet.valDano = sheet.Dano
        end);

    obj._e_event34 = obj.image6:addEventListener("onClick",
        function (event)
            self.popFrmPrincipal:show()
        end);

    obj._e_event35 = obj.image8:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma01
                                          
                                                if sheet.nomeArma01 ~= nil and sheet.nomeArma01 ~= "--" then
                                                      if sheet.dadivaRevesArma01 ~= "Dádiva / Revés" and sheet.dadivaRevesArma01 ~= "--" then
                                                            if string.sub(sheet.dadivaRevesArma01, 1, 1) == "-" then
                                                                  revesCombate = tonumber(string.sub(sheet.dadivaRevesArma01, 2, 2)) * -1
                                                            elseif string.sub(sheet.dadivaRevesArma01, 1, 1) == "+" then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma01, 2, 2))
                                                            elseif string.match(string.sub(sheet.dadivaRevesArma01, 1, 1), "%d") ~= nil then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma01, 1, 1))
                                                            else
                                                                  dadivaCombate = 0
                                                                  showMessage("Informe corretamente o valor da dádiva ou revés!")
                                                            end
                                                      end
            
                                                      if sheet.atributoArma01 == "Atributo" then
                                                            showMessage("Escolha um Atributo!")
                                                      elseif sheet.atributoArma01 == "Força" then
                                                            escolherTeste = "forca"
                                                            combate = true
                                                            arma = sheet.nomeArma01
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma01 == "Agilidade" then
                                                            escolherTeste = "agilidade"
                                                            combate = true
                                                            arma = sheet.nomeArma01
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma01 == "Intelecto" then
                                                            escolherTeste = "intelecto"
                                                            combate = true
                                                            arma = sheet.nomeArma01
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma01 == "Vontade" then
                                                            escolherTeste = "vontade"
                                                            combate = true
                                                            arma = sheet.nomeArma01
                                                            self.popDadivaReves:show()
                                                      end
                                                else
                                                      showMessage("Informe o nome da arma!")
                                                end
        end);

    obj._e_event36 = obj.image9:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma01
                                          
                                          if sheet.nomeArma01 ~= nil and sheet.nomeArma01 ~= "--" then
                                                if sheet.danoArma01 ~= nil then
            
                                                      if string.match(string.sub(sheet.danoArma01, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma01, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma01, 3, 3), "%d") ~= nil and #sheet.danoArma01 == 3 then
                                                            dano = tonumber(string.sub(sheet.danoArma01, 1, 1)..string.sub(sheet.danoArma01, 2, 2)..string.sub(sheet.danoArma01, 3, 3))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma01, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma01, 2, 2), "%d") ~= nil and #sheet.danoArma01 == 2 then
                                                            dano = tonumber(string.sub(sheet.danoArma01, 1, 1)..string.sub(sheet.danoArma01, 2, 2))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma01, 1, 1), "%d") ~= nil and #sheet.danoArma01 == 1 then
                                                            dano = tonumber(string.sub(sheet.danoArma01, 1, 1))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma01, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma01, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma01, 3, 3), "%d") == nil and #sheet.danoArma01 == 4 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma01, 1, 1)..string.sub(sheet.danoArma01, 2, 2))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      elseif string.match(string.sub(sheet.danoArma01, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma01, 2, 2), "%d") == nil and #sheet.danoArma01 == 3 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma01, 1, 1))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      else
                                                            showMessage("Informe corretamente o valor do dano! \nEx: 3d6 \nMax: 99d6")
                                                            dano = 0
                                                            danoAutomatico = true
                                                      end
                                                end
            
                                                dadosDeDano(dano, danoAutomatico)
                                                danoAutomatico = false
                                          end
        end);

    obj._e_event37 = obj.edit3:addEventListener("onUserChange",
        function ()
            if sheet.nomeArma01 ~= nil then
                                                      sheet.dadivaRevesArma01 = "Dádiva / Revés"
                                                else
                                                      sheet.nomeArma01 = "--"
                                                      sheet.dadivaRevesArma01 = "--"
                                                end
                                                
                                                if #sheet.nomeArma01 > 39 then
                                                      local delCaracteres = 38 - #sheet.nomeArma01
                                                      sheet.nomeArma01 = string.sub(sheet.nomeArma01, 1, delCaracteres)
                                                end
        end);

    obj._e_event38 = obj.edit4:addEventListener("onUserChange",
        function ()
            if sheet.dadivaRevesArma01 == nil then
                                                      sheet.dadivaRevesArma01 = "Dádiva / Revés"
                                                end
            
                                                if sheet.dadivaRevesArma01 ~= "Dádiva / Revés" then
                                                      if #sheet.dadivaRevesArma01 > 4 then
                                                            local delCaracteres = 3 - #sheet.dadivaRevesArma01
                                                            sheet.dadivaRevesArma01 = string.sub(sheet.dadivaRevesArma01, 1, delCaracteres)
                                                      end
                                                end
        end);

    obj._e_event39 = obj.edit5:addEventListener("onUserChange",
        function ()
            if sheet.propriedadesArma01 == nil then
                                                      sheet.propriedadesArma01 = "--"
                                                end
                                                
                                                if #sheet.propriedadesArma01 > 52 then
                                                      local delCaracteres = 51 - #sheet.propriedadesArma01
                                                      sheet.propriedadesArma01 = string.sub(sheet.propriedadesArma01, 1, delCaracteres)
                                                end
        end);

    obj._e_event40 = obj.edit6:addEventListener("onChange",
        function ()
            if sheet.danoArma01 == nil then
                                                      sheet.danoArma01 = "--"
                                                end
                                                
                                                if #sheet.danoArma01 > 4 then
                                                      local delCaracteres = 3 - #sheet.danoArma01
                                                      sheet.danoArma01 = string.sub(sheet.danoArma01, 1, delCaracteres)
                                                end
        end);

    obj._e_event41 = obj.image10:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma02
                                          
                                                if sheet.nomeArma02 ~= nil and sheet.nomeArma02 ~= "--"  then
                                                      if sheet.dadivaRevesArma02 ~= "Dádiva / Revés" and sheet.dadivaRevesArma02 ~= "--" then
                                                            if string.sub(sheet.dadivaRevesArma02, 1, 1) == "-" then
                                                                  revesCombate = tonumber(string.sub(sheet.dadivaRevesArma02, 2, 2)) * -1
                                                            elseif string.sub(sheet.dadivaRevesArma02, 1, 1) == "+" then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma02, 2, 2))
                                                            elseif string.match(string.sub(sheet.dadivaRevesArma02, 1, 1), "%d") ~= nil then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma02, 1, 1))
                                                            else
                                                                  dadivaCombate = 0
                                                                  showMessage("Informe corretamente o valor da dádiva ou revés!")
                                                            end
                                                      end
            
                                                      if sheet.atributoArma02 == "Atributo" then
                                                            showMessage("Escolha um Atributo!")
                                                      elseif sheet.atributoArma02 == "Força" then
                                                            escolherTeste = "forca"
                                                            combate = true
                                                            arma = sheet.nomeArma02
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma02 == "Agilidade" then
                                                            escolherTeste = "agilidade"
                                                            combate = true
                                                            arma = sheet.nomeArma02
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma02 == "Intelecto" then
                                                            escolherTeste = "intelecto"
                                                            combate = true
                                                            arma = sheet.nomeArma02
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma02 == "Vontade" then
                                                            escolherTeste = "vontade"
                                                            combate = true
                                                            arma = sheet.nomeArma02
                                                            self.popDadivaReves:show()
                                                      end
                                                else
                                                      showMessage("Informe o nome da arma!")
                                                end
        end);

    obj._e_event42 = obj.image11:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma02
                                          
                                          if sheet.nomeArma02 ~= nil and sheet.nomeArma02 ~= "--"  then
                                                if sheet.danoArma02 ~= nil then
            
                                                      if string.match(string.sub(sheet.danoArma02, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma02, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma02, 3, 3), "%d") ~= nil and #sheet.danoArma02 == 3 then
                                                            dano = tonumber(string.sub(sheet.danoArma02, 1, 1)..string.sub(sheet.danoArma02, 2, 2)..string.sub(sheet.danoArma02, 3, 3))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma02, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma02, 2, 2), "%d") ~= nil and #sheet.danoArma02 == 2 then
                                                            dano = tonumber(string.sub(sheet.danoArma02, 1, 1)..string.sub(sheet.danoArma02, 2, 2))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma02, 1, 1), "%d") ~= nil and #sheet.danoArma02 == 1 then
                                                            dano = tonumber(string.sub(sheet.danoArma02, 1, 1))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma02, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma02, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma02, 3, 3), "%d") == nil and #sheet.danoArma02 == 4 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma02, 1, 1)..string.sub(sheet.danoArma02, 2, 2))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      elseif string.match(string.sub(sheet.danoArma02, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma02, 2, 2), "%d") == nil and #sheet.danoArma02 == 3 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma02, 1, 1))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      else
                                                            showMessage("Informe corretamente o valor do dano! \nEx: 3d6 \nMax: 99d6")
                                                            dano = 0
                                                            danoAutomatico = true
                                                      end
                                                end
            
                                                dadosDeDano(dano, danoAutomatico)
                                                danoAutomatico = false
                                          end
        end);

    obj._e_event43 = obj.edit7:addEventListener("onUserChange",
        function ()
            if sheet.nomeArma02 ~= nil then
                                                      sheet.dadivaRevesArma02 = "Dádiva / Revés"
                                                else
                                                      sheet.nomeArma02 = "--"
                                                      sheet.dadivaRevesArma02 = "--"
                                                end
                                                
                                                if #sheet.nomeArma02 > 39 then
                                                      local delCaracteres = 38 - #sheet.nomeArma02
                                                      sheet.nomeArma02 = string.sub(sheet.nomeArma02, 1, delCaracteres)
                                                end
        end);

    obj._e_event44 = obj.edit8:addEventListener("onUserChange",
        function ()
            if sheet.dadivaRevesArma02 == nil then
                                                      sheet.dadivaRevesArma02 = "Dádiva / Revés"
                                                end
            
                                                if sheet.dadivaRevesArma02 ~= "Dádiva / Revés" then
                                                      if #sheet.dadivaRevesArma02 > 4 then
                                                            local delCaracteres = 3 - #sheet.dadivaRevesArma02
                                                            sheet.dadivaRevesArma02 = string.sub(sheet.dadivaRevesArma02, 1, delCaracteres)
                                                      end
                                                end
        end);

    obj._e_event45 = obj.edit9:addEventListener("onUserChange",
        function ()
            if sheet.propriedadesArma02 == nil then
                                                      sheet.propriedadesArma02 = "--"
                                                end
                                                
                                                if #sheet.propriedadesArma02 > 52 then
                                                      local delCaracteres = 51 - #sheet.propriedadesArma02
                                                      sheet.propriedadesArma02 = string.sub(sheet.propriedadesArma02, 1, delCaracteres)
                                                end
        end);

    obj._e_event46 = obj.edit10:addEventListener("onChange",
        function ()
            if sheet.danoArma02 == nil then
                                                      sheet.danoArma02 = "--"
                                                end
                                                
                                                if #sheet.danoArma02 > 4 then
                                                      local delCaracteres = 3 - #sheet.danoArma02
                                                      sheet.danoArma02 = string.sub(sheet.danoArma02, 1, delCaracteres)
                                                end
        end);

    obj._e_event47 = obj.image12:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma03
                                          
                                                if sheet.nomeArma03 ~= nil and sheet.nomeArma03 ~= "--"  then
                                                      if sheet.dadivaRevesArma03 ~= "Dádiva / Revés" and sheet.dadivaRevesArma03 ~= "--" then
                                                            if string.sub(sheet.dadivaRevesArma03, 1, 1) == "-" then
                                                                  revesCombate = tonumber(string.sub(sheet.dadivaRevesArma03, 2, 2)) * -1
                                                            elseif string.sub(sheet.dadivaRevesArma03, 1, 1) == "+" then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma03, 2, 2))
                                                            elseif string.match(string.sub(sheet.dadivaRevesArma03, 1, 1), "%d") ~= nil then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma03, 1, 1))
                                                            else
                                                                  dadivaCombate = 0
                                                                  showMessage("Informe corretamente o valor da dádiva ou revés!")
                                                            end
                                                      end
            
                                                      if sheet.atributoArma03 == "Atributo" then
                                                            showMessage("Escolha um Atributo!")
                                                      elseif sheet.atributoArma03 == "Força" then
                                                            escolherTeste = "forca"
                                                            combate = true
                                                            arma = sheet.nomeArma03
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma03 == "Agilidade" then
                                                            escolherTeste = "agilidade"
                                                            combate = true
                                                            arma = sheet.nomeArma03
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma03 == "Intelecto" then
                                                            escolherTeste = "intelecto"
                                                            combate = true
                                                            arma = sheet.nomeArma03
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma03 == "Vontade" then
                                                            escolherTeste = "vontade"
                                                            combate = true
                                                            arma = sheet.nomeArma03
                                                            self.popDadivaReves:show()
                                                      end
                                                else
                                                      showMessage("Informe o nome da arma!")
                                                end
        end);

    obj._e_event48 = obj.image13:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma03
                                          
                                          if sheet.nomeArma03 ~= nil and sheet.nomeArma03 ~= "--"  then
                                                if sheet.danoArma03 ~= nil then
            
                                                      if string.match(string.sub(sheet.danoArma03, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma03, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma03, 3, 3), "%d") ~= nil and #sheet.danoArma03 == 3 then
                                                            dano = tonumber(string.sub(sheet.danoArma03, 1, 1)..string.sub(sheet.danoArma03, 2, 2)..string.sub(sheet.danoArma03, 3, 3))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma03, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma03, 2, 2), "%d") ~= nil and #sheet.danoArma03 == 2 then
                                                            dano = tonumber(string.sub(sheet.danoArma03, 1, 1)..string.sub(sheet.danoArma03, 2, 2))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma03, 1, 1), "%d") ~= nil and #sheet.danoArma03 == 1 then
                                                            dano = tonumber(string.sub(sheet.danoArma03, 1, 1))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma03, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma03, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma03, 3, 3), "%d") == nil and #sheet.danoArma03 == 4 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma03, 1, 1)..string.sub(sheet.danoArma03, 2, 2))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      elseif string.match(string.sub(sheet.danoArma03, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma03, 2, 2), "%d") == nil and #sheet.danoArma03 == 3 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma03, 1, 1))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      else
                                                            showMessage("Informe corretamente o valor do dano! \nEx: 3d6 \nMax: 99d6")
                                                            dano = 0
                                                            danoAutomatico = true
                                                      end
                                                end
            
                                                dadosDeDano(dano, danoAutomatico)
                                                danoAutomatico = false
                                          end
        end);

    obj._e_event49 = obj.edit11:addEventListener("onUserChange",
        function ()
            if sheet.nomeArma03 ~= nil then
                                                      sheet.dadivaRevesArma03 = "Dádiva / Revés"
                                                else
                                                      sheet.nomeArma03 = "--"
                                                      sheet.dadivaRevesArma03 = "--"
                                                end
                                                
                                                if #sheet.nomeArma03 > 39 then
                                                      local delCaracteres = 38 - #sheet.nomeArma03
                                                      sheet.nomeArma03 = string.sub(sheet.nomeArma03, 1, delCaracteres)
                                                end
        end);

    obj._e_event50 = obj.edit12:addEventListener("onUserChange",
        function ()
            if sheet.dadivaRevesArma03 == nil then
                                                      sheet.dadivaRevesArma03 = "Dádiva / Revés"
                                                end
            
                                                if sheet.dadivaRevesArma03 ~= "Dádiva / Revés" then
                                                      if #sheet.dadivaRevesArma03 > 4 then
                                                            local delCaracteres = 3 - #sheet.dadivaRevesArma03
                                                            sheet.dadivaRevesArma03 = string.sub(sheet.dadivaRevesArma03, 1, delCaracteres)
                                                      end
                                                end
        end);

    obj._e_event51 = obj.edit13:addEventListener("onUserChange",
        function ()
            if sheet.propriedadesArma03 == nil then
                                                      sheet.propriedadesArma03 = "--"
                                                end
                                                
                                                if #sheet.propriedadesArma03 > 52 then
                                                      local delCaracteres = 51 - #sheet.propriedadesArma03
                                                      sheet.propriedadesArma03 = string.sub(sheet.propriedadesArma03, 1, delCaracteres)
                                                end
        end);

    obj._e_event52 = obj.edit14:addEventListener("onChange",
        function ()
            if sheet.danoArma03 == nil then
                                                      sheet.danoArma03 = "--"
                                                end
                                                
                                                if #sheet.danoArma03 > 4 then
                                                      local delCaracteres = 3 - #sheet.danoArma03
                                                      sheet.danoArma03 = string.sub(sheet.danoArma03, 1, delCaracteres)
                                                end
        end);

    obj._e_event53 = obj.image14:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma04
                                          
                                                if sheet.nomeArma04 ~= nil and sheet.nomeArma04 ~= "--"  then
                                                      if sheet.dadivaRevesArma04 ~= "Dádiva / Revés" and sheet.dadivaRevesArma04 ~= "--" then
                                                            if string.sub(sheet.dadivaRevesArma04, 1, 1) == "-" then
                                                                  revesCombate = tonumber(string.sub(sheet.dadivaRevesArma04, 2, 2)) * -1
                                                            elseif string.sub(sheet.dadivaRevesArma04, 1, 1) == "+" then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma04, 2, 2))
                                                            elseif string.match(string.sub(sheet.dadivaRevesArma04, 1, 1), "%d") ~= nil then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma04, 1, 1))
                                                            else
                                                                  dadivaCombate = 0
                                                                  showMessage("Informe corretamente o valor da dádiva ou revés!")
                                                            end
                                                      end
            
                                                      if sheet.atributoArma04 == "Atributo" then
                                                            showMessage("Escolha um Atributo!")
                                                      elseif sheet.atributoArma04 == "Força" then
                                                            escolherTeste = "forca"
                                                            combate = true
                                                            arma = sheet.nomeArma04
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma04 == "Agilidade" then
                                                            escolherTeste = "agilidade"
                                                            combate = true
                                                            arma = sheet.nomeArma04
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma04 == "Intelecto" then
                                                            escolherTeste = "intelecto"
                                                            combate = true
                                                            arma = sheet.nomeArma04
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma04 == "Vontade" then
                                                            escolherTeste = "vontade"
                                                            combate = true
                                                            arma = sheet.nomeArma04
                                                            self.popDadivaReves:show()
                                                      end
                                                else
                                                      showMessage("Informe o nome da arma!")
                                                end
        end);

    obj._e_event54 = obj.image15:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma04
                                          
                                          if sheet.nomeArma04 ~= nil and sheet.nomeArma04 ~= "--"  then
                                                if sheet.danoArma04 ~= nil then
            
                                                      if string.match(string.sub(sheet.danoArma04, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma04, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma04, 3, 3), "%d") ~= nil and #sheet.danoArma04 == 3 then
                                                            dano = tonumber(string.sub(sheet.danoArma04, 1, 1)..string.sub(sheet.danoArma04, 2, 2)..string.sub(sheet.danoArma04, 3, 3))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma04, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma04, 2, 2), "%d") ~= nil and #sheet.danoArma04 == 2 then
                                                            dano = tonumber(string.sub(sheet.danoArma04, 1, 1)..string.sub(sheet.danoArma04, 2, 2))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma04, 1, 1), "%d") ~= nil and #sheet.danoArma04 == 1 then
                                                            dano = tonumber(string.sub(sheet.danoArma04, 1, 1))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma04, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma04, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma04, 3, 3), "%d") == nil and #sheet.danoArma04 == 4 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma04, 1, 1)..string.sub(sheet.danoArma04, 2, 2))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      elseif string.match(string.sub(sheet.danoArma04, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma04, 2, 2), "%d") == nil and #sheet.danoArma04 == 3 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma04, 1, 1))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      else
                                                            showMessage("Informe corretamente o valor do dano! \nEx: 3d6 \nMax: 99d6")
                                                            dano = 0
                                                            danoAutomatico = true
                                                      end
                                                end
            
                                                dadosDeDano(dano, danoAutomatico)
                                                danoAutomatico = false
                                          end
        end);

    obj._e_event55 = obj.edit15:addEventListener("onUserChange",
        function ()
            if sheet.nomeArma04 ~= nil then
                                                      sheet.dadivaRevesArma04 = "Dádiva / Revés"
                                                else
                                                      sheet.nomeArma04 = "--"
                                                      sheet.dadivaRevesArma04 = "--"
                                                end
                                                
                                                if #sheet.nomeArma04 > 39 then
                                                      local delCaracteres = 38 - #sheet.nomeArma04
                                                      sheet.nomeArma04 = string.sub(sheet.nomeArma04, 1, delCaracteres)
                                                end
        end);

    obj._e_event56 = obj.edit16:addEventListener("onUserChange",
        function ()
            if sheet.dadivaRevesArma04 == nil then
                                                      sheet.dadivaRevesArma04 = "Dádiva / Revés"
                                                end
            
                                                if sheet.dadivaRevesArma04 ~= "Dádiva / Revés" then
                                                      if #sheet.dadivaRevesArma04 > 4 then
                                                            local delCaracteres = 3 - #sheet.dadivaRevesArma04
                                                            sheet.dadivaRevesArma04 = string.sub(sheet.dadivaRevesArma04, 1, delCaracteres)
                                                      end
                                                end
        end);

    obj._e_event57 = obj.edit17:addEventListener("onUserChange",
        function ()
            if sheet.propriedadesArma04 == nil then
                                                      sheet.propriedadesArma04 = "--"
                                                end
                                                
                                                if #sheet.propriedadesArma04 > 52 then
                                                      local delCaracteres = 51 - #sheet.propriedadesArma04
                                                      sheet.propriedadesArma04 = string.sub(sheet.propriedadesArma04, 1, delCaracteres)
                                                end
        end);

    obj._e_event58 = obj.edit18:addEventListener("onChange",
        function ()
            if sheet.danoArma04 == nil then
                                                      sheet.danoArma04 = "--"
                                                end
                                                
                                                if #sheet.danoArma04 > 4 then
                                                      local delCaracteres = 3 - #sheet.danoArma04
                                                      sheet.danoArma04 = string.sub(sheet.danoArma04, 1, delCaracteres)
                                                end
        end);

    obj._e_event59 = obj.image16:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma05
                                          
                                                if sheet.nomeArma05 ~= nil and sheet.nomeArma05 ~= "--"  then
                                                      if sheet.dadivaRevesArma05 ~= "Dádiva / Revés" and sheet.dadivaRevesArma05 ~= "--" then
                                                            if string.sub(sheet.dadivaRevesArma05, 1, 1) == "-" then
                                                                  revesCombate = tonumber(string.sub(sheet.dadivaRevesArma05, 2, 2)) * -1
                                                            elseif string.sub(sheet.dadivaRevesArma05, 1, 1) == "+" then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma05, 2, 2))
                                                            elseif string.match(string.sub(sheet.dadivaRevesArma05, 1, 1), "%d") ~= nil then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma05, 1, 1))
                                                            else
                                                                  dadivaCombate = 0
                                                                  showMessage("Informe corretamente o valor da dádiva ou revés!")
                                                            end
                                                      end
            
                                                      if sheet.atributoArma05 == "Atributo" then
                                                            showMessage("Escolha um Atributo!")
                                                      elseif sheet.atributoArma05 == "Força" then
                                                            escolherTeste = "forca"
                                                            combate = true
                                                            arma = sheet.nomeArma05
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma05 == "Agilidade" then
                                                            escolherTeste = "agilidade"
                                                            combate = true
                                                            arma = sheet.nomeArma05
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma05 == "Intelecto" then
                                                            escolherTeste = "intelecto"
                                                            combate = true
                                                            arma = sheet.nomeArma05
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma05 == "Vontade" then
                                                            escolherTeste = "vontade"
                                                            combate = true
                                                            arma = sheet.nomeArma05
                                                            self.popDadivaReves:show()
                                                      end
                                                else
                                                      showMessage("Informe o nome da arma!")
                                                end
        end);

    obj._e_event60 = obj.image17:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma05
                                          
                                          if sheet.nomeArma05 ~= nil and sheet.nomeArma05 ~= "--"  then
                                                if sheet.danoArma05 ~= nil then
            
                                                      if string.match(string.sub(sheet.danoArma05, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma05, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma05, 3, 3), "%d") ~= nil and #sheet.danoArma05 == 3 then
                                                            dano = tonumber(string.sub(sheet.danoArma05, 1, 1)..string.sub(sheet.danoArma05, 2, 2)..string.sub(sheet.danoArma05, 3, 3))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma05, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma05, 2, 2), "%d") ~= nil and #sheet.danoArma05 == 2 then
                                                            dano = tonumber(string.sub(sheet.danoArma05, 1, 1)..string.sub(sheet.danoArma05, 2, 2))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma05, 1, 1), "%d") ~= nil and #sheet.danoArma05 == 1 then
                                                            dano = tonumber(string.sub(sheet.danoArma05, 1, 1))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma05, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma05, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma05, 3, 3), "%d") == nil and #sheet.danoArma05 == 4 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma05, 1, 1)..string.sub(sheet.danoArma05, 2, 2))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      elseif string.match(string.sub(sheet.danoArma05, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma05, 2, 2), "%d") == nil and #sheet.danoArma05 == 3 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma05, 1, 1))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      else
                                                            showMessage("Informe corretamente o valor do dano! \nEx: 3d6 \nMax: 99d6")
                                                            dano = 0
                                                            danoAutomatico = true
                                                      end
                                                end
            
                                                dadosDeDano(dano, danoAutomatico)
                                                danoAutomatico = false
                                          end
        end);

    obj._e_event61 = obj.edit19:addEventListener("onUserChange",
        function ()
            if sheet.nomeArma05 ~= nil then
                                                      sheet.dadivaRevesArma05 = "Dádiva / Revés"
                                                else
                                                      sheet.nomeArma05 = "--"
                                                      sheet.dadivaRevesArma05 = "--"
                                                end
                                                
                                                if #sheet.nomeArma05 > 39 then
                                                      local delCaracteres = 38 - #sheet.nomeArma05
                                                      sheet.nomeArma05 = string.sub(sheet.nomeArma05, 1, delCaracteres)
                                                end
        end);

    obj._e_event62 = obj.edit20:addEventListener("onUserChange",
        function ()
            if sheet.dadivaRevesArma05 == nil then
                                                      sheet.dadivaRevesArma05 = "Dádiva / Revés"
                                                end
            
                                                if sheet.dadivaRevesArma05 ~= "Dádiva / Revés" then
                                                      if #sheet.dadivaRevesArma05 > 4 then
                                                            local delCaracteres = 3 - #sheet.dadivaRevesArma05
                                                            sheet.dadivaRevesArma05 = string.sub(sheet.dadivaRevesArma05, 1, delCaracteres)
                                                      end
                                                end
        end);

    obj._e_event63 = obj.edit21:addEventListener("onUserChange",
        function ()
            if sheet.propriedadesArma05 == nil then
                                                      sheet.propriedadesArma05 = "--"
                                                end
                                                
                                                if #sheet.propriedadesArma05 > 52 then
                                                      local delCaracteres = 51 - #sheet.propriedadesArma05
                                                      sheet.propriedadesArma05 = string.sub(sheet.propriedadesArma05, 1, delCaracteres)
                                                end
        end);

    obj._e_event64 = obj.edit22:addEventListener("onChange",
        function ()
            if sheet.danoArma05 == nil then
                                                      sheet.danoArma05 = "--"
                                                end
                                                
                                                if #sheet.danoArma05 > 4 then
                                                      local delCaracteres = 3 - #sheet.danoArma05
                                                      sheet.danoArma05 = string.sub(sheet.danoArma05, 1, delCaracteres)
                                                end
        end);

    obj._e_event65 = obj.image18:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma06
                                          
                                                if sheet.nomeArma06 ~= nil and sheet.nomeArma06 ~= "--"  then
                                                      if sheet.dadivaRevesArma06 ~= "Dádiva / Revés" and sheet.dadivaRevesArma06 ~= "--" then
                                                            if string.sub(sheet.dadivaRevesArma06, 1, 1) == "-" then
                                                                  revesCombate = tonumber(string.sub(sheet.dadivaRevesArma06, 2, 2)) * -1
                                                            elseif string.sub(sheet.dadivaRevesArma06, 1, 1) == "+" then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma06, 2, 2))
                                                            elseif string.match(string.sub(sheet.dadivaRevesArma06, 1, 1), "%d") ~= nil then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma06, 1, 1))
                                                            else
                                                                  dadivaCombate = 0
                                                                  showMessage("Informe corretamente o valor da dádiva ou revés!")
                                                            end
                                                      end
            
                                                      if sheet.atributoArma06 == "Atributo" then
                                                            showMessage("Escolha um Atributo!")
                                                      elseif sheet.atributoArma06 == "Força" then
                                                            escolherTeste = "forca"
                                                            combate = true
                                                            arma = sheet.nomeArma06
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma06 == "Agilidade" then
                                                            escolherTeste = "agilidade"
                                                            combate = true
                                                            arma = sheet.nomeArma06
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma06 == "Intelecto" then
                                                            escolherTeste = "intelecto"
                                                            combate = true
                                                            arma = sheet.nomeArma06
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma06 == "Vontade" then
                                                            escolherTeste = "vontade"
                                                            combate = true
                                                            arma = sheet.nomeArma06
                                                            self.popDadivaReves:show()
                                                      end
                                                else
                                                      showMessage("Informe o nome da arma!")
                                                end
        end);

    obj._e_event66 = obj.image19:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma06
                                          
                                          if sheet.nomeArma06 ~= nil and sheet.nomeArma06 ~= "--"  then
                                                if sheet.danoArma06 ~= nil then
            
                                                      if string.match(string.sub(sheet.danoArma06, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma06, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma06, 3, 3), "%d") ~= nil and #sheet.danoArma06 == 3 then
                                                            dano = tonumber(string.sub(sheet.danoArma06, 1, 1)..string.sub(sheet.danoArma06, 2, 2)..string.sub(sheet.danoArma06, 3, 3))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma06, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma06, 2, 2), "%d") ~= nil and #sheet.danoArma06 == 2 then
                                                            dano = tonumber(string.sub(sheet.danoArma06, 1, 1)..string.sub(sheet.danoArma06, 2, 2))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma06, 1, 1), "%d") ~= nil and #sheet.danoArma06 == 1 then
                                                            dano = tonumber(string.sub(sheet.danoArma06, 1, 1))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma06, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma06, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma06, 3, 3), "%d") == nil and #sheet.danoArma06 == 4 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma06, 1, 1)..string.sub(sheet.danoArma06, 2, 2))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      elseif string.match(string.sub(sheet.danoArma06, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma06, 2, 2), "%d") == nil and #sheet.danoArma06 == 3 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma06, 1, 1))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      else
                                                            showMessage("Informe corretamente o valor do dano! \nEx: 3d6 \nMax: 99d6")
                                                            dano = 0
                                                            danoAutomatico = true
                                                      end
                                                end
            
                                                dadosDeDano(dano, danoAutomatico)
                                                danoAutomatico = false
                                          end
        end);

    obj._e_event67 = obj.edit23:addEventListener("onUserChange",
        function ()
            if sheet.nomeArma06 ~= nil then
                                                      sheet.dadivaRevesArma06 = "Dádiva / Revés"
                                                else
                                                      sheet.nomeArma06 = "--"
                                                      sheet.dadivaRevesArma06 = "--"
                                                end
                                                
                                                if #sheet.nomeArma06 > 39 then
                                                      local delCaracteres = 38 - #sheet.nomeArma06
                                                      sheet.nomeArma06 = string.sub(sheet.nomeArma06, 1, delCaracteres)
                                                end
        end);

    obj._e_event68 = obj.edit24:addEventListener("onUserChange",
        function ()
            if sheet.dadivaRevesArma06 == nil then
                                                      sheet.dadivaRevesArma06 = "Dádiva / Revés"
                                                end
            
                                                if sheet.dadivaRevesArma06 ~= "Dádiva / Revés" then
                                                      if #sheet.dadivaRevesArma06 > 4 then
                                                            local delCaracteres = 3 - #sheet.dadivaRevesArma06
                                                            sheet.dadivaRevesArma06 = string.sub(sheet.dadivaRevesArma06, 1, delCaracteres)
                                                      end
                                                end
        end);

    obj._e_event69 = obj.edit25:addEventListener("onUserChange",
        function ()
            if sheet.propriedadesArma06 == nil then
                                                      sheet.propriedadesArma06 = "--"
                                                end
                                                
                                                if #sheet.propriedadesArma06 > 52 then
                                                      local delCaracteres = 51 - #sheet.propriedadesArma06
                                                      sheet.propriedadesArma06 = string.sub(sheet.propriedadesArma06, 1, delCaracteres)
                                                end
        end);

    obj._e_event70 = obj.edit26:addEventListener("onChange",
        function ()
            if sheet.danoArma06 == nil then
                                                      sheet.danoArma06 = "--"
                                                end
                                                
                                                if #sheet.danoArma06 > 4 then
                                                      local delCaracteres = 3 - #sheet.danoArma06
                                                      sheet.danoArma06 = string.sub(sheet.danoArma06, 1, delCaracteres)
                                                end
        end);

    obj._e_event71 = obj.image20:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma07
                                          
                                                if sheet.nomeArma07 ~= nil and sheet.nomeArma07 ~= "--"  then
                                                      if sheet.dadivaRevesArma07 ~= "Dádiva / Revés" and sheet.dadivaRevesArma07 ~= "--" then
                                                            if string.sub(sheet.dadivaRevesArma07, 1, 1) == "-" then
                                                                  revesCombate = tonumber(string.sub(sheet.dadivaRevesArma07, 2, 2)) * -1
                                                            elseif string.sub(sheet.dadivaRevesArma07, 1, 1) == "+" then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma07, 2, 2))
                                                            elseif string.match(string.sub(sheet.dadivaRevesArma07, 1, 1), "%d") ~= nil then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma07, 1, 1))
                                                            else
                                                                  dadivaCombate = 0
                                                                  showMessage("Informe corretamente o valor da dádiva ou revés!")
                                                            end
                                                      end
            
                                                      if sheet.atributoArma07 == "Atributo" then
                                                            showMessage("Escolha um Atributo!")
                                                      elseif sheet.atributoArma07 == "Força" then
                                                            escolherTeste = "forca"
                                                            combate = true
                                                            arma = sheet.nomeArma07
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma07 == "Agilidade" then
                                                            escolherTeste = "agilidade"
                                                            combate = true
                                                            arma = sheet.nomeArma07
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma07 == "Intelecto" then
                                                            escolherTeste = "intelecto"
                                                            combate = true
                                                            arma = sheet.nomeArma07
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma07 == "Vontade" then
                                                            escolherTeste = "vontade"
                                                            combate = true
                                                            arma = sheet.nomeArma07
                                                            self.popDadivaReves:show()
                                                      end
                                                else
                                                      showMessage("Informe o nome da arma!")
                                                end
        end);

    obj._e_event72 = obj.image21:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma07
                                          
                                          if sheet.nomeArma07 ~= nil and sheet.nomeArma07 ~= "--"  then
                                                if sheet.danoArma07 ~= nil then
            
                                                      if string.match(string.sub(sheet.danoArma07, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma07, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma07, 3, 3), "%d") ~= nil and #sheet.danoArma07 == 3 then
                                                            dano = tonumber(string.sub(sheet.danoArma07, 1, 1)..string.sub(sheet.danoArma07, 2, 2)..string.sub(sheet.danoArma07, 3, 3))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma07, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma07, 2, 2), "%d") ~= nil and #sheet.danoArma07 == 2 then
                                                            dano = tonumber(string.sub(sheet.danoArma07, 1, 1)..string.sub(sheet.danoArma07, 2, 2))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma07, 1, 1), "%d") ~= nil and #sheet.danoArma07 == 1 then
                                                            dano = tonumber(string.sub(sheet.danoArma07, 1, 1))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma07, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma07, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma07, 3, 3), "%d") == nil and #sheet.danoArma07 == 4 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma07, 1, 1)..string.sub(sheet.danoArma07, 2, 2))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      elseif string.match(string.sub(sheet.danoArma07, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma07, 2, 2), "%d") == nil and #sheet.danoArma07 == 3 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma07, 1, 1))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      else
                                                            showMessage("Informe corretamente o valor do dano! \nEx: 3d6 \nMax: 99d6")
                                                            dano = 0
                                                            danoAutomatico = true
                                                      end
                                                end
            
                                                dadosDeDano(dano, danoAutomatico)
                                                danoAutomatico = false
                                          end
        end);

    obj._e_event73 = obj.edit27:addEventListener("onUserChange",
        function ()
            if sheet.nomeArma07 ~= nil then
                                                      sheet.dadivaRevesArma07 = "Dádiva / Revés"
                                                else
                                                      sheet.nomeArma07 = "--"
                                                      sheet.dadivaRevesArma07 = "--"
                                                end
                                                
                                                if #sheet.nomeArma07 > 39 then
                                                      local delCaracteres = 38 - #sheet.nomeArma07
                                                      sheet.nomeArma07 = string.sub(sheet.nomeArma07, 1, delCaracteres)
                                                end
        end);

    obj._e_event74 = obj.edit28:addEventListener("onUserChange",
        function ()
            if sheet.dadivaRevesArma07 == nil then
                                                      sheet.dadivaRevesArma07 = "Dádiva / Revés"
                                                end
            
                                                if sheet.dadivaRevesArma07 ~= "Dádiva / Revés" then
                                                      if #sheet.dadivaRevesArma07 > 4 then
                                                            local delCaracteres = 3 - #sheet.dadivaRevesArma07
                                                            sheet.dadivaRevesArma07 = string.sub(sheet.dadivaRevesArma07, 1, delCaracteres)
                                                      end
                                                end
        end);

    obj._e_event75 = obj.edit29:addEventListener("onUserChange",
        function ()
            if sheet.propriedadesArma07 == nil then
                                                      sheet.propriedadesArma07 = "--"
                                                end
                                                
                                                if #sheet.propriedadesArma07 > 52 then
                                                      local delCaracteres = 51 - #sheet.propriedadesArma07
                                                      sheet.propriedadesArma07 = string.sub(sheet.propriedadesArma07, 1, delCaracteres)
                                                end
        end);

    obj._e_event76 = obj.edit30:addEventListener("onChange",
        function ()
            if sheet.danoArma07 == nil then
                                                      sheet.danoArma07 = "--"
                                                end
                                                
                                                if #sheet.danoArma07 > 4 then
                                                      local delCaracteres = 3 - #sheet.danoArma07
                                                      sheet.danoArma07 = string.sub(sheet.danoArma07, 1, delCaracteres)
                                                end
        end);

    obj._e_event77 = obj.image22:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma08
                                          
                                                if sheet.nomeArma08 ~= nil and sheet.nomeArma08 ~= "--"  then
                                                      if sheet.dadivaRevesArma08 ~= "Dádiva / Revés" and sheet.dadivaRevesArma08 ~= "--" then
                                                            if string.sub(sheet.dadivaRevesArma08, 1, 1) == "-" then
                                                                  revesCombate = tonumber(string.sub(sheet.dadivaRevesArma08, 2, 2)) * -1
                                                            elseif string.sub(sheet.dadivaRevesArma08, 1, 1) == "+" then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma08, 2, 2))
                                                            elseif string.match(string.sub(sheet.dadivaRevesArma08, 1, 1), "%d") ~= nil then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma08, 1, 1))
                                                            else
                                                                  dadivaCombate = 0
                                                                  showMessage("Informe corretamente o valor da dádiva ou revés!")
                                                            end
                                                      end
            
                                                      if sheet.atributoArma08 == "Atributo" then
                                                            showMessage("Escolha um Atributo!")
                                                      elseif sheet.atributoArma08 == "Força" then
                                                            escolherTeste = "forca"
                                                            combate = true
                                                            arma = sheet.nomeArma08
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma08 == "Agilidade" then
                                                            escolherTeste = "agilidade"
                                                            combate = true
                                                            arma = sheet.nomeArma08
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma08 == "Intelecto" then
                                                            escolherTeste = "intelecto"
                                                            combate = true
                                                            arma = sheet.nomeArma08
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma08 == "Vontade" then
                                                            escolherTeste = "vontade"
                                                            combate = true
                                                            arma = sheet.nomeArma08
                                                            self.popDadivaReves:show()
                                                      end
                                                else
                                                      showMessage("Informe o nome da arma!")
                                                end
        end);

    obj._e_event78 = obj.image23:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma08
                                          
                                          if sheet.nomeArma08 ~= nil and sheet.nomeArma08 ~= "--"  then
                                                if sheet.danoArma08 ~= nil then
            
                                                      if string.match(string.sub(sheet.danoArma08, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma08, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma08, 3, 3), "%d") ~= nil and #sheet.danoArma08 == 3 then
                                                            dano = tonumber(string.sub(sheet.danoArma08, 1, 1)..string.sub(sheet.danoArma08, 2, 2)..string.sub(sheet.danoArma08, 3, 3))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma08, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma08, 2, 2), "%d") ~= nil and #sheet.danoArma08 == 2 then
                                                            dano = tonumber(string.sub(sheet.danoArma08, 1, 1)..string.sub(sheet.danoArma08, 2, 2))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma08, 1, 1), "%d") ~= nil and #sheet.danoArma08 == 1 then
                                                            dano = tonumber(string.sub(sheet.danoArma08, 1, 1))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma08, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma08, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma08, 3, 3), "%d") == nil and #sheet.danoArma08 == 4 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma08, 1, 1)..string.sub(sheet.danoArma08, 2, 2))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      elseif string.match(string.sub(sheet.danoArma08, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma08, 2, 2), "%d") == nil and #sheet.danoArma08 == 3 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma08, 1, 1))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      else
                                                            showMessage("Informe corretamente o valor do dano! \nEx: 3d6 \nMax: 99d6")
                                                            dano = 0
                                                            danoAutomatico = true
                                                      end
                                                end
            
                                                dadosDeDano(dano, danoAutomatico)
                                                danoAutomatico = false
                                          end
        end);

    obj._e_event79 = obj.edit31:addEventListener("onUserChange",
        function ()
            if sheet.nomeArma08 ~= nil then
                                                      sheet.dadivaRevesArma08 = "Dádiva / Revés"
                                                else
                                                      sheet.nomeArma08 = "--"
                                                      sheet.dadivaRevesArma08 = "--"
                                                end
                                                
                                                if #sheet.nomeArma08 > 39 then
                                                      local delCaracteres = 38 - #sheet.nomeArma08
                                                      sheet.nomeArma08 = string.sub(sheet.nomeArma08, 1, delCaracteres)
                                                end
        end);

    obj._e_event80 = obj.edit32:addEventListener("onUserChange",
        function ()
            if sheet.dadivaRevesArma08 == nil then
                                                      sheet.dadivaRevesArma08 = "Dádiva / Revés"
                                                end
            
                                                if sheet.dadivaRevesArma08 ~= "Dádiva / Revés" then
                                                      if #sheet.dadivaRevesArma08 > 4 then
                                                            local delCaracteres = 3 - #sheet.dadivaRevesArma08
                                                            sheet.dadivaRevesArma08 = string.sub(sheet.dadivaRevesArma08, 1, delCaracteres)
                                                      end
                                                end
        end);

    obj._e_event81 = obj.edit33:addEventListener("onUserChange",
        function ()
            if sheet.propriedadesArma08 == nil then
                                                      sheet.propriedadesArma08 = "--"
                                                end
                                                
                                                if #sheet.propriedadesArma08 > 52 then
                                                      local delCaracteres = 51 - #sheet.propriedadesArma08
                                                      sheet.propriedadesArma08 = string.sub(sheet.propriedadesArma08, 1, delCaracteres)
                                                end
        end);

    obj._e_event82 = obj.edit34:addEventListener("onChange",
        function ()
            if sheet.danoArma08 == nil then
                                                      sheet.danoArma08 = "--"
                                                end
                                                
                                                if #sheet.danoArma08 > 4 then
                                                      local delCaracteres = 3 - #sheet.danoArma08
                                                      sheet.danoArma08 = string.sub(sheet.danoArma08, 1, delCaracteres)
                                                end
        end);

    obj._e_event83 = obj.image24:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma09
                                          
                                                if sheet.nomeArma09 ~= nil and sheet.nomeArma09 ~= "--"  then
                                                      if sheet.dadivaRevesArma09 ~= "Dádiva / Revés" and sheet.dadivaRevesArma09 ~= "--" then
                                                            if string.sub(sheet.dadivaRevesArma09, 1, 1) == "-" then
                                                                  revesCombate = tonumber(string.sub(sheet.dadivaRevesArma09, 2, 2)) * -1
                                                            elseif string.sub(sheet.dadivaRevesArma09, 1, 1) == "+" then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma09, 2, 2))
                                                            elseif string.match(string.sub(sheet.dadivaRevesArma09, 1, 1), "%d") ~= nil then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma09, 1, 1))
                                                            else
                                                                  dadivaCombate = 0
                                                                  showMessage("Informe corretamente o valor da dádiva ou revés!")
                                                            end
                                                      end
            
                                                      if sheet.atributoArma09 == "Atributo" then
                                                            showMessage("Escolha um Atributo!")
                                                      elseif sheet.atributoArma09 == "Força" then
                                                            escolherTeste = "forca"
                                                            combate = true
                                                            arma = sheet.nomeArma09
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma09 == "Agilidade" then
                                                            escolherTeste = "agilidade"
                                                            combate = true
                                                            arma = sheet.nomeArma09
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma09 == "Intelecto" then
                                                            escolherTeste = "intelecto"
                                                            combate = true
                                                            arma = sheet.nomeArma09
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma09 == "Vontade" then
                                                            escolherTeste = "vontade"
                                                            combate = true
                                                            arma = sheet.nomeArma09
                                                            self.popDadivaReves:show()
                                                      end
                                                else
                                                      showMessage("Informe o nome da arma!")
                                                end
        end);

    obj._e_event84 = obj.image25:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma09
                                          
                                          if sheet.nomeArma09 ~= nil and sheet.nomeArma09 ~= "--"  then
                                                if sheet.danoArma09 ~= nil then
            
                                                      if string.match(string.sub(sheet.danoArma09, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma09, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma09, 3, 3), "%d") ~= nil and #sheet.danoArma09 == 3 then
                                                            dano = tonumber(string.sub(sheet.danoArma09, 1, 1)..string.sub(sheet.danoArma09, 2, 2)..string.sub(sheet.danoArma09, 3, 3))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma09, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma09, 2, 2), "%d") ~= nil and #sheet.danoArma09 == 2 then
                                                            dano = tonumber(string.sub(sheet.danoArma09, 1, 1)..string.sub(sheet.danoArma09, 2, 2))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma09, 1, 1), "%d") ~= nil and #sheet.danoArma09 == 1 then
                                                            dano = tonumber(string.sub(sheet.danoArma09, 1, 1))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma09, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma09, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma09, 3, 3), "%d") == nil and #sheet.danoArma09 == 4 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma09, 1, 1)..string.sub(sheet.danoArma09, 2, 2))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      elseif string.match(string.sub(sheet.danoArma09, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma09, 2, 2), "%d") == nil and #sheet.danoArma09 == 3 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma09, 1, 1))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      else
                                                            showMessage("Informe corretamente o valor do dano! \nEx: 3d6 \nMax: 99d6")
                                                            dano = 0
                                                            danoAutomatico = true
                                                      end
                                                end
            
                                                dadosDeDano(dano, danoAutomatico)
                                                danoAutomatico = false
                                          end
        end);

    obj._e_event85 = obj.edit35:addEventListener("onUserChange",
        function ()
            if sheet.nomeArma09 ~= nil then
                                                      sheet.dadivaRevesArma09 = "Dádiva / Revés"
                                                else
                                                      sheet.nomeArma09 = "--"
                                                      sheet.dadivaRevesArma09 = "--"
                                                end
                                                
                                                if #sheet.nomeArma09 > 39 then
                                                      local delCaracteres = 38 - #sheet.nomeArma09
                                                      sheet.nomeArma09 = string.sub(sheet.nomeArma09, 1, delCaracteres)
                                                end
        end);

    obj._e_event86 = obj.edit36:addEventListener("onUserChange",
        function ()
            if sheet.dadivaRevesArma09 == nil then
                                                      sheet.dadivaRevesArma09 = "Dádiva / Revés"
                                                end
            
                                                if sheet.dadivaRevesArma09 ~= "Dádiva / Revés" then
                                                      if #sheet.dadivaRevesArma09 > 4 then
                                                            local delCaracteres = 3 - #sheet.dadivaRevesArma09
                                                            sheet.dadivaRevesArma09 = string.sub(sheet.dadivaRevesArma09, 1, delCaracteres)
                                                      end
                                                end
        end);

    obj._e_event87 = obj.edit37:addEventListener("onUserChange",
        function ()
            if sheet.propriedadesArma09 == nil then
                                                      sheet.propriedadesArma09 = "--"
                                                end
                                                
                                                if #sheet.propriedadesArma09 > 52 then
                                                      local delCaracteres = 51 - #sheet.propriedadesArma09
                                                      sheet.propriedadesArma09 = string.sub(sheet.propriedadesArma09, 1, delCaracteres)
                                                end
        end);

    obj._e_event88 = obj.edit38:addEventListener("onChange",
        function ()
            if sheet.danoArma09 == nil then
                                                      sheet.danoArma09 = "--"
                                                end
                                                
                                                if #sheet.danoArma09 > 4 then
                                                      local delCaracteres = 3 - #sheet.danoArma09
                                                      sheet.danoArma09 = string.sub(sheet.danoArma09, 1, delCaracteres)
                                                end
        end);

    obj._e_event89 = obj.image26:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma10
                                          
                                                if sheet.nomeArma10 ~= nil and sheet.nomeArma10 ~= "--"  then
                                                      if sheet.dadivaRevesArma10 ~= "Dádiva / Revés" and sheet.dadivaRevesArma10 ~= "--" then
                                                            if string.sub(sheet.dadivaRevesArma10, 1, 1) == "-" then
                                                                  revesCombate = tonumber(string.sub(sheet.dadivaRevesArma10, 2, 2)) * -1
                                                            elseif string.sub(sheet.dadivaRevesArma10, 1, 1) == "+" then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma10, 2, 2))
                                                            elseif string.match(string.sub(sheet.dadivaRevesArma10, 1, 1), "%d") ~= nil then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma10, 1, 1))
                                                            else
                                                                  dadivaCombate = 0
                                                                  showMessage("Informe corretamente o valor da dádiva ou revés!")
                                                            end
                                                      end
            
                                                      if sheet.atributoArma10 == "Atributo" then
                                                            showMessage("Escolha um Atributo!")
                                                      elseif sheet.atributoArma10 == "Força" then
                                                            escolherTeste = "forca"
                                                            combate = true
                                                            arma = sheet.nomeArma10
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma10 == "Agilidade" then
                                                            escolherTeste = "agilidade"
                                                            combate = true
                                                            arma = sheet.nomeArma10
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma10 == "Intelecto" then
                                                            escolherTeste = "intelecto"
                                                            combate = true
                                                            arma = sheet.nomeArma10
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma10 == "Vontade" then
                                                            escolherTeste = "vontade"
                                                            combate = true
                                                            arma = sheet.nomeArma10
                                                            self.popDadivaReves:show()
                                                      end
                                                else
                                                      showMessage("Informe o nome da arma!")
                                                end
        end);

    obj._e_event90 = obj.image27:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma10
                                          
                                          if sheet.nomeArma10 ~= nil and sheet.nomeArma10 ~= "--"  then
                                                if sheet.danoArma10 ~= nil then
            
                                                      if string.match(string.sub(sheet.danoArma10, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma10, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma10, 3, 3), "%d") ~= nil and #sheet.danoArma10 == 3 then
                                                            dano = tonumber(string.sub(sheet.danoArma10, 1, 1)..string.sub(sheet.danoArma10, 2, 2)..string.sub(sheet.danoArma10, 3, 3))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma10, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma10, 2, 2), "%d") ~= nil and #sheet.danoArma10 == 2 then
                                                            dano = tonumber(string.sub(sheet.danoArma10, 1, 1)..string.sub(sheet.danoArma10, 2, 2))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma10, 1, 1), "%d") ~= nil and #sheet.danoArma10 == 1 then
                                                            dano = tonumber(string.sub(sheet.danoArma10, 1, 1))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma10, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma10, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma10, 3, 3), "%d") == nil and #sheet.danoArma10 == 4 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma10, 1, 1)..string.sub(sheet.danoArma10, 2, 2))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      elseif string.match(string.sub(sheet.danoArma10, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma10, 2, 2), "%d") == nil and #sheet.danoArma10 == 3 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma10, 1, 1))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      else
                                                            showMessage("Informe corretamente o valor do dano! \nEx: 3d6 \nMax: 99d6")
                                                            dano = 0
                                                            danoAutomatico = true
                                                      end
                                                end
            
                                                dadosDeDano(dano, danoAutomatico)
                                                danoAutomatico = false
                                          end
        end);

    obj._e_event91 = obj.edit39:addEventListener("onUserChange",
        function ()
            if sheet.nomeArma10 ~= nil then
                                                      sheet.dadivaRevesArma10 = "Dádiva / Revés"
                                                else
                                                      sheet.nomeArma10 = "--"
                                                      sheet.dadivaRevesArma10 = "--"
                                                end
                                                
                                                if #sheet.nomeArma10 > 39 then
                                                      local delCaracteres = 38 - #sheet.nomeArma10
                                                      sheet.nomeArma10 = string.sub(sheet.nomeArma10, 1, delCaracteres)
                                                end
        end);

    obj._e_event92 = obj.edit40:addEventListener("onUserChange",
        function ()
            if sheet.dadivaRevesArma10 == nil then
                                                      sheet.dadivaRevesArma10 = "Dádiva / Revés"
                                                end
            
                                                if sheet.dadivaRevesArma10 ~= "Dádiva / Revés" then
                                                      if #sheet.dadivaRevesArma10 > 4 then
                                                            local delCaracteres = 3 - #sheet.dadivaRevesArma10
                                                            sheet.dadivaRevesArma10 = string.sub(sheet.dadivaRevesArma10, 1, delCaracteres)
                                                      end
                                                end
        end);

    obj._e_event93 = obj.edit41:addEventListener("onUserChange",
        function ()
            if sheet.propriedadesArma10 == nil then
                                                      sheet.propriedadesArma10 = "--"
                                                end
                                                
                                                if #sheet.propriedadesArma10 > 52 then
                                                      local delCaracteres = 51 - #sheet.propriedadesArma10
                                                      sheet.propriedadesArma10 = string.sub(sheet.propriedadesArma10, 1, delCaracteres)
                                                end
        end);

    obj._e_event94 = obj.edit42:addEventListener("onChange",
        function ()
            if sheet.danoArma10 == nil then
                                                      sheet.danoArma10 = "--"
                                                end
                                                
                                                if #sheet.danoArma10 > 4 then
                                                      local delCaracteres = 3 - #sheet.danoArma10
                                                      sheet.danoArma10 = string.sub(sheet.danoArma10, 1, delCaracteres)
                                                end
        end);

    obj._e_event95 = obj.image28:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma11
                                          
                                                if sheet.nomeArma11 ~= nil and sheet.nomeArma11 ~= "--"  then
                                                      if sheet.dadivaRevesArma11 ~= "Dádiva / Revés" and sheet.dadivaRevesArma11 ~= "--" then
                                                            if string.sub(sheet.dadivaRevesArma11, 1, 1) == "-" then
                                                                  revesCombate = tonumber(string.sub(sheet.dadivaRevesArma11, 2, 2)) * -1
                                                            elseif string.sub(sheet.dadivaRevesArma11, 1, 1) == "+" then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma11, 2, 2))
                                                            elseif string.match(string.sub(sheet.dadivaRevesArma11, 1, 1), "%d") ~= nil then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma11, 1, 1))
                                                            else
                                                                  dadivaCombate = 0
                                                                  showMessage("Informe corretamente o valor da dádiva ou revés!")
                                                            end
                                                      end
            
                                                      if sheet.atributoArma11 == "Atributo" then
                                                            showMessage("Escolha um Atributo!")
                                                      elseif sheet.atributoArma11 == "Força" then
                                                            escolherTeste = "forca"
                                                            combate = true
                                                            arma = sheet.nomeArma11
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma11 == "Agilidade" then
                                                            escolherTeste = "agilidade"
                                                            combate = true
                                                            arma = sheet.nomeArma11
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma11 == "Intelecto" then
                                                            escolherTeste = "intelecto"
                                                            combate = true
                                                            arma = sheet.nomeArma11
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma11 == "Vontade" then
                                                            escolherTeste = "vontade"
                                                            combate = true
                                                            arma = sheet.nomeArma11
                                                            self.popDadivaReves:show()
                                                      end
                                                else
                                                      showMessage("Informe o nome da arma!")
                                                end
        end);

    obj._e_event96 = obj.image29:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma11
                                          
                                          if sheet.nomeArma11 ~= nil and sheet.nomeArma11 ~= "--"  then
                                                if sheet.danoArma11 ~= nil then
            
                                                      if string.match(string.sub(sheet.danoArma11, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma11, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma11, 3, 3), "%d") ~= nil and #sheet.danoArma11 == 3 then
                                                            dano = tonumber(string.sub(sheet.danoArma11, 1, 1)..string.sub(sheet.danoArma11, 2, 2)..string.sub(sheet.danoArma11, 3, 3))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma11, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma11, 2, 2), "%d") ~= nil and #sheet.danoArma11 == 2 then
                                                            dano = tonumber(string.sub(sheet.danoArma11, 1, 1)..string.sub(sheet.danoArma11, 2, 2))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma11, 1, 1), "%d") ~= nil and #sheet.danoArma11 == 1 then
                                                            dano = tonumber(string.sub(sheet.danoArma11, 1, 1))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma11, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma11, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma11, 3, 3), "%d") == nil and #sheet.danoArma11 == 4 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma11, 1, 1)..string.sub(sheet.danoArma11, 2, 2))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      elseif string.match(string.sub(sheet.danoArma11, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma11, 2, 2), "%d") == nil and #sheet.danoArma11 == 3 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma11, 1, 1))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      else
                                                            showMessage("Informe corretamente o valor do dano! \nEx: 3d6 \nMax: 99d6")
                                                            dano = 0
                                                            danoAutomatico = true
                                                      end
                                                end
            
                                                dadosDeDano(dano, danoAutomatico)
                                                danoAutomatico = false
                                          end
        end);

    obj._e_event97 = obj.edit43:addEventListener("onUserChange",
        function ()
            if sheet.nomeArma11 ~= nil then
                                                      sheet.dadivaRevesArma11 = "Dádiva / Revés"
                                                else
                                                      sheet.nomeArma11 = "--"
                                                      sheet.dadivaRevesArma11 = "--"
                                                end
                                                
                                                if #sheet.nomeArma11 > 39 then
                                                      local delCaracteres = 38 - #sheet.nomeArma11
                                                      sheet.nomeArma11 = string.sub(sheet.nomeArma11, 1, delCaracteres)
                                                end
        end);

    obj._e_event98 = obj.edit44:addEventListener("onUserChange",
        function ()
            if sheet.dadivaRevesArma11 == nil then
                                                      sheet.dadivaRevesArma11 = "Dádiva / Revés"
                                                end
            
                                                if sheet.dadivaRevesArma11 ~= "Dádiva / Revés" then
                                                      if #sheet.dadivaRevesArma11 > 4 then
                                                            local delCaracteres = 3 - #sheet.dadivaRevesArma11
                                                            sheet.dadivaRevesArma11 = string.sub(sheet.dadivaRevesArma11, 1, delCaracteres)
                                                      end
                                                end
        end);

    obj._e_event99 = obj.edit45:addEventListener("onUserChange",
        function ()
            if sheet.propriedadesArma11 == nil then
                                                      sheet.propriedadesArma11 = "--"
                                                end
                                                
                                                if #sheet.propriedadesArma11 > 52 then
                                                      local delCaracteres = 51 - #sheet.propriedadesArma11
                                                      sheet.propriedadesArma11 = string.sub(sheet.propriedadesArma11, 1, delCaracteres)
                                                end
        end);

    obj._e_event100 = obj.edit46:addEventListener("onChange",
        function ()
            if sheet.danoArma11 == nil then
                                                      sheet.danoArma11 = "--"
                                                end
                                                
                                                if #sheet.danoArma11 > 4 then
                                                      local delCaracteres = 3 - #sheet.danoArma11
                                                      sheet.danoArma11 = string.sub(sheet.danoArma11, 1, delCaracteres)
                                                end
        end);

    obj._e_event101 = obj.image30:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma12
                                          
                                                if sheet.nomeArma12 ~= nil and sheet.nomeArma12 ~= "--"  then
                                                      if sheet.dadivaRevesArma12 ~= "Dádiva / Revés" and sheet.dadivaRevesArma12 ~= "--" then
                                                            if string.sub(sheet.dadivaRevesArma12, 1, 1) == "-" then
                                                                  revesCombate = tonumber(string.sub(sheet.dadivaRevesArma12, 2, 2)) * -1
                                                            elseif string.sub(sheet.dadivaRevesArma12, 1, 1) == "+" then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma12, 2, 2))
                                                            elseif string.match(string.sub(sheet.dadivaRevesArma12, 1, 1), "%d") ~= nil then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma12, 1, 1))
                                                            else
                                                                  dadivaCombate = 0
                                                                  showMessage("Informe corretamente o valor da dádiva ou revés!")
                                                            end
                                                      end
            
                                                      if sheet.atributoArma12 == "Atributo" then
                                                            showMessage("Escolha um Atributo!")
                                                      elseif sheet.atributoArma12 == "Força" then
                                                            escolherTeste = "forca"
                                                            combate = true
                                                            arma = sheet.nomeArma12
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma12 == "Agilidade" then
                                                            escolherTeste = "agilidade"
                                                            combate = true
                                                            arma = sheet.nomeArma12
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma12 == "Intelecto" then
                                                            escolherTeste = "intelecto"
                                                            combate = true
                                                            arma = sheet.nomeArma12
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma12 == "Vontade" then
                                                            escolherTeste = "vontade"
                                                            combate = true
                                                            arma = sheet.nomeArma12
                                                            self.popDadivaReves:show()
                                                      end
                                                else
                                                      showMessage("Informe o nome da arma!")
                                                end
        end);

    obj._e_event102 = obj.image31:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma12
                                          
                                          if sheet.nomeArma12 ~= nil and sheet.nomeArma12 ~= "--"  then
                                                if sheet.danoArma12 ~= nil then
            
                                                      if string.match(string.sub(sheet.danoArma12, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma12, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma12, 3, 3), "%d") ~= nil and #sheet.danoArma12 == 3 then
                                                            dano = tonumber(string.sub(sheet.danoArma12, 1, 1)..string.sub(sheet.danoArma12, 2, 2)..string.sub(sheet.danoArma12, 3, 3))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma12, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma12, 2, 2), "%d") ~= nil and #sheet.danoArma12 == 2 then
                                                            dano = tonumber(string.sub(sheet.danoArma12, 1, 1)..string.sub(sheet.danoArma12, 2, 2))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma12, 1, 1), "%d") ~= nil and #sheet.danoArma12 == 1 then
                                                            dano = tonumber(string.sub(sheet.danoArma12, 1, 1))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma12, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma12, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma12, 3, 3), "%d") == nil and #sheet.danoArma12 == 4 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma12, 1, 1)..string.sub(sheet.danoArma12, 2, 2))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      elseif string.match(string.sub(sheet.danoArma12, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma12, 2, 2), "%d") == nil and #sheet.danoArma12 == 3 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma12, 1, 1))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      else
                                                            showMessage("Informe corretamente o valor do dano! \nEx: 3d6 \nMax: 99d6")
                                                            dano = 0
                                                            danoAutomatico = true
                                                      end
                                                end
            
                                                dadosDeDano(dano, danoAutomatico)
                                                danoAutomatico = false
                                          end
        end);

    obj._e_event103 = obj.edit47:addEventListener("onUserChange",
        function ()
            if sheet.nomeArma12 ~= nil then
                                                      sheet.dadivaRevesArma12 = "Dádiva / Revés"
                                                else
                                                      sheet.nomeArma12 = "--"
                                                      sheet.dadivaRevesArma12 = "--"
                                                end
                                                
                                                if #sheet.nomeArma12 > 39 then
                                                      local delCaracteres = 38 - #sheet.nomeArma12
                                                      sheet.nomeArma12 = string.sub(sheet.nomeArma12, 1, delCaracteres)
                                                end
        end);

    obj._e_event104 = obj.edit48:addEventListener("onUserChange",
        function ()
            if sheet.dadivaRevesArma12 == nil then
                                                      sheet.dadivaRevesArma12 = "Dádiva / Revés"
                                                end
            
                                                if sheet.dadivaRevesArma12 ~= "Dádiva / Revés" then
                                                      if #sheet.dadivaRevesArma12 > 4 then
                                                            local delCaracteres = 3 - #sheet.dadivaRevesArma12
                                                            sheet.dadivaRevesArma12 = string.sub(sheet.dadivaRevesArma12, 1, delCaracteres)
                                                      end
                                                end
        end);

    obj._e_event105 = obj.edit49:addEventListener("onUserChange",
        function ()
            if sheet.propriedadesArma12 == nil then
                                                      sheet.propriedadesArma12 = "--"
                                                end
                                                
                                                if #sheet.propriedadesArma12 > 52 then
                                                      local delCaracteres = 51 - #sheet.propriedadesArma12
                                                      sheet.propriedadesArma12 = string.sub(sheet.propriedadesArma12, 1, delCaracteres)
                                                end
        end);

    obj._e_event106 = obj.edit50:addEventListener("onChange",
        function ()
            if sheet.danoArma12 == nil then
                                                      sheet.danoArma12 = "--"
                                                end
                                                
                                                if #sheet.danoArma12 > 4 then
                                                      local delCaracteres = 3 - #sheet.danoArma12
                                                      sheet.danoArma12 = string.sub(sheet.danoArma12, 1, delCaracteres)
                                                end
        end);

    obj._e_event107 = obj.image32:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma13
                                          
                                                if sheet.nomeArma13 ~= nil and sheet.nomeArma13 ~= "--"  then
                                                      if sheet.dadivaRevesArma13 ~= "Dádiva / Revés" and sheet.dadivaRevesArma13 ~= "--" then
                                                            if string.sub(sheet.dadivaRevesArma13, 1, 1) == "-" then
                                                                  revesCombate = tonumber(string.sub(sheet.dadivaRevesArma13, 2, 2)) * -1
                                                            elseif string.sub(sheet.dadivaRevesArma13, 1, 1) == "+" then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma13, 2, 2))
                                                            elseif string.match(string.sub(sheet.dadivaRevesArma13, 1, 1), "%d") ~= nil then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma13, 1, 1))
                                                            else
                                                                  dadivaCombate = 0
                                                                  showMessage("Informe corretamente o valor da dádiva ou revés!")
                                                            end
                                                      end
            
                                                      if sheet.atributoArma13 == "Atributo" then
                                                            showMessage("Escolha um Atributo!")
                                                      elseif sheet.atributoArma13 == "Força" then
                                                            escolherTeste = "forca"
                                                            combate = true
                                                            arma = sheet.nomeArma13
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma13 == "Agilidade" then
                                                            escolherTeste = "agilidade"
                                                            combate = true
                                                            arma = sheet.nomeArma13
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma13 == "Intelecto" then
                                                            escolherTeste = "intelecto"
                                                            combate = true
                                                            arma = sheet.nomeArma13
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma13 == "Vontade" then
                                                            escolherTeste = "vontade"
                                                            combate = true
                                                            arma = sheet.nomeArma13
                                                            self.popDadivaReves:show()
                                                      end
                                                else
                                                      showMessage("Informe o nome da arma!")
                                                end
        end);

    obj._e_event108 = obj.image33:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma13
                                          
                                          if sheet.nomeArma13 ~= nil and sheet.nomeArma13 ~= "--"  then
                                                if sheet.danoArma13 ~= nil then
            
                                                      if string.match(string.sub(sheet.danoArma13, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma13, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma13, 3, 3), "%d") ~= nil and #sheet.danoArma13 == 3 then
                                                            dano = tonumber(string.sub(sheet.danoArma13, 1, 1)..string.sub(sheet.danoArma13, 2, 2)..string.sub(sheet.danoArma13, 3, 3))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma13, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma13, 2, 2), "%d") ~= nil and #sheet.danoArma13 == 2 then
                                                            dano = tonumber(string.sub(sheet.danoArma13, 1, 1)..string.sub(sheet.danoArma13, 2, 2))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma13, 1, 1), "%d") ~= nil and #sheet.danoArma13 == 1 then
                                                            dano = tonumber(string.sub(sheet.danoArma13, 1, 1))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma13, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma13, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma13, 3, 3), "%d") == nil and #sheet.danoArma13 == 4 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma13, 1, 1)..string.sub(sheet.danoArma13, 2, 2))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      elseif string.match(string.sub(sheet.danoArma13, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma13, 2, 2), "%d") == nil and #sheet.danoArma13 == 3 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma13, 1, 1))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      else
                                                            showMessage("Informe corretamente o valor do dano! \nEx: 3d6 \nMax: 99d6")
                                                            dano = 0
                                                            danoAutomatico = true
                                                      end
                                                end
            
                                                dadosDeDano(dano, danoAutomatico)
                                                danoAutomatico = false
                                          end
        end);

    obj._e_event109 = obj.edit51:addEventListener("onUserChange",
        function ()
            if sheet.nomeArma13 ~= nil then
                                                      sheet.dadivaRevesArma13 = "Dádiva / Revés"
                                                else
                                                      sheet.nomeArma13 = "--"
                                                      sheet.dadivaRevesArma13 = "--"
                                                end
                                                
                                                if #sheet.nomeArma13 > 39 then
                                                      local delCaracteres = 38 - #sheet.nomeArma13
                                                      sheet.nomeArma13 = string.sub(sheet.nomeArma13, 1, delCaracteres)
                                                end
        end);

    obj._e_event110 = obj.edit52:addEventListener("onUserChange",
        function ()
            if sheet.dadivaRevesArma13 == nil then
                                                      sheet.dadivaRevesArma13 = "Dádiva / Revés"
                                                end
            
                                                if sheet.dadivaRevesArma13 ~= "Dádiva / Revés" then
                                                      if #sheet.dadivaRevesArma13 > 4 then
                                                            local delCaracteres = 3 - #sheet.dadivaRevesArma13
                                                            sheet.dadivaRevesArma13 = string.sub(sheet.dadivaRevesArma13, 1, delCaracteres)
                                                      end
                                                end
        end);

    obj._e_event111 = obj.edit53:addEventListener("onUserChange",
        function ()
            if sheet.propriedadesArma13 == nil then
                                                      sheet.propriedadesArma13 = "--"
                                                end
                                                
                                                if #sheet.propriedadesArma13 > 52 then
                                                      local delCaracteres = 51 - #sheet.propriedadesArma13
                                                      sheet.propriedadesArma13 = string.sub(sheet.propriedadesArma13, 1, delCaracteres)
                                                end
        end);

    obj._e_event112 = obj.edit54:addEventListener("onChange",
        function ()
            if sheet.danoArma13 == nil then
                                                      sheet.danoArma13 = "--"
                                                end
                                                
                                                if #sheet.danoArma13 > 4 then
                                                      local delCaracteres = 3 - #sheet.danoArma13
                                                      sheet.danoArma13 = string.sub(sheet.danoArma13, 1, delCaracteres)
                                                end
        end);

    obj._e_event113 = obj.image34:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma14
                                          
                                                if sheet.nomeArma14 ~= nil and sheet.nomeArma14 ~= "--"  then
                                                      if sheet.dadivaRevesArma14 ~= "Dádiva / Revés" and sheet.dadivaRevesArma14 ~= "--" then
                                                            if string.sub(sheet.dadivaRevesArma14, 1, 1) == "-" then
                                                                  revesCombate = tonumber(string.sub(sheet.dadivaRevesArma14, 2, 2)) * -1
                                                            elseif string.sub(sheet.dadivaRevesArma14, 1, 1) == "+" then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma14, 2, 2))
                                                            elseif string.match(string.sub(sheet.dadivaRevesArma14, 1, 1), "%d") ~= nil then
                                                                  dadivaCombate = tonumber(string.sub(sheet.dadivaRevesArma14, 1, 1))
                                                            else
                                                                  dadivaCombate = 0
                                                                  showMessage("Informe corretamente o valor da dádiva ou revés!")
                                                            end
                                                      end
            
                                                      if sheet.atributoArma14 == "Atributo" then
                                                            showMessage("Escolha um Atributo!")
                                                      elseif sheet.atributoArma14 == "Força" then
                                                            escolherTeste = "forca"
                                                            combate = true
                                                            arma = sheet.nomeArma14
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma14 == "Agilidade" then
                                                            escolherTeste = "agilidade"
                                                            combate = true
                                                            arma = sheet.nomeArma14
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma14 == "Intelecto" then
                                                            escolherTeste = "intelecto"
                                                            combate = true
                                                            arma = sheet.nomeArma14
                                                            self.popDadivaReves:show()
                                                      elseif sheet.atributoArma14 == "Vontade" then
                                                            escolherTeste = "vontade"
                                                            combate = true
                                                            arma = sheet.nomeArma14
                                                            self.popDadivaReves:show()
                                                      end
                                                else
                                                      showMessage("Informe o nome da arma!")
                                                end
        end);

    obj._e_event114 = obj.image35:addEventListener("onClick",
        function (event)
            arma = sheet.nomeArma14
                                          
                                          if sheet.nomeArma14 ~= nil and sheet.nomeArma14 ~= "--"  then
                                                if sheet.danoArma14 ~= nil then
            
                                                      if string.match(string.sub(sheet.danoArma14, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma14, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma14, 3, 3), "%d") ~= nil and #sheet.danoArma14 == 3 then
                                                            dano = tonumber(string.sub(sheet.danoArma14, 1, 1)..string.sub(sheet.danoArma14, 2, 2)..string.sub(sheet.danoArma14, 3, 3))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma14, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma14, 2, 2), "%d") ~= nil and #sheet.danoArma14 == 2 then
                                                            dano = tonumber(string.sub(sheet.danoArma14, 1, 1)..string.sub(sheet.danoArma14, 2, 2))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma14, 1, 1), "%d") ~= nil and #sheet.danoArma14 == 1 then
                                                            dano = tonumber(string.sub(sheet.danoArma14, 1, 1))
                                                            danoAutomatico = true
                                                      elseif string.match(string.sub(sheet.danoArma14, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma14, 2, 2), "%d") ~= nil and string.match(string.sub(sheet.danoArma14, 3, 3), "%d") == nil and #sheet.danoArma14 == 4 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma14, 1, 1)..string.sub(sheet.danoArma14, 2, 2))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      elseif string.match(string.sub(sheet.danoArma14, 1, 1), "%d") ~= nil and string.match(string.sub(sheet.danoArma14, 2, 2), "%d") == nil and #sheet.danoArma14 == 3 then
                                                            numeroDados = tonumber(string.sub(sheet.danoArma14, 1, 1))
                                                            if numeroDados < 100 then
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            else
                                                                  numeroDados = 0
                                                                  dano = numeroDados
                                                                  danoAutomatico = false
                                                            end
                                                      else
                                                            showMessage("Informe corretamente o valor do dano! \nEx: 3d6 \nMax: 99d6")
                                                            dano = 0
                                                            danoAutomatico = true
                                                      end
                                                end
            
                                                dadosDeDano(dano, danoAutomatico)
                                                danoAutomatico = false
                                          end
        end);

    obj._e_event115 = obj.edit55:addEventListener("onUserChange",
        function ()
            if sheet.nomeArma14 ~= nil then
                                                      sheet.dadivaRevesArma14 = "Dádiva / Revés"
                                                else
                                                      sheet.nomeArma14 = "--"
                                                      sheet.dadivaRevesArma14 = "--"
                                                end
                                                
                                                if #sheet.nomeArma14 > 39 then
                                                      local delCaracteres = 38 - #sheet.nomeArma14
                                                      sheet.nomeArma14 = string.sub(sheet.nomeArma14, 1, delCaracteres)
                                                end
        end);

    obj._e_event116 = obj.edit56:addEventListener("onUserChange",
        function ()
            if sheet.dadivaRevesArma14 == nil then
                                                      sheet.dadivaRevesArma14 = "Dádiva / Revés"
                                                end
            
                                                if sheet.dadivaRevesArma14 ~= "Dádiva / Revés" then
                                                      if #sheet.dadivaRevesArma14 > 4 then
                                                            local delCaracteres = 3 - #sheet.dadivaRevesArma14
                                                            sheet.dadivaRevesArma14 = string.sub(sheet.dadivaRevesArma14, 1, delCaracteres)
                                                      end
                                                end
        end);

    obj._e_event117 = obj.edit57:addEventListener("onUserChange",
        function ()
            if sheet.propriedadesArma14 == nil then
                                                      sheet.propriedadesArma14 = "--"
                                                end
                                                
                                                if #sheet.propriedadesArma14 > 52 then
                                                      local delCaracteres = 51 - #sheet.propriedadesArma14
                                                      sheet.propriedadesArma14 = string.sub(sheet.propriedadesArma14, 1, delCaracteres)
                                                end
        end);

    obj._e_event118 = obj.edit58:addEventListener("onChange",
        function ()
            if sheet.danoArma14 == nil then
                                                      sheet.danoArma14 = "--"
                                                end
                                                
                                                if #sheet.danoArma14 > 4 then
                                                      local delCaracteres = 3 - #sheet.danoArma14
                                                      sheet.danoArma14 = string.sub(sheet.danoArma14, 1, delCaracteres)
                                                end
        end);

    obj._e_event119 = obj.edit59:addEventListener("onUserChange",
        function ()
            if sheet.armaduraEscudo == nil then
                                                      sheet.armaduraEscudo = "--"
                                                end
            
                                                if #sheet.armaduraEscudo > 82 then
                                                      local delCaracteres = 81 - #sheet.armaduraEscudo
                                                      sheet.armaduraEscudo = string.sub(sheet.armaduraEscudo, 1, delCaracteres)
                                                end
        end);

    obj._e_event120 = obj.edit60:addEventListener("onChange",
        function ()
            if sheet.Talento01 == nil then
                                                      sheet.Talento01 = "Talento"
                                                end
                                                
                                                if #sheet.Talento01 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento01
                                                      sheet.Talento01 = string.sub(sheet.Talento01, 1, delCaracteres)
                                                end
        end);

    obj._e_event121 = obj.edit61:addEventListener("onChange",
        function ()
            if sheet.Talento02 == nil then
                                                      sheet.Talento02 = "Talento"
                                                end
                                                
                                                if #sheet.Talento02 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento02
                                                      sheet.Talento02 = string.sub(sheet.Talento02, 1, delCaracteres)
                                                end
        end);

    obj._e_event122 = obj.edit62:addEventListener("onChange",
        function ()
            if sheet.Talento03 == nil then
                                                      sheet.Talento03 = "Talento"
                                                end
                                                
                                                if #sheet.Talento03 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento03
                                                      sheet.Talento03 = string.sub(sheet.Talento03, 1, delCaracteres)
                                                end
        end);

    obj._e_event123 = obj.edit63:addEventListener("onChange",
        function ()
            if sheet.Talento04 == nil then
                                                      sheet.Talento04 = "Talento"
                                                end
                                                
                                                if #sheet.Talento04 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento04
                                                      sheet.Talento04 = string.sub(sheet.Talento04, 1, delCaracteres)
                                                end
        end);

    obj._e_event124 = obj.edit64:addEventListener("onChange",
        function ()
            if sheet.Talento05 == nil then
                                                      sheet.Talento05 = "Talento"
                                                end
                                                
                                                if #sheet.Talento05 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento05
                                                      sheet.Talento05 = string.sub(sheet.Talento05, 1, delCaracteres)
                                                end
        end);

    obj._e_event125 = obj.edit65:addEventListener("onChange",
        function ()
            if sheet.Talento06 == nil then
                                                      sheet.Talento06 = "Talento"
                                                end
                                                
                                                if #sheet.Talento06 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento06
                                                      sheet.Talento06 = string.sub(sheet.Talento06, 1, delCaracteres)
                                                end
        end);

    obj._e_event126 = obj.edit66:addEventListener("onChange",
        function ()
            if sheet.Talento07 == nil then
                                                      sheet.Talento07 = "Talento"
                                                end
                                                
                                                if #sheet.Talento07 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento07
                                                      sheet.Talento07 = string.sub(sheet.Talento07, 1, delCaracteres)
                                                end
        end);

    obj._e_event127 = obj.edit67:addEventListener("onChange",
        function ()
            if sheet.Talento08 == nil then
                                                      sheet.Talento08 = "Talento"
                                                end
                                                
                                                if #sheet.Talento08 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento08
                                                      sheet.Talento08 = string.sub(sheet.Talento08, 1, delCaracteres)
                                                end
        end);

    obj._e_event128 = obj.edit68:addEventListener("onChange",
        function ()
            if sheet.Talento09 == nil then
                                                      sheet.Talento09 = "Talento"
                                                end
                                                
                                                if #sheet.Talento09 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento09
                                                      sheet.Talento09 = string.sub(sheet.Talento09, 1, delCaracteres)
                                                end
        end);

    obj._e_event129 = obj.edit69:addEventListener("onChange",
        function ()
            if sheet.Talento10 == nil then
                                                      sheet.Talento10 = "Talento"
                                                end
                                                
                                                if #sheet.Talento10 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento10
                                                      sheet.Talento10 = string.sub(sheet.Talento10, 1, delCaracteres)
                                                end
        end);

    obj._e_event130 = obj.edit70:addEventListener("onChange",
        function ()
            if sheet.Talento11 == nil then
                                                      sheet.Talento11 = "Talento"
                                                end
                                                
                                                if #sheet.Talento11 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento11
                                                      sheet.Talento11 = string.sub(sheet.Talento11, 1, delCaracteres)
                                                end
        end);

    obj._e_event131 = obj.edit71:addEventListener("onChange",
        function ()
            if sheet.Talento12 == nil then
                                                      sheet.Talento12 = "Talento"
                                                end
                                                
                                                if #sheet.Talento12 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento12
                                                      sheet.Talento12 = string.sub(sheet.Talento12, 1, delCaracteres)
                                                end
        end);

    obj._e_event132 = obj.edit72:addEventListener("onChange",
        function ()
            if sheet.Talento13 == nil then
                                                      sheet.Talento13 = "Talento"
                                                end
                                                
                                                if #sheet.Talento13 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento13
                                                      sheet.Talento13 = string.sub(sheet.Talento13, 1, delCaracteres)
                                                end
        end);

    obj._e_event133 = obj.edit73:addEventListener("onChange",
        function ()
            if sheet.Talento14 == nil then
                                                      sheet.Talento14 = "Talento"
                                                end
                                                
                                                if #sheet.Talento14 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento14
                                                      sheet.Talento14 = string.sub(sheet.Talento14, 1, delCaracteres)
                                                end
        end);

    obj._e_event134 = obj.edit74:addEventListener("onChange",
        function ()
            if sheet.Talento15 == nil then
                                                      sheet.Talento15 = "Talento"
                                                end
                                                
                                                if #sheet.Talento15 > 65 then
                                                      local delCaracteres = 64 - #sheet.Talento15
                                                      sheet.Talento15 = string.sub(sheet.Talento15, 1, delCaracteres)
                                                end
        end);

    obj._e_event135 = obj.edit75:addEventListener("onChange",
        function ()
            if sheet.pCobre == nil then
                                                      sheet.pCobre = "0"
                                                else
                                                      if #sheet.pCobre > 5 then
                                                      local delCaracteres = 4 - #sheet.pCobre
                                                            sheet.pCobre = string.sub(sheet.pCobre, 1, delCaracteres) 
                                                      end
                                                end
        end);

    obj._e_event136 = obj.edit76:addEventListener("onChange",
        function ()
            if sheet.pPrata == nil then
                                                      sheet.pPrata = "0"
                                                else
                                                      if #sheet.pPrata > 5 then
                                                      local delCaracteres = 4 - #sheet.pPrata
                                                            sheet.pPrata = string.sub(sheet.pPrata, 1, delCaracteres) 
                                                      end
                                                end
        end);

    obj._e_event137 = obj.edit77:addEventListener("onChange",
        function ()
            if sheet.pOuro == nil then
                                                      sheet.pOuro = "0"
                                                else
                                                      if #sheet.pOuro > 5 then
                                                      local delCaracteres = 4 - #sheet.pOuro
                                                            sheet.pOuro = string.sub(sheet.pOuro, 1, delCaracteres) 
                                                      end
                                                end
        end);

    obj._e_event138 = obj.edit78:addEventListener("onChange",
        function ()
            if sheet.Magia01 == nil then
                                                      sheet.Magia01 = "--"
                                                end
                                                
                                                if #sheet.Magia01 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia01
                                                      sheet.Magia01 = string.sub(sheet.Magia01, 1, delCaracteres)
                                                end
        end);

    obj._e_event139 = obj.edit79:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia01 == nil then
                                                      sheet.tradicaoMagia01 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia01 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia01
                                                      sheet.tradicaoMagia01 = string.sub(sheet.tradicaoMagia01, 1, delCaracteres)
                                                end
        end);

    obj._e_event140 = obj.edit80:addEventListener("onChange",
        function ()
            if sheet.alvoMagia01 == nil then
                                                      sheet.alvoMagia01 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia01 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia01
                                                      sheet.alvoMagia01 = string.sub(sheet.alvoMagia01, 1, delCaracteres)
                                                end
        end);

    obj._e_event141 = obj.edit81:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia01 == nil then
                                                      sheet.duracaoMagia01 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia01 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia01
                                                      sheet.duracaoMagia01 = string.sub(sheet.duracaoMagia01, 1, delCaracteres)
                                                end
        end);

    obj._e_event142 = obj.rectangle305:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia01 ~= nil and sheet.qtdMagia01 ~= "--"  then
                                                      if sheet.Magia01 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia01 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia01 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia01 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia01 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia01) > 0 then
                                                            lancarMagia(sheet.Magia01, sheet.tradicaoMagia01, sheet.alvoMagia01, sheet.duracaoMagia01, sheet.descricaoMagia01)
                                                            sheet.qtdMagia01 = tostring(tonumber(sheet.qtdMagia01) - 1)
                                                      end
                                                end
        end);

    obj._e_event143 = obj.edit82:addEventListener("onChange",
        function ()
            if sheet.qtdMagia01 == nil then
                                                      sheet.qtdMagia01 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia01 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia01
                                                      sheet.qtdMagia01 = string.sub(sheet.qtdMagia01, 1, delCaracteres)
                                                end
        end);

    obj._e_event144 = obj.edit83:addEventListener("onChange",
        function ()
            if sheet.maxMagia01 == nil then
                                                      sheet.maxMagia01 = "--"
                                                end
                                                
                                                if #sheet.maxMagia01 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia01
                                                      sheet.maxMagia01 = string.sub(sheet.maxMagia01, 1, delCaracteres)
                                                end
        end);

    obj._e_event145 = obj.edit84:addEventListener("onChange",
        function ()
            if sheet.Magia02 == nil then
                                                      sheet.Magia02 = "--"
                                                end
                                                
                                                if #sheet.Magia02 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia02
                                                      sheet.Magia02 = string.sub(sheet.Magia02, 1, delCaracteres)
                                                end
        end);

    obj._e_event146 = obj.edit85:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia02 == nil then
                                                      sheet.tradicaoMagia02 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia02 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia02
                                                      sheet.tradicaoMagia02 = string.sub(sheet.tradicaoMagia02, 1, delCaracteres)
                                                end
        end);

    obj._e_event147 = obj.edit86:addEventListener("onChange",
        function ()
            if sheet.alvoMagia02 == nil then
                                                      sheet.alvoMagia02 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia02 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia02
                                                      sheet.alvoMagia02 = string.sub(sheet.alvoMagia02, 1, delCaracteres)
                                                end
        end);

    obj._e_event148 = obj.edit87:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia02 == nil then
                                                      sheet.duracaoMagia02 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia02 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia02
                                                      sheet.duracaoMagia02 = string.sub(sheet.duracaoMagia02, 1, delCaracteres)
                                                end
        end);

    obj._e_event149 = obj.rectangle315:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia02 ~= nil and sheet.qtdMagia02 ~= "--"  then
                                                      if sheet.Magia02 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia02 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia02 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia02 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia02 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia02) > 0 then
                                                            lancarMagia(sheet.Magia02, sheet.tradicaoMagia02, sheet.alvoMagia02, sheet.duracaoMagia02, sheet.descricaoMagia02)
                                                            sheet.qtdMagia02 = tostring(tonumber(sheet.qtdMagia02) - 1)
                                                      end
                                                end
        end);

    obj._e_event150 = obj.edit88:addEventListener("onChange",
        function ()
            if sheet.qtdMagia02 == nil then
                                                      sheet.qtdMagia02 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia02 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia02
                                                      sheet.qtdMagia02 = string.sub(sheet.qtdMagia02, 1, delCaracteres)
                                                end
        end);

    obj._e_event151 = obj.edit89:addEventListener("onChange",
        function ()
            if sheet.maxMagia02 == nil then
                                                      sheet.maxMagia02 = "--"
                                                end
                                                
                                                if #sheet.maxMagia02 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia02
                                                      sheet.maxMagia02 = string.sub(sheet.maxMagia02, 1, delCaracteres)
                                                end
        end);

    obj._e_event152 = obj.edit90:addEventListener("onChange",
        function ()
            if sheet.Magia03 == nil then
                                                      sheet.Magia03 = "--"
                                                end
                                                
                                                if #sheet.Magia03 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia03
                                                      sheet.Magia03 = string.sub(sheet.Magia03, 1, delCaracteres)
                                                end
        end);

    obj._e_event153 = obj.edit91:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia03 == nil then
                                                      sheet.tradicaoMagia03 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia03 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia03
                                                      sheet.tradicaoMagia03 = string.sub(sheet.tradicaoMagia03, 1, delCaracteres)
                                                end
        end);

    obj._e_event154 = obj.edit92:addEventListener("onChange",
        function ()
            if sheet.alvoMagia03 == nil then
                                                      sheet.alvoMagia03 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia03 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia03
                                                      sheet.alvoMagia03 = string.sub(sheet.alvoMagia03, 1, delCaracteres)
                                                end
        end);

    obj._e_event155 = obj.edit93:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia03 == nil then
                                                      sheet.duracaoMagia03 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia03 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia03
                                                      sheet.duracaoMagia03 = string.sub(sheet.duracaoMagia03, 1, delCaracteres)
                                                end
        end);

    obj._e_event156 = obj.rectangle325:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia03 ~= nil and sheet.qtdMagia03 ~= "--"  then
                                                      if sheet.Magia03 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia03 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia03 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia03 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia03 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia03) > 0 then
                                                            lancarMagia(sheet.Magia03, sheet.tradicaoMagia03, sheet.alvoMagia03, sheet.duracaoMagia03, sheet.descricaoMagia03)
                                                            sheet.qtdMagia03 = tostring(tonumber(sheet.qtdMagia03) - 1)
                                                      end
                                                end
        end);

    obj._e_event157 = obj.edit94:addEventListener("onChange",
        function ()
            if sheet.qtdMagia03 == nil then
                                                      sheet.qtdMagia03 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia03 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia03
                                                      sheet.qtdMagia03 = string.sub(sheet.qtdMagia03, 1, delCaracteres)
                                                end
        end);

    obj._e_event158 = obj.edit95:addEventListener("onChange",
        function ()
            if sheet.maxMagia03 == nil then
                                                      sheet.maxMagia03 = "--"
                                                end
                                                
                                                if #sheet.maxMagia03 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia03
                                                      sheet.maxMagia03 = string.sub(sheet.maxMagia03, 1, delCaracteres)
                                                end
        end);

    obj._e_event159 = obj.edit96:addEventListener("onChange",
        function ()
            if sheet.Magia04 == nil then
                                                      sheet.Magia04 = "--"
                                                end
                                                
                                                if #sheet.Magia04 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia04
                                                      sheet.Magia04 = string.sub(sheet.Magia04, 1, delCaracteres)
                                                end
        end);

    obj._e_event160 = obj.edit97:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia04 == nil then
                                                      sheet.tradicaoMagia04 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia04 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia04
                                                      sheet.tradicaoMagia04 = string.sub(sheet.tradicaoMagia04, 1, delCaracteres)
                                                end
        end);

    obj._e_event161 = obj.edit98:addEventListener("onChange",
        function ()
            if sheet.alvoMagia04 == nil then
                                                      sheet.alvoMagia04 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia04 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia04
                                                      sheet.alvoMagia04 = string.sub(sheet.alvoMagia04, 1, delCaracteres)
                                                end
        end);

    obj._e_event162 = obj.edit99:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia04 == nil then
                                                      sheet.duracaoMagia04 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia04 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia04
                                                      sheet.duracaoMagia04 = string.sub(sheet.duracaoMagia04, 1, delCaracteres)
                                                end
        end);

    obj._e_event163 = obj.rectangle335:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia04 ~= nil and sheet.qtdMagia04 ~= "--"  then
                                                      if sheet.Magia04 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia04 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia04 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia04 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia04 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia04) > 0 then
                                                            lancarMagia(sheet.Magia04, sheet.tradicaoMagia04, sheet.alvoMagia04, sheet.duracaoMagia04, sheet.descricaoMagia04)
                                                            sheet.qtdMagia04 = tostring(tonumber(sheet.qtdMagia04) - 1)
                                                      end
                                                end
        end);

    obj._e_event164 = obj.edit100:addEventListener("onChange",
        function ()
            if sheet.qtdMagia04 == nil then
                                                      sheet.qtdMagia04 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia04 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia04
                                                      sheet.qtdMagia04 = string.sub(sheet.qtdMagia04, 1, delCaracteres)
                                                end
        end);

    obj._e_event165 = obj.edit101:addEventListener("onChange",
        function ()
            if sheet.maxMagia04 == nil then
                                                      sheet.maxMagia04 = "--"
                                                end
                                                
                                                if #sheet.maxMagia04 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia04
                                                      sheet.maxMagia04 = string.sub(sheet.maxMagia04, 1, delCaracteres)
                                                end
        end);

    obj._e_event166 = obj.edit102:addEventListener("onChange",
        function ()
            if sheet.Magia05 == nil then
                                                      sheet.Magia05 = "--"
                                                end
                                                
                                                if #sheet.Magia05 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia05
                                                      sheet.Magia05 = string.sub(sheet.Magia05, 1, delCaracteres)
                                                end
        end);

    obj._e_event167 = obj.edit103:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia05 == nil then
                                                      sheet.tradicaoMagia05 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia05 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia05
                                                      sheet.tradicaoMagia05 = string.sub(sheet.tradicaoMagia05, 1, delCaracteres)
                                                end
        end);

    obj._e_event168 = obj.edit104:addEventListener("onChange",
        function ()
            if sheet.alvoMagia05 == nil then
                                                      sheet.alvoMagia05 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia05 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia05
                                                      sheet.alvoMagia05 = string.sub(sheet.alvoMagia05, 1, delCaracteres)
                                                end
        end);

    obj._e_event169 = obj.edit105:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia05 == nil then
                                                      sheet.duracaoMagia05 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia05 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia05
                                                      sheet.duracaoMagia05 = string.sub(sheet.duracaoMagia05, 1, delCaracteres)
                                                end
        end);

    obj._e_event170 = obj.rectangle345:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia05 ~= nil and sheet.qtdMagia05 ~= "--"  then
                                                      if sheet.Magia05 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia05 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia05 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia05 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia05 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia05) > 0 then
                                                            lancarMagia(sheet.Magia05, sheet.tradicaoMagia05, sheet.alvoMagia05, sheet.duracaoMagia05, sheet.descricaoMagia05)
                                                            sheet.qtdMagia05 = tostring(tonumber(sheet.qtdMagia05) - 1)
                                                      end
                                                end
        end);

    obj._e_event171 = obj.edit106:addEventListener("onChange",
        function ()
            if sheet.qtdMagia05 == nil then
                                                      sheet.qtdMagia05 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia05 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia05
                                                      sheet.qtdMagia05 = string.sub(sheet.qtdMagia05, 1, delCaracteres)
                                                end
        end);

    obj._e_event172 = obj.edit107:addEventListener("onChange",
        function ()
            if sheet.maxMagia05 == nil then
                                                      sheet.maxMagia05 = "--"
                                                end
                                                
                                                if #sheet.maxMagia05 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia05
                                                      sheet.maxMagia05 = string.sub(sheet.maxMagia05, 1, delCaracteres)
                                                end
        end);

    obj._e_event173 = obj.edit108:addEventListener("onChange",
        function ()
            if sheet.Magia06 == nil then
                                                      sheet.Magia06 = "--"
                                                end
                                                
                                                if #sheet.Magia06 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia06
                                                      sheet.Magia06 = string.sub(sheet.Magia06, 1, delCaracteres)
                                                end
        end);

    obj._e_event174 = obj.edit109:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia06 == nil then
                                                      sheet.tradicaoMagia06 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia06 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia06
                                                      sheet.tradicaoMagia06 = string.sub(sheet.tradicaoMagia06, 1, delCaracteres)
                                                end
        end);

    obj._e_event175 = obj.edit110:addEventListener("onChange",
        function ()
            if sheet.alvoMagia06 == nil then
                                                      sheet.alvoMagia06 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia06 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia06
                                                      sheet.alvoMagia06 = string.sub(sheet.alvoMagia06, 1, delCaracteres)
                                                end
        end);

    obj._e_event176 = obj.edit111:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia06 == nil then
                                                      sheet.duracaoMagia06 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia06 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia06
                                                      sheet.duracaoMagia06 = string.sub(sheet.duracaoMagia06, 1, delCaracteres)
                                                end
        end);

    obj._e_event177 = obj.rectangle355:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia06 ~= nil and sheet.qtdMagia06 ~= "--"  then
                                                      if sheet.Magia06 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia06 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia06 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia06 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia06 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia06) > 0 then
                                                            lancarMagia(sheet.Magia06, sheet.tradicaoMagia06, sheet.alvoMagia06, sheet.duracaoMagia06, sheet.descricaoMagia06)
                                                            sheet.qtdMagia06 = tostring(tonumber(sheet.qtdMagia06) - 1)
                                                      end
                                                end
        end);

    obj._e_event178 = obj.edit112:addEventListener("onChange",
        function ()
            if sheet.qtdMagia06 == nil then
                                                      sheet.qtdMagia06 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia06 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia06
                                                      sheet.qtdMagia06 = string.sub(sheet.qtdMagia06, 1, delCaracteres)
                                                end
        end);

    obj._e_event179 = obj.edit113:addEventListener("onChange",
        function ()
            if sheet.maxMagia06 == nil then
                                                      sheet.maxMagia06 = "--"
                                                end
                                                
                                                if #sheet.maxMagia06 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia06
                                                      sheet.maxMagia06 = string.sub(sheet.maxMagia06, 1, delCaracteres)
                                                end
        end);

    obj._e_event180 = obj.edit114:addEventListener("onChange",
        function ()
            if sheet.Magia07 == nil then
                                                      sheet.Magia07 = "--"
                                                end
                                                
                                                if #sheet.Magia07 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia07
                                                      sheet.Magia07 = string.sub(sheet.Magia07, 1, delCaracteres)
                                                end
        end);

    obj._e_event181 = obj.edit115:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia07 == nil then
                                                      sheet.tradicaoMagia07 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia07 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia07
                                                      sheet.tradicaoMagia07 = string.sub(sheet.tradicaoMagia07, 1, delCaracteres)
                                                end
        end);

    obj._e_event182 = obj.edit116:addEventListener("onChange",
        function ()
            if sheet.alvoMagia07 == nil then
                                                      sheet.alvoMagia07 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia07 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia07
                                                      sheet.alvoMagia07 = string.sub(sheet.alvoMagia07, 1, delCaracteres)
                                                end
        end);

    obj._e_event183 = obj.edit117:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia07 == nil then
                                                      sheet.duracaoMagia07 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia07 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia07
                                                      sheet.duracaoMagia07 = string.sub(sheet.duracaoMagia07, 1, delCaracteres)
                                                end
        end);

    obj._e_event184 = obj.rectangle365:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia07 ~= nil and sheet.qtdMagia07 ~= "--"  then
                                                      if sheet.Magia07 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia07 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia07 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia07 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia07 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia07) > 0 then
                                                            lancarMagia(sheet.Magia07, sheet.tradicaoMagia07, sheet.alvoMagia07, sheet.duracaoMagia07, sheet.descricaoMagia07)
                                                            sheet.qtdMagia07 = tostring(tonumber(sheet.qtdMagia07) - 1)
                                                      end
                                                end
        end);

    obj._e_event185 = obj.edit118:addEventListener("onChange",
        function ()
            if sheet.qtdMagia07 == nil then
                                                      sheet.qtdMagia07 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia07 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia07
                                                      sheet.qtdMagia07 = string.sub(sheet.qtdMagia07, 1, delCaracteres)
                                                end
        end);

    obj._e_event186 = obj.edit119:addEventListener("onChange",
        function ()
            if sheet.maxMagia07 == nil then
                                                      sheet.maxMagia07 = "--"
                                                end
                                                
                                                if #sheet.maxMagia07 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia07
                                                      sheet.maxMagia07 = string.sub(sheet.maxMagia07, 1, delCaracteres)
                                                end
        end);

    obj._e_event187 = obj.edit120:addEventListener("onChange",
        function ()
            if sheet.Magia08 == nil then
                                                      sheet.Magia08 = "--"
                                                end
                                                
                                                if #sheet.Magia08 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia08
                                                      sheet.Magia08 = string.sub(sheet.Magia08, 1, delCaracteres)
                                                end
        end);

    obj._e_event188 = obj.edit121:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia08 == nil then
                                                      sheet.tradicaoMagia08 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia08 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia08
                                                      sheet.tradicaoMagia08 = string.sub(sheet.tradicaoMagia08, 1, delCaracteres)
                                                end
        end);

    obj._e_event189 = obj.edit122:addEventListener("onChange",
        function ()
            if sheet.alvoMagia08 == nil then
                                                      sheet.alvoMagia08 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia08 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia08
                                                      sheet.alvoMagia08 = string.sub(sheet.alvoMagia08, 1, delCaracteres)
                                                end
        end);

    obj._e_event190 = obj.edit123:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia08 == nil then
                                                      sheet.duracaoMagia08 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia08 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia08
                                                      sheet.duracaoMagia08 = string.sub(sheet.duracaoMagia08, 1, delCaracteres)
                                                end
        end);

    obj._e_event191 = obj.rectangle375:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia08 ~= nil and sheet.qtdMagia08 ~= "--"  then
                                                      if sheet.Magia08 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia08 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia08 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia08 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia08 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia08) > 0 then
                                                            lancarMagia(sheet.Magia08, sheet.tradicaoMagia08, sheet.alvoMagia08, sheet.duracaoMagia08, sheet.descricaoMagia08)
                                                            sheet.qtdMagia08 = tostring(tonumber(sheet.qtdMagia08) - 1)
                                                      end
                                                end
        end);

    obj._e_event192 = obj.edit124:addEventListener("onChange",
        function ()
            if sheet.qtdMagia08 == nil then
                                                      sheet.qtdMagia08 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia08 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia08
                                                      sheet.qtdMagia08 = string.sub(sheet.qtdMagia08, 1, delCaracteres)
                                                end
        end);

    obj._e_event193 = obj.edit125:addEventListener("onChange",
        function ()
            if sheet.maxMagia08 == nil then
                                                      sheet.maxMagia08 = "--"
                                                end
                                                
                                                if #sheet.maxMagia08 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia08
                                                      sheet.maxMagia08 = string.sub(sheet.maxMagia08, 1, delCaracteres)
                                                end
        end);

    obj._e_event194 = obj.edit126:addEventListener("onChange",
        function ()
            if sheet.Magia09 == nil then
                                                      sheet.Magia09 = "--"
                                                end
                                                
                                                if #sheet.Magia09 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia09
                                                      sheet.Magia09 = string.sub(sheet.Magia09, 1, delCaracteres)
                                                end
        end);

    obj._e_event195 = obj.edit127:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia09 == nil then
                                                      sheet.tradicaoMagia09 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia09 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia09
                                                      sheet.tradicaoMagia09 = string.sub(sheet.tradicaoMagia09, 1, delCaracteres)
                                                end
        end);

    obj._e_event196 = obj.edit128:addEventListener("onChange",
        function ()
            if sheet.alvoMagia09 == nil then
                                                      sheet.alvoMagia09 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia09 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia09
                                                      sheet.alvoMagia09 = string.sub(sheet.alvoMagia09, 1, delCaracteres)
                                                end
        end);

    obj._e_event197 = obj.edit129:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia09 == nil then
                                                      sheet.duracaoMagia09 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia09 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia09
                                                      sheet.duracaoMagia09 = string.sub(sheet.duracaoMagia09, 1, delCaracteres)
                                                end
        end);

    obj._e_event198 = obj.rectangle385:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia09 ~= nil and sheet.qtdMagia09 ~= "--"  then
                                                      if sheet.Magia09 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia09 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia09 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia09 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia09 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia09) > 0 then
                                                            lancarMagia(sheet.Magia09, sheet.tradicaoMagia09, sheet.alvoMagia09, sheet.duracaoMagia09, sheet.descricaoMagia09)
                                                            sheet.qtdMagia09 = tostring(tonumber(sheet.qtdMagia09) - 1)
                                                      end
                                                end
        end);

    obj._e_event199 = obj.edit130:addEventListener("onChange",
        function ()
            if sheet.qtdMagia09 == nil then
                                                      sheet.qtdMagia09 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia09 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia09
                                                      sheet.qtdMagia09 = string.sub(sheet.qtdMagia09, 1, delCaracteres)
                                                end
        end);

    obj._e_event200 = obj.edit131:addEventListener("onChange",
        function ()
            if sheet.maxMagia09 == nil then
                                                      sheet.maxMagia09 = "--"
                                                end
                                                
                                                if #sheet.maxMagia09 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia09
                                                      sheet.maxMagia09 = string.sub(sheet.maxMagia09, 1, delCaracteres)
                                                end
        end);

    obj._e_event201 = obj.edit132:addEventListener("onChange",
        function ()
            if sheet.Magia10 == nil then
                                                      sheet.Magia10 = "--"
                                                end
                                                
                                                if #sheet.Magia10 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia10
                                                      sheet.Magia10 = string.sub(sheet.Magia10, 1, delCaracteres)
                                                end
        end);

    obj._e_event202 = obj.edit133:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia10 == nil then
                                                      sheet.tradicaoMagia10 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia10 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia10
                                                      sheet.tradicaoMagia10 = string.sub(sheet.tradicaoMagia10, 1, delCaracteres)
                                                end
        end);

    obj._e_event203 = obj.edit134:addEventListener("onChange",
        function ()
            if sheet.alvoMagia10 == nil then
                                                      sheet.alvoMagia10 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia10 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia10
                                                      sheet.alvoMagia10 = string.sub(sheet.alvoMagia10, 1, delCaracteres)
                                                end
        end);

    obj._e_event204 = obj.edit135:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia10 == nil then
                                                      sheet.duracaoMagia10 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia10 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia10
                                                      sheet.duracaoMagia10 = string.sub(sheet.duracaoMagia10, 1, delCaracteres)
                                                end
        end);

    obj._e_event205 = obj.rectangle395:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia10 ~= nil and sheet.qtdMagia10 ~= "--"  then
                                                      if sheet.Magia10 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia10 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia10 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia10 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia10 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia10) > 0 then
                                                            lancarMagia(sheet.Magia10, sheet.tradicaoMagia10, sheet.alvoMagia10, sheet.duracaoMagia10, sheet.descricaoMagia10)
                                                            sheet.qtdMagia10 = tostring(tonumber(sheet.qtdMagia10) - 1)
                                                      end
                                                end
        end);

    obj._e_event206 = obj.edit136:addEventListener("onChange",
        function ()
            if sheet.qtdMagia10 == nil then
                                                      sheet.qtdMagia10 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia10 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia10
                                                      sheet.qtdMagia10 = string.sub(sheet.qtdMagia10, 1, delCaracteres)
                                                end
        end);

    obj._e_event207 = obj.edit137:addEventListener("onChange",
        function ()
            if sheet.maxMagia10 == nil then
                                                      sheet.maxMagia10 = "--"
                                                end
                                                
                                                if #sheet.maxMagia10 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia10
                                                      sheet.maxMagia10 = string.sub(sheet.maxMagia10, 1, delCaracteres)
                                                end
        end);

    obj._e_event208 = obj.edit138:addEventListener("onChange",
        function ()
            if sheet.Magia11 == nil then
                                                      sheet.Magia11 = "--"
                                                end
                                                
                                                if #sheet.Magia11 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia11
                                                      sheet.Magia11 = string.sub(sheet.Magia11, 1, delCaracteres)
                                                end
        end);

    obj._e_event209 = obj.edit139:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia11 == nil then
                                                      sheet.tradicaoMagia11 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia11 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia11
                                                      sheet.tradicaoMagia11 = string.sub(sheet.tradicaoMagia11, 1, delCaracteres)
                                                end
        end);

    obj._e_event210 = obj.edit140:addEventListener("onChange",
        function ()
            if sheet.alvoMagia11 == nil then
                                                      sheet.alvoMagia11 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia11 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia11
                                                      sheet.alvoMagia11 = string.sub(sheet.alvoMagia11, 1, delCaracteres)
                                                end
        end);

    obj._e_event211 = obj.edit141:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia11 == nil then
                                                      sheet.duracaoMagia11 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia11 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia11
                                                      sheet.duracaoMagia11 = string.sub(sheet.duracaoMagia11, 1, delCaracteres)
                                                end
        end);

    obj._e_event212 = obj.rectangle410:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia11 ~= nil and sheet.qtdMagia11 ~= "--"  then
                                                      if sheet.Magia11 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia11 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia11 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia11 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia11 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia11) > 0 then
                                                            lancarMagia(sheet.Magia11, sheet.tradicaoMagia11, sheet.alvoMagia11, sheet.duracaoMagia11, sheet.descricaoMagia11)
                                                            sheet.qtdMagia11 = tostring(tonumber(sheet.qtdMagia11) - 1)
                                                      end
                                                end
        end);

    obj._e_event213 = obj.edit142:addEventListener("onChange",
        function ()
            if sheet.qtdMagia11 == nil then
                                                      sheet.qtdMagia11 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia11 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia11
                                                      sheet.qtdMagia11 = string.sub(sheet.qtdMagia11, 1, delCaracteres)
                                                end
        end);

    obj._e_event214 = obj.edit143:addEventListener("onChange",
        function ()
            if sheet.maxMagia11 == nil then
                                                      sheet.maxMagia11 = "--"
                                                end
                                                
                                                if #sheet.maxMagia11 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia11
                                                      sheet.maxMagia11 = string.sub(sheet.maxMagia11, 1, delCaracteres)
                                                end
        end);

    obj._e_event215 = obj.edit144:addEventListener("onChange",
        function ()
            if sheet.Magia12 == nil then
                                                      sheet.Magia12 = "--"
                                                end
                                                
                                                if #sheet.Magia12 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia12
                                                      sheet.Magia12 = string.sub(sheet.Magia12, 1, delCaracteres)
                                                end
        end);

    obj._e_event216 = obj.edit145:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia12 == nil then
                                                      sheet.tradicaoMagia12 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia12 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia12
                                                      sheet.tradicaoMagia12 = string.sub(sheet.tradicaoMagia12, 1, delCaracteres)
                                                end
        end);

    obj._e_event217 = obj.edit146:addEventListener("onChange",
        function ()
            if sheet.alvoMagia12 == nil then
                                                      sheet.alvoMagia12 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia12 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia12
                                                      sheet.alvoMagia12 = string.sub(sheet.alvoMagia12, 1, delCaracteres)
                                                end
        end);

    obj._e_event218 = obj.edit147:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia12 == nil then
                                                      sheet.duracaoMagia12 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia12 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia12
                                                      sheet.duracaoMagia12 = string.sub(sheet.duracaoMagia12, 1, delCaracteres)
                                                end
        end);

    obj._e_event219 = obj.rectangle420:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia12 ~= nil and sheet.qtdMagia12 ~= "--"  then
                                                      if sheet.Magia12 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia12 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia12 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia12 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia12 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia12) > 0 then
                                                            lancarMagia(sheet.Magia12, sheet.tradicaoMagia12, sheet.alvoMagia12, sheet.duracaoMagia12, sheet.descricaoMagia12)
                                                            sheet.qtdMagia12 = tostring(tonumber(sheet.qtdMagia12) - 1)
                                                      end
                                                end
        end);

    obj._e_event220 = obj.edit148:addEventListener("onChange",
        function ()
            if sheet.qtdMagia12 == nil then
                                                      sheet.qtdMagia12 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia12 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia12
                                                      sheet.qtdMagia12 = string.sub(sheet.qtdMagia12, 1, delCaracteres)
                                                end
        end);

    obj._e_event221 = obj.edit149:addEventListener("onChange",
        function ()
            if sheet.maxMagia12 == nil then
                                                      sheet.maxMagia12 = "--"
                                                end
                                                
                                                if #sheet.maxMagia12 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia12
                                                      sheet.maxMagia12 = string.sub(sheet.maxMagia12, 1, delCaracteres)
                                                end
        end);

    obj._e_event222 = obj.edit150:addEventListener("onChange",
        function ()
            if sheet.Magia13 == nil then
                                                      sheet.Magia13 = "--"
                                                end
                                                
                                                if #sheet.Magia13 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia13
                                                      sheet.Magia13 = string.sub(sheet.Magia13, 1, delCaracteres)
                                                end
        end);

    obj._e_event223 = obj.edit151:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia13 == nil then
                                                      sheet.tradicaoMagia13 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia13 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia13
                                                      sheet.tradicaoMagia13 = string.sub(sheet.tradicaoMagia13, 1, delCaracteres)
                                                end
        end);

    obj._e_event224 = obj.edit152:addEventListener("onChange",
        function ()
            if sheet.alvoMagia13 == nil then
                                                      sheet.alvoMagia13 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia13 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia13
                                                      sheet.alvoMagia13 = string.sub(sheet.alvoMagia13, 1, delCaracteres)
                                                end
        end);

    obj._e_event225 = obj.edit153:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia13 == nil then
                                                      sheet.duracaoMagia13 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia13 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia13
                                                      sheet.duracaoMagia13 = string.sub(sheet.duracaoMagia13, 1, delCaracteres)
                                                end
        end);

    obj._e_event226 = obj.rectangle430:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia13 ~= nil and sheet.qtdMagia13 ~= "--"  then
                                                      if sheet.Magia13 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia13 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia13 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia13 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia13 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia13) > 0 then
                                                            lancarMagia(sheet.Magia13, sheet.tradicaoMagia13, sheet.alvoMagia13, sheet.duracaoMagia13, sheet.descricaoMagia13)
                                                            sheet.qtdMagia13 = tostring(tonumber(sheet.qtdMagia13) - 1)
                                                      end
                                                end
        end);

    obj._e_event227 = obj.edit154:addEventListener("onChange",
        function ()
            if sheet.qtdMagia13 == nil then
                                                      sheet.qtdMagia13 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia13 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia13
                                                      sheet.qtdMagia13 = string.sub(sheet.qtdMagia13, 1, delCaracteres)
                                                end
        end);

    obj._e_event228 = obj.edit155:addEventListener("onChange",
        function ()
            if sheet.maxMagia13 == nil then
                                                      sheet.maxMagia13 = "--"
                                                end
                                                
                                                if #sheet.maxMagia13 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia13
                                                      sheet.maxMagia13 = string.sub(sheet.maxMagia13, 1, delCaracteres)
                                                end
        end);

    obj._e_event229 = obj.edit156:addEventListener("onChange",
        function ()
            if sheet.Magia14 == nil then
                                                      sheet.Magia14 = "--"
                                                end
                                                
                                                if #sheet.Magia14 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia14
                                                      sheet.Magia14 = string.sub(sheet.Magia14, 1, delCaracteres)
                                                end
        end);

    obj._e_event230 = obj.edit157:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia14 == nil then
                                                      sheet.tradicaoMagia14 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia14 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia14
                                                      sheet.tradicaoMagia14 = string.sub(sheet.tradicaoMagia14, 1, delCaracteres)
                                                end
        end);

    obj._e_event231 = obj.edit158:addEventListener("onChange",
        function ()
            if sheet.alvoMagia14 == nil then
                                                      sheet.alvoMagia14 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia14 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia14
                                                      sheet.alvoMagia14 = string.sub(sheet.alvoMagia14, 1, delCaracteres)
                                                end
        end);

    obj._e_event232 = obj.edit159:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia14 == nil then
                                                      sheet.duracaoMagia14 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia14 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia14
                                                      sheet.duracaoMagia14 = string.sub(sheet.duracaoMagia14, 1, delCaracteres)
                                                end
        end);

    obj._e_event233 = obj.rectangle440:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia14 ~= nil and sheet.qtdMagia14 ~= "--"  then
                                                      if sheet.Magia14 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia14 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia14 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia14 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia14 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia14) > 0 then
                                                            lancarMagia(sheet.Magia14, sheet.tradicaoMagia14, sheet.alvoMagia14, sheet.duracaoMagia14, sheet.descricaoMagia14)
                                                            sheet.qtdMagia14 = tostring(tonumber(sheet.qtdMagia14) - 1)
                                                      end
                                                end
        end);

    obj._e_event234 = obj.edit160:addEventListener("onChange",
        function ()
            if sheet.qtdMagia14 == nil then
                                                      sheet.qtdMagia14 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia14 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia14
                                                      sheet.qtdMagia14 = string.sub(sheet.qtdMagia14, 1, delCaracteres)
                                                end
        end);

    obj._e_event235 = obj.edit161:addEventListener("onChange",
        function ()
            if sheet.maxMagia14 == nil then
                                                      sheet.maxMagia14 = "--"
                                                end
                                                
                                                if #sheet.maxMagia14 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia14
                                                      sheet.maxMagia14 = string.sub(sheet.maxMagia14, 1, delCaracteres)
                                                end
        end);

    obj._e_event236 = obj.edit162:addEventListener("onChange",
        function ()
            if sheet.Magia15 == nil then
                                                      sheet.Magia15 = "--"
                                                end
                                                
                                                if #sheet.Magia15 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia15
                                                      sheet.Magia15 = string.sub(sheet.Magia15, 1, delCaracteres)
                                                end
        end);

    obj._e_event237 = obj.edit163:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia15 == nil then
                                                      sheet.tradicaoMagia15 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia15 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia15
                                                      sheet.tradicaoMagia15 = string.sub(sheet.tradicaoMagia15, 1, delCaracteres)
                                                end
        end);

    obj._e_event238 = obj.edit164:addEventListener("onChange",
        function ()
            if sheet.alvoMagia15 == nil then
                                                      sheet.alvoMagia15 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia15 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia15
                                                      sheet.alvoMagia15 = string.sub(sheet.alvoMagia15, 1, delCaracteres)
                                                end
        end);

    obj._e_event239 = obj.edit165:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia15 == nil then
                                                      sheet.duracaoMagia15 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia15 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia15
                                                      sheet.duracaoMagia15 = string.sub(sheet.duracaoMagia15, 1, delCaracteres)
                                                end
        end);

    obj._e_event240 = obj.rectangle450:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia15 ~= nil and sheet.qtdMagia15 ~= "--"  then
                                                      if sheet.Magia15 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia15 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia15 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia15 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia15 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia15) > 0 then
                                                            lancarMagia(sheet.Magia15, sheet.tradicaoMagia15, sheet.alvoMagia15, sheet.duracaoMagia15, sheet.descricaoMagia15)
                                                            sheet.qtdMagia15 = tostring(tonumber(sheet.qtdMagia15) - 1)
                                                      end
                                                end
        end);

    obj._e_event241 = obj.edit166:addEventListener("onChange",
        function ()
            if sheet.qtdMagia15 == nil then
                                                      sheet.qtdMagia15 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia15 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia15
                                                      sheet.qtdMagia15 = string.sub(sheet.qtdMagia15, 1, delCaracteres)
                                                end
        end);

    obj._e_event242 = obj.edit167:addEventListener("onChange",
        function ()
            if sheet.maxMagia15 == nil then
                                                      sheet.maxMagia15 = "--"
                                                end
                                                
                                                if #sheet.maxMagia15 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia15
                                                      sheet.maxMagia15 = string.sub(sheet.maxMagia15, 1, delCaracteres)
                                                end
        end);

    obj._e_event243 = obj.edit168:addEventListener("onChange",
        function ()
            if sheet.Magia16 == nil then
                                                      sheet.Magia16 = "--"
                                                end
                                                
                                                if #sheet.Magia16 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia16
                                                      sheet.Magia16 = string.sub(sheet.Magia16, 1, delCaracteres)
                                                end
        end);

    obj._e_event244 = obj.edit169:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia16 == nil then
                                                      sheet.tradicaoMagia16 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia16 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia16
                                                      sheet.tradicaoMagia16 = string.sub(sheet.tradicaoMagia16, 1, delCaracteres)
                                                end
        end);

    obj._e_event245 = obj.edit170:addEventListener("onChange",
        function ()
            if sheet.alvoMagia16 == nil then
                                                      sheet.alvoMagia16 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia16 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia16
                                                      sheet.alvoMagia16 = string.sub(sheet.alvoMagia16, 1, delCaracteres)
                                                end
        end);

    obj._e_event246 = obj.edit171:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia16 == nil then
                                                      sheet.duracaoMagia16 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia16 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia16
                                                      sheet.duracaoMagia16 = string.sub(sheet.duracaoMagia16, 1, delCaracteres)
                                                end
        end);

    obj._e_event247 = obj.rectangle460:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia16 ~= nil and sheet.qtdMagia16 ~= "--"  then
                                                      if sheet.Magia16 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia16 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia16 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia16 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia16 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia16) > 0 then
                                                            lancarMagia(sheet.Magia16, sheet.tradicaoMagia16, sheet.alvoMagia16, sheet.duracaoMagia16, sheet.descricaoMagia16)
                                                            sheet.qtdMagia16 = tostring(tonumber(sheet.qtdMagia16) - 1)
                                                      end
                                                end
        end);

    obj._e_event248 = obj.edit172:addEventListener("onChange",
        function ()
            if sheet.qtdMagia16 == nil then
                                                      sheet.qtdMagia16 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia16 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia16
                                                      sheet.qtdMagia16 = string.sub(sheet.qtdMagia16, 1, delCaracteres)
                                                end
        end);

    obj._e_event249 = obj.edit173:addEventListener("onChange",
        function ()
            if sheet.maxMagia16 == nil then
                                                      sheet.maxMagia16 = "--"
                                                end
                                                
                                                if #sheet.maxMagia16 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia16
                                                      sheet.maxMagia16 = string.sub(sheet.maxMagia16, 1, delCaracteres)
                                                end
        end);

    obj._e_event250 = obj.edit174:addEventListener("onChange",
        function ()
            if sheet.Magia17 == nil then
                                                      sheet.Magia17 = "--"
                                                end
                                                
                                                if #sheet.Magia17 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia17
                                                      sheet.Magia17 = string.sub(sheet.Magia17, 1, delCaracteres)
                                                end
        end);

    obj._e_event251 = obj.edit175:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia17 == nil then
                                                      sheet.tradicaoMagia17 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia17 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia17
                                                      sheet.tradicaoMagia17 = string.sub(sheet.tradicaoMagia17, 1, delCaracteres)
                                                end
        end);

    obj._e_event252 = obj.edit176:addEventListener("onChange",
        function ()
            if sheet.alvoMagia17 == nil then
                                                      sheet.alvoMagia17 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia17 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia17
                                                      sheet.alvoMagia17 = string.sub(sheet.alvoMagia17, 1, delCaracteres)
                                                end
        end);

    obj._e_event253 = obj.edit177:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia17 == nil then
                                                      sheet.duracaoMagia17 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia17 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia17
                                                      sheet.duracaoMagia17 = string.sub(sheet.duracaoMagia17, 1, delCaracteres)
                                                end
        end);

    obj._e_event254 = obj.rectangle470:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia17 ~= nil and sheet.qtdMagia17 ~= "--"  then
                                                      if sheet.Magia17 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia17 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia17 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia17 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia17 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia17) > 0 then
                                                            lancarMagia(sheet.Magia17, sheet.tradicaoMagia17, sheet.alvoMagia17, sheet.duracaoMagia17, sheet.descricaoMagia17)
                                                            sheet.qtdMagia17 = tostring(tonumber(sheet.qtdMagia17) - 1)
                                                      end
                                                end
        end);

    obj._e_event255 = obj.edit178:addEventListener("onChange",
        function ()
            if sheet.qtdMagia17 == nil then
                                                      sheet.qtdMagia17 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia17 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia17
                                                      sheet.qtdMagia17 = string.sub(sheet.qtdMagia17, 1, delCaracteres)
                                                end
        end);

    obj._e_event256 = obj.edit179:addEventListener("onChange",
        function ()
            if sheet.maxMagia17 == nil then
                                                      sheet.maxMagia17 = "--"
                                                end
                                                
                                                if #sheet.maxMagia17 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia17
                                                      sheet.maxMagia17 = string.sub(sheet.maxMagia17, 1, delCaracteres)
                                                end
        end);

    obj._e_event257 = obj.edit180:addEventListener("onChange",
        function ()
            if sheet.Magia18 == nil then
                                                      sheet.Magia18 = "--"
                                                end
                                                
                                                if #sheet.Magia18 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia18
                                                      sheet.Magia18 = string.sub(sheet.Magia18, 1, delCaracteres)
                                                end
        end);

    obj._e_event258 = obj.edit181:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia18 == nil then
                                                      sheet.tradicaoMagia18 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia18 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia18
                                                      sheet.tradicaoMagia18 = string.sub(sheet.tradicaoMagia18, 1, delCaracteres)
                                                end
        end);

    obj._e_event259 = obj.edit182:addEventListener("onChange",
        function ()
            if sheet.alvoMagia18 == nil then
                                                      sheet.alvoMagia18 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia18 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia18
                                                      sheet.alvoMagia18 = string.sub(sheet.alvoMagia18, 1, delCaracteres)
                                                end
        end);

    obj._e_event260 = obj.edit183:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia18 == nil then
                                                      sheet.duracaoMagia18 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia18 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia18
                                                      sheet.duracaoMagia18 = string.sub(sheet.duracaoMagia18, 1, delCaracteres)
                                                end
        end);

    obj._e_event261 = obj.rectangle480:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia18 ~= nil and sheet.qtdMagia18 ~= "--"  then
                                                      if sheet.Magia18 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia18 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia18 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia18 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia18 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia18) > 0 then
                                                            lancarMagia(sheet.Magia18, sheet.tradicaoMagia18, sheet.alvoMagia18, sheet.duracaoMagia18, sheet.descricaoMagia18)
                                                            sheet.qtdMagia18 = tostring(tonumber(sheet.qtdMagia18) - 1)
                                                      end
                                                end
        end);

    obj._e_event262 = obj.edit184:addEventListener("onChange",
        function ()
            if sheet.qtdMagia18 == nil then
                                                      sheet.qtdMagia18 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia18 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia18
                                                      sheet.qtdMagia18 = string.sub(sheet.qtdMagia18, 1, delCaracteres)
                                                end
        end);

    obj._e_event263 = obj.edit185:addEventListener("onChange",
        function ()
            if sheet.maxMagia18 == nil then
                                                      sheet.maxMagia18 = "--"
                                                end
                                                
                                                if #sheet.maxMagia18 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia18
                                                      sheet.maxMagia18 = string.sub(sheet.maxMagia18, 1, delCaracteres)
                                                end
        end);

    obj._e_event264 = obj.edit186:addEventListener("onChange",
        function ()
            if sheet.Magia19 == nil then
                                                      sheet.Magia19 = "--"
                                                end
                                                
                                                if #sheet.Magia19 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia19
                                                      sheet.Magia19 = string.sub(sheet.Magia19, 1, delCaracteres)
                                                end
        end);

    obj._e_event265 = obj.edit187:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia19 == nil then
                                                      sheet.tradicaoMagia19 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia19 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia19
                                                      sheet.tradicaoMagia19 = string.sub(sheet.tradicaoMagia19, 1, delCaracteres)
                                                end
        end);

    obj._e_event266 = obj.edit188:addEventListener("onChange",
        function ()
            if sheet.alvoMagia19 == nil then
                                                      sheet.alvoMagia19 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia19 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia19
                                                      sheet.alvoMagia19 = string.sub(sheet.alvoMagia19, 1, delCaracteres)
                                                end
        end);

    obj._e_event267 = obj.edit189:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia19 == nil then
                                                      sheet.duracaoMagia19 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia19 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia19
                                                      sheet.duracaoMagia19 = string.sub(sheet.duracaoMagia19, 1, delCaracteres)
                                                end
        end);

    obj._e_event268 = obj.rectangle490:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia19 ~= nil and sheet.qtdMagia19 ~= "--"  then
                                                      if sheet.Magia19 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia19 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia19 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia19 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia19 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia19) > 0 then
                                                            lancarMagia(sheet.Magia19, sheet.tradicaoMagia19, sheet.alvoMagia19, sheet.duracaoMagia19, sheet.descricaoMagia19)
                                                            sheet.qtdMagia19 = tostring(tonumber(sheet.qtdMagia19) - 1)
                                                      end
                                                end
        end);

    obj._e_event269 = obj.edit190:addEventListener("onChange",
        function ()
            if sheet.qtdMagia19 == nil then
                                                      sheet.qtdMagia19 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia19 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia19
                                                      sheet.qtdMagia19 = string.sub(sheet.qtdMagia19, 1, delCaracteres)
                                                end
        end);

    obj._e_event270 = obj.edit191:addEventListener("onChange",
        function ()
            if sheet.maxMagia19 == nil then
                                                      sheet.maxMagia19 = "--"
                                                end
                                                
                                                if #sheet.maxMagia19 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia19
                                                      sheet.maxMagia19 = string.sub(sheet.maxMagia19, 1, delCaracteres)
                                                end
        end);

    obj._e_event271 = obj.edit192:addEventListener("onChange",
        function ()
            if sheet.Magia20 == nil then
                                                      sheet.Magia20 = "--"
                                                end
                                                
                                                if #sheet.Magia20 > 37 then
                                                      local delCaracteres = 36 - #sheet.Magia20
                                                      sheet.Magia20 = string.sub(sheet.Magia20, 1, delCaracteres)
                                                end
        end);

    obj._e_event272 = obj.edit193:addEventListener("onChange",
        function ()
            if sheet.tradicaoMagia20 == nil then
                                                      sheet.tradicaoMagia20 = "--"
                                                end
                                                
                                                if #sheet.tradicaoMagia20 > 25 then
                                                      local delCaracteres = 24 - #sheet.tradicaoMagia20
                                                      sheet.tradicaoMagia20 = string.sub(sheet.tradicaoMagia20, 1, delCaracteres)
                                                end
        end);

    obj._e_event273 = obj.edit194:addEventListener("onChange",
        function ()
            if sheet.alvoMagia20 == nil then
                                                      sheet.alvoMagia20 = "--"
                                                end
                                                
                                                if #sheet.alvoMagia20 > 34 then
                                                      local delCaracteres = 33 - #sheet.alvoMagia20
                                                      sheet.alvoMagia20 = string.sub(sheet.alvoMagia20, 1, delCaracteres)
                                                end
        end);

    obj._e_event274 = obj.edit195:addEventListener("onChange",
        function ()
            if sheet.duracaoMagia20 == nil then
                                                      sheet.duracaoMagia20 = "--"
                                                end
                                                
                                                if #sheet.duracaoMagia20 > 28 then
                                                      local delCaracteres = 27 - #sheet.duracaoMagia20
                                                      sheet.duracaoMagia20 = string.sub(sheet.duracaoMagia20, 1, delCaracteres)
                                                end
        end);

    obj._e_event275 = obj.rectangle500:addEventListener("onClick",
        function (event)
            if sheet.qtdMagia20 ~= nil and sheet.qtdMagia20 ~= "--"  then
                                                      if sheet.Magia20 == nil then
                                                            showMessage("Informe o nome da Magia")
                                                      elseif sheet.tradicaoMagia20 == nil then
                                                            showMessage("Informe a tradição da Magia")
                                                      elseif sheet.alvoMagia20 == nil then
                                                            showMessage("Informe o alvo da Magia")
                                                      elseif sheet.duracaoMagia20 == nil then
                                                            showMessage("Informe a duração da Magia")
                                                      elseif sheet.descricaoMagia20 == nil then
                                                            showMessage("Descreva o efeito da Magia")
                                                      elseif tonumber(sheet.qtdMagia20) > 0 then
                                                            lancarMagia(sheet.Magia20, sheet.tradicaoMagia20, sheet.alvoMagia20, sheet.duracaoMagia20, sheet.descricaoMagia20)
                                                            sheet.qtdMagia20 = tostring(tonumber(sheet.qtdMagia20) - 1)
                                                      end
                                                end
        end);

    obj._e_event276 = obj.edit196:addEventListener("onChange",
        function ()
            if sheet.qtdMagia20 == nil then
                                                      sheet.qtdMagia20 = "--"
                                                end
                                                
                                                if #sheet.qtdMagia20 > 2 then
                                                      local delCaracteres = 1 - #sheet.qtdMagia20
                                                      sheet.qtdMagia20 = string.sub(sheet.qtdMagia20, 1, delCaracteres)
                                                end
        end);

    obj._e_event277 = obj.edit197:addEventListener("onChange",
        function ()
            if sheet.maxMagia20 == nil then
                                                      sheet.maxMagia20 = "--"
                                                end
                                                
                                                if #sheet.maxMagia20 > 2 then
                                                      local delCaracteres = 1 - #sheet.maxMagia20
                                                      sheet.maxMagia20 = string.sub(sheet.maxMagia20, 1, delCaracteres)
                                                end
        end);

    obj._e_event278 = obj.label196:addEventListener("onClick",
        function (event)
            local msg = "Força Debilitada: Você faz teste de força com 1 revés, e você concede 1 dádiva em jogadas contra sua força."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event279 = obj.label197:addEventListener("onClick",
        function (event)
            local msg = "Agilidade Debilitada: Você faz teste de agilidade com 1 revés, e você concede 1 dádiva em jogadas contra sua agilidade."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event280 = obj.label198:addEventListener("onClick",
        function (event)
            local msg = "Intelecto Debilitado: Você faz teste de intelecto com 1 revés, e você concede 1 dádiva em jogadas contra seu intelecto."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event281 = obj.label199:addEventListener("onClick",
        function (event)
            local msg = "Vontade Debilitada: Você faz teste de vontade com 1 revés, e você concede 1 dádiva em jogadas contra sua vontade."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event282 = obj.label200:addEventListener("onClick",
        function (event)
            local msg = "Adormecido: Se você estiver inconsciente por estar dormindo naturalmente, você deixa de estar inconsciente quando uma criatura usar uma ação para chacoalhar você, chutá-lo ou fazer outra coisa para acordar você. Um barulho alto pode remover a aflição se você tiver sucesso em uma rolagem de sorte. O tempo passado dormindo conta como repouso para os propósitos de curar dano. Se o seu sono não for interrompido, você acorda naturalmente quando quiser."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event283 = obj.label201:addEventListener("onClick",
        function (event)
            local msg = "Amaldiçoado: Você faz rolagens de sorte com 1 revés."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event284 = obj.label202:addEventListener("onClick",
        function (event)
            local msg = "Amedrontado: Você teme a fonte desta aflição — uma criatura, um objeto, um espaço ou alguma outra coisa. Enquanto você tiver linha de visão para a fonte do seu medo, você faz rolagens de atributo com 1 revés e concede 1 dádiva em rolagens de atributo contra você."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event285 = obj.label203:addEventListener("onClick",
        function (event)
            local msg = "Atordoado: Você não pode usar ações ou reações. A sua Velocidade diminui a 0 e você não se beneficia de aumentos à Velocidade até esta aflição terminar. Você concede 2 dádivas em rolagens contra você e faz rolagens de atributo com 2 reveses."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event286 = obj.label204:addEventListener("onClick",
        function (event)
            local msg = "Caído: Você está deitado no chão. Você não pode usar reações. Você concede 1 dádiva em rolagens feitas para atacar você com armas corpo a corpo, mas impõe 1 revés em rolagens feitas para atacar você com armas à distância. Você somente pode usar seu movimento para rastejar ou se levantar."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event287 = obj.label205:addEventListener("onClick",
        function (event)
            local msg = "Cego: Você não consegue enxergar, portanto não tem linha de visão para nada. Você trata todas as criaturas e objetos como estando invisíveis. Se você quiser atacar ou interagir com alguma coisa, deve supor a localização do alvo ou localizá-lo usando outros sentidos, o que geralmente significa que você faz a rolagem com 3 reveses. Você não consegue usar reações que dependam da visão. Por fim, sua Velocidade é reduzida pela metade."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event288 = obj.label206:addEventListener("onClick",
        function (event)
            local msg = "Confuso: Você fica incapaz de compreender o que acontece ao seu redor. Você não pode usar reações e faz rolagens de Intelecto e Vontade com 1 revés."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event289 = obj.label207:addEventListener("onClick",
        function (event)
            local msg = "Controlado: Você fica sob o controle da fonte desta aflição. Seu turno acontece junto com o do seu controlador e ele decide o que você faz, usando os seus traços, talentos e feitiços. Se você já tiver feito um turno ao receber esta aflição, você faz um turno como descrito na rodada seguinte. Enquanto controlado, você trata a fonte desta aflição como um aliado."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event290 = obj.label208:addEventListener("onClick",
        function (event)
            local msg = "Enfraquecido: Você faz rolagens de Força e de Agilidade com 1 revés, e você concede 1 dádiva em rolagens contra sua Força e Agilidade. Além disso, a sua Velocidade é reduzida pela metade e você não se beneficia de aumentos à Velocidade."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event291 = obj.label209:addEventListener("onClick",
        function (event)
            local msg = "Envenenado: Você foi submetido a uma peçonha, veneno ou outro tipo de toxina. Você faz rolagens de atributo com 1 revés e concede 1 dádiva em rolagens contra você. Além disso, você perde 1d6 de Vida ao final de cada rodada."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event292 = obj.label210:addEventListener("onClick",
        function (event)
            local msg = "Ferido: Normalmente, você não sofre efeitos por estar ferido, mas certos talentos, magias e outros efeitos usados contra você podem colocá-lo em desvantagem porquê você está ferido."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event293 = obj.label211:addEventListener("onClick",
        function (event)
            local msg = "Incapacitado: Se você sofrer dano enquanto estiver incapacitado, você perderá Vida igual à quantidade de dano que você receberia. No final da rodada, você perde 1d6 de Vida e faz um teste de sorte. Em um sucesso, você cura 1 de dano. Em uma falha, você permanece incapacitado."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event294 = obj.label212:addEventListener("onClick",
        function (event)
            local msg = "Incendiado: Um efeito pode fazer você pegar fogo. Você sofre 1d6 de dano ao final de cada rodada até o fogo ser apagado, normalmente com uma rolagem bem-sucedida de sorte. Você pode apagar as chamas com água, ou sufocá-las com um cobertor ou objeto similar. Uma criatura que ficar caída antes de tentar superar as chamas faz a rolagem com 1 dádiva."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event295 = obj.label213:addEventListener("onClick",
        function (event)
            local msg = "Inconsciente: Você não pode usar ações ou reações. A sua Velocidade diminui a 0 e você não se beneficia de aumentos à Velocidade. Você não recebe informações sensoriais. Você concede 3 dádivas em rolagens contra você e você fracassa automaticamente em todas as rolagens de atributo."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event296 = obj.label214:addEventListener("onClick",
        function (event)
            local msg = "Lento: Se sua Velocidade for maior que 2, ela reduz a 2. Essa aflição não aumenta a Velocidade."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event297 = obj.label215:addEventListener("onClick",
        function (event)
            local msg = "Restringido: A sua Velocidade diminui a 0 e você não se beneficia de aumentos à Velocidade até esta aflição terminar. Além disso, criaturas que fizerem rolagens contra a sua Agilidade recebem um sucesso automático."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event298 = obj.label216:addEventListener("onClick",
        function (event)
            local msg = "Surdo: Você não consegue ouvir. Você não pode fazer reações que dependam da audição e não é afetado por efeitos que dependam da audição."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event299 = obj.label217:addEventListener("onClick",
        function (event)
            local msg = "Vulnerável: Você concede 1 dádiva em rolagens para atacar você e em rolagens feitas contra os seus atributos."
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                mesaDeRPG.chat:enviarMensagem("---")
                                                mesaDeRPG.chat:enviarMensagem(msg)
        end);

    obj._e_event300 = obj.rectangle572:addEventListener("onClick",
        function (event)
            self.popFrmPrincipal:close()
        end);

    obj._e_event301 = obj.edit198:addEventListener("onUserChange",
        function ()
            if sheet.frmNome == nil then
                                    sheet.frmNome = "--"
                              end
                              if #sheet.frmNome > 19 then
                                    local delCaracteres = 18 - #sheet.frmNome
                                    sheet.frmNome = string.sub(sheet.frmNome, 1, delCaracteres)
                                    
                              end
        end);

    obj._e_event302 = obj.edit200:addEventListener("onUserChange",
        function ()
            if sheet.frmAncestralidade == nil then
                                    sheet.frmAncestralidade = "--"
                              end
                              if #sheet.frmAncestralidade > 12 then
                                    local delCaracteres = 11 - #sheet.frmAncestralidade
                                    sheet.frmAncestralidade = string.sub(sheet.frmAncestralidade, 1, delCaracteres)
                                    
                              end
        end);

    obj._e_event303 = obj.edit201:addEventListener("onUserChange",
        function ()
            if sheet.frmIdade == nil then
                                    sheet.frmIdade = "--"
                              end
                              if #sheet.frmIdade > 4 then
                                    local delCaracteres = 3 - #sheet.frmIdade
                                    sheet.frmIdade = string.sub(sheet.frmIdade, 1, delCaracteres)
                                    
                              end
        end);

    obj._e_event304 = obj.edit202:addEventListener("onUserChange",
        function ()
            if sheet.frmOlhos == nil then
                                    sheet.frmOlhos = "--"
                              end
                              if #sheet.frmOlhos > 20 then
                                    local delCaracteres = 19 - #sheet.frmOlhos
                                    sheet.frmOlhos = string.sub(sheet.frmOlhos, 1, delCaracteres)
                                    
                              end
        end);

    obj._e_event305 = obj.edit203:addEventListener("onUserChange",
        function ()
            if sheet.frmCabelos == nil then
                                    sheet.frmCabelos = "--"
                              end
                              if #sheet.frmCabelos > 15 then
                                    local delCaracteres = 14 - #sheet.frmCabelos
                                    sheet.frmCabelos = string.sub(sheet.frmCabelos, 1, delCaracteres)
                              end
        end);

    obj._e_event306 = obj.edit204:addEventListener("onUserChange",
        function ()
            if sheet.frmAltura == nil then
                                    sheet.frmAltura = "--"
                              end
                              if #sheet.frmAltura > 5 then
                                    local delCaracteres = 4 - #sheet.frmAltura
                                    sheet.frmAltura = string.sub(sheet.frmAltura, 1, delCaracteres)
                              end
        end);

    obj._e_event307 = obj.edit205:addEventListener("onUserChange",
        function ()
            if sheet.frmPeso == nil then
                                    sheet.frmPeso = "--"
                              end
                              if #sheet.frmPeso > 6 then
                                    local delCaracteres = 5 - #sheet.frmPeso
                                    sheet.frmPeso = string.sub(sheet.frmPeso, 1, delCaracteres)
                              end
        end);

    obj._e_event308 = obj.edit206:addEventListener("onUserChange",
        function ()
            if sheet.frmIdiomas == nil then
                                    sheet.frmIdiomas = "--"
                              end
                              if #sheet.frmIdiomas > 35 then
                                    local delCaracteres = 34 - #sheet.frmIdiomas
                                    sheet.frmIdiomas = string.sub(sheet.frmIdiomas, 1, delCaracteres)
                              end
        end);

    obj._e_event309 = obj.edit207:addEventListener("onUserChange",
        function ()
            if sheet.frmProfissoes == nil then
                                    sheet.frmProfissoes = "--"
                              end
                              if #sheet.frmProfissoes > 35 then
                                    local delCaracteres = 34 - #sheet.frmProfissoes
                                    sheet.frmProfissoes = string.sub(sheet.frmProfissoes, 1, delCaracteres)
                              end
        end);

    obj._e_event310 = obj.edit208:addEventListener("onUserChange",
        function ()
            if sheet.frmReligiao == nil then
                                    sheet.frmReligiao = "--"
                              end
                              if #sheet.frmReligiao > 35 then
                                    local delCaracteres = 34 - #sheet.frmReligiao
                                    sheet.frmReligiao = string.sub(sheet.frmReligiao, 1, delCaracteres)
                              end
        end);

    obj._e_event311 = obj.edit209:addEventListener("onUserChange",
        function ()
            if sheet.frmTamanho == nil then
                                    sheet.frmTamanho = "--"
                              end
                              if #sheet.frmTamanho > 3 then
                                    local delCaracteres = 2 - #sheet.frmTamanho
                                    sheet.frmTamanho = string.sub(sheet.frmTamanho, 1, delCaracteres)
                              end
        end);

    obj._e_event312 = obj.edit211:addEventListener("onUserChange",
        function ()
            if sheet.frmAprendiz == nil then
                                    sheet.frmAprendiz = "--"
                              end
                              if #sheet.frmAprendiz > 30 then
                                    local delCaracteres = 29 - #sheet.frmAprendiz
                                    sheet.frmAprendiz = string.sub(sheet.frmAprendiz, 1, delCaracteres)
                              end
        end);

    obj._e_event313 = obj.edit212:addEventListener("onUserChange",
        function ()
            if sheet.frmEspecialista == nil then
                                    sheet.frmEspecialista = "--"
                              end
                              if #sheet.frmEspecialista > 30 then
                                    local delCaracteres = 29 - #sheet.frmEspecialista
                                    sheet.frmEspecialista = string.sub(sheet.frmEspecialista, 1, delCaracteres)
                              end
        end);

    obj._e_event314 = obj.edit213:addEventListener("onUserChange",
        function ()
            if sheet.frmMestre == nil then
                                    sheet.frmMestre = "--"
                              end
                              if #sheet.frmMestre > 30 then
                                    local delCaracteres = 29 - #sheet.frmMestre
                                    sheet.frmMestre = string.sub(sheet.frmMestre, 1, delCaracteres)
                              end
        end);

    obj._e_event315 = obj.button1:addEventListener("onClick",
        function (event)
            if sheet.dadivaReves == nil then
                                          sheet.dadivaReves = 0
                                    end
            
                                    if escolherTeste == "sorte" then
                                          testeDeSorte()
                                    end
            
                                    if escolherTeste == "forca" then
                                          testeDeForca()
                                    end
            
                                    if escolherTeste == "agilidade" then
                                          testeDeAgilidade()
                                    end
            
                                    if escolherTeste == "intelecto" then
                                          testeDeIntelecto()
                                    end
            
                                    if escolherTeste == "vontade" then
                                          testeDeVontade()
                                    end
        end);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event315);
        __o_rrpgObjs.removeEventListenerById(self._e_event314);
        __o_rrpgObjs.removeEventListenerById(self._e_event313);
        __o_rrpgObjs.removeEventListenerById(self._e_event312);
        __o_rrpgObjs.removeEventListenerById(self._e_event311);
        __o_rrpgObjs.removeEventListenerById(self._e_event310);
        __o_rrpgObjs.removeEventListenerById(self._e_event309);
        __o_rrpgObjs.removeEventListenerById(self._e_event308);
        __o_rrpgObjs.removeEventListenerById(self._e_event307);
        __o_rrpgObjs.removeEventListenerById(self._e_event306);
        __o_rrpgObjs.removeEventListenerById(self._e_event305);
        __o_rrpgObjs.removeEventListenerById(self._e_event304);
        __o_rrpgObjs.removeEventListenerById(self._e_event303);
        __o_rrpgObjs.removeEventListenerById(self._e_event302);
        __o_rrpgObjs.removeEventListenerById(self._e_event301);
        __o_rrpgObjs.removeEventListenerById(self._e_event300);
        __o_rrpgObjs.removeEventListenerById(self._e_event299);
        __o_rrpgObjs.removeEventListenerById(self._e_event298);
        __o_rrpgObjs.removeEventListenerById(self._e_event297);
        __o_rrpgObjs.removeEventListenerById(self._e_event296);
        __o_rrpgObjs.removeEventListenerById(self._e_event295);
        __o_rrpgObjs.removeEventListenerById(self._e_event294);
        __o_rrpgObjs.removeEventListenerById(self._e_event293);
        __o_rrpgObjs.removeEventListenerById(self._e_event292);
        __o_rrpgObjs.removeEventListenerById(self._e_event291);
        __o_rrpgObjs.removeEventListenerById(self._e_event290);
        __o_rrpgObjs.removeEventListenerById(self._e_event289);
        __o_rrpgObjs.removeEventListenerById(self._e_event288);
        __o_rrpgObjs.removeEventListenerById(self._e_event287);
        __o_rrpgObjs.removeEventListenerById(self._e_event286);
        __o_rrpgObjs.removeEventListenerById(self._e_event285);
        __o_rrpgObjs.removeEventListenerById(self._e_event284);
        __o_rrpgObjs.removeEventListenerById(self._e_event283);
        __o_rrpgObjs.removeEventListenerById(self._e_event282);
        __o_rrpgObjs.removeEventListenerById(self._e_event281);
        __o_rrpgObjs.removeEventListenerById(self._e_event280);
        __o_rrpgObjs.removeEventListenerById(self._e_event279);
        __o_rrpgObjs.removeEventListenerById(self._e_event278);
        __o_rrpgObjs.removeEventListenerById(self._e_event277);
        __o_rrpgObjs.removeEventListenerById(self._e_event276);
        __o_rrpgObjs.removeEventListenerById(self._e_event275);
        __o_rrpgObjs.removeEventListenerById(self._e_event274);
        __o_rrpgObjs.removeEventListenerById(self._e_event273);
        __o_rrpgObjs.removeEventListenerById(self._e_event272);
        __o_rrpgObjs.removeEventListenerById(self._e_event271);
        __o_rrpgObjs.removeEventListenerById(self._e_event270);
        __o_rrpgObjs.removeEventListenerById(self._e_event269);
        __o_rrpgObjs.removeEventListenerById(self._e_event268);
        __o_rrpgObjs.removeEventListenerById(self._e_event267);
        __o_rrpgObjs.removeEventListenerById(self._e_event266);
        __o_rrpgObjs.removeEventListenerById(self._e_event265);
        __o_rrpgObjs.removeEventListenerById(self._e_event264);
        __o_rrpgObjs.removeEventListenerById(self._e_event263);
        __o_rrpgObjs.removeEventListenerById(self._e_event262);
        __o_rrpgObjs.removeEventListenerById(self._e_event261);
        __o_rrpgObjs.removeEventListenerById(self._e_event260);
        __o_rrpgObjs.removeEventListenerById(self._e_event259);
        __o_rrpgObjs.removeEventListenerById(self._e_event258);
        __o_rrpgObjs.removeEventListenerById(self._e_event257);
        __o_rrpgObjs.removeEventListenerById(self._e_event256);
        __o_rrpgObjs.removeEventListenerById(self._e_event255);
        __o_rrpgObjs.removeEventListenerById(self._e_event254);
        __o_rrpgObjs.removeEventListenerById(self._e_event253);
        __o_rrpgObjs.removeEventListenerById(self._e_event252);
        __o_rrpgObjs.removeEventListenerById(self._e_event251);
        __o_rrpgObjs.removeEventListenerById(self._e_event250);
        __o_rrpgObjs.removeEventListenerById(self._e_event249);
        __o_rrpgObjs.removeEventListenerById(self._e_event248);
        __o_rrpgObjs.removeEventListenerById(self._e_event247);
        __o_rrpgObjs.removeEventListenerById(self._e_event246);
        __o_rrpgObjs.removeEventListenerById(self._e_event245);
        __o_rrpgObjs.removeEventListenerById(self._e_event244);
        __o_rrpgObjs.removeEventListenerById(self._e_event243);
        __o_rrpgObjs.removeEventListenerById(self._e_event242);
        __o_rrpgObjs.removeEventListenerById(self._e_event241);
        __o_rrpgObjs.removeEventListenerById(self._e_event240);
        __o_rrpgObjs.removeEventListenerById(self._e_event239);
        __o_rrpgObjs.removeEventListenerById(self._e_event238);
        __o_rrpgObjs.removeEventListenerById(self._e_event237);
        __o_rrpgObjs.removeEventListenerById(self._e_event236);
        __o_rrpgObjs.removeEventListenerById(self._e_event235);
        __o_rrpgObjs.removeEventListenerById(self._e_event234);
        __o_rrpgObjs.removeEventListenerById(self._e_event233);
        __o_rrpgObjs.removeEventListenerById(self._e_event232);
        __o_rrpgObjs.removeEventListenerById(self._e_event231);
        __o_rrpgObjs.removeEventListenerById(self._e_event230);
        __o_rrpgObjs.removeEventListenerById(self._e_event229);
        __o_rrpgObjs.removeEventListenerById(self._e_event228);
        __o_rrpgObjs.removeEventListenerById(self._e_event227);
        __o_rrpgObjs.removeEventListenerById(self._e_event226);
        __o_rrpgObjs.removeEventListenerById(self._e_event225);
        __o_rrpgObjs.removeEventListenerById(self._e_event224);
        __o_rrpgObjs.removeEventListenerById(self._e_event223);
        __o_rrpgObjs.removeEventListenerById(self._e_event222);
        __o_rrpgObjs.removeEventListenerById(self._e_event221);
        __o_rrpgObjs.removeEventListenerById(self._e_event220);
        __o_rrpgObjs.removeEventListenerById(self._e_event219);
        __o_rrpgObjs.removeEventListenerById(self._e_event218);
        __o_rrpgObjs.removeEventListenerById(self._e_event217);
        __o_rrpgObjs.removeEventListenerById(self._e_event216);
        __o_rrpgObjs.removeEventListenerById(self._e_event215);
        __o_rrpgObjs.removeEventListenerById(self._e_event214);
        __o_rrpgObjs.removeEventListenerById(self._e_event213);
        __o_rrpgObjs.removeEventListenerById(self._e_event212);
        __o_rrpgObjs.removeEventListenerById(self._e_event211);
        __o_rrpgObjs.removeEventListenerById(self._e_event210);
        __o_rrpgObjs.removeEventListenerById(self._e_event209);
        __o_rrpgObjs.removeEventListenerById(self._e_event208);
        __o_rrpgObjs.removeEventListenerById(self._e_event207);
        __o_rrpgObjs.removeEventListenerById(self._e_event206);
        __o_rrpgObjs.removeEventListenerById(self._e_event205);
        __o_rrpgObjs.removeEventListenerById(self._e_event204);
        __o_rrpgObjs.removeEventListenerById(self._e_event203);
        __o_rrpgObjs.removeEventListenerById(self._e_event202);
        __o_rrpgObjs.removeEventListenerById(self._e_event201);
        __o_rrpgObjs.removeEventListenerById(self._e_event200);
        __o_rrpgObjs.removeEventListenerById(self._e_event199);
        __o_rrpgObjs.removeEventListenerById(self._e_event198);
        __o_rrpgObjs.removeEventListenerById(self._e_event197);
        __o_rrpgObjs.removeEventListenerById(self._e_event196);
        __o_rrpgObjs.removeEventListenerById(self._e_event195);
        __o_rrpgObjs.removeEventListenerById(self._e_event194);
        __o_rrpgObjs.removeEventListenerById(self._e_event193);
        __o_rrpgObjs.removeEventListenerById(self._e_event192);
        __o_rrpgObjs.removeEventListenerById(self._e_event191);
        __o_rrpgObjs.removeEventListenerById(self._e_event190);
        __o_rrpgObjs.removeEventListenerById(self._e_event189);
        __o_rrpgObjs.removeEventListenerById(self._e_event188);
        __o_rrpgObjs.removeEventListenerById(self._e_event187);
        __o_rrpgObjs.removeEventListenerById(self._e_event186);
        __o_rrpgObjs.removeEventListenerById(self._e_event185);
        __o_rrpgObjs.removeEventListenerById(self._e_event184);
        __o_rrpgObjs.removeEventListenerById(self._e_event183);
        __o_rrpgObjs.removeEventListenerById(self._e_event182);
        __o_rrpgObjs.removeEventListenerById(self._e_event181);
        __o_rrpgObjs.removeEventListenerById(self._e_event180);
        __o_rrpgObjs.removeEventListenerById(self._e_event179);
        __o_rrpgObjs.removeEventListenerById(self._e_event178);
        __o_rrpgObjs.removeEventListenerById(self._e_event177);
        __o_rrpgObjs.removeEventListenerById(self._e_event176);
        __o_rrpgObjs.removeEventListenerById(self._e_event175);
        __o_rrpgObjs.removeEventListenerById(self._e_event174);
        __o_rrpgObjs.removeEventListenerById(self._e_event173);
        __o_rrpgObjs.removeEventListenerById(self._e_event172);
        __o_rrpgObjs.removeEventListenerById(self._e_event171);
        __o_rrpgObjs.removeEventListenerById(self._e_event170);
        __o_rrpgObjs.removeEventListenerById(self._e_event169);
        __o_rrpgObjs.removeEventListenerById(self._e_event168);
        __o_rrpgObjs.removeEventListenerById(self._e_event167);
        __o_rrpgObjs.removeEventListenerById(self._e_event166);
        __o_rrpgObjs.removeEventListenerById(self._e_event165);
        __o_rrpgObjs.removeEventListenerById(self._e_event164);
        __o_rrpgObjs.removeEventListenerById(self._e_event163);
        __o_rrpgObjs.removeEventListenerById(self._e_event162);
        __o_rrpgObjs.removeEventListenerById(self._e_event161);
        __o_rrpgObjs.removeEventListenerById(self._e_event160);
        __o_rrpgObjs.removeEventListenerById(self._e_event159);
        __o_rrpgObjs.removeEventListenerById(self._e_event158);
        __o_rrpgObjs.removeEventListenerById(self._e_event157);
        __o_rrpgObjs.removeEventListenerById(self._e_event156);
        __o_rrpgObjs.removeEventListenerById(self._e_event155);
        __o_rrpgObjs.removeEventListenerById(self._e_event154);
        __o_rrpgObjs.removeEventListenerById(self._e_event153);
        __o_rrpgObjs.removeEventListenerById(self._e_event152);
        __o_rrpgObjs.removeEventListenerById(self._e_event151);
        __o_rrpgObjs.removeEventListenerById(self._e_event150);
        __o_rrpgObjs.removeEventListenerById(self._e_event149);
        __o_rrpgObjs.removeEventListenerById(self._e_event148);
        __o_rrpgObjs.removeEventListenerById(self._e_event147);
        __o_rrpgObjs.removeEventListenerById(self._e_event146);
        __o_rrpgObjs.removeEventListenerById(self._e_event145);
        __o_rrpgObjs.removeEventListenerById(self._e_event144);
        __o_rrpgObjs.removeEventListenerById(self._e_event143);
        __o_rrpgObjs.removeEventListenerById(self._e_event142);
        __o_rrpgObjs.removeEventListenerById(self._e_event141);
        __o_rrpgObjs.removeEventListenerById(self._e_event140);
        __o_rrpgObjs.removeEventListenerById(self._e_event139);
        __o_rrpgObjs.removeEventListenerById(self._e_event138);
        __o_rrpgObjs.removeEventListenerById(self._e_event137);
        __o_rrpgObjs.removeEventListenerById(self._e_event136);
        __o_rrpgObjs.removeEventListenerById(self._e_event135);
        __o_rrpgObjs.removeEventListenerById(self._e_event134);
        __o_rrpgObjs.removeEventListenerById(self._e_event133);
        __o_rrpgObjs.removeEventListenerById(self._e_event132);
        __o_rrpgObjs.removeEventListenerById(self._e_event131);
        __o_rrpgObjs.removeEventListenerById(self._e_event130);
        __o_rrpgObjs.removeEventListenerById(self._e_event129);
        __o_rrpgObjs.removeEventListenerById(self._e_event128);
        __o_rrpgObjs.removeEventListenerById(self._e_event127);
        __o_rrpgObjs.removeEventListenerById(self._e_event126);
        __o_rrpgObjs.removeEventListenerById(self._e_event125);
        __o_rrpgObjs.removeEventListenerById(self._e_event124);
        __o_rrpgObjs.removeEventListenerById(self._e_event123);
        __o_rrpgObjs.removeEventListenerById(self._e_event122);
        __o_rrpgObjs.removeEventListenerById(self._e_event121);
        __o_rrpgObjs.removeEventListenerById(self._e_event120);
        __o_rrpgObjs.removeEventListenerById(self._e_event119);
        __o_rrpgObjs.removeEventListenerById(self._e_event118);
        __o_rrpgObjs.removeEventListenerById(self._e_event117);
        __o_rrpgObjs.removeEventListenerById(self._e_event116);
        __o_rrpgObjs.removeEventListenerById(self._e_event115);
        __o_rrpgObjs.removeEventListenerById(self._e_event114);
        __o_rrpgObjs.removeEventListenerById(self._e_event113);
        __o_rrpgObjs.removeEventListenerById(self._e_event112);
        __o_rrpgObjs.removeEventListenerById(self._e_event111);
        __o_rrpgObjs.removeEventListenerById(self._e_event110);
        __o_rrpgObjs.removeEventListenerById(self._e_event109);
        __o_rrpgObjs.removeEventListenerById(self._e_event108);
        __o_rrpgObjs.removeEventListenerById(self._e_event107);
        __o_rrpgObjs.removeEventListenerById(self._e_event106);
        __o_rrpgObjs.removeEventListenerById(self._e_event105);
        __o_rrpgObjs.removeEventListenerById(self._e_event104);
        __o_rrpgObjs.removeEventListenerById(self._e_event103);
        __o_rrpgObjs.removeEventListenerById(self._e_event102);
        __o_rrpgObjs.removeEventListenerById(self._e_event101);
        __o_rrpgObjs.removeEventListenerById(self._e_event100);
        __o_rrpgObjs.removeEventListenerById(self._e_event99);
        __o_rrpgObjs.removeEventListenerById(self._e_event98);
        __o_rrpgObjs.removeEventListenerById(self._e_event97);
        __o_rrpgObjs.removeEventListenerById(self._e_event96);
        __o_rrpgObjs.removeEventListenerById(self._e_event95);
        __o_rrpgObjs.removeEventListenerById(self._e_event94);
        __o_rrpgObjs.removeEventListenerById(self._e_event93);
        __o_rrpgObjs.removeEventListenerById(self._e_event92);
        __o_rrpgObjs.removeEventListenerById(self._e_event91);
        __o_rrpgObjs.removeEventListenerById(self._e_event90);
        __o_rrpgObjs.removeEventListenerById(self._e_event89);
        __o_rrpgObjs.removeEventListenerById(self._e_event88);
        __o_rrpgObjs.removeEventListenerById(self._e_event87);
        __o_rrpgObjs.removeEventListenerById(self._e_event86);
        __o_rrpgObjs.removeEventListenerById(self._e_event85);
        __o_rrpgObjs.removeEventListenerById(self._e_event84);
        __o_rrpgObjs.removeEventListenerById(self._e_event83);
        __o_rrpgObjs.removeEventListenerById(self._e_event82);
        __o_rrpgObjs.removeEventListenerById(self._e_event81);
        __o_rrpgObjs.removeEventListenerById(self._e_event80);
        __o_rrpgObjs.removeEventListenerById(self._e_event79);
        __o_rrpgObjs.removeEventListenerById(self._e_event78);
        __o_rrpgObjs.removeEventListenerById(self._e_event77);
        __o_rrpgObjs.removeEventListenerById(self._e_event76);
        __o_rrpgObjs.removeEventListenerById(self._e_event75);
        __o_rrpgObjs.removeEventListenerById(self._e_event74);
        __o_rrpgObjs.removeEventListenerById(self._e_event73);
        __o_rrpgObjs.removeEventListenerById(self._e_event72);
        __o_rrpgObjs.removeEventListenerById(self._e_event71);
        __o_rrpgObjs.removeEventListenerById(self._e_event70);
        __o_rrpgObjs.removeEventListenerById(self._e_event69);
        __o_rrpgObjs.removeEventListenerById(self._e_event68);
        __o_rrpgObjs.removeEventListenerById(self._e_event67);
        __o_rrpgObjs.removeEventListenerById(self._e_event66);
        __o_rrpgObjs.removeEventListenerById(self._e_event65);
        __o_rrpgObjs.removeEventListenerById(self._e_event64);
        __o_rrpgObjs.removeEventListenerById(self._e_event63);
        __o_rrpgObjs.removeEventListenerById(self._e_event62);
        __o_rrpgObjs.removeEventListenerById(self._e_event61);
        __o_rrpgObjs.removeEventListenerById(self._e_event60);
        __o_rrpgObjs.removeEventListenerById(self._e_event59);
        __o_rrpgObjs.removeEventListenerById(self._e_event58);
        __o_rrpgObjs.removeEventListenerById(self._e_event57);
        __o_rrpgObjs.removeEventListenerById(self._e_event56);
        __o_rrpgObjs.removeEventListenerById(self._e_event55);
        __o_rrpgObjs.removeEventListenerById(self._e_event54);
        __o_rrpgObjs.removeEventListenerById(self._e_event53);
        __o_rrpgObjs.removeEventListenerById(self._e_event52);
        __o_rrpgObjs.removeEventListenerById(self._e_event51);
        __o_rrpgObjs.removeEventListenerById(self._e_event50);
        __o_rrpgObjs.removeEventListenerById(self._e_event49);
        __o_rrpgObjs.removeEventListenerById(self._e_event48);
        __o_rrpgObjs.removeEventListenerById(self._e_event47);
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.edit200 ~= nil then self.edit200:destroy(); self.edit200 = nil; end;
        if self.edit216 ~= nil then self.edit216:destroy(); self.edit216 = nil; end;
        if self.rectangle193 ~= nil then self.rectangle193:destroy(); self.rectangle193 = nil; end;
        if self.edit119 ~= nil then self.edit119:destroy(); self.edit119 = nil; end;
        if self.label112 ~= nil then self.label112:destroy(); self.label112 = nil; end;
        if self.label164 ~= nil then self.label164:destroy(); self.label164 = nil; end;
        if self.label245 ~= nil then self.label245:destroy(); self.label245 = nil; end;
        if self.edit95 ~= nil then self.edit95:destroy(); self.edit95 = nil; end;
        if self.comboBox14 ~= nil then self.comboBox14:destroy(); self.comboBox14 = nil; end;
        if self.rectangle71 ~= nil then self.rectangle71:destroy(); self.rectangle71 = nil; end;
        if self.rectangle585 ~= nil then self.rectangle585:destroy(); self.rectangle585 = nil; end;
        if self.rectangle90 ~= nil then self.rectangle90:destroy(); self.rectangle90 = nil; end;
        if self.rectangle82 ~= nil then self.rectangle82:destroy(); self.rectangle82 = nil; end;
        if self.edit153 ~= nil then self.edit153:destroy(); self.edit153 = nil; end;
        if self.edit163 ~= nil then self.edit163:destroy(); self.edit163 = nil; end;
        if self.rectangle481 ~= nil then self.rectangle481:destroy(); self.rectangle481 = nil; end;
        if self.rectangle491 ~= nil then self.rectangle491:destroy(); self.rectangle491 = nil; end;
        if self.rectangle524 ~= nil then self.rectangle524:destroy(); self.rectangle524 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.image35 ~= nil then self.image35:destroy(); self.image35 = nil; end;
        if self.rectangle345 ~= nil then self.rectangle345:destroy(); self.rectangle345 = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.rectangle278 ~= nil then self.rectangle278:destroy(); self.rectangle278 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.label118 ~= nil then self.label118:destroy(); self.label118 = nil; end;
        if self.label180 ~= nil then self.label180:destroy(); self.label180 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.rectangle396 ~= nil then self.rectangle396:destroy(); self.rectangle396 = nil; end;
        if self.rectangle186 ~= nil then self.rectangle186:destroy(); self.rectangle186 = nil; end;
        if self.rectangle505 ~= nil then self.rectangle505:destroy(); self.rectangle505 = nil; end;
        if self.rectangle515 ~= nil then self.rectangle515:destroy(); self.rectangle515 = nil; end;
        if self.rectangle121 ~= nil then self.rectangle121:destroy(); self.rectangle121 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.rectangle200 ~= nil then self.rectangle200:destroy(); self.rectangle200 = nil; end;
        if self.rectangle374 ~= nil then self.rectangle374:destroy(); self.rectangle374 = nil; end;
        if self.checkBox13 ~= nil then self.checkBox13:destroy(); self.checkBox13 = nil; end;
        if self.rectangle156 ~= nil then self.rectangle156:destroy(); self.rectangle156 = nil; end;
        if self.edit176 ~= nil then self.edit176:destroy(); self.edit176 = nil; end;
        if self.rectangle547 ~= nil then self.rectangle547:destroy(); self.rectangle547 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.rectangle436 ~= nil then self.rectangle436:destroy(); self.rectangle436 = nil; end;
        if self.rectangle440 ~= nil then self.rectangle440:destroy(); self.rectangle440 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.rectangle324 ~= nil then self.rectangle324:destroy(); self.rectangle324 = nil; end;
        if self.rectangle336 ~= nil then self.rectangle336:destroy(); self.rectangle336 = nil; end;
        if self.rectangle106 ~= nil then self.rectangle106:destroy(); self.rectangle106 = nil; end;
        if self.rectangle110 ~= nil then self.rectangle110:destroy(); self.rectangle110 = nil; end;
        if self.rectangle188 ~= nil then self.rectangle188:destroy(); self.rectangle188 = nil; end;
        if self.rectangle227 ~= nil then self.rectangle227:destroy(); self.rectangle227 = nil; end;
        if self.rectangle257 ~= nil then self.rectangle257:destroy(); self.rectangle257 = nil; end;
        if self.label173 ~= nil then self.label173:destroy(); self.label173 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.comboBox31 ~= nil then self.comboBox31:destroy(); self.comboBox31 = nil; end;
        if self.comboBox21 ~= nil then self.comboBox21:destroy(); self.comboBox21 = nil; end;
        if self.checkBox19 ~= nil then self.checkBox19:destroy(); self.checkBox19 = nil; end;
        if self.rectangle532 ~= nil then self.rectangle532:destroy(); self.rectangle532 = nil; end;
        if self.rectangle413 ~= nil then self.rectangle413:destroy(); self.rectangle413 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.edit107 ~= nil then self.edit107:destroy(); self.edit107 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.rectangle338 ~= nil then self.rectangle338:destroy(); self.rectangle338 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.rectangle455 ~= nil then self.rectangle455:destroy(); self.rectangle455 = nil; end;
        if self.rectangle63 ~= nil then self.rectangle63:destroy(); self.rectangle63 = nil; end;
        if self.rectangle469 ~= nil then self.rectangle469:destroy(); self.rectangle469 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle381 ~= nil then self.rectangle381:destroy(); self.rectangle381 = nil; end;
        if self.label156 ~= nil then self.label156:destroy(); self.label156 = nil; end;
        if self.rectangle295 ~= nil then self.rectangle295:destroy(); self.rectangle295 = nil; end;
        if self.rectangle285 ~= nil then self.rectangle285:destroy(); self.rectangle285 = nil; end;
        if self.rectangle538 ~= nil then self.rectangle538:destroy(); self.rectangle538 = nil; end;
        if self.textEditor25 ~= nil then self.textEditor25:destroy(); self.textEditor25 = nil; end;
        if self.image27 ~= nil then self.image27:destroy(); self.image27 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle560 ~= nil then self.rectangle560:destroy(); self.rectangle560 = nil; end;
        if self.edit198 ~= nil then self.edit198:destroy(); self.edit198 = nil; end;
        if self.edit120 ~= nil then self.edit120:destroy(); self.edit120 = nil; end;
        if self.rectangle301 ~= nil then self.rectangle301:destroy(); self.rectangle301 = nil; end;
        if self.rectangle311 ~= nil then self.rectangle311:destroy(); self.rectangle311 = nil; end;
        if self.textEditor14 ~= nil then self.textEditor14:destroy(); self.textEditor14 = nil; end;
        if self.label127 ~= nil then self.label127:destroy(); self.label127 = nil; end;
        if self.label206 ~= nil then self.label206:destroy(); self.label206 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.rectangle551 ~= nil then self.rectangle551:destroy(); self.rectangle551 = nil; end;
        if self.edit192 ~= nil then self.edit192:destroy(); self.edit192 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.edit184 ~= nil then self.edit184:destroy(); self.edit184 = nil; end;
        if self.edit149 ~= nil then self.edit149:destroy(); self.edit149 = nil; end;
        if self.rectangle472 ~= nil then self.rectangle472:destroy(); self.rectangle472 = nil; end;
        if self.image46 ~= nil then self.image46:destroy(); self.image46 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.rectangle213 ~= nil then self.rectangle213:destroy(); self.rectangle213 = nil; end;
        if self.rectangle401 ~= nil then self.rectangle401:destroy(); self.rectangle401 = nil; end;
        if self.rectangle141 ~= nil then self.rectangle141:destroy(); self.rectangle141 = nil; end;
        if self.rectangle260 ~= nil then self.rectangle260:destroy(); self.rectangle260 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.label132 ~= nil then self.label132:destroy(); self.label132 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.label221 ~= nil then self.label221:destroy(); self.label221 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.label195 ~= nil then self.label195:destroy(); self.label195 = nil; end;
        if self.label231 ~= nil then self.label231:destroy(); self.label231 = nil; end;
        if self.rectangle55 ~= nil then self.rectangle55:destroy(); self.rectangle55 = nil; end;
        if self.rectangle595 ~= nil then self.rectangle595:destroy(); self.rectangle595 = nil; end;
        if self.edit143 ~= nil then self.edit143:destroy(); self.edit143 = nil; end;
        if self.label146 ~= nil then self.label146:destroy(); self.label146 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.rectangle478 ~= nil then self.rectangle478:destroy(); self.rectangle478 = nil; end;
        if self.rectangle219 ~= nil then self.rectangle219:destroy(); self.rectangle219 = nil; end;
        if self.label210 ~= nil then self.label210:destroy(); self.label210 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.rectangle529 ~= nil then self.rectangle529:destroy(); self.rectangle529 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.edit203 ~= nil then self.edit203:destroy(); self.edit203 = nil; end;
        if self.comboBox41 ~= nil then self.comboBox41:destroy(); self.comboBox41 = nil; end;
        if self.edit213 ~= nil then self.edit213:destroy(); self.edit213 = nil; end;
        if self.rectangle168 ~= nil then self.rectangle168:destroy(); self.rectangle168 = nil; end;
        if self.rectangle190 ~= nil then self.rectangle190:destroy(); self.rectangle190 = nil; end;
        if self.rectangle249 ~= nil then self.rectangle249:destroy(); self.rectangle249 = nil; end;
        if self.edit114 ~= nil then self.edit114:destroy(); self.edit114 = nil; end;
        if self.label169 ~= nil then self.label169:destroy(); self.label169 = nil; end;
        if self.edit92 ~= nil then self.edit92:destroy(); self.edit92 = nil; end;
        if self.rectangle580 ~= nil then self.rectangle580:destroy(); self.rectangle580 = nil; end;
        if self.rectangle97 ~= nil then self.rectangle97:destroy(); self.rectangle97 = nil; end;
        if self.rectangle87 ~= nil then self.rectangle87:destroy(); self.rectangle87 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.rectangle424 ~= nil then self.rectangle424:destroy(); self.rectangle424 = nil; end;
        if self.edit156 ~= nil then self.edit156:destroy(); self.edit156 = nil; end;
        if self.edit164 ~= nil then self.edit164:destroy(); self.edit164 = nil; end;
        if self.image30 ~= nil then self.image30:destroy(); self.image30 = nil; end;
        if self.rectangle527 ~= nil then self.rectangle527:destroy(); self.rectangle527 = nil; end;
        if self.rectangle340 ~= nil then self.rectangle340:destroy(); self.rectangle340 = nil; end;
        if self.edit219 ~= nil then self.edit219:destroy(); self.edit219 = nil; end;
        if self.rectangle166 ~= nil then self.rectangle166:destroy(); self.rectangle166 = nil; end;
        if self.rectangle174 ~= nil then self.rectangle174:destroy(); self.rectangle174 = nil; end;
        if self.rectangle247 ~= nil then self.rectangle247:destroy(); self.rectangle247 = nil; end;
        if self.rectangle277 ~= nil then self.rectangle277:destroy(); self.rectangle277 = nil; end;
        if self.label163 ~= nil then self.label163:destroy(); self.label163 = nil; end;
        if self.label242 ~= nil then self.label242:destroy(); self.label242 = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.rectangle185 ~= nil then self.rectangle185:destroy(); self.rectangle185 = nil; end;
        if self.rectangle500 ~= nil then self.rectangle500:destroy(); self.rectangle500 = nil; end;
        if self.rectangle512 ~= nil then self.rectangle512:destroy(); self.rectangle512 = nil; end;
        if self.rectangle124 ~= nil then self.rectangle124:destroy(); self.rectangle124 = nil; end;
        if self.rectangle205 ~= nil then self.rectangle205:destroy(); self.rectangle205 = nil; end;
        if self.rectangle89 ~= nil then self.rectangle89:destroy(); self.rectangle89 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.edit158 ~= nil then self.edit158:destroy(); self.edit158 = nil; end;
        if self.rectangle488 ~= nil then self.rectangle488:destroy(); self.rectangle488 = nil; end;
        if self.rectangle371 ~= nil then self.rectangle371:destroy(); self.rectangle371 = nil; end;
        if self.rectangle496 ~= nil then self.rectangle496:destroy(); self.rectangle496 = nil; end;
        if self.rectangle153 ~= nil then self.rectangle153:destroy(); self.rectangle153 = nil; end;
        if self.checkBox16 ~= nil then self.checkBox16:destroy(); self.checkBox16 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.rectangle445 ~= nil then self.rectangle445:destroy(); self.rectangle445 = nil; end;
        if self.rectangle431 ~= nil then self.rectangle431:destroy(); self.rectangle431 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.rectangle391 ~= nil then self.rectangle391:destroy(); self.rectangle391 = nil; end;
        if self.rectangle105 ~= nil then self.rectangle105:destroy(); self.rectangle105 = nil; end;
        if self.rectangle115 ~= nil then self.rectangle115:destroy(); self.rectangle115 = nil; end;
        if self.rectangle224 ~= nil then self.rectangle224:destroy(); self.rectangle224 = nil; end;
        if self.rectangle252 ~= nil then self.rectangle252:destroy(); self.rectangle252 = nil; end;
        if self.label176 ~= nil then self.label176:destroy(); self.label176 = nil; end;
        if self.comboBox34 ~= nil then self.comboBox34:destroy(); self.comboBox34 = nil; end;
        if self.comboBox22 ~= nil then self.comboBox22:destroy(); self.comboBox22 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit104 ~= nil then self.edit104:destroy(); self.edit104 = nil; end;
        if self.image15 ~= nil then self.image15:destroy(); self.image15 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.rectangle258 ~= nil then self.rectangle258:destroy(); self.rectangle258 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.label178 ~= nil then self.label178:destroy(); self.label178 = nil; end;
        if self.tab7 ~= nil then self.tab7:destroy(); self.tab7 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.rectangle384 ~= nil then self.rectangle384:destroy(); self.rectangle384 = nil; end;
        if self.comboBox28 ~= nil then self.comboBox28:destroy(); self.comboBox28 = nil; end;
        if self.rectangle298 ~= nil then self.rectangle298:destroy(); self.rectangle298 = nil; end;
        if self.rectangle286 ~= nil then self.rectangle286:destroy(); self.rectangle286 = nil; end;
        if self.rectangle418 ~= nil then self.rectangle418:destroy(); self.rectangle418 = nil; end;
        if self.rectangle535 ~= nil then self.rectangle535:destroy(); self.rectangle535 = nil; end;
        if self.textEditor20 ~= nil then self.textEditor20:destroy(); self.textEditor20 = nil; end;
        if self.image24 ~= nil then self.image24:destroy(); self.image24 = nil; end;
        if self.rectangle354 ~= nil then self.rectangle354:destroy(); self.rectangle354 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.rectangle563 ~= nil then self.rectangle563:destroy(); self.rectangle563 = nil; end;
        if self.rectangle573 ~= nil then self.rectangle573:destroy(); self.rectangle573 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.rectangle452 ~= nil then self.rectangle452:destroy(); self.rectangle452 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.rectangle460 ~= nil then self.rectangle460:destroy(); self.rectangle460 = nil; end;
        if self.rectangle304 ~= nil then self.rectangle304:destroy(); self.rectangle304 = nil; end;
        if self.rectangle312 ~= nil then self.rectangle312:destroy(); self.rectangle312 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.rectangle130 ~= nil then self.rectangle130:destroy(); self.rectangle130 = nil; end;
        if self.rectangle233 ~= nil then self.rectangle233:destroy(); self.rectangle233 = nil; end;
        if self.textEditor11 ~= nil then self.textEditor11:destroy(); self.textEditor11 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.label124 ~= nil then self.label124:destroy(); self.label124 = nil; end;
        if self.label205 ~= nil then self.label205:destroy(); self.label205 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.rectangle556 ~= nil then self.rectangle556:destroy(); self.rectangle556 = nil; end;
        if self.rectangle45 ~= nil then self.rectangle45:destroy(); self.rectangle45 = nil; end;
        if self.rectangle579 ~= nil then self.rectangle579:destroy(); self.rectangle579 = nil; end;
        if self.edit191 ~= nil then self.edit191:destroy(); self.edit191 = nil; end;
        if self.edit181 ~= nil then self.edit181:destroy(); self.edit181 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.rectangle318 ~= nil then self.rectangle318:destroy(); self.rectangle318 = nil; end;
        if self.rectangle598 ~= nil then self.rectangle598:destroy(); self.rectangle598 = nil; end;
        if self.rectangle475 ~= nil then self.rectangle475:destroy(); self.rectangle475 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.rectangle216 ~= nil then self.rectangle216:destroy(); self.rectangle216 = nil; end;
        if self.rectangle558 ~= nil then self.rectangle558:destroy(); self.rectangle558 = nil; end;
        if self.label131 ~= nil then self.label131:destroy(); self.label131 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.label232 ~= nil then self.label232:destroy(); self.label232 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.label190 ~= nil then self.label190:destroy(); self.label190 = nil; end;
        if self.rectangle50 ~= nil then self.rectangle50:destroy(); self.rectangle50 = nil; end;
        if self.rectangle592 ~= nil then self.rectangle592:destroy(); self.rectangle592 = nil; end;
        if self.edit140 ~= nil then self.edit140:destroy(); self.edit140 = nil; end;
        if self.edit136 ~= nil then self.edit136:destroy(); self.edit136 = nil; end;
        if self.image51 ~= nil then self.image51:destroy(); self.image51 = nil; end;
        if self.image41 ~= nil then self.image41:destroy(); self.image41 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.rectangle364 ~= nil then self.rectangle364:destroy(); self.rectangle364 = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.rectangle146 ~= nil then self.rectangle146:destroy(); self.rectangle146 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.rectangle267 ~= nil then self.rectangle267:destroy(); self.rectangle267 = nil; end;
        if self.textEditor34 ~= nil then self.textEditor34:destroy(); self.textEditor34 = nil; end;
        if self.label238 ~= nil then self.label238:destroy(); self.label238 = nil; end;
        if self.rectangle195 ~= nil then self.rectangle195:destroy(); self.rectangle195 = nil; end;
        if self.edit113 ~= nil then self.edit113:destroy(); self.edit113 = nil; end;
        if self.label141 ~= nil then self.label141:destroy(); self.label141 = nil; end;
        if self.edit169 ~= nil then self.edit169:destroy(); self.edit169 = nil; end;
        if self.rectangle84 ~= nil then self.rectangle84:destroy(); self.rectangle84 = nil; end;
        if self.edit155 ~= nil then self.edit155:destroy(); self.edit155 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.rectangle421 ~= nil then self.rectangle421:destroy(); self.rectangle421 = nil; end;
        if self.rectangle522 ~= nil then self.rectangle522:destroy(); self.rectangle522 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.label217 ~= nil then self.label217:destroy(); self.label217 = nil; end;
        if self.rectangle343 ~= nil then self.rectangle343:destroy(); self.rectangle343 = nil; end;
        if self.edit204 ~= nil then self.edit204:destroy(); self.edit204 = nil; end;
        if self.rectangle161 ~= nil then self.rectangle161:destroy(); self.rectangle161 = nil; end;
        if self.rectangle171 ~= nil then self.rectangle171:destroy(); self.rectangle171 = nil; end;
        if self.rectangle240 ~= nil then self.rectangle240:destroy(); self.rectangle240 = nil; end;
        if self.rectangle272 ~= nil then self.rectangle272:destroy(); self.rectangle272 = nil; end;
        if self.label116 ~= nil then self.label116:destroy(); self.label116 = nil; end;
        if self.label160 ~= nil then self.label160:destroy(); self.label160 = nil; end;
        if self.label241 ~= nil then self.label241:destroy(); self.label241 = nil; end;
        if self.edit99 ~= nil then self.edit99:destroy(); self.edit99 = nil; end;
        if self.checkBox7 ~= nil then self.checkBox7:destroy(); self.checkBox7 = nil; end;
        if self.comboBox10 ~= nil then self.comboBox10:destroy(); self.comboBox10 = nil; end;
        if self.rectangle75 ~= nil then self.rectangle75:destroy(); self.rectangle75 = nil; end;
        if self.rectangle127 ~= nil then self.rectangle127:destroy(); self.rectangle127 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.rectangle206 ~= nil then self.rectangle206:destroy(); self.rectangle206 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        if self.rectangle495 ~= nil then self.rectangle495:destroy(); self.rectangle495 = nil; end;
        if self.rectangle485 ~= nil then self.rectangle485:destroy(); self.rectangle485 = nil; end;
        if self.rectangle589 ~= nil then self.rectangle589:destroy(); self.rectangle589 = nil; end;
        if self.rectangle150 ~= nil then self.rectangle150:destroy(); self.rectangle150 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.rectangle549 ~= nil then self.rectangle549:destroy(); self.rectangle549 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.label184 ~= nil then self.label184:destroy(); self.label184 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.rectangle392 ~= nil then self.rectangle392:destroy(); self.rectangle392 = nil; end;
        if self.rectangle108 ~= nil then self.rectangle108:destroy(); self.rectangle108 = nil; end;
        if self.rectangle229 ~= nil then self.rectangle229:destroy(); self.rectangle229 = nil; end;
        if self.rectangle182 ~= nil then self.rectangle182:destroy(); self.rectangle182 = nil; end;
        if self.label175 ~= nil then self.label175:destroy(); self.label175 = nil; end;
        if self.rectangle519 ~= nil then self.rectangle519:destroy(); self.rectangle519 = nil; end;
        if self.comboBox37 ~= nil then self.comboBox37:destroy(); self.comboBox37 = nil; end;
        if self.comboBox27 ~= nil then self.comboBox27:destroy(); self.comboBox27 = nil; end;
        if self.rectangle378 ~= nil then self.rectangle378:destroy(); self.rectangle378 = nil; end;
        if self.edit172 ~= nil then self.edit172:destroy(); self.edit172 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.rectangle543 ~= nil then self.rectangle543:destroy(); self.rectangle543 = nil; end;
        if self.edit101 ~= nil then self.edit101:destroy(); self.edit101 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.rectangle320 ~= nil then self.rectangle320:destroy(); self.rectangle320 = nil; end;
        if self.rectangle332 ~= nil then self.rectangle332:destroy(); self.rectangle332 = nil; end;
        if self.rectangle102 ~= nil then self.rectangle102:destroy(); self.rectangle102 = nil; end;
        if self.rectangle223 ~= nil then self.rectangle223:destroy(); self.rectangle223 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.rectangle69 ~= nil then self.rectangle69:destroy(); self.rectangle69 = nil; end;
        if self.rectangle387 ~= nil then self.rectangle387:destroy(); self.rectangle387 = nil; end;
        if self.rectangle536 ~= nil then self.rectangle536:destroy(); self.rectangle536 = nil; end;
        if self.rectangle417 ~= nil then self.rectangle417:destroy(); self.rectangle417 = nil; end;
        if self.edit178 ~= nil then self.edit178:destroy(); self.edit178 = nil; end;
        if self.textEditor23 ~= nil then self.textEditor23:destroy(); self.textEditor23 = nil; end;
        if self.image21 ~= nil then self.image21:destroy(); self.image21 = nil; end;
        if self.rectangle351 ~= nil then self.rectangle351:destroy(); self.rectangle351 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.rectangle48 ~= nil then self.rectangle48:destroy(); self.rectangle48 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.rectangle566 ~= nil then self.rectangle566:destroy(); self.rectangle566 = nil; end;
        if self.rectangle465 ~= nil then self.rectangle465:destroy(); self.rectangle465 = nil; end;
        if self.rectangle451 ~= nil then self.rectangle451:destroy(); self.rectangle451 = nil; end;
        if self.rectangle67 ~= nil then self.rectangle67:destroy(); self.rectangle67 = nil; end;
        if self.rectangle574 ~= nil then self.rectangle574:destroy(); self.rectangle574 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.rectangle307 ~= nil then self.rectangle307:destroy(); self.rectangle307 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.rectangle135 ~= nil then self.rectangle135:destroy(); self.rectangle135 = nil; end;
        if self.rectangle236 ~= nil then self.rectangle236:destroy(); self.rectangle236 = nil; end;
        if self.rectangle317 ~= nil then self.rectangle317:destroy(); self.rectangle317 = nil; end;
        if self.rectangle291 ~= nil then self.rectangle291:destroy(); self.rectangle291 = nil; end;
        if self.rectangle281 ~= nil then self.rectangle281:destroy(); self.rectangle281 = nil; end;
        if self.label152 ~= nil then self.label152:destroy(); self.label152 = nil; end;
        if self.label121 ~= nil then self.label121:destroy(); self.label121 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label200 ~= nil then self.label200:destroy(); self.label200 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.edit124 ~= nil then self.edit124:destroy(); self.edit124 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.rectangle238 ~= nil then self.rectangle238:destroy(); self.rectangle238 = nil; end;
        if self.label158 ~= nil then self.label158:destroy(); self.label158 = nil; end;
        if self.textEditor18 ~= nil then self.textEditor18:destroy(); self.textEditor18 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.rectangle369 ~= nil then self.rectangle369:destroy(); self.rectangle369 = nil; end;
        if self.edit196 ~= nil then self.edit196:destroy(); self.edit196 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.edit188 ~= nil then self.edit188:destroy(); self.edit188 = nil; end;
        if self.label193 ~= nil then self.label193:destroy(); self.label193 = nil; end;
        if self.checkBox20 ~= nil then self.checkBox20:destroy(); self.checkBox20 = nil; end;
        if self.edit145 ~= nil then self.edit145:destroy(); self.edit145 = nil; end;
        if self.edit131 ~= nil then self.edit131:destroy(); self.edit131 = nil; end;
        if self.image54 ~= nil then self.image54:destroy(); self.image54 = nil; end;
        if self.image42 ~= nil then self.image42:destroy(); self.image42 = nil; end;
        if self.rectangle405 ~= nil then self.rectangle405:destroy(); self.rectangle405 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.popDadivaReves ~= nil then self.popDadivaReves:destroy(); self.popDadivaReves = nil; end;
        if self.rectangle363 ~= nil then self.rectangle363:destroy(); self.rectangle363 = nil; end;
        if self.textEditor31 ~= nil then self.textEditor31:destroy(); self.textEditor31 = nil; end;
        if self.rectangle145 ~= nil then self.rectangle145:destroy(); self.rectangle145 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.rectangle264 ~= nil then self.rectangle264:destroy(); self.rectangle264 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.label136 ~= nil then self.label136:destroy(); self.label136 = nil; end;
        if self.label225 ~= nil then self.label225:destroy(); self.label225 = nil; end;
        if self.edit209 ~= nil then self.edit209:destroy(); self.edit209 = nil; end;
        if self.label235 ~= nil then self.label235:destroy(); self.label235 = nil; end;
        if self.rectangle59 ~= nil then self.rectangle59:destroy(); self.rectangle59 = nil; end;
        if self.label142 ~= nil then self.label142:destroy(); self.label142 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.image48 ~= nil then self.image48:destroy(); self.image48 = nil; end;
        if self.rectangle99 ~= nil then self.rectangle99:destroy(); self.rectangle99 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.rectangle422 ~= nil then self.rectangle422:destroy(); self.rectangle422 = nil; end;
        if self.label214 ~= nil then self.label214:destroy(); self.label214 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.edit207 ~= nil then self.edit207:destroy(); self.edit207 = nil; end;
        if self.edit217 ~= nil then self.edit217:destroy(); self.edit217 = nil; end;
        if self.rectangle172 ~= nil then self.rectangle172:destroy(); self.rectangle172 = nil; end;
        if self.rectangle271 ~= nil then self.rectangle271:destroy(); self.rectangle271 = nil; end;
        if self.label111 ~= nil then self.label111:destroy(); self.label111 = nil; end;
        if self.edit118 ~= nil then self.edit118:destroy(); self.edit118 = nil; end;
        if self.label165 ~= nil then self.label165:destroy(); self.label165 = nil; end;
        if self.label244 ~= nil then self.label244:destroy(); self.label244 = nil; end;
        if self.edit96 ~= nil then self.edit96:destroy(); self.edit96 = nil; end;
        if self.checkBox8 ~= nil then self.checkBox8:destroy(); self.checkBox8 = nil; end;
        if self.comboBox17 ~= nil then self.comboBox17:destroy(); self.comboBox17 = nil; end;
        if self.rectangle70 ~= nil then self.rectangle70:destroy(); self.rectangle70 = nil; end;
        if self.rectangle584 ~= nil then self.rectangle584:destroy(); self.rectangle584 = nil; end;
        if self.rectangle93 ~= nil then self.rectangle93:destroy(); self.rectangle93 = nil; end;
        if self.rectangle83 ~= nil then self.rectangle83:destroy(); self.rectangle83 = nil; end;
        if self.progressBar1 ~= nil then self.progressBar1:destroy(); self.progressBar1 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.edit152 ~= nil then self.edit152:destroy(); self.edit152 = nil; end;
        if self.edit160 ~= nil then self.edit160:destroy(); self.edit160 = nil; end;
        if self.rectangle482 ~= nil then self.rectangle482:destroy(); self.rectangle482 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.image34 ~= nil then self.image34:destroy(); self.image34 = nil; end;
        if self.rectangle344 ~= nil then self.rectangle344:destroy(); self.rectangle344 = nil; end;
        if self.rectangle490 ~= nil then self.rectangle490:destroy(); self.rectangle490 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.rectangle178 ~= nil then self.rectangle178:destroy(); self.rectangle178 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.label181 ~= nil then self.label181:destroy(); self.label181 = nil; end;
        if self.popFrmPrincipal ~= nil then self.popFrmPrincipal:destroy(); self.popFrmPrincipal = nil; end;
        if self.rectangle397 ~= nil then self.rectangle397:destroy(); self.rectangle397 = nil; end;
        if self.rectangle181 ~= nil then self.rectangle181:destroy(); self.rectangle181 = nil; end;
        if self.rectangle504 ~= nil then self.rectangle504:destroy(); self.rectangle504 = nil; end;
        if self.rectangle516 ~= nil then self.rectangle516:destroy(); self.rectangle516 = nil; end;
        if self.rectangle120 ~= nil then self.rectangle120:destroy(); self.rectangle120 = nil; end;
        if self.rectangle201 ~= nil then self.rectangle201:destroy(); self.rectangle201 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.rectangle375 ~= nil then self.rectangle375:destroy(); self.rectangle375 = nil; end;
        if self.checkBox12 ~= nil then self.checkBox12:destroy(); self.checkBox12 = nil; end;
        if self.rectangle157 ~= nil then self.rectangle157:destroy(); self.rectangle157 = nil; end;
        if self.edit175 ~= nil then self.edit175:destroy(); self.edit175 = nil; end;
        if self.rectangle546 ~= nil then self.rectangle546:destroy(); self.rectangle546 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.rectangle435 ~= nil then self.rectangle435:destroy(); self.rectangle435 = nil; end;
        if self.rectangle441 ~= nil then self.rectangle441:destroy(); self.rectangle441 = nil; end;
        if self.image13 ~= nil then self.image13:destroy(); self.image13 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.rectangle327 ~= nil then self.rectangle327:destroy(); self.rectangle327 = nil; end;
        if self.rectangle337 ~= nil then self.rectangle337:destroy(); self.rectangle337 = nil; end;
        if self.rectangle101 ~= nil then self.rectangle101:destroy(); self.rectangle101 = nil; end;
        if self.rectangle111 ~= nil then self.rectangle111:destroy(); self.rectangle111 = nil; end;
        if self.rectangle220 ~= nil then self.rectangle220:destroy(); self.rectangle220 = nil; end;
        if self.rectangle256 ~= nil then self.rectangle256:destroy(); self.rectangle256 = nil; end;
        if self.label172 ~= nil then self.label172:destroy(); self.label172 = nil; end;
        if self.comboBox30 ~= nil then self.comboBox30:destroy(); self.comboBox30 = nil; end;
        if self.checkBox18 ~= nil then self.checkBox18:destroy(); self.checkBox18 = nil; end;
        if self.rectangle533 ~= nil then self.rectangle533:destroy(); self.rectangle533 = nil; end;
        if self.rectangle412 ~= nil then self.rectangle412:destroy(); self.rectangle412 = nil; end;
        if self.rectangle352 ~= nil then self.rectangle352:destroy(); self.rectangle352 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.rectangle339 ~= nil then self.rectangle339:destroy(); self.rectangle339 = nil; end;
        if self.rectangle569 ~= nil then self.rectangle569:destroy(); self.rectangle569 = nil; end;
        if self.rectangle466 ~= nil then self.rectangle466:destroy(); self.rectangle466 = nil; end;
        if self.rectangle454 ~= nil then self.rectangle454:destroy(); self.rectangle454 = nil; end;
        if self.rectangle60 ~= nil then self.rectangle60:destroy(); self.rectangle60 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.rectangle380 ~= nil then self.rectangle380:destroy(); self.rectangle380 = nil; end;
        if self.rectangle136 ~= nil then self.rectangle136:destroy(); self.rectangle136 = nil; end;
        if self.rectangle235 ~= nil then self.rectangle235:destroy(); self.rectangle235 = nil; end;
        if self.label155 ~= nil then self.label155:destroy(); self.label155 = nil; end;
        if self.rectangle294 ~= nil then self.rectangle294:destroy(); self.rectangle294 = nil; end;
        if self.rectangle282 ~= nil then self.rectangle282:destroy(); self.rectangle282 = nil; end;
        if self.rectangle539 ~= nil then self.rectangle539:destroy(); self.rectangle539 = nil; end;
        if self.textEditor24 ~= nil then self.textEditor24:destroy(); self.textEditor24 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.image28 ~= nil then self.image28:destroy(); self.image28 = nil; end;
        if self.rectangle358 ~= nil then self.rectangle358:destroy(); self.rectangle358 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit121 ~= nil then self.edit121:destroy(); self.edit121 = nil; end;
        if self.rectangle300 ~= nil then self.rectangle300:destroy(); self.rectangle300 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.textEditor15 ~= nil then self.textEditor15:destroy(); self.textEditor15 = nil; end;
        if self.rectangle288 ~= nil then self.rectangle288:destroy(); self.rectangle288 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.rectangle408 ~= nil then self.rectangle408:destroy(); self.rectangle408 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.rectangle552 ~= nil then self.rectangle552:destroy(); self.rectangle552 = nil; end;
        if self.edit195 ~= nil then self.edit195:destroy(); self.edit195 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit185 ~= nil then self.edit185:destroy(); self.edit185 = nil; end;
        if self.rectangle471 ~= nil then self.rectangle471:destroy(); self.rectangle471 = nil; end;
        if self.image47 ~= nil then self.image47:destroy(); self.image47 = nil; end;
        if self.rectangle402 ~= nil then self.rectangle402:destroy(); self.rectangle402 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.rectangle212 ~= nil then self.rectangle212:destroy(); self.rectangle212 = nil; end;
        if self.textEditor32 ~= nil then self.textEditor32:destroy(); self.textEditor32 = nil; end;
        if self.rectangle140 ~= nil then self.rectangle140:destroy(); self.rectangle140 = nil; end;
        if self.rectangle261 ~= nil then self.rectangle261:destroy(); self.rectangle261 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.label135 ~= nil then self.label135:destroy(); self.label135 = nil; end;
        if self.label220 ~= nil then self.label220:destroy(); self.label220 = nil; end;
        if self.label236 ~= nil then self.label236:destroy(); self.label236 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.label194 ~= nil then self.label194:destroy(); self.label194 = nil; end;
        if self.rectangle54 ~= nil then self.rectangle54:destroy(); self.rectangle54 = nil; end;
        if self.rectangle596 ~= nil then self.rectangle596:destroy(); self.rectangle596 = nil; end;
        if self.label147 ~= nil then self.label147:destroy(); self.label147 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.rectangle218 ~= nil then self.rectangle218:destroy(); self.rectangle218 = nil; end;
        if self.label211 ~= nil then self.label211:destroy(); self.label211 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.rectangle528 ~= nil then self.rectangle528:destroy(); self.rectangle528 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.image39 ~= nil then self.image39:destroy(); self.image39 = nil; end;
        if self.comboBox42 ~= nil then self.comboBox42:destroy(); self.comboBox42 = nil; end;
        if self.rectangle349 ~= nil then self.rectangle349:destroy(); self.rectangle349 = nil; end;
        if self.edit202 ~= nil then self.edit202:destroy(); self.edit202 = nil; end;
        if self.rectangle191 ~= nil then self.rectangle191:destroy(); self.rectangle191 = nil; end;
        if self.edit117 ~= nil then self.edit117:destroy(); self.edit117 = nil; end;
        if self.edit210 ~= nil then self.edit210:destroy(); self.edit210 = nil; end;
        if self.edit93 ~= nil then self.edit93:destroy(); self.edit93 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.rectangle73 ~= nil then self.rectangle73:destroy(); self.rectangle73 = nil; end;
        if self.rectangle509 ~= nil then self.rectangle509:destroy(); self.rectangle509 = nil; end;
        if self.rectangle583 ~= nil then self.rectangle583:destroy(); self.rectangle583 = nil; end;
        if self.rectangle96 ~= nil then self.rectangle96:destroy(); self.rectangle96 = nil; end;
        if self.rectangle80 ~= nil then self.rectangle80:destroy(); self.rectangle80 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.rectangle425 ~= nil then self.rectangle425:destroy(); self.rectangle425 = nil; end;
        if self.edit151 ~= nil then self.edit151:destroy(); self.edit151 = nil; end;
        if self.edit165 ~= nil then self.edit165:destroy(); self.edit165 = nil; end;
        if self.image33 ~= nil then self.image33:destroy(); self.image33 = nil; end;
        if self.rectangle526 ~= nil then self.rectangle526:destroy(); self.rectangle526 = nil; end;
        if self.rectangle347 ~= nil then self.rectangle347:destroy(); self.rectangle347 = nil; end;
        if self.rectangle165 ~= nil then self.rectangle165:destroy(); self.rectangle165 = nil; end;
        if self.rectangle175 ~= nil then self.rectangle175:destroy(); self.rectangle175 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.rectangle244 ~= nil then self.rectangle244:destroy(); self.rectangle244 = nil; end;
        if self.rectangle276 ~= nil then self.rectangle276:destroy(); self.rectangle276 = nil; end;
        if self.label182 ~= nil then self.label182:destroy(); self.label182 = nil; end;
        if self.checkBox3 ~= nil then self.checkBox3:destroy(); self.checkBox3 = nil; end;
        if self.rectangle398 ~= nil then self.rectangle398:destroy(); self.rectangle398 = nil; end;
        if self.rectangle184 ~= nil then self.rectangle184:destroy(); self.rectangle184 = nil; end;
        if self.rectangle79 ~= nil then self.rectangle79:destroy(); self.rectangle79 = nil; end;
        if self.rectangle503 ~= nil then self.rectangle503:destroy(); self.rectangle503 = nil; end;
        if self.rectangle123 ~= nil then self.rectangle123:destroy(); self.rectangle123 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.rectangle202 ~= nil then self.rectangle202:destroy(); self.rectangle202 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.rectangle513 ~= nil then self.rectangle513:destroy(); self.rectangle513 = nil; end;
        if self.rectangle489 ~= nil then self.rectangle489:destroy(); self.rectangle489 = nil; end;
        if self.rectangle372 ~= nil then self.rectangle372:destroy(); self.rectangle372 = nil; end;
        if self.checkBox15 ~= nil then self.checkBox15:destroy(); self.checkBox15 = nil; end;
        if self.rectangle154 ~= nil then self.rectangle154:destroy(); self.rectangle154 = nil; end;
        if self.rectangle545 ~= nil then self.rectangle545:destroy(); self.rectangle545 = nil; end;
        if self.rectangle446 ~= nil then self.rectangle446:destroy(); self.rectangle446 = nil; end;
        if self.rectangle430 ~= nil then self.rectangle430:destroy(); self.rectangle430 = nil; end;
        if self.label188 ~= nil then self.label188:destroy(); self.label188 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.rectangle334 ~= nil then self.rectangle334:destroy(); self.rectangle334 = nil; end;
        if self.rectangle104 ~= nil then self.rectangle104:destroy(); self.rectangle104 = nil; end;
        if self.rectangle116 ~= nil then self.rectangle116:destroy(); self.rectangle116 = nil; end;
        if self.rectangle225 ~= nil then self.rectangle225:destroy(); self.rectangle225 = nil; end;
        if self.rectangle251 ~= nil then self.rectangle251:destroy(); self.rectangle251 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.label171 ~= nil then self.label171:destroy(); self.label171 = nil; end;
        if self.comboBox33 ~= nil then self.comboBox33:destroy(); self.comboBox33 = nil; end;
        if self.comboBox23 ~= nil then self.comboBox23:destroy(); self.comboBox23 = nil; end;
        if self.rectangle411 ~= nil then self.rectangle411:destroy(); self.rectangle411 = nil; end;
        if self.textEditor29 ~= nil then self.textEditor29:destroy(); self.textEditor29 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit105 ~= nil then self.edit105:destroy(); self.edit105 = nil; end;
        if self.image14 ~= nil then self.image14:destroy(); self.image14 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.rectangle118 ~= nil then self.rectangle118:destroy(); self.rectangle118 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.rectangle383 ~= nil then self.rectangle383:destroy(); self.rectangle383 = nil; end;
        if self.comboBox29 ~= nil then self.comboBox29:destroy(); self.comboBox29 = nil; end;
        if self.rectangle297 ~= nil then self.rectangle297:destroy(); self.rectangle297 = nil; end;
        if self.rectangle287 ~= nil then self.rectangle287:destroy(); self.rectangle287 = nil; end;
        if self.textEditor27 ~= nil then self.textEditor27:destroy(); self.textEditor27 = nil; end;
        if self.image25 ~= nil then self.image25:destroy(); self.image25 = nil; end;
        if self.rectangle355 ~= nil then self.rectangle355:destroy(); self.rectangle355 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle562 ~= nil then self.rectangle562:destroy(); self.rectangle562 = nil; end;
        if self.rectangle570 ~= nil then self.rectangle570:destroy(); self.rectangle570 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.edit122 ~= nil then self.edit122:destroy(); self.edit122 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.rectangle461 ~= nil then self.rectangle461:destroy(); self.rectangle461 = nil; end;
        if self.rectangle303 ~= nil then self.rectangle303:destroy(); self.rectangle303 = nil; end;
        if self.rectangle313 ~= nil then self.rectangle313:destroy(); self.rectangle313 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.rectangle131 ~= nil then self.rectangle131:destroy(); self.rectangle131 = nil; end;
        if self.rectangle232 ~= nil then self.rectangle232:destroy(); self.rectangle232 = nil; end;
        if self.rectangle389 ~= nil then self.rectangle389:destroy(); self.rectangle389 = nil; end;
        if self.textEditor12 ~= nil then self.textEditor12:destroy(); self.textEditor12 = nil; end;
        if self.label125 ~= nil then self.label125:destroy(); self.label125 = nil; end;
        if self.label204 ~= nil then self.label204:destroy(); self.label204 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.rectangle557 ~= nil then self.rectangle557:destroy(); self.rectangle557 = nil; end;
        if self.rectangle46 ~= nil then self.rectangle46:destroy(); self.rectangle46 = nil; end;
        if self.edit190 ~= nil then self.edit190:destroy(); self.edit190 = nil; end;
        if self.edit182 ~= nil then self.edit182:destroy(); self.edit182 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.label199 ~= nil then self.label199:destroy(); self.label199 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.rectangle319 ~= nil then self.rectangle319:destroy(); self.rectangle319 = nil; end;
        if self.rectangle599 ~= nil then self.rectangle599:destroy(); self.rectangle599 = nil; end;
        if self.rectangle474 ~= nil then self.rectangle474:destroy(); self.rectangle474 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.rectangle215 ~= nil then self.rectangle215:destroy(); self.rectangle215 = nil; end;
        if self.rectangle559 ~= nil then self.rectangle559:destroy(); self.rectangle559 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.label130 ~= nil then self.label130:destroy(); self.label130 = nil; end;
        if self.label223 ~= nil then self.label223:destroy(); self.label223 = nil; end;
        if self.label233 ~= nil then self.label233:destroy(); self.label233 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.label197 ~= nil then self.label197:destroy(); self.label197 = nil; end;
        if self.rectangle53 ~= nil then self.rectangle53:destroy(); self.rectangle53 = nil; end;
        if self.rectangle593 ~= nil then self.rectangle593:destroy(); self.rectangle593 = nil; end;
        if self.edit141 ~= nil then self.edit141:destroy(); self.edit141 = nil; end;
        if self.edit135 ~= nil then self.edit135:destroy(); self.edit135 = nil; end;
        if self.label148 ~= nil then self.label148:destroy(); self.label148 = nil; end;
        if self.image50 ~= nil then self.image50:destroy(); self.image50 = nil; end;
        if self.rectangle367 ~= nil then self.rectangle367:destroy(); self.rectangle367 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.rectangle428 ~= nil then self.rectangle428:destroy(); self.rectangle428 = nil; end;
        if self.textEditor35 ~= nil then self.textEditor35:destroy(); self.textEditor35 = nil; end;
        if self.label239 ~= nil then self.label239:destroy(); self.label239 = nil; end;
        if self.rectangle196 ~= nil then self.rectangle196:destroy(); self.rectangle196 = nil; end;
        if self.edit112 ~= nil then self.edit112:destroy(); self.edit112 = nil; end;
        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.comboBox19 ~= nil then self.comboBox19:destroy(); self.comboBox19 = nil; end;
        if self.rectangle95 ~= nil then self.rectangle95:destroy(); self.rectangle95 = nil; end;
        if self.rectangle85 ~= nil then self.rectangle85:destroy(); self.rectangle85 = nil; end;
        if self.edit154 ~= nil then self.edit154:destroy(); self.edit154 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.rectangle426 ~= nil then self.rectangle426:destroy(); self.rectangle426 = nil; end;
        if self.edit166 ~= nil then self.edit166:destroy(); self.edit166 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.rectangle521 ~= nil then self.rectangle521:destroy(); self.rectangle521 = nil; end;
        if self.rectangle342 ~= nil then self.rectangle342:destroy(); self.rectangle342 = nil; end;
        if self.label218 ~= nil then self.label218:destroy(); self.label218 = nil; end;
        if self.rectangle160 ~= nil then self.rectangle160:destroy(); self.rectangle160 = nil; end;
        if self.rectangle176 ~= nil then self.rectangle176:destroy(); self.rectangle176 = nil; end;
        if self.rectangle241 ~= nil then self.rectangle241:destroy(); self.rectangle241 = nil; end;
        if self.rectangle275 ~= nil then self.rectangle275:destroy(); self.rectangle275 = nil; end;
        if self.label115 ~= nil then self.label115:destroy(); self.label115 = nil; end;
        if self.label161 ~= nil then self.label161:destroy(); self.label161 = nil; end;
        if self.label240 ~= nil then self.label240:destroy(); self.label240 = nil; end;
        if self.checkBox4 ~= nil then self.checkBox4:destroy(); self.checkBox4 = nil; end;
        if self.comboBox13 ~= nil then self.comboBox13:destroy(); self.comboBox13 = nil; end;
        if self.rectangle74 ~= nil then self.rectangle74:destroy(); self.rectangle74 = nil; end;
        if self.rectangle510 ~= nil then self.rectangle510:destroy(); self.rectangle510 = nil; end;
        if self.rectangle126 ~= nil then self.rectangle126:destroy(); self.rectangle126 = nil; end;
        if self.comboBox6 ~= nil then self.comboBox6:destroy(); self.comboBox6 = nil; end;
        if self.rectangle207 ~= nil then self.rectangle207:destroy(); self.rectangle207 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.rectangle494 ~= nil then self.rectangle494:destroy(); self.rectangle494 = nil; end;
        if self.rectangle486 ~= nil then self.rectangle486:destroy(); self.rectangle486 = nil; end;
        if self.rectangle588 ~= nil then self.rectangle588:destroy(); self.rectangle588 = nil; end;
        if self.rectangle151 ~= nil then self.rectangle151:destroy(); self.rectangle151 = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.rectangle548 ~= nil then self.rectangle548:destroy(); self.rectangle548 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit108 ~= nil then self.edit108:destroy(); self.edit108 = nil; end;
        if self.image19 ~= nil then self.image19:destroy(); self.image19 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.rectangle329 ~= nil then self.rectangle329:destroy(); self.rectangle329 = nil; end;
        if self.rectangle393 ~= nil then self.rectangle393:destroy(); self.rectangle393 = nil; end;
        if self.rectangle433 ~= nil then self.rectangle433:destroy(); self.rectangle433 = nil; end;
        if self.label185 ~= nil then self.label185:destroy(); self.label185 = nil; end;
        if self.label174 ~= nil then self.label174:destroy(); self.label174 = nil; end;
        if self.comboBox8 ~= nil then self.comboBox8:destroy(); self.comboBox8 = nil; end;
        if self.comboBox36 ~= nil then self.comboBox36:destroy(); self.comboBox36 = nil; end;
        if self.comboBox24 ~= nil then self.comboBox24:destroy(); self.comboBox24 = nil; end;
        if self.rectangle379 ~= nil then self.rectangle379:destroy(); self.rectangle379 = nil; end;
        if self.edit171 ~= nil then self.edit171:destroy(); self.edit171 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.rectangle542 ~= nil then self.rectangle542:destroy(); self.rectangle542 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.edit102 ~= nil then self.edit102:destroy(); self.edit102 = nil; end;
        if self.image17 ~= nil then self.image17:destroy(); self.image17 = nil; end;
        if self.rectangle439 ~= nil then self.rectangle439:destroy(); self.rectangle439 = nil; end;
        if self.rectangle323 ~= nil then self.rectangle323:destroy(); self.rectangle323 = nil; end;
        if self.rectangle333 ~= nil then self.rectangle333:destroy(); self.rectangle333 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.rectangle386 ~= nil then self.rectangle386:destroy(); self.rectangle386 = nil; end;
        if self.rectangle537 ~= nil then self.rectangle537:destroy(); self.rectangle537 = nil; end;
        if self.rectangle416 ~= nil then self.rectangle416:destroy(); self.rectangle416 = nil; end;
        if self.label128 ~= nil then self.label128:destroy(); self.label128 = nil; end;
        if self.textEditor22 ~= nil then self.textEditor22:destroy(); self.textEditor22 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.image22 ~= nil then self.image22:destroy(); self.image22 = nil; end;
        if self.rectangle356 ~= nil then self.rectangle356:destroy(); self.rectangle356 = nil; end;
        if self.label209 ~= nil then self.label209:destroy(); self.label209 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.rectangle49 ~= nil then self.rectangle49:destroy(); self.rectangle49 = nil; end;
        if self.rectangle565 ~= nil then self.rectangle565:destroy(); self.rectangle565 = nil; end;
        if self.rectangle575 ~= nil then self.rectangle575:destroy(); self.rectangle575 = nil; end;
        if self.rectangle462 ~= nil then self.rectangle462:destroy(); self.rectangle462 = nil; end;
        if self.rectangle450 ~= nil then self.rectangle450:destroy(); self.rectangle450 = nil; end;
        if self.rectangle64 ~= nil then self.rectangle64:destroy(); self.rectangle64 = nil; end;
        if self.rectangle306 ~= nil then self.rectangle306:destroy(); self.rectangle306 = nil; end;
        if self.rectangle314 ~= nil then self.rectangle314:destroy(); self.rectangle314 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.rectangle132 ~= nil then self.rectangle132:destroy(); self.rectangle132 = nil; end;
        if self.rectangle231 ~= nil then self.rectangle231:destroy(); self.rectangle231 = nil; end;
        if self.label151 ~= nil then self.label151:destroy(); self.label151 = nil; end;
        if self.rectangle290 ~= nil then self.rectangle290:destroy(); self.rectangle290 = nil; end;
        if self.label122 ~= nil then self.label122:destroy(); self.label122 = nil; end;
        if self.label203 ~= nil then self.label203:destroy(); self.label203 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.rectangle554 ~= nil then self.rectangle554:destroy(); self.rectangle554 = nil; end;
        if self.rectangle43 ~= nil then self.rectangle43:destroy(); self.rectangle43 = nil; end;
        if self.edit125 ~= nil then self.edit125:destroy(); self.edit125 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.rectangle138 ~= nil then self.rectangle138:destroy(); self.rectangle138 = nil; end;
        if self.rectangle477 ~= nil then self.rectangle477:destroy(); self.rectangle477 = nil; end;
        if self.textEditor19 ~= nil then self.textEditor19:destroy(); self.textEditor19 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.edit221 ~= nil then self.edit221:destroy(); self.edit221 = nil; end;
        if self.rectangle368 ~= nil then self.rectangle368:destroy(); self.rectangle368 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.edit189 ~= nil then self.edit189:destroy(); self.edit189 = nil; end;
        if self.label192 ~= nil then self.label192:destroy(); self.label192 = nil; end;
        if self.checkBox21 ~= nil then self.checkBox21:destroy(); self.checkBox21 = nil; end;
        if self.rectangle590 ~= nil then self.rectangle590:destroy(); self.rectangle590 = nil; end;
        if self.edit146 ~= nil then self.edit146:destroy(); self.edit146 = nil; end;
        if self.edit130 ~= nil then self.edit130:destroy(); self.edit130 = nil; end;
        if self.image53 ~= nil then self.image53:destroy(); self.image53 = nil; end;
        if self.image43 ~= nil then self.image43:destroy(); self.image43 = nil; end;
        if self.rectangle406 ~= nil then self.rectangle406:destroy(); self.rectangle406 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.rectangle362 ~= nil then self.rectangle362:destroy(); self.rectangle362 = nil; end;
        if self.textEditor36 ~= nil then self.textEditor36:destroy(); self.textEditor36 = nil; end;
        if self.rectangle144 ~= nil then self.rectangle144:destroy(); self.rectangle144 = nil; end;
        if self.rectangle265 ~= nil then self.rectangle265:destroy(); self.rectangle265 = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.label139 ~= nil then self.label139:destroy(); self.label139 = nil; end;
        if self.label224 ~= nil then self.label224:destroy(); self.label224 = nil; end;
        if self.edit208 ~= nil then self.edit208:destroy(); self.edit208 = nil; end;
        if self.edit111 ~= nil then self.edit111:destroy(); self.edit111 = nil; end;
        if self.rectangle58 ~= nil then self.rectangle58:destroy(); self.rectangle58 = nil; end;
        if self.label143 ~= nil then self.label143:destroy(); self.label143 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.image49 ~= nil then self.image49:destroy(); self.image49 = nil; end;
        if self.rectangle98 ~= nil then self.rectangle98:destroy(); self.rectangle98 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.rectangle423 ~= nil then self.rectangle423:destroy(); self.rectangle423 = nil; end;
        if self.rectangle499 ~= nil then self.rectangle499:destroy(); self.rectangle499 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.label215 ~= nil then self.label215:destroy(); self.label215 = nil; end;
        if self.edit206 ~= nil then self.edit206:destroy(); self.edit206 = nil; end;
        if self.edit214 ~= nil then self.edit214:destroy(); self.edit214 = nil; end;
        if self.rectangle163 ~= nil then self.rectangle163:destroy(); self.rectangle163 = nil; end;
        if self.rectangle173 ~= nil then self.rectangle173:destroy(); self.rectangle173 = nil; end;
        if self.rectangle242 ~= nil then self.rectangle242:destroy(); self.rectangle242 = nil; end;
        if self.rectangle270 ~= nil then self.rectangle270:destroy(); self.rectangle270 = nil; end;
        if self.label110 ~= nil then self.label110:destroy(); self.label110 = nil; end;
        if self.label166 ~= nil then self.label166:destroy(); self.label166 = nil; end;
        if self.label247 ~= nil then self.label247:destroy(); self.label247 = nil; end;
        if self.edit97 ~= nil then self.edit97:destroy(); self.edit97 = nil; end;
        if self.checkBox9 ~= nil then self.checkBox9:destroy(); self.checkBox9 = nil; end;
        if self.comboBox16 ~= nil then self.comboBox16:destroy(); self.comboBox16 = nil; end;
        if self.rectangle77 ~= nil then self.rectangle77:destroy(); self.rectangle77 = nil; end;
        if self.rectangle129 ~= nil then self.rectangle129:destroy(); self.rectangle129 = nil; end;
        if self.rectangle92 ~= nil then self.rectangle92:destroy(); self.rectangle92 = nil; end;
        if self.rectangle208 ~= nil then self.rectangle208:destroy(); self.rectangle208 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.edit161 ~= nil then self.edit161:destroy(); self.edit161 = nil; end;
        if self.rectangle483 ~= nil then self.rectangle483:destroy(); self.rectangle483 = nil; end;
        if self.rectangle493 ~= nil then self.rectangle493:destroy(); self.rectangle493 = nil; end;
        if self.image37 ~= nil then self.image37:destroy(); self.image37 = nil; end;
        if self.rectangle587 ~= nil then self.rectangle587:destroy(); self.rectangle587 = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.rectangle179 ~= nil then self.rectangle179:destroy(); self.rectangle179 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.rectangle448 ~= nil then self.rectangle448:destroy(); self.rectangle448 = nil; end;
        if self.label186 ~= nil then self.label186:destroy(); self.label186 = nil; end;
        if self.rectangle394 ~= nil then self.rectangle394:destroy(); self.rectangle394 = nil; end;
        if self.rectangle180 ~= nil then self.rectangle180:destroy(); self.rectangle180 = nil; end;
        if self.rectangle507 ~= nil then self.rectangle507:destroy(); self.rectangle507 = nil; end;
        if self.rectangle517 ~= nil then self.rectangle517:destroy(); self.rectangle517 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.comboBox39 ~= nil then self.comboBox39:destroy(); self.comboBox39 = nil; end;
        if self.rectangle376 ~= nil then self.rectangle376:destroy(); self.rectangle376 = nil; end;
        if self.rectangle158 ~= nil then self.rectangle158:destroy(); self.rectangle158 = nil; end;
        if self.checkBox11 ~= nil then self.checkBox11:destroy(); self.checkBox11 = nil; end;
        if self.edit174 ~= nil then self.edit174:destroy(); self.edit174 = nil; end;
        if self.rectangle541 ~= nil then self.rectangle541:destroy(); self.rectangle541 = nil; end;
        if self.rectangle442 ~= nil then self.rectangle442:destroy(); self.rectangle442 = nil; end;
        if self.rectangle434 ~= nil then self.rectangle434:destroy(); self.rectangle434 = nil; end;
        if self.image12 ~= nil then self.image12:destroy(); self.image12 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle326 ~= nil then self.rectangle326:destroy(); self.rectangle326 = nil; end;
        if self.rectangle330 ~= nil then self.rectangle330:destroy(); self.rectangle330 = nil; end;
        if self.rectangle100 ~= nil then self.rectangle100:destroy(); self.rectangle100 = nil; end;
        if self.rectangle112 ~= nil then self.rectangle112:destroy(); self.rectangle112 = nil; end;
        if self.rectangle221 ~= nil then self.rectangle221:destroy(); self.rectangle221 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.rectangle255 ~= nil then self.rectangle255:destroy(); self.rectangle255 = nil; end;
        if self.rectangle530 ~= nil then self.rectangle530:destroy(); self.rectangle530 = nil; end;
        if self.rectangle415 ~= nil then self.rectangle415:destroy(); self.rectangle415 = nil; end;
        if self.rectangle353 ~= nil then self.rectangle353:destroy(); self.rectangle353 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.rectangle568 ~= nil then self.rectangle568:destroy(); self.rectangle568 = nil; end;
        if self.rectangle576 ~= nil then self.rectangle576:destroy(); self.rectangle576 = nil; end;
        if self.rectangle467 ~= nil then self.rectangle467:destroy(); self.rectangle467 = nil; end;
        if self.edit128 ~= nil then self.edit128:destroy(); self.edit128 = nil; end;
        if self.rectangle61 ~= nil then self.rectangle61:destroy(); self.rectangle61 = nil; end;
        if self.rectangle457 ~= nil then self.rectangle457:destroy(); self.rectangle457 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.rectangle309 ~= nil then self.rectangle309:destroy(); self.rectangle309 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.rectangle137 ~= nil then self.rectangle137:destroy(); self.rectangle137 = nil; end;
        if self.rectangle234 ~= nil then self.rectangle234:destroy(); self.rectangle234 = nil; end;
        if self.label154 ~= nil then self.label154:destroy(); self.label154 = nil; end;
        if self.rectangle293 ~= nil then self.rectangle293:destroy(); self.rectangle293 = nil; end;
        if self.rectangle283 ~= nil then self.rectangle283:destroy(); self.rectangle283 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.image29 ~= nil then self.image29:destroy(); self.image29 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.rectangle359 ~= nil then self.rectangle359:destroy(); self.rectangle359 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.edit126 ~= nil then self.edit126:destroy(); self.edit126 = nil; end;
        if self.rectangle459 ~= nil then self.rectangle459:destroy(); self.rectangle459 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.textEditor16 ~= nil then self.textEditor16:destroy(); self.textEditor16 = nil; end;
        if self.rectangle289 ~= nil then self.rectangle289:destroy(); self.rectangle289 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.rectangle409 ~= nil then self.rectangle409:destroy(); self.rectangle409 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.rectangle553 ~= nil then self.rectangle553:destroy(); self.rectangle553 = nil; end;
        if self.rectangle149 ~= nil then self.rectangle149:destroy(); self.rectangle149 = nil; end;
        if self.rectangle268 ~= nil then self.rectangle268:destroy(); self.rectangle268 = nil; end;
        if self.label108 ~= nil then self.label108:destroy(); self.label108 = nil; end;
        if self.label229 ~= nil then self.label229:destroy(); self.label229 = nil; end;
        if self.edit194 ~= nil then self.edit194:destroy(); self.edit194 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.edit186 ~= nil then self.edit186:destroy(); self.edit186 = nil; end;
        if self.rectangle470 ~= nil then self.rectangle470:destroy(); self.rectangle470 = nil; end;
        if self.edit133 ~= nil then self.edit133:destroy(); self.edit133 = nil; end;
        if self.image56 ~= nil then self.image56:destroy(); self.image56 = nil; end;
        if self.image44 ~= nil then self.image44:destroy(); self.image44 = nil; end;
        if self.rectangle403 ~= nil then self.rectangle403:destroy(); self.rectangle403 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.rectangle211 ~= nil then self.rectangle211:destroy(); self.rectangle211 = nil; end;
        if self.rectangle361 ~= nil then self.rectangle361:destroy(); self.rectangle361 = nil; end;
        if self.textEditor33 ~= nil then self.textEditor33:destroy(); self.textEditor33 = nil; end;
        if self.rectangle143 ~= nil then self.rectangle143:destroy(); self.rectangle143 = nil; end;
        if self.rectangle262 ~= nil then self.rectangle262:destroy(); self.rectangle262 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.label134 ~= nil then self.label134:destroy(); self.label134 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.label227 ~= nil then self.label227:destroy(); self.label227 = nil; end;
        if self.label237 ~= nil then self.label237:destroy(); self.label237 = nil; end;
        if self.rectangle198 ~= nil then self.rectangle198:destroy(); self.rectangle198 = nil; end;
        if self.rectangle57 ~= nil then self.rectangle57:destroy(); self.rectangle57 = nil; end;
        if self.rectangle597 ~= nil then self.rectangle597:destroy(); self.rectangle597 = nil; end;
        if self.label144 ~= nil then self.label144:destroy(); self.label144 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.edit139 ~= nil then self.edit139:destroy(); self.edit139 = nil; end;
        if self.label212 ~= nil then self.label212:destroy(); self.label212 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.image38 ~= nil then self.image38:destroy(); self.image38 = nil; end;
        if self.rectangle348 ~= nil then self.rectangle348:destroy(); self.rectangle348 = nil; end;
        if self.comboBox43 ~= nil then self.comboBox43:destroy(); self.comboBox43 = nil; end;
        if self.edit201 ~= nil then self.edit201:destroy(); self.edit201 = nil; end;
        if self.rectangle192 ~= nil then self.rectangle192:destroy(); self.rectangle192 = nil; end;
        if self.edit116 ~= nil then self.edit116:destroy(); self.edit116 = nil; end;
        if self.label113 ~= nil then self.label113:destroy(); self.label113 = nil; end;
        if self.edit211 ~= nil then self.edit211:destroy(); self.edit211 = nil; end;
        if self.edit94 ~= nil then self.edit94:destroy(); self.edit94 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.comboBox15 ~= nil then self.comboBox15:destroy(); self.comboBox15 = nil; end;
        if self.rectangle72 ~= nil then self.rectangle72:destroy(); self.rectangle72 = nil; end;
        if self.rectangle508 ~= nil then self.rectangle508:destroy(); self.rectangle508 = nil; end;
        if self.rectangle582 ~= nil then self.rectangle582:destroy(); self.rectangle582 = nil; end;
        if self.rectangle91 ~= nil then self.rectangle91:destroy(); self.rectangle91 = nil; end;
        if self.rectangle81 ~= nil then self.rectangle81:destroy(); self.rectangle81 = nil; end;
        if self.edit150 ~= nil then self.edit150:destroy(); self.edit150 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.edit162 ~= nil then self.edit162:destroy(); self.edit162 = nil; end;
        if self.rectangle480 ~= nil then self.rectangle480:destroy(); self.rectangle480 = nil; end;
        if self.rectangle525 ~= nil then self.rectangle525:destroy(); self.rectangle525 = nil; end;
        if self.image32 ~= nil then self.image32:destroy(); self.image32 = nil; end;
        if self.rectangle346 ~= nil then self.rectangle346:destroy(); self.rectangle346 = nil; end;
        if self.rectangle164 ~= nil then self.rectangle164:destroy(); self.rectangle164 = nil; end;
        if self.rectangle245 ~= nil then self.rectangle245:destroy(); self.rectangle245 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.rectangle279 ~= nil then self.rectangle279:destroy(); self.rectangle279 = nil; end;
        if self.label119 ~= nil then self.label119:destroy(); self.label119 = nil; end;
        if self.label183 ~= nil then self.label183:destroy(); self.label183 = nil; end;
        if self.rectangle399 ~= nil then self.rectangle399:destroy(); self.rectangle399 = nil; end;
        if self.rectangle187 ~= nil then self.rectangle187:destroy(); self.rectangle187 = nil; end;
        if self.rectangle78 ~= nil then self.rectangle78:destroy(); self.rectangle78 = nil; end;
        if self.rectangle502 ~= nil then self.rectangle502:destroy(); self.rectangle502 = nil; end;
        if self.rectangle122 ~= nil then self.rectangle122:destroy(); self.rectangle122 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.rectangle203 ~= nil then self.rectangle203:destroy(); self.rectangle203 = nil; end;
        if self.rectangle514 ~= nil then self.rectangle514:destroy(); self.rectangle514 = nil; end;
        if self.rectangle373 ~= nil then self.rectangle373:destroy(); self.rectangle373 = nil; end;
        if self.checkBox14 ~= nil then self.checkBox14:destroy(); self.checkBox14 = nil; end;
        if self.rectangle155 ~= nil then self.rectangle155:destroy(); self.rectangle155 = nil; end;
        if self.edit177 ~= nil then self.edit177:destroy(); self.edit177 = nil; end;
        if self.rectangle544 ~= nil then self.rectangle544:destroy(); self.rectangle544 = nil; end;
        if self.rectangle447 ~= nil then self.rectangle447:destroy(); self.rectangle447 = nil; end;
        if self.rectangle437 ~= nil then self.rectangle437:destroy(); self.rectangle437 = nil; end;
        if self.label189 ~= nil then self.label189:destroy(); self.label189 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.rectangle325 ~= nil then self.rectangle325:destroy(); self.rectangle325 = nil; end;
        if self.rectangle335 ~= nil then self.rectangle335:destroy(); self.rectangle335 = nil; end;
        if self.rectangle107 ~= nil then self.rectangle107:destroy(); self.rectangle107 = nil; end;
        if self.rectangle117 ~= nil then self.rectangle117:destroy(); self.rectangle117 = nil; end;
        if self.rectangle189 ~= nil then self.rectangle189:destroy(); self.rectangle189 = nil; end;
        if self.rectangle226 ~= nil then self.rectangle226:destroy(); self.rectangle226 = nil; end;
        if self.rectangle250 ~= nil then self.rectangle250:destroy(); self.rectangle250 = nil; end;
        if self.label170 ~= nil then self.label170:destroy(); self.label170 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.comboBox32 ~= nil then self.comboBox32:destroy(); self.comboBox32 = nil; end;
        if self.comboBox20 ~= nil then self.comboBox20:destroy(); self.comboBox20 = nil; end;
        if self.rectangle410 ~= nil then self.rectangle410:destroy(); self.rectangle410 = nil; end;
        if self.textEditor28 ~= nil then self.textEditor28:destroy(); self.textEditor28 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit106 ~= nil then self.edit106:destroy(); self.edit106 = nil; end;
        if self.rectangle119 ~= nil then self.rectangle119:destroy(); self.rectangle119 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.rectangle62 ~= nil then self.rectangle62:destroy(); self.rectangle62 = nil; end;
        if self.rectangle468 ~= nil then self.rectangle468:destroy(); self.rectangle468 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.rectangle382 ~= nil then self.rectangle382:destroy(); self.rectangle382 = nil; end;
        if self.label157 ~= nil then self.label157:destroy(); self.label157 = nil; end;
        if self.rectangle296 ~= nil then self.rectangle296:destroy(); self.rectangle296 = nil; end;
        if self.rectangle284 ~= nil then self.rectangle284:destroy(); self.rectangle284 = nil; end;
        if self.textEditor26 ~= nil then self.textEditor26:destroy(); self.textEditor26 = nil; end;
        if self.image26 ~= nil then self.image26:destroy(); self.image26 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rectangle561 ~= nil then self.rectangle561:destroy(); self.rectangle561 = nil; end;
        if self.rectangle571 ~= nil then self.rectangle571:destroy(); self.rectangle571 = nil; end;
        if self.edit199 ~= nil then self.edit199:destroy(); self.edit199 = nil; end;
        if self.edit123 ~= nil then self.edit123:destroy(); self.edit123 = nil; end;
        if self.rectangle302 ~= nil then self.rectangle302:destroy(); self.rectangle302 = nil; end;
        if self.rectangle310 ~= nil then self.rectangle310:destroy(); self.rectangle310 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.rectangle388 ~= nil then self.rectangle388:destroy(); self.rectangle388 = nil; end;
        if self.textEditor13 ~= nil then self.textEditor13:destroy(); self.textEditor13 = nil; end;
        if self.label126 ~= nil then self.label126:destroy(); self.label126 = nil; end;
        if self.label207 ~= nil then self.label207:destroy(); self.label207 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.rectangle550 ~= nil then self.rectangle550:destroy(); self.rectangle550 = nil; end;
        if self.rectangle47 ~= nil then self.rectangle47:destroy(); self.rectangle47 = nil; end;
        if self.edit193 ~= nil then self.edit193:destroy(); self.edit193 = nil; end;
        if self.edit183 ~= nil then self.edit183:destroy(); self.edit183 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.label198 ~= nil then self.label198:destroy(); self.label198 = nil; end;
        if self.edit148 ~= nil then self.edit148:destroy(); self.edit148 = nil; end;
        if self.rectangle473 ~= nil then self.rectangle473:destroy(); self.rectangle473 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.rectangle400 ~= nil then self.rectangle400:destroy(); self.rectangle400 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.rectangle214 ~= nil then self.rectangle214:destroy(); self.rectangle214 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.label133 ~= nil then self.label133:destroy(); self.label133 = nil; end;
        if self.label222 ~= nil then self.label222:destroy(); self.label222 = nil; end;
        if self.label230 ~= nil then self.label230:destroy(); self.label230 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.label196 ~= nil then self.label196:destroy(); self.label196 = nil; end;
        if self.rectangle52 ~= nil then self.rectangle52:destroy(); self.rectangle52 = nil; end;
        if self.rectangle594 ~= nil then self.rectangle594:destroy(); self.rectangle594 = nil; end;
        if self.edit142 ~= nil then self.edit142:destroy(); self.edit142 = nil; end;
        if self.edit134 ~= nil then self.edit134:destroy(); self.edit134 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label149 ~= nil then self.label149:destroy(); self.label149 = nil; end;
        if self.rectangle479 ~= nil then self.rectangle479:destroy(); self.rectangle479 = nil; end;
        if self.rectangle366 ~= nil then self.rectangle366:destroy(); self.rectangle366 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.rectangle429 ~= nil then self.rectangle429:destroy(); self.rectangle429 = nil; end;
        if self.comboBox40 ~= nil then self.comboBox40:destroy(); self.comboBox40 = nil; end;
        if self.edit212 ~= nil then self.edit212:destroy(); self.edit212 = nil; end;
        if self.rectangle169 ~= nil then self.rectangle169:destroy(); self.rectangle169 = nil; end;
        if self.rectangle197 ~= nil then self.rectangle197:destroy(); self.rectangle197 = nil; end;
        if self.rectangle248 ~= nil then self.rectangle248:destroy(); self.rectangle248 = nil; end;
        if self.edit115 ~= nil then self.edit115:destroy(); self.edit115 = nil; end;
        if self.label168 ~= nil then self.label168:destroy(); self.label168 = nil; end;
        if self.edit91 ~= nil then self.edit91:destroy(); self.edit91 = nil; end;
        if self.comboBox18 ~= nil then self.comboBox18:destroy(); self.comboBox18 = nil; end;
        if self.rectangle581 ~= nil then self.rectangle581:destroy(); self.rectangle581 = nil; end;
        if self.rectangle94 ~= nil then self.rectangle94:destroy(); self.rectangle94 = nil; end;
        if self.rectangle86 ~= nil then self.rectangle86:destroy(); self.rectangle86 = nil; end;
        if self.edit157 ~= nil then self.edit157:destroy(); self.edit157 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.rectangle427 ~= nil then self.rectangle427:destroy(); self.rectangle427 = nil; end;
        if self.edit167 ~= nil then self.edit167:destroy(); self.edit167 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.image31 ~= nil then self.image31:destroy(); self.image31 = nil; end;
        if self.rectangle520 ~= nil then self.rectangle520:destroy(); self.rectangle520 = nil; end;
        if self.rectangle341 ~= nil then self.rectangle341:destroy(); self.rectangle341 = nil; end;
        if self.label219 ~= nil then self.label219:destroy(); self.label219 = nil; end;
        if self.rectangle167 ~= nil then self.rectangle167:destroy(); self.rectangle167 = nil; end;
        if self.rectangle177 ~= nil then self.rectangle177:destroy(); self.rectangle177 = nil; end;
        if self.rectangle246 ~= nil then self.rectangle246:destroy(); self.rectangle246 = nil; end;
        if self.rectangle274 ~= nil then self.rectangle274:destroy(); self.rectangle274 = nil; end;
        if self.label114 ~= nil then self.label114:destroy(); self.label114 = nil; end;
        if self.label162 ~= nil then self.label162:destroy(); self.label162 = nil; end;
        if self.label243 ~= nil then self.label243:destroy(); self.label243 = nil; end;
        if self.checkBox5 ~= nil then self.checkBox5:destroy(); self.checkBox5 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.edit218 ~= nil then self.edit218:destroy(); self.edit218 = nil; end;
        if self.comboBox12 ~= nil then self.comboBox12:destroy(); self.comboBox12 = nil; end;
        if self.rectangle501 ~= nil then self.rectangle501:destroy(); self.rectangle501 = nil; end;
        if self.rectangle511 ~= nil then self.rectangle511:destroy(); self.rectangle511 = nil; end;
        if self.rectangle125 ~= nil then self.rectangle125:destroy(); self.rectangle125 = nil; end;
        if self.comboBox7 ~= nil then self.comboBox7:destroy(); self.comboBox7 = nil; end;
        if self.rectangle88 ~= nil then self.rectangle88:destroy(); self.rectangle88 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.rectangle204 ~= nil then self.rectangle204:destroy(); self.rectangle204 = nil; end;
        if self.edit159 ~= nil then self.edit159:destroy(); self.edit159 = nil; end;
        if self.rectangle370 ~= nil then self.rectangle370:destroy(); self.rectangle370 = nil; end;
        if self.rectangle487 ~= nil then self.rectangle487:destroy(); self.rectangle487 = nil; end;
        if self.rectangle152 ~= nil then self.rectangle152:destroy(); self.rectangle152 = nil; end;
        if self.rectangle497 ~= nil then self.rectangle497:destroy(); self.rectangle497 = nil; end;
        if self.checkBox17 ~= nil then self.checkBox17:destroy(); self.checkBox17 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.rectangle444 ~= nil then self.rectangle444:destroy(); self.rectangle444 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit109 ~= nil then self.edit109:destroy(); self.edit109 = nil; end;
        if self.image18 ~= nil then self.image18:destroy(); self.image18 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.rectangle328 ~= nil then self.rectangle328:destroy(); self.rectangle328 = nil; end;
        if self.rectangle390 ~= nil then self.rectangle390:destroy(); self.rectangle390 = nil; end;
        if self.rectangle432 ~= nil then self.rectangle432:destroy(); self.rectangle432 = nil; end;
        if self.rectangle114 ~= nil then self.rectangle114:destroy(); self.rectangle114 = nil; end;
        if self.rectangle253 ~= nil then self.rectangle253:destroy(); self.rectangle253 = nil; end;
        if self.label177 ~= nil then self.label177:destroy(); self.label177 = nil; end;
        if self.tab8 ~= nil then self.tab8:destroy(); self.tab8 = nil; end;
        if self.comboBox9 ~= nil then self.comboBox9:destroy(); self.comboBox9 = nil; end;
        if self.comboBox35 ~= nil then self.comboBox35:destroy(); self.comboBox35 = nil; end;
        if self.comboBox25 ~= nil then self.comboBox25:destroy(); self.comboBox25 = nil; end;
        if self.edit170 ~= nil then self.edit170:destroy(); self.edit170 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit103 ~= nil then self.edit103:destroy(); self.edit103 = nil; end;
        if self.image16 ~= nil then self.image16:destroy(); self.image16 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.rectangle322 ~= nil then self.rectangle322:destroy(); self.rectangle322 = nil; end;
        if self.rectangle438 ~= nil then self.rectangle438:destroy(); self.rectangle438 = nil; end;
        if self.rectangle259 ~= nil then self.rectangle259:destroy(); self.rectangle259 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.label179 ~= nil then self.label179:destroy(); self.label179 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.rectangle385 ~= nil then self.rectangle385:destroy(); self.rectangle385 = nil; end;
        if self.rectangle299 ~= nil then self.rectangle299:destroy(); self.rectangle299 = nil; end;
        if self.rectangle534 ~= nil then self.rectangle534:destroy(); self.rectangle534 = nil; end;
        if self.rectangle419 ~= nil then self.rectangle419:destroy(); self.rectangle419 = nil; end;
        if self.label129 ~= nil then self.label129:destroy(); self.label129 = nil; end;
        if self.textEditor21 ~= nil then self.textEditor21:destroy(); self.textEditor21 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.image23 ~= nil then self.image23:destroy(); self.image23 = nil; end;
        if self.rectangle357 ~= nil then self.rectangle357:destroy(); self.rectangle357 = nil; end;
        if self.label208 ~= nil then self.label208:destroy(); self.label208 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle564 ~= nil then self.rectangle564:destroy(); self.rectangle564 = nil; end;
        if self.rectangle572 ~= nil then self.rectangle572:destroy(); self.rectangle572 = nil; end;
        if self.rectangle463 ~= nil then self.rectangle463:destroy(); self.rectangle463 = nil; end;
        if self.rectangle453 ~= nil then self.rectangle453:destroy(); self.rectangle453 = nil; end;
        if self.rectangle65 ~= nil then self.rectangle65:destroy(); self.rectangle65 = nil; end;
        if self.rectangle305 ~= nil then self.rectangle305:destroy(); self.rectangle305 = nil; end;
        if self.rectangle315 ~= nil then self.rectangle315:destroy(); self.rectangle315 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.rectangle133 ~= nil then self.rectangle133:destroy(); self.rectangle133 = nil; end;
        if self.rectangle230 ~= nil then self.rectangle230:destroy(); self.rectangle230 = nil; end;
        if self.label150 ~= nil then self.label150:destroy(); self.label150 = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label123 ~= nil then self.label123:destroy(); self.label123 = nil; end;
        if self.label202 ~= nil then self.label202:destroy(); self.label202 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.rectangle555 ~= nil then self.rectangle555:destroy(); self.rectangle555 = nil; end;
        if self.rectangle44 ~= nil then self.rectangle44:destroy(); self.rectangle44 = nil; end;
        if self.rectangle578 ~= nil then self.rectangle578:destroy(); self.rectangle578 = nil; end;
        if self.edit180 ~= nil then self.edit180:destroy(); self.edit180 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.rectangle139 ~= nil then self.rectangle139:destroy(); self.rectangle139 = nil; end;
        if self.rectangle476 ~= nil then self.rectangle476:destroy(); self.rectangle476 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.rectangle217 ~= nil then self.rectangle217:destroy(); self.rectangle217 = nil; end;
        if self.edit220 ~= nil then self.edit220:destroy(); self.edit220 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.label191 ~= nil then self.label191:destroy(); self.label191 = nil; end;
        if self.checkBox22 ~= nil then self.checkBox22:destroy(); self.checkBox22 = nil; end;
        if self.rectangle51 ~= nil then self.rectangle51:destroy(); self.rectangle51 = nil; end;
        if self.rectangle591 ~= nil then self.rectangle591:destroy(); self.rectangle591 = nil; end;
        if self.edit147 ~= nil then self.edit147:destroy(); self.edit147 = nil; end;
        if self.edit137 ~= nil then self.edit137:destroy(); self.edit137 = nil; end;
        if self.image52 ~= nil then self.image52:destroy(); self.image52 = nil; end;
        if self.image40 ~= nil then self.image40:destroy(); self.image40 = nil; end;
        if self.rectangle407 ~= nil then self.rectangle407:destroy(); self.rectangle407 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.rectangle365 ~= nil then self.rectangle365:destroy(); self.rectangle365 = nil; end;
        if self.textEditor37 ~= nil then self.textEditor37:destroy(); self.textEditor37 = nil; end;
        if self.rectangle147 ~= nil then self.rectangle147:destroy(); self.rectangle147 = nil; end;
        if self.rectangle266 ~= nil then self.rectangle266:destroy(); self.rectangle266 = nil; end;
        if self.label138 ~= nil then self.label138:destroy(); self.label138 = nil; end;
        if self.rectangle194 ~= nil then self.rectangle194:destroy(); self.rectangle194 = nil; end;
        if self.edit110 ~= nil then self.edit110:destroy(); self.edit110 = nil; end;
        if self.label140 ~= nil then self.label140:destroy(); self.label140 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.edit168 ~= nil then self.edit168:destroy(); self.edit168 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.rectangle523 ~= nil then self.rectangle523:destroy(); self.rectangle523 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.rectangle420 ~= nil then self.rectangle420:destroy(); self.rectangle420 = nil; end;
        if self.rectangle498 ~= nil then self.rectangle498:destroy(); self.rectangle498 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.label216 ~= nil then self.label216:destroy(); self.label216 = nil; end;
        if self.edit205 ~= nil then self.edit205:destroy(); self.edit205 = nil; end;
        if self.edit215 ~= nil then self.edit215:destroy(); self.edit215 = nil; end;
        if self.rectangle162 ~= nil then self.rectangle162:destroy(); self.rectangle162 = nil; end;
        if self.rectangle170 ~= nil then self.rectangle170:destroy(); self.rectangle170 = nil; end;
        if self.rectangle243 ~= nil then self.rectangle243:destroy(); self.rectangle243 = nil; end;
        if self.rectangle273 ~= nil then self.rectangle273:destroy(); self.rectangle273 = nil; end;
        if self.label117 ~= nil then self.label117:destroy(); self.label117 = nil; end;
        if self.label167 ~= nil then self.label167:destroy(); self.label167 = nil; end;
        if self.label246 ~= nil then self.label246:destroy(); self.label246 = nil; end;
        if self.edit98 ~= nil then self.edit98:destroy(); self.edit98 = nil; end;
        if self.checkBox6 ~= nil then self.checkBox6:destroy(); self.checkBox6 = nil; end;
        if self.comboBox11 ~= nil then self.comboBox11:destroy(); self.comboBox11 = nil; end;
        if self.rectangle76 ~= nil then self.rectangle76:destroy(); self.rectangle76 = nil; end;
        if self.rectangle128 ~= nil then self.rectangle128:destroy(); self.rectangle128 = nil; end;
        if self.comboBox4 ~= nil then self.comboBox4:destroy(); self.comboBox4 = nil; end;
        if self.rectangle209 ~= nil then self.rectangle209:destroy(); self.rectangle209 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.rectangle484 ~= nil then self.rectangle484:destroy(); self.rectangle484 = nil; end;
        if self.rectangle492 ~= nil then self.rectangle492:destroy(); self.rectangle492 = nil; end;
        if self.rectangle586 ~= nil then self.rectangle586:destroy(); self.rectangle586 = nil; end;
        if self.image36 ~= nil then self.image36:destroy(); self.image36 = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.rectangle449 ~= nil then self.rectangle449:destroy(); self.rectangle449 = nil; end;
        if self.label187 ~= nil then self.label187:destroy(); self.label187 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.rectangle395 ~= nil then self.rectangle395:destroy(); self.rectangle395 = nil; end;
        if self.rectangle109 ~= nil then self.rectangle109:destroy(); self.rectangle109 = nil; end;
        if self.rectangle228 ~= nil then self.rectangle228:destroy(); self.rectangle228 = nil; end;
        if self.rectangle183 ~= nil then self.rectangle183:destroy(); self.rectangle183 = nil; end;
        if self.rectangle506 ~= nil then self.rectangle506:destroy(); self.rectangle506 = nil; end;
        if self.rectangle518 ~= nil then self.rectangle518:destroy(); self.rectangle518 = nil; end;
        if self.comboBox38 ~= nil then self.comboBox38:destroy(); self.comboBox38 = nil; end;
        if self.comboBox26 ~= nil then self.comboBox26:destroy(); self.comboBox26 = nil; end;
        if self.rectangle159 ~= nil then self.rectangle159:destroy(); self.rectangle159 = nil; end;
        if self.rectangle377 ~= nil then self.rectangle377:destroy(); self.rectangle377 = nil; end;
        if self.checkBox10 ~= nil then self.checkBox10:destroy(); self.checkBox10 = nil; end;
        if self.edit173 ~= nil then self.edit173:destroy(); self.edit173 = nil; end;
        if self.rectangle540 ~= nil then self.rectangle540:destroy(); self.rectangle540 = nil; end;
        if self.rectangle443 ~= nil then self.rectangle443:destroy(); self.rectangle443 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit100 ~= nil then self.edit100:destroy(); self.edit100 = nil; end;
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.rectangle321 ~= nil then self.rectangle321:destroy(); self.rectangle321 = nil; end;
        if self.rectangle331 ~= nil then self.rectangle331:destroy(); self.rectangle331 = nil; end;
        if self.rectangle103 ~= nil then self.rectangle103:destroy(); self.rectangle103 = nil; end;
        if self.rectangle113 ~= nil then self.rectangle113:destroy(); self.rectangle113 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.rectangle68 ~= nil then self.rectangle68:destroy(); self.rectangle68 = nil; end;
        if self.rectangle222 ~= nil then self.rectangle222:destroy(); self.rectangle222 = nil; end;
        if self.rectangle254 ~= nil then self.rectangle254:destroy(); self.rectangle254 = nil; end;
        if self.rectangle531 ~= nil then self.rectangle531:destroy(); self.rectangle531 = nil; end;
        if self.rectangle414 ~= nil then self.rectangle414:destroy(); self.rectangle414 = nil; end;
        if self.edit179 ~= nil then self.edit179:destroy(); self.edit179 = nil; end;
        if self.image20 ~= nil then self.image20:destroy(); self.image20 = nil; end;
        if self.rectangle350 ~= nil then self.rectangle350:destroy(); self.rectangle350 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.rectangle567 ~= nil then self.rectangle567:destroy(); self.rectangle567 = nil; end;
        if self.rectangle577 ~= nil then self.rectangle577:destroy(); self.rectangle577 = nil; end;
        if self.rectangle464 ~= nil then self.rectangle464:destroy(); self.rectangle464 = nil; end;
        if self.edit129 ~= nil then self.edit129:destroy(); self.edit129 = nil; end;
        if self.rectangle66 ~= nil then self.rectangle66:destroy(); self.rectangle66 = nil; end;
        if self.rectangle456 ~= nil then self.rectangle456:destroy(); self.rectangle456 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle308 ~= nil then self.rectangle308:destroy(); self.rectangle308 = nil; end;
        if self.rectangle316 ~= nil then self.rectangle316:destroy(); self.rectangle316 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.rectangle134 ~= nil then self.rectangle134:destroy(); self.rectangle134 = nil; end;
        if self.rectangle237 ~= nil then self.rectangle237:destroy(); self.rectangle237 = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.rectangle292 ~= nil then self.rectangle292:destroy(); self.rectangle292 = nil; end;
        if self.rectangle280 ~= nil then self.rectangle280:destroy(); self.rectangle280 = nil; end;
        if self.label153 ~= nil then self.label153:destroy(); self.label153 = nil; end;
        if self.label120 ~= nil then self.label120:destroy(); self.label120 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.label201 ~= nil then self.label201:destroy(); self.label201 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.edit127 ~= nil then self.edit127:destroy(); self.edit127 = nil; end;
        if self.rectangle458 ~= nil then self.rectangle458:destroy(); self.rectangle458 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.rectangle239 ~= nil then self.rectangle239:destroy(); self.rectangle239 = nil; end;
        if self.label159 ~= nil then self.label159:destroy(); self.label159 = nil; end;
        if self.textEditor17 ~= nil then self.textEditor17:destroy(); self.textEditor17 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.rectangle148 ~= nil then self.rectangle148:destroy(); self.rectangle148 = nil; end;
        if self.rectangle269 ~= nil then self.rectangle269:destroy(); self.rectangle269 = nil; end;
        if self.label109 ~= nil then self.label109:destroy(); self.label109 = nil; end;
        if self.label228 ~= nil then self.label228:destroy(); self.label228 = nil; end;
        if self.edit197 ~= nil then self.edit197:destroy(); self.edit197 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.edit187 ~= nil then self.edit187:destroy(); self.edit187 = nil; end;
        if self.edit144 ~= nil then self.edit144:destroy(); self.edit144 = nil; end;
        if self.edit132 ~= nil then self.edit132:destroy(); self.edit132 = nil; end;
        if self.image55 ~= nil then self.image55:destroy(); self.image55 = nil; end;
        if self.image45 ~= nil then self.image45:destroy(); self.image45 = nil; end;
        if self.rectangle404 ~= nil then self.rectangle404:destroy(); self.rectangle404 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.rectangle210 ~= nil then self.rectangle210:destroy(); self.rectangle210 = nil; end;
        if self.rectangle360 ~= nil then self.rectangle360:destroy(); self.rectangle360 = nil; end;
        if self.textEditor30 ~= nil then self.textEditor30:destroy(); self.textEditor30 = nil; end;
        if self.rectangle142 ~= nil then self.rectangle142:destroy(); self.rectangle142 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.rectangle263 ~= nil then self.rectangle263:destroy(); self.rectangle263 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label137 ~= nil then self.label137:destroy(); self.label137 = nil; end;
        if self.label226 ~= nil then self.label226:destroy(); self.label226 = nil; end;
        if self.label234 ~= nil then self.label234:destroy(); self.label234 = nil; end;
        if self.rectangle199 ~= nil then self.rectangle199:destroy(); self.rectangle199 = nil; end;
        if self.rectangle56 ~= nil then self.rectangle56:destroy(); self.rectangle56 = nil; end;
        if self.edit138 ~= nil then self.edit138:destroy(); self.edit138 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.label145 ~= nil then self.label145:destroy(); self.label145 = nil; end;
        if self.label213 ~= nil then self.label213:destroy(); self.label213 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmWeirdWizard()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmWeirdWizard();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmWeirdWizard = {
    newEditor = newfrmWeirdWizard, 
    new = newfrmWeirdWizard, 
    name = "frmWeirdWizard", 
    dataType = "br.com.firecast.ShadowOfTheWeirdWizard", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "Shadow of the Weird Wizard", 
    description=""};

frmWeirdWizard = _frmWeirdWizard;
Firecast.registrarForm(_frmWeirdWizard);
Firecast.registrarDataType(_frmWeirdWizard);

return _frmWeirdWizard;

require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFichaWW()
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
    obj:setFormType("sheetTemplate");
    obj:setDataType("br.com.czagalo_Weird_Wizard");
    obj:setTitle("Shadow of the Weird Wizard");
    obj:setName("frmFichaWW");

    obj.frmF01 = GUI.fromHandle(_obj_newObject("form"));
    obj.frmF01:setParent(obj);
    obj.frmF01:setFormType("sheetTemplate");
    obj.frmF01:setDataType("br.com.czagalo_Weird_Wizard_01");
    obj.frmF01:setTitle("Shadow of the Weird Wizard");
    obj.frmF01:setName("frmF01");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.frmF01);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(340);
    obj.layout1:setHeight(340);
    obj.layout1:setName("layout1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.layout1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(340);
    obj.image1:setHeight(340);
    obj.image1:setStyle("originalSize");
    obj.image1:setURL("01/img/fundo_tela_01.png");
    obj.image1:setName("image1");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.layout1);
    obj.image2:setLeft(0);
    obj.image2:setTop(0);
    obj.image2:setWidth(265);
    obj.image2:setHeight(333);
    obj.image2:setStyle("originalSize");
    obj.image2:setURL("01/img/borda_imagem_base.png");
    obj.image2:setName("image2");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setLeft(55);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setTop(51);
    obj.rectangle1:setWidth(164);
    obj.rectangle1:setHeight(213);
    obj.rectangle1:setName("rectangle1");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.rectangle1);
    obj.image3:setAlign("client");
    obj.image3:setStyle("autoFit");
    obj.image3:setField("Imagem");
    obj.image3:setEditable(true);
    lfm_setPropAsString(obj.image3, "animate",  "true");
    obj.image3:setName("image3");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.layout1);
    obj.image4:setLeft(53);
    obj.image4:setTop(43);
    obj.image4:setWidth(33);
    obj.image4:setHeight(183);
    obj.image4:setStyle("originalSize");
    obj.image4:setURL("01/img/borda_imagem_esquerda.png");
    obj.image4:setName("image4");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.layout1);
    obj.image5:setLeft(186);
    obj.image5:setTop(40);
    obj.image5:setWidth(33);
    obj.image5:setHeight(183);
    obj.image5:setStyle("originalSize");
    obj.image5:setURL("01/img/borda_imagem_direita.png");
    obj.image5:setName("image5");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.layout1);
    obj.image6:setLeft(65);
    obj.image6:setTop(40);
    obj.image6:setWidth(125);
    obj.image6:setHeight(89);
    obj.image6:setStyle("originalSize");
    obj.image6:setURL("01/img/borda_imagem_topo.png");
    obj.image6:setName("image6");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.layout1);
    obj.image7:setLeft(245);
    obj.image7:setTop(40);
    obj.image7:setWidth(71);
    obj.image7:setHeight(71);
    obj.image7:setStyle("originalSize");
    obj.image7:setURL("01/img/borda_atributos.png");
    obj.image7:setName("image7");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setFontColor("white");
    obj.button1:setFontSize(10);
    lfm_setPropAsString(obj.button1, "fontStyle",  "bold");
    obj.button1:setLeft(246);
    obj.button1:setTop(43);
    obj.button1:setText("FORÇA");
    obj.button1:setWidth(65);
    obj.button1:setHeight(18);
    obj.button1:setName("button1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setLeft(305);
    obj.rectangle2:setTop(37);
    obj.rectangle2:setWidth(30);
    obj.rectangle2:setHeight(30);
    obj.rectangle2:setColor("black");
    obj.rectangle2:setStrokeColor("white");
    obj.rectangle2:setStrokeSize(2);
    obj.rectangle2:setXradius(15);
    obj.rectangle2:setYradius(15);
    obj.rectangle2:setCornerType("round");
    obj.rectangle2:setName("rectangle2");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.layout1);
    obj.image8:setLeft(245);
    obj.image8:setTop(111);
    obj.image8:setWidth(71);
    obj.image8:setHeight(71);
    obj.image8:setStyle("originalSize");
    obj.image8:setURL("01/img/borda_atributos.png");
    obj.image8:setName("image8");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout1);
    obj.button2:setFontColor("white");
    obj.button2:setFontSize(10);
    lfm_setPropAsString(obj.button2, "fontStyle",  "bold");
    obj.button2:setLeft(246);
    obj.button2:setTop(114);
    obj.button2:setText("AGILIDADE");
    obj.button2:setWidth(65);
    obj.button2:setHeight(18);
    obj.button2:setName("button2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout1);
    obj.rectangle3:setLeft(305);
    obj.rectangle3:setTop(106);
    obj.rectangle3:setWidth(30);
    obj.rectangle3:setHeight(30);
    obj.rectangle3:setColor("black");
    obj.rectangle3:setStrokeColor("white");
    obj.rectangle3:setStrokeSize(2);
    obj.rectangle3:setXradius(15);
    obj.rectangle3:setYradius(15);
    obj.rectangle3:setCornerType("round");
    obj.rectangle3:setName("rectangle3");

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.layout1);
    obj.image9:setLeft(245);
    obj.image9:setTop(182);
    obj.image9:setWidth(71);
    obj.image9:setHeight(71);
    obj.image9:setStyle("originalSize");
    obj.image9:setURL("01/img/borda_atributos.png");
    obj.image9:setName("image9");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layout1);
    obj.button3:setFontColor("white");
    obj.button3:setFontSize(10);
    lfm_setPropAsString(obj.button3, "fontStyle",  "bold");
    obj.button3:setLeft(246);
    obj.button3:setTop(185);
    obj.button3:setText("INTELECTO");
    obj.button3:setWidth(65);
    obj.button3:setHeight(18);
    obj.button3:setName("button3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout1);
    obj.rectangle4:setLeft(305);
    obj.rectangle4:setTop(177);
    obj.rectangle4:setWidth(30);
    obj.rectangle4:setHeight(30);
    obj.rectangle4:setColor("black");
    obj.rectangle4:setStrokeColor("white");
    obj.rectangle4:setStrokeSize(2);
    obj.rectangle4:setXradius(15);
    obj.rectangle4:setYradius(15);
    obj.rectangle4:setCornerType("round");
    obj.rectangle4:setName("rectangle4");

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.layout1);
    obj.image10:setLeft(245);
    obj.image10:setTop(253);
    obj.image10:setWidth(71);
    obj.image10:setHeight(71);
    obj.image10:setStyle("originalSize");
    obj.image10:setURL("01/img/borda_atributos.png");
    obj.image10:setName("image10");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.layout1);
    obj.button4:setFontColor("white");
    obj.button4:setFontSize(10);
    lfm_setPropAsString(obj.button4, "fontStyle",  "bold");
    obj.button4:setLeft(246);
    obj.button4:setTop(256);
    obj.button4:setText("VONTADE");
    obj.button4:setWidth(65);
    obj.button4:setHeight(18);
    obj.button4:setName("button4");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout1);
    obj.rectangle5:setLeft(305);
    obj.rectangle5:setTop(248);
    obj.rectangle5:setWidth(30);
    obj.rectangle5:setHeight(30);
    obj.rectangle5:setColor("black");
    obj.rectangle5:setStrokeColor("white");
    obj.rectangle5:setStrokeSize(2);
    obj.rectangle5:setXradius(15);
    obj.rectangle5:setYradius(15);
    obj.rectangle5:setCornerType("round");
    obj.rectangle5:setName("rectangle5");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setTop(8);
    obj.label1:setLeft(10);
    obj.label1:setText("Nome");
    obj.label1:setFontColor("white");
    obj.label1:setFontSize(17);
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setHorzTextAlign("leading");
    obj.label1:setName("label1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setTop(28);
    obj.label2:setLeft(10);
    obj.label2:setText("Ancestralidade");
    obj.label2:setFontColor("red");
    obj.label2:setFontSize(15);
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setHorzTextAlign("leading");
    obj.label2:setName("label2");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.frmF01 ~= nil then self.frmF01:destroy(); self.frmF01 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFichaWW()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFichaWW();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFichaWW = {
    newEditor = newfrmFichaWW, 
    new = newfrmFichaWW, 
    name = "frmFichaWW", 
    dataType = "br.com.czagalo_Weird_Wizard", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Shadow of the Weird Wizard", 
    description=""};

frmFichaWW = _frmFichaWW;
Firecast.registrarForm(_frmFichaWW);
Firecast.registrarDataType(_frmFichaWW);

return _frmFichaWW;

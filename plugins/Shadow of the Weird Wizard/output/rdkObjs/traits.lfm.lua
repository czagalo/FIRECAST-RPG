require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmTalentos()
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
    obj:setName("frmTalentos");
    obj:setHeight(130);
    obj:setMargins({top=5,bottom=5});

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj);
    obj.rectangle1:setLeft(60);
    obj.rectangle1:setWidth(720);
    obj.rectangle1:setHeight(131);
    obj.rectangle1:setColor("#D5D5D5");
    obj.rectangle1:setStrokeColor("#49244F");
    obj.rectangle1:setStrokeSize(3);
    obj.rectangle1:setName("rectangle1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.rectangle1);
    obj.rectangle2:setLeft(0);
    obj.rectangle2:setTop(0);
    obj.rectangle2:setWidth(464);
    obj.rectangle2:setHeight(45);
    obj.rectangle2:setColor("#49244F");
    obj.rectangle2:setName("rectangle2");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle1);
    obj.edit1:setLeft(8);
    obj.edit1:setTop(7);
    obj.edit1:setWidth(715);
    obj.edit1:setFontSize(20);
    obj.edit1:setHeight(30);
    obj.edit1:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.edit1, "fontStyle", "bold");
    obj.edit1:setTransparent(true);
    obj.edit1:setField("talentoBeneficio");
    obj.edit1:setName("edit1");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.rectangle1);
    obj.textEditor1:setLeft(9);
    obj.textEditor1:setTop(40);
    obj.textEditor1:setWidth(710);
    obj.textEditor1:setFontSize(14);
    obj.textEditor1:setHeight(90);
    obj.textEditor1:setFontColor("#49244F");
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setField("descricaoTalentoBeneficio");
    obj.textEditor1:setName("textEditor1");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.rectangle1);
    obj.rectangle3:setLeft(465);
    obj.rectangle3:setTop(0);
    obj.rectangle3:setWidth(163);
    obj.rectangle3:setHeight(45);
    obj.rectangle3:setColor("#49244F");
    obj.rectangle3:setName("rectangle3");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.rectangle1);
    obj.comboBox1:setLeft(465);
    obj.comboBox1:setTop(12);
    obj.comboBox1:setItems({'Ancestralidade', 'Caminho de Novato', 'Caminho de Especialista', 'Caminho de Mestre', 'Mágico', 'Outro'});
    obj.comboBox1:setField("categoriaTalentoBeneficio");
    obj.comboBox1:setFontColor("#D5D5D5");
    obj.comboBox1:setTransparent(true);
    obj.comboBox1:setValue("Ancestralidade");
    obj.comboBox1:setWidth(163);
    obj.comboBox1:setName("comboBox1");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.rectangle1);
    obj.rectangle4:setLeft(629);
    obj.rectangle4:setTop(0);
    obj.rectangle4:setWidth(45);
    obj.rectangle4:setHeight(45);
    obj.rectangle4:setColor("#49244F");
    obj.rectangle4:setName("rectangle4");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.rectangle1);
    obj.label1:setLeft(629);
    obj.label1:setTop(7);
    obj.label1:setWidth(45);
    obj.label1:setHeight(20);
    obj.label1:setFontSize(40);
    obj.label1:setHorzTextAlign("center");
    obj.label1:setText("»");
    obj.label1:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label1, "fontStyle", "bold");
    obj.label1:setHitTest(true);
    obj.label1:setCursor("handPoint");
    obj.label1:setHint("Enviar no Chat");
    obj.label1:setName("label1");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.rectangle1);
    obj.rectangle5:setLeft(675);
    obj.rectangle5:setTop(0);
    obj.rectangle5:setWidth(45);
    obj.rectangle5:setHeight(45);
    obj.rectangle5:setColor("#49244F");
    obj.rectangle5:setName("rectangle5");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.rectangle1);
    obj.label2:setLeft(675);
    obj.label2:setTop(7);
    obj.label2:setWidth(45);
    obj.label2:setHeight(20);
    obj.label2:setFontSize(40);
    obj.label2:setHorzTextAlign("center");
    obj.label2:setText("-");
    obj.label2:setFontColor("#D5D5D5");
    lfm_setPropAsString(obj.label2, "fontStyle", "bold");
    obj.label2:setHitTest(true);
    obj.label2:setCursor("handPoint");
    obj.label2:setHint("Remover Talento");
    obj.label2:setName("label2");

    obj._e_event0 = obj.edit1:addEventListener("onChange",
        function ()
            if sheet.talentoBeneficio == nil then
                                          sheet.talentoBeneficio = "Talento"
                                    end
                                                                        
                                    if #sheet.talentoBeneficio > 47 then
                                          local delCaracteres = 46 - #sheet.talentoBeneficio
                                          sheet.talentoBeneficio = string.sub(sheet.talentoBeneficio, 1, delCaracteres)
                                    end
        end);

    obj._e_event1 = obj.label1:addEventListener("onClick",
        function (event)
            local talento = sheet.talentoBeneficio
                                                local descricao = sheet.descricaoTalentoBeneficio
            
                                                local mesaDeRPG = Firecast.getMesaDe(sheet)
                                                if sheet.talentoBeneficio ~= nil and sheet.descricaoTalentoBeneficio ~= nil then
                                                      mesaDeRPG.chat:enviarMensagem("---")
                                                      mesaDeRPG.chat:enviarMensagem("[§K2][§B]"..talento)
                                                      mesaDeRPG.chat:enviarMensagem("---")
                                                      mesaDeRPG.chat:enviarMensagem(descricao)
                                                      mesaDeRPG.chat:enviarMensagem("---")
                                                end
        end);

    obj._e_event2 = obj.label2:addEventListener("onClick",
        function (event)
            NDB.deleteNode(sheet);
        end);

    function obj:_releaseEvents()
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

        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmTalentos()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmTalentos();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmTalentos = {
    newEditor = newfrmTalentos, 
    new = newfrmTalentos, 
    name = "frmTalentos", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "", 
    description=""};

frmTalentos = _frmTalentos;
Firecast.registrarForm(_frmTalentos);

return _frmTalentos;

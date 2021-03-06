--
-- Author: zhangshunqiu    21102585@qq.com
-- Date: 2016-09-02 19:00:52
-- 火龙神殿
local ServerDragonView = class("ServerDragonView", BaseView)
function ServerDragonView:ctor(winTag,data,winconfig)
	 self.bg =  cc.LayerColor:create(cc.c4b(0,0,0,100))
    self.bg:setContentSize(display.width, display.height)
    self:addChild(self.bg)
    ServerDragonView.super.ctor(self,winTag,data,winconfig)
    
	-- self.root = cc.uiloader:load("resui/serverBossItem.ExportJson") --serverDarkWin
	-- self:addChild(self.root)

    self.root:setPosition((display.width-960)/2,(display.height-640)/2)

    self.closeBtn = self:seekNodeByName("closeBtn")
    self.closeBtn:setTouchEnabled(true)
    self.closeBtn:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
        if event.name == "began" then
            self.closeBtn:setScale(1.1)
        elseif event.name == "ended" then
            self.closeBtn:setScale(1)
           	 GlobalWinManger:closeWin(WinName.KFHLSDWEEKWIN)
        end
        return true
    end)
    --self.closeBtn:setVisible(isShowCloseBtn)

    -- self.ruleBtn = self:seekNodeByName("helpBtn")
    -- self.ruleBtn:setVisible(true)
    -- self.ruleBtn:setTouchEnabled(true)
    -- self.ruleBtn:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
    --     if event.name == "began" then
    --         self.ruleBtn:setScale(1.1)
    --         SoundManager:playClickSound()
    --     elseif event.name == "ended" then
    --         self.ruleBtn:setScale(1.0)

    --         -- if self.helpView == nil then
    --         -- 	self.helpView = require("app.modules.interService.InterServiseHelpView").new()
    --         -- 	self:addChild(self.helpView)
    --         -- end
    --         -- self.helpView:setVisible(true)
    --         GlobalMessage:alert({
    --             height = 450,
    --             enterTxt = "确定",
    --             backTxt= "取消",
    --             tipTxt = configHelper:getRuleByKey(19),
    --             tipShowMid = true,
    --             hideBackBtn = true,
    --           })
    --     end     
    --     return true
    -- end)

    self.enterBtn = self:seekNodeByName("enterBtn")
    self.enterBtn:setTouchEnabled(true)
    self.enterBtn:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
        if event.name == "began" then
            self.enterBtn:setScale(1.1)
        elseif event.name == "ended" then
            self.enterBtn:setScale(1)
            GlobalEventSystem:dispatchEvent(FightEvent.CHANG_SCENE, {sceneId = tonumber(self.config.activity_id)})
        end
        return true
    end)
    for i=1,6 do
        self["Item"..i] = self:seekNodeByName("Item"..i)
    end
    
end


function ServerDragonView:open(datas)
    self:setVisible(true)
    self.config = configHelper:getDarkHouseGoods(7)
    local goodsList = self.config.drop_list
    dump(goodsList)
    if self.prizeListItem == nil then  
        print("FF")
        self.prizeListItem = {}
        for i=1,6 do
            local vo = goodsList[i]
            dump(vo)
            local item = CommonItemCell.new()
            self["Item"..i]:addChild(item)
            item:setData({goods_id = vo[1], is_bind = vo[2], num = vo[3]})
            item:setCount(1)
            item:setPosition(40,40)
            self.prizeListItem[i] = item
        end
    end
end


function ServerDragonView:close()
    ServerDragonView.super.close(self)
end

--清理界面
function ServerDragonView:destory()
    if self.prizeListItem then
        for i=1,#self.prizeListItem do
            self.prizeListItem[i]:destory()
            if self.prizeListItem[i]:getParent() then
                self.prizeListItem[i]:getParent():removeChild(self.prizeListItem[i])
            end
        end
        self.prizeListItem = nil
    end
	
end

return ServerDragonView
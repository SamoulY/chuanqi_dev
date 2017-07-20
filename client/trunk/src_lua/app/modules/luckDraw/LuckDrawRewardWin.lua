--
-- Author: zhangshunqiu    21102585@qq.com
-- Date: 2016-05-13 16:20:25
-- 抽奖奖励
--
local LuckDrawRewardWin = class("LuckDrawRewardWin", BaseView)
function LuckDrawRewardWin:ctor(winTag,data,winconfig)
	
	self.bg =  cc.LayerColor:create(cc.c4b(0,0,0,100))
    self.bg:setContentSize(display.width, display.height)
	self:addChild(self.bg)
	
	self.root = cc.uiloader:load("resui/luckTurnPlateReward.ExportJson")
	self:addChild(self.root)

    self.root:setPosition((display.width-766)/2,(display.height-450)/2+50)

    self.closeBtn = self:seekNodeByName("closeBtn")
    self.closeBtn:setTouchEnabled(true)
    self.closeBtn:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
        if event.name == "began" then
            self.closeBtn:setScale(1.1)
        elseif event.name == "ended" then
            self.closeBtn:setScale(1)
           	self:setVisible(false)
        end
        return true
    end)

    self.mainLayer = self:seekNodeByName("mainLayer")

end


function LuckDrawRewardWin:open(datas)
    if self.prizeListItem then
        for i=1,#self.prizeListItem do
            self.prizeListItem[i]:destory()
            if self.prizeListItem[i]:getParent() then
                self.prizeListItem[i]:getParent():removeChild(self.prizeListItem[i])
            end
        end
    end
    self.prizeList = datas
    --[1] = {1, {{110064,1,2}}},
    self.prizeListItem = {

    }
    for i=1,#self.prizeList do
    --for i=1,10 do
        local item = CommonItemCell.new()
        self.mainLayer:addChild(item)
        item:setData(self.prizeList[i])
        item:setCount(self.prizeList[i].num)
        --item:setData(self.prizeList[1])
        --item:setCount(self.prizeList[1].num)
        item:setPosition(((i-1)%5)*90 + 45,180 - math.floor((i-1)/5)*80 - 60)
        self.prizeListItem[i] = item
    end
end



function LuckDrawRewardWin:close()
    if self.prizeListItem then
        for i=1,#self.prizeListItem do
            self.prizeListItem[i]:destory()
            if self.prizeListItem[i]:getParent() then
                self.prizeListItem[i]:getParent():removeChild(self.prizeListItem[i])
            end
        end
        self.prizeListItem = nil
    end
    LuckDrawRewardWin.super.close(self)
end


--清理界面
function LuckDrawRewardWin:destory()
	
end

return LuckDrawRewardWin
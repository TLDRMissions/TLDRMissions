local addonName = ...
local addon = _G[addonName]
local LibStub = addon.LibStub
local L = LibStub("AceLocale-3.0"):NewLocale("TLDRMissions", "zhTW")
if not L then return end

L["CompleteMissionButtonText"] = "完成已完成任務"
L["FollowerXPItems"] = "追隨者經驗物品"
L["PetCharms"] = "寵物幣"
L["AugmentRunes"] = "強化符文"
L["ReputationTokens"] = "聲望獎勵"
L["BonusFollowerXP"] = "額外追隨者經驗"
L["CraftingMaterials"] = "製造材料"
L["AnyMissionText"] = "然後，任何剩餘任務"
L["HardestOrEasiest"] = "最困難或最簡單的任務優先？"
L["Hardest"] = "最困難"
L["Easiest"] = "最簡單"
L["FewestOrMost"] = "喜好最少或最多追隨者？"
L["Fewest"] = "最少"
L["Most"] = "最多"
L["LowestOrHighest"] = "最低等或最高等追隨者優先？"
L["Lowest"] = "最低等"
L["Highest"] = "最高等"
L["MinimumTroops"] = "最少部隊數:"
L["FollowerXPSpecialTreatment"] = "追隨者經驗任務的特別處理？"
L["FollowerXPSpecialTreatmentTooltip"] = "獎勵追隨者經驗值的任務將嘗試僅放入60級以下的追隨者，可在下拉選單中選擇派遣追隨者數量"
L["LevelRestriction"] = "不要使用低於任務等級多少等的追隨者:"
L["Calculate"] = "計算"
L["Skip"] = "跳過"
L["Empty"] = "<空位>"
L["AllSimsFailedError"] = "沒找到成功的模擬"
L["Simulations"] = "模擬"
L["MissionsAboveRestrictionsError"] = "沒找到符合您條件的任務"
L["FollowersUnavailableError"] = "沒有可用的追隨者"
L["Calculating"] = "計算中..."
L["RestrictedFollowersUnavailableError"] = "沒有符合限制的追隨者可用"
L["NotEnoughAnimaError"] = "您沒有足夠的靈魄"
L["MissonsSentSuccess"] = "全部任務已派發"
L["MissionsSentPartial"] = "已派發%d任務; 跳過%d任務; %d任務失敗; 有%d可用追隨者"
L["MissionSkipped"] = "任務已被跳過"
L["RemainingMissionsAboveRestrictionsError"] = "沒找到符合您設定的任務"
L["NotYet"] = "還沒有!"
L["CompleteMissionsButtonText"] = "完成已完成任務"
L["DiscrepancyError"] = "TLDRMissions: 喔不，一個派發的任務失敗了！請登出，然後寄給作者你的記錄檔來查證。"
L["AnimaCostLimit"] = "靈魄花費限制:"
L["AnimaCostLimitError"] = "沒找到符合靈魄花費限制的任務"
L["RunecarverRewards"] = "橘裝製作貨幣"
L["CampaignProgress"] = "戰役任務進度"
L["SimsPerFrameLabel"] = "每回合模擬數:"
L["SimsPerFrameTooltip"] = "|cFFFF0000警告：增加的風險請自負|r每個框架運行多少次模擬。增加這將降低您的FPS。如果您開始出現逾時錯誤或遊戲崩潰，請降低此值！"
L["AutoShowLabel"] = "總是顯示此介面"
L["LowTimeWarning"] = "任務逾期於 %d分, %d秒後"
L["AllowProcessing"] = "當離開任務桌時繼續處理"
L["AllowProcessingTooltip"] = "當您離開任務桌時，插件將繼續模擬，直到它用盡模擬，或是等您返回並停止它。"
L["AutoStart"] = "一旦計算後立即開始任務"
L["Profiles"] = "設定檔"
L["MaxSimulationsLabel"] = "每個任務的最大模擬數"
L["DurationLabel"] = "任務持續時間:"
L["DurationTimeSelectedLabel"] = "%d - %d 小時"
L["FollowerXPAlgorithm1Label"] = "所有低等級追隨者，最低等級優先"
L["FollowerXPAlgorithm2Label"] = "所有低等級追隨者，最高等級優先"
L["FollowerXPAlgorithm3Label"] = "只需要提升部隊等級的追隨者"
L["SacrificeLabel"] = "然後，派遣追隨者失敗來獲取經驗值"
L["SacrificeMissionReport"] = "犧牲追隨者獲取 %d 經驗值"
L["FollowerZeroHPError"] = "你有一個追隨者為0血量！稍候10秒讓其治療到1血量然後再次嘗試。"
L["MissionCounter"] = "任務 (%d/%d): %s"
L["InstructionsLabel"] = "選擇您想要的獎勵，根據它們的重要性："

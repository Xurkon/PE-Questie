---@type table
local EbonholdDB = QuestieLoader:CreateModule("EbonholdDB")

EbonholdDB.questData = EbonholdDB.questData or {
    -- Quest 50026: Elemental Balance
    -- Started by object 600600, kills of NPCs 17156 or 17157 count (both are elementals)
    [50026] = {
        [1] = "Elemental Balance", -- Quest name
        [2] = { nil, { 600600 } }, -- startedBy: {{npcIds}, {objectIds}, {itemIds}}
        [4] = 67,                  -- Quest level
        [5] = 64,                  -- Min level
        [6] = 3518,                -- Zone (Nagrand)
        [8] = {
            "This is a custom objective. Upon completion, you will automatically receive the assigned reward. If you die, the quest will be removed from your quest log. This quest is automatically rewarded upon completion.",
            "Kill 30 Elementals in Nagrand"
        },
        [10] = {
            nil,                                                                                            -- [1] creatureObjective (not used)
            nil,                                                                                            -- [2] objectObjective (not used)
            nil,                                                                                            -- [3] itemObjective (not used)
            nil,                                                                                            -- [4] reputationObjective (not used)
            {                                                                                               -- [5] killCreditObjective
                {
                    { 17153, 17154, 17155, 17156, 17157, 17159, 17160, 18062, 22309, 22310, 22311, 22313 }, -- IdList: all elemental types
                    17157,                                                                                  -- RootId: representative NPC
                    "Shattered Rumbler slain"                                                               -- Text
                }
            }
        },
        [17] = nil, -- XP reward
        [30] = 60,  -- Group size
    },

    -- Quest 50085: Savage Heights
    -- Kill 75 beasts in Blade's Edge Mountains
    [50085] = {
        [1] = "Savage Heights",    -- Quest name
        [2] = { nil, { 600600 } }, -- startedBy: {{npcIds}, {objectIds}, {itemIds}}
        [4] = 70,                  -- Quest level
        [5] = 67,                  -- Min level
        [6] = 3522,                -- Zone (Blade's Edge Mountains)
        [8] = {
            "This is a custom objective. Upon completion, you will automatically receive the assigned reward. If you die, the quest will be removed from your quest log. This quest is automatically rewarded upon completion.",
            "Kill 75 Beasts in Blade's Edge Mountains"
        },
        [10] = {
            nil, -- [1] creatureObjective (not used)
            nil, -- [2] objectObjective (not used)
            nil, -- [3] itemObjective (not used)
            nil, -- [4] reputationObjective (not used)
            {    -- [5] killCreditObjective
                {
                    -- All 47 beast-type NPCs in Blade's Edge Mountains
                    { 10204, 20058, 20109, 20327, 20330, 20714, 20728, 20729, 20747, 20748, 20749, 20751, 20924, 20925, 20987, 20998, 21022, 21033, 21042, 21123, 21124, 21373, 21423, 21470, 21796, 21839, 21952, 21956, 22044, 22052, 22110, 22114, 22123, 22132, 22135, 22136, 22141, 22142, 22181, 22268, 22490, 22492, 22498, 22987, 23036, 23343, 23380 },
                    20728, -- RootId: Bladespire Raptor (representative beast)
                    "Beast slain"
                }
            }
        },
        [17] = nil, -- XP reward
        [30] = 75,  -- Kill count
    },

    -- Quest 50086: Unstable Fauna
    -- Kill 75 beasts in Netherstorm
    [50086] = {
        [1] = "Unstable Fauna",    -- Quest name
        [2] = { nil, { 600600 } }, -- startedBy: {{npcIds}, {objectIds}, {itemIds}}
        [4] = 70,                  -- Quest level
        [5] = 67,                  -- Min level
        [6] = 3523,                -- Zone (Netherstorm)
        [8] = {
            "This is a custom objective. Upon completion, you will automatically receive the assigned reward. If you die, the quest will be removed from your quest log. This quest is automatically rewarded upon completion.",
            "Kill 75 Beasts in Netherstorm"
        },
        [10] = {
            nil, -- [1] creatureObjective (not used)
            nil, -- [2] objectObjective (not used)
            nil, -- [3] itemObjective (not used)
            nil, -- [4] reputationObjective (not used)
            {    -- [5] killCreditObjective
                {
                    -- All 18 beast-type NPCs in Netherstorm
                    { 18879, 18880, 18883, 18884, 20415, 20607, 20610, 20611, 20618, 20634, 20671, 20673, 20773, 20775, 20777, 20931, 20932, 21005 },
                    18879, -- RootId: Phase Hunter (representative beast)
                    "Beast slain"
                }
            }
        },
        [17] = nil, -- XP reward
        [30] = 75,  -- Kill count
    },

    -- Quest 50201: Dragonblight Trophy
    -- Kill 1 rare in Dragonblight
    [50201] = {
        [1] = "Dragonblight Trophy", -- Quest name
        [2] = { nil, { 600600 } },   -- startedBy: {{npcIds}, {objectIds}, {itemIds}}
        [4] = 75,                    -- Quest level
        [5] = 71,                    -- Min level
        [6] = 65,                    -- Zone (Dragonblight)
        [8] = {
            "This is a custom objective. Upon completion, you will automatically receive the assigned reward. If you die, the quest will be removed from your quest log. This quest is automatically rewarded upon completion.",
            "Kill 1 Rare in Dragonblight"
        },
        [10] = {
            nil, -- [1] creatureObjective (not used)
            nil, -- [2] objectObjective (not used)
            nil, -- [3] itemObjective (not used)
            nil, -- [4] reputationObjective (not used)
            {    -- [5] killCreditObjective
                {
                    -- 3 rare NPCs in Dragonblight (already in WotLK DB with spawns)
                    { 32417, 32409, 32400 }, -- Scarlet Highlord Daion, Crazed Indu'le Survivor, Tukemuth
                    32417,                   -- RootId: Scarlet Highlord Daion (representative rare)
                    "Rare slain"
                }
            }
        },
        [17] = nil, -- XP reward
        [30] = 1,   -- Kill count (only 1 rare needed)
    },

    -- Quest 50160: Redridge Trophy
    -- Kill 1 rare in Redridge Mountains
    [50160] = {
        [1] = "Redridge Trophy",   -- Quest name
        [2] = { nil, { 600600 } }, -- startedBy: {{npcIds}, {objectIds}, {itemIds}}
        [4] = 17,                  -- Required level (Min level)
        [5] = 25,                  -- Quest level
        [17] = 44,                 -- Zone (Redridge Mountains)
        [8] = {
            "This is a custom objective. Upon completion, you will automatically receive the assigned reward. If you die, the quest will be removed from your quest log. This quest is automatically rewarded upon completion.",
            "Kill 1 Rare in Redridge Mountains"
        },
        [10] = {
            nil, -- [1] creatureObjective (not used)
            nil, -- [2] objectObjective (not used)
            nil, -- [3] itemObjective (not used)
            nil, -- [4] reputationObjective (not used)
            {    -- [5] killCreditObjective
                {
                    -- Redridge Rares
                    { 14271, 616, 14270, 584, 14272, 14273, 947, 14269 },
                    14271, -- RootId: Ribchaser (representative rare)
                    "Rare slain"
                }
            }
        },

        [30] = 1, -- Kill count
    },

    -- Quest 50192: Zangarmarsh Trophy
    -- Kill 1 rare in Zangarmarsh
    [50192] = {
        [1] = "Zangarmarsh Trophy", -- Quest name
        [2] = { nil, { 600600 } },  -- startedBy: {{npcIds}, {objectIds}, {itemIds}}
        [4] = 60,                   -- Required level (Min level)
        [5] = 63,                   -- Quest level
        [17] = 3521,                -- Zone (Zangarmarsh)
        [8] = {
            "This is a custom objective. Upon completion, you will automatically receive the assigned reward. If you die, the quest will be removed from your quest log. This quest is automatically rewarded upon completion.",
            "Kill 1 Rare in Zangarmarsh"
        },
        [10] = {
            nil, -- [1] creatureObjective (not used)
            nil, -- [2] objectObjective (not used)
            nil, -- [3] itemObjective (not used)
            nil, -- [4] reputationObjective (not used)
            {    -- [5] killCreditObjective
                {
                    -- Zangarmarsh Rares
                    { 18682, 18680, 18681 }, -- Bog Lurker, Marticar, Coilfang Emissary
                    18682,                   -- RootId: Bog Lurker (representative rare)
                    "Rare slain"
                }
            }
        },

        [30] = 1, -- Kill count
    },

    -- Quest 50083: Forest Stalkers
    -- Kill 75 beasts in Terokkar Forest
    [50083] = {
        [1] = "Forest Stalkers",   -- Quest name
        [2] = { nil, { 600600 } }, -- startedBy: {{npcIds}, {objectIds}, {itemIds}}
        [4] = 65,                  -- Quest level
        [5] = 62,                  -- Min level
        [6] = 3519,                -- Zone (Terokkar Forest)
        [8] = {
            "This is a custom objective. Upon completion, you will automatically receive the assigned reward. If you die, the quest will be removed from your quest log. This quest is automatically rewarded upon completion.",
            "Kill 75 Beasts in Terokkar Forest"
        },
        [10] = {
            nil, -- [1] creatureObjective (not used)
            nil, -- [2] objectObjective (not used)
            nil, -- [3] itemObjective (not used)
            nil, -- [4] reputationObjective (not used)
            {    -- [5] killCreditObjective
                {
                    -- All 53 beast-type NPCs in Terokkar Forest
                    { 16932, 16933, 18467, 18464, 18466, 18670, 18465, 21723, 18461, 18648, 18750, 23219, 23051, 18463, 22424, 20682, 21515, 21854, 23163, 21816, 18476, 18477, 32956, 18437, 21634, 22337, 24922, 21804, 18470, 18438, 18647, 19607, 18468, 23338, 14866, 14868, 22100, 23206, 22972, 22105, 19659, 22326, 18707, 22807, 18469, 23167, 21635, 18492, 19616, 23162, 14869, 22339, 22987 },
                    16932, -- RootId: Razorfang Hatchling (representative beast)
                    "Beast slain"
                }
            }
        },
        [17] = nil, -- XP reward
        [30] = 75,  -- Kill count
    },

    -- Quest 50060: Skies of Blade's Edge
    -- Kill Dragonkin in Blade's Edge Mountains
    [50060] = {
        [1] = "Skies of Blade's Edge", -- Quest name
        [2] = { nil, { 600600 } },     -- startedBy: {{npcIds}, {objectIds}, {itemIds}}
        [4] = 67,                      -- Required level (Min level)
        [5] = 70,                      -- Quest level
        [17] = 3522,                   -- Zone (Blade's Edge Mountains)
        [8] = {
            "This is a custom objective. Upon completion, you will automatically receive the assigned reward. If you die, the quest will be removed from your quest log. This quest is automatically rewarded upon completion.",
            "Slay Dragonkin in Blade's Edge Mountains"
        },
        [10] = {
            nil, -- [1] creatureObjective (not used)
            nil, -- [2] objectObjective (not used)
            nil, -- [3] itemObjective (not used)
            nil, -- [4] reputationObjective (not used)
            {    -- [5] killCreditObjective
                {
                    -- All 17 dragonkin-type NPCs in Blade's Edge Mountains
                    { 18692, 21032, 20021, 20713, 21004, 23281, 23261, 21387, 22108, 21492, 23061, 21811, 21497, 23282, 21389, 22130, 23364 },
                    18692, -- RootId: Hemathion (representative dragonkin)
                    "Dragonkin slain"
                }
            }
        },
    },

    -- Quest 50030: Tundra Turbulence
    -- Kill Elementals in Borean Tundra
    [50030] = {
        [1] = "Tundra Turbulence", -- Quest name
        [2] = { nil, { 600600 } }, -- startedBy: {{npcIds}, {objectIds}, {itemIds}}
        [4] = 68,                  -- Required level (Min level)
        [5] = 71,                  -- Quest level
        [6] = 3537,                -- Zone (Borean Tundra)
        [8] = {
            "This is a custom objective. Upon completion, you will automatically receive the assigned reward. If you die, the quest will be removed from your quest log. This quest is automatically rewarded upon completion.",
            "Kill Elementals in Borean Tundra"
        },
        [10] = {
            nil, -- [1] creatureObjective (not used)
            nil, -- [2] objectObjective (not used)
            nil, -- [3] itemObjective (not used)
            nil, -- [4] reputationObjective (not used)
            {    -- [5] killCreditObjective
                {
                    -- All 15 elemental-type NPCs in Borean Tundra
                    { 25417, 32357, 25715, 25514, 25419, 24601, 25415, 25226, 25742, 25707, 25709, 26045, 25376, 25418, 25416 },
                    25417, -- RootId: Raging Boiler (representative elemental)
                    "Elementals slain"
                }
            }
        },
        [17] = nil, -- XP reward
        [30] = 75,  -- Kill count (Assumed generic high count for zone farming quests, user said "amount varies", so we don't hardcode it in logic but usually DB needs a number. 75 puts it in line with others.)
    },

    -- Quest 50087: Shadowed Beasts
    -- Kill 75 beasts in Shadowmoon Valley
    [50087] = {
        [1] = "Shadowed Beasts",   -- Quest name
        [2] = { nil, { 600600 } }, -- startedBy: {{npcIds}, {objectIds}, {itemIds}}
        [4] = 67,                  -- Quest level
        [5] = 65,                  -- Min level
        [6] = 3520,                -- Zone (Shadowmoon Valley)
        [8] = {
            "This is a custom objective. Upon completion, you will automatically receive the assigned reward. If you die, the quest will be removed from your quest log. This quest is automatically rewarded upon completion.",
            "Kill 75 Beasts in Shadowmoon Valley"
        },
        [10] = {
            nil, -- [1] creatureObjective (not used)
            nil, -- [2] objectObjective (not used)
            nil, -- [3] itemObjective (not used)
            nil, -- [4] reputationObjective (not used)
            {    -- [5] killCreditObjective
                {
                    -- All 25 beast-type NPCs in Shadowmoon Valley (excluding mounts)
                    { 19379, 19784, 20502, 20503, 21102, 21108, 21307, 21340, 21408, 21462, 21627, 21723, 21802, 21864, 21879, 21897, 21901, 22265, 23020, 23169, 23264, 23267, 23269, 23326, 23501 },
                    21723, -- RootId: Blackwind Sabercat (representative beast)
                    "Beast slain"
                }
            }
        },
        [17] = nil, -- XP reward
        [30] = 75,  -- Kill count
    },

    -- Quest 50064: Heart of the Dragonflights
    -- Kill 30 dragonkin in Dragonblight
    [50064] = {
        [1] = "Heart of the Dragonflights", -- Quest name
        [2] = { nil, { 600600 } },          -- startedBy: {{npcIds}, {objectIds}, {itemIds}}
        [4] = 73,                           -- Quest level
        [5] = 71,                           -- Min level
        [6] = 65,                           -- Zone (Dragonblight)
        [8] = {
            "This is a custom objective. Upon completion, you will automatically receive the assigned reward. If you die, the quest will be removed from your quest log. This quest is automatically rewarded upon completion.",
            "Kill 30 Dragonkin in Dragonblight"
        },
        [10] = {
            nil, -- [1] creatureObjective (not used)
            nil, -- [2] objectObjective (not used)
            nil, -- [3] itemObjective (not used)
            nil, -- [4] reputationObjective (not used)
            {    -- [5] killCreditObjective
                {
                    -- All 49 dragonkin NPCs in Dragonblight (excluding 32572 which is an object)
                    { 26276, 26277, 26322, 26349, 26443, 26593, 26917, 26925, 26933, 26949, 26983, 27255, 27506, 27530, 27542, 27575, 27608, 27629, 27682, 27725, 27763, 27765, 27785, 27789, 27856, 27896, 27897, 27898, 27900, 27925, 27935, 27938, 27940, 27943, 27948, 27950, 27953, 27990, 27996, 30058, 31333, 31334, 31393, 32180, 32185, 32186, 32352, 32533, 38017 },
                    26322, -- RootId: Arcane Wyrm (representative dragonkin)
                    "Dragonkin slain"
                }
            }
        },
        [17] = nil, -- XP reward
        [30] = 30,  -- Kill count
    },
}

-- Backward compatibility
EbonholdQuestDB = EbonholdQuestDB or {}
EbonholdQuestDB.questData = EbonholdDB.questData

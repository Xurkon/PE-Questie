# Changelog

## v9.7.4

### Fixes
- **[Tooltips]** Fixed "attempt to concatenate local 'name' (a nil value)" error when quest starters/finishers have missing names in the database.
- **[Database]** Added missing spawn coordinates for Quest 50031 "Stormbound" elementals in Storm Peaks (zone 67).
- **[Database]** Fixed "Unknown Zone" issue for custom quests by correcting Zone ID index usage (swapped `[6]` RequiredRaces for `[17]` ZoneID).
- **[Database]** Corrected Dragonblight Zone ID in custom quest definitions.

## v9.7.3

### New Features
- **[Database]** Implemented **Ebonhold Database Module**.
    - Created dedicated `Database/Ebonhold/` structure for custom server data.
    - Added `EbonholdLoader` to inject custom Quests, NPCs, Objects, and Items as overrides.
    - **Note:** This structure preserves custom data during upstream Questie updates.
- **[Objectives]** Implemented **Automated Text Retrieval**.
    - Questie now attempts to fetch quest text from the server at runtime for custom quests that are missing from the database.
    - Added "Objectives Board" (ID 600600) as a global quest starter.

### Quests (Custom Content)
- **[New]** Added **Heart of the Dragonflights** (ID 50064) - *Dragonblight*
    - Objective: Kill 30 Dragonkin. Includes 49 Dragonkin NPC types.
- **[New]** Added **Skies of Blade's Edge** (ID 50060) - *Blade's Edge Mountains*
    - Objective: Kill 75 Dragonkin. Includes 17 Dragonkin NPC types.
- **[New]** Added **Shadowed Beasts** (ID 50087) - *Shadowmoon Valley*
    - Objective: Kill 75 Beasts. Includes 25 Beast NPC types.
- **[New]** Added **Forest Stalkers** (ID 50083) - *Terokkar Forest*
    - Objective: Kill 75 Beasts. Includes 53 Beast NPC types.
- **[New]** Added **Savage Heights** (ID 50085) - *Blade's Edge Mountains*
    - Objective: Kill 75 Beasts. Includes 47 Beast NPC types.
- **[New]** Added **Unstable Fauna** (ID 50086) - *Netherstorm*
    - Objective: Kill 75 Beasts. Includes 18 Beast NPC types.
- **[New]** Added **Elemental Balance** (ID 50026) - *Nagrand*
    - Objective: Kill 30 Elementals. Includes 12 Elemental NPC types.
- **[New]** Added **Redridge Trophy** (ID 50160) and **Zangarmarsh Trophy** (ID 50192).

### Fixes
- **[Tracker]** **Combat Update Fix**: Tracker now updates objectives immediately during combat without causing Lua errors or taint.
- **[Tracker]** **Bag Update Fix**: Quest progress now updates immediately when looting items (fixes delay with loot bots).
- **[Arrow]** **Refined Visibility Logic**:
    - **Auto Nearby**: Arrow correctly defaults to showing the nearest quest when no quests are tracked.
    - **Zone Filter**: In "Auto Mode", the arrow hides if the nearest quest is in a different zone.
    - **Instance Filter**: Arrow explicitly hides if the target is in a different instance.
- **[Map]** Fixed an issue where completed quest icons would persist on the map (`RequestMapUpdate` logic).
- **[Database]** Updated `wotlkNpcDB.lua` with scraped spawn data for 12 key beast NPCs in Terokkar Forest to ensure accuracy.
- **[Arrow]** Fixed a nil function error for `_CollectObjective` when processing incomplete quests.
- **[Arrow]** Fixed syntax issues that prevented `QuestieArrow` module from initializing correctly.
- **[Database]** Fixed a runtime crash in `ZoneDB` when encountering maps with no AreaId mapping (e.g., Kalimdor).

INSERT INTO LocalizedText (Language, Tag, Text) VALUES
('en_US', 'LOC_TRAIT_LEADER_AURORA_SANCTUARY_DESCRIPTION', 'Amphitheaters, Lighthouses, Shrines, Universities, Banks and Factories grants +1 corresponding yield for all unimproved Charming tiles, +2 for all unimproved Breathtaking tiles to the city they are in. +1 Appeal to all tiles in cities built on Tundra, Tundra Hills, Snow, or Snow Hills. Units heal +5 HP faster in Charming tiles, +10 faster in Breathtaking tiles.'),
('en_US', 'LOC_TRAIT_CIVILIZATION_LANDSOL_KOKKORO_PRINCESS_DESCRIPTION', 'Grants an extra leader trait {LOC_TRAIT_LEADER_AURORA_SANCTUARY_NAME} for Kokkoro (Princess): {LOC_TRAIT_LEADER_AURORA_SANCTUARY_DESCRIPTION}'),
('zh_Hans_CN', 'LOC_TRAIT_LEADER_AURORA_SANCTUARY_DESCRIPTION', '古罗马剧场、灯塔、神社、大学、银行和工厂为所在城市所有迷人的未改良单元格+1相应产出，惊艳的未改良单元格则+2。建设于冻土、冻土丘陵、雪地或雪地丘陵的城市+1魅力。单位位于迷人单元格每回合可多恢复5点生命值，位于惊艳单元格则多恢复10点。'),
('zh_Hans_CN', 'LOC_TRAIT_CIVILIZATION_LANDSOL_KOKKORO_PRINCESS_DESCRIPTION', '为可可萝（公主）增加一个额外的领袖特性“{LOC_TRAIT_LEADER_AURORA_SANCTUARY_NAME}”: {LOC_TRAIT_LEADER_AURORA_SANCTUARY_DESCRIPTION}');
	
UPDATE LocalizedText SET Text = '+100% [ICON_Production] Production towards the Preserve district. Preserve buildings have their effect range extended by 1 and can be purchased with [ICON_Faith] Faith. +1 Appeal to all tiles in cities built on Tundra, Tundra Hills, Snow, or Snow Hills. Units heal +5 HP faster in Charming tiles, +10 faster in Breathtaking tiles.' WHERE EXISTS (SELECT * FROM LocalizedText WHERE Tag = 'LOC_CIVILIZATION_VIETNAM_NAME') AND Tag = 'LOC_TRAIT_LEADER_AURORA_SANCTUARY_DESCRIPTION' AND Language = 'en_US';
UPDATE LocalizedText SET Text = '建造保护区时 +100% [ICON_Production] 生产力。保护区建筑的效果范围增大1且可以使用 [ICON_Faith] 信仰值购买。建设于冻土、冻土丘陵、雪地或雪地丘陵的城市+1魅力。单位位于迷人单元格每回合可多恢复5点生命值，位于惊艳单元格则多恢复10点。' WHERE EXISTS (SELECT * FROM LocalizedText WHERE Tag = 'LOC_CIVILIZATION_VIETNAM_NAME') AND Tag = 'LOC_TRAIT_LEADER_AURORA_SANCTUARY_DESCRIPTION' AND Language = 'zh_Hans_CN';

UPDATE LocalizedText SET Text = 'Grants an extra leader trait {LOC_TRAIT_LEADER_AURORA_SANCTUARY_NAME} for Kokkoro (Princess): {LOC_TRAIT_LEADER_AURORA_SANCTUARY_DESCRIPTION}' WHERE EXISTS (SELECT * FROM LocalizedText WHERE Tag = 'LOC_CIVILIZATION_VIETNAM_NAME') AND Tag = 'LOC_TRAIT_CIVILIZATION_LANDSOL_KOKKORO_PRINCESS_DESCRIPTION' AND Language = 'en_US';
UPDATE LocalizedText SET Text = '为可可萝（公主）增加一个额外的领袖特性“{LOC_TRAIT_LEADER_AURORA_SANCTUARY_NAME}”：{LOC_TRAIT_LEADER_AURORA_SANCTUARY_DESCRIPTION}' WHERE EXISTS (SELECT * FROM LocalizedText WHERE Tag = 'LOC_CIVILIZATION_VIETNAM_NAME') AND Tag = 'LOC_TRAIT_CIVILIZATION_LANDSOL_KOKKORO_PRINCESS_DESCRIPTION' AND Language = 'zh_Hans_CN';
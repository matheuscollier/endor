if not Quests then
Quests = {
	[1] = { 
		name = "City Quest 1: Edoras (Level: 20-40)",
		startStorageId = 30001,
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Edoras City Quest",
				storageId = 5010,
				missionId = 1,
				startValue = 0,
				endValue = 1,
				states = {
					[0] = "Vença as 5 etapas e o Boss da Edoras City Quest. Level: 20-40. Participantes: de 1 a 4.",
					[1] = "Completed"
				}
			}
		}
	},
	[2] = { 
		name = "City Quest 2: Bree (Level: 40-60)",
		startStorageId = 30001,
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Bree City Quest",
				storageId = 5020,
				missionId = 1,
				startValue = 0,
				endValue = 1,
				states = {
					[0] = "Vença as 5 etapas e o Boss da Bree City Quest. Level: 40-60. Participantes: de 1 a 4.",
					[1] = "Completed"
				}
			}
		}
	},
	[3] = { 
		name = "City Quest 3: Forodwaith (Level: 60-80)",
		startStorageId = 30001,
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Forodwaith City Quest",
				storageId = 5040,
				missionId = 1,
				startValue = 0,
				endValue = 1,
				states = {
					[0] = "Vença as 5 etapas e o Boss da Forodwaith City Quest. Level: 60-80. Participantes: de 1 a 4.",
					[1] = "Completed"
				}
			}
		}
	},
	[4] = { 
		name = "City Quest 4: Moria (Level: 100-120)",
		startStorageId = 30001,
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Moria City Quest",
				storageId = 5030,
				missionId = 1,
				startValue = 0,
				endValue = 1,
				states = {
					[0] = "Vença as 5 etapas e o Boss da Moria City Quest. Level: 100-120. Participantes: de 1 a 4.",
					[1] = "Completed"
				}
			}
		}
	},
	[5] = { 
		name = "City Quest 5: Anfallas (Level: 230+)",
		startStorageId = 30001,
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Anfallas City Quest",
				storageId = 5080,
				missionId = 1,
				startValue = 0,
				endValue = 1,
				states = {
					[0] = "Vença as 5 etapas e o Boss da Anfallas City Quest. Level: 230+. Participantes: de 1 a 4.",
					[1] = "Completed"
				}
			}
		}
	},
	[6] = { 
		name = "Anihilator",
		startStorageId = 30001,
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Anihilator",
				storageId = 5000,
				missionId = 1,
				startValue = 0,
				endValue = 1,
				states = {
					[0] = "Desça no calabouco de Moria e sobreviva ate o final. Level: 100+. Participantes: 4.",
					[1] = "Completed"
				}
			}
		}
	},
	[7] = { 
		name = "Elemental Key (Level: 175+)",
		startStorageId = 30001,
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Elemental Key", 
				storageId = 1114, 
				missionId = 1,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Use a chave do Lord of The Elements para acessar a sala do tesouro. Level: 175+",
					[1] = "Completed"
				}
			}
		}
	},
	[8] = { 
		name = "Northern (Level: 250+)", 
		startStorageId = 30001, 
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Northern", 
				storageId = 5070, 
				missionId = 1,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o caminho para as armaduras amaldicoadas. Level: 250+",
					[1] = "Completed"
				}
			}
		}
	},
	[9] = { 
		name = "Lizard City (Level: 250+)", 
		startStorageId = 30001, 
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Lizard City", 
				storageId = 87580, 
				missionId = 1,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Sobreviva ao labirinto do inferno. Level: 250+",
					[1] = "Completed"
				}
			}
		}
	},
	[10] = { 
		name = "Pentagrama (Level: 150+)", 
		startStorageId = 30001, 
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Pentagrama", 
				storageId = 5050, 
				missionId = 1,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Derrote o poderoso Gothmog e solucione o misterio das alavancas. Level: 150+",
					[1] = "Completed"
				}
			}
		}
	},
	[11] = { 
		name = "Saruman Key", 
		startStorageId = 30001, 
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Saruman Key", 
				storageId = 5060, 
				missionId = 1,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Descubra onde usar a chave do Saruman. Level: 200+",
					[1] = "Completed"
				}
			}
		}
	},
	[12] = { 
		name = "Otherworld", 
		startStorageId = 30001, 
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Otherworld", 
				storageId = 50084, 
				missionId = 1,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Derrote os 4 bosses da Otherworld Quest e clame sua recompensa. Level: 200+. Participantes: 5.",
					[1] = "Completed"
				}
			}
		}
	},
	[13] = { 
		name = "Ring of Sauron", 
		startStorageId = 30001, 
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Parte 1.1 - Gandalf, o Cinzento", 
				storageId = 587423, 
				missionId = 1,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre Gandalf, o Cinzento, e descubra seu destino.",
					[1] = "Completed"
				}
			},
			[2] = {
				name = "Parte 1.2 - Thorin, Rei dos Anões.", 
				storageId = 587426, 
				missionId = 2,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre Thorin, Rei dos Anões, e ajude-o a enfrentar o temível dragão de Erebor!",
					[1] = "Completed"
				}
			},
			[3] = {
				name = "Parte 1.3 - O Terrível Dragão", 
				storageId = 587427,
				missionId = 3,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Derrote o terrível dragão de Erebor, Smaug!",
					[1] = "Completed"
				}
			},
			[4] = {
				name = "Parte 1.4 - Pedra de Arken", 
				storageId = 587428, 
				missionId = 4,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Pedra de Arken e entregue-a à Thorin, Rei dos Anões!",
					[1] = "Completed"
				}
			},
			[5] = {
				name = "Parte 1.5 - Gandalf, o Branco", 
				storageId = 587429,
				missionId = 5,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre Gandalf, o Branco, para receber novos direcionamentos.",
					[1] = "Completed"
				}
			},
			[6] = {
				name = "Parte 1.6 - O Mago Branco", 
				storageId = 587430,
				missionId = 6,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Derrote o poderoso Mago Branco, Saruman!",
					[1] = "Completed"
				}
			},
			[7] = {
				name = "Parte 1.7 - O Hobbit", 
				storageId = 587431,
				missionId = 7,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Herdeiro do Anel, Frodo!",
					[1] = "Completed"
				}
			},
			[8] = {
				name = "Parte 1.8 - Gollum", 
				storageId = 587432,
				missionId = 8,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Derrote o hobbit corrompido, Gollum!",
					[1] = "Completed"
				}
			},
			[9] = {
				name = "Parte 1.9 - O Anel", 
				storageId = 587433,
				missionId = 9,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Anel que estava escondido com o Gollum e leve-o até Frodo!",
					[1] = "Completed"
				}
			},
			[10] = {
				name = "Parte 2 - O Maiar das Trevas", 
				storageId = 587434,
				missionId = 10,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Derrote o Maiar das Trevas, tenente de Morgoth, Sauron!",
					[1] = "Completed"
				}
			},
			[11] = {
				name = "Parte 3 - O Fim - Cidade do Pesadelo", 
				storageId = 506034,
				missionId = 11,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Descubra onde usar a Chave para clamar sua recompensa nos baús sagrados da Cidade do Pesadelo!",
					[1] = "Completed"
				}
			}
		}
	},
	[14] = { 
		name = "Salão de Recompensas", 
		startStorageId = 30001, 
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "A Primeira Recompensa - O Amuleto", 
				storageId = 506050,
				missionId = 1,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Receba seu Amuleto Único como recompensa pelos seus feitos no Endor!",
					[1] = "Completed"
				}
			},
			[2] = {
				name = "A Segunda Recompensa - A Montaria", 
				storageId = 506051,
				missionId = 2,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Receba sua Montaria Rara como recompensa pelos seus feitos no Endor!",
					[1] = "Completed"
				}
			},
			[3] = {
				name = "A Terceira Recompensa - O Anel", 
				storageId = 506052,
				missionId = 3,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Receba seu Anel de Classe como recompensa pelos seus feitos no Endor!",
					[1] = "Completed"
				}
			},
			[4] = {
				name = "A Última Recompensa - O FIM", 
				storageId = 800000,
				missionId = 4,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Receba sua Recompensa Final pelos seus feitos no Endor!",
					[1] = "Completed"
				}
			}
		}
	},
	[15] = { 
		name = "Quests Tradicionais 100+", 
		startStorageId = 30001, 
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Crown", 
				storageId = 1036,
				missionId = 1,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Crown que fica ao noroeste de Minas Tirith.",
					[1] = "Completed"
				}
			},
			[2] = {
				name = "Crystaline Armor", 
				storageId = 1096,
				missionId = 2,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Crystaline Armor que está em Nimrais.",
					[1] = "Completed"
				}
			},
			[3] = {
				name = "Dark Lords Cape", 
				storageId = 1087,
				missionId = 3,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Dark Lords Cape que está em Evendim.",
					[1] = "Completed"
				}
			},
			[4] = {
				name = "Divine Robe", 
				storageId = 1111,
				missionId = 4,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Divine Robe que está em Beleghost.",
					[1] = "Completed"
				}
			},
			[5] = {
				name = "Divine Scepter", 
				storageId = 1112,
				missionId = 5,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Divine Scepter que está em Beleghost.",
					[1] = "Completed"
				}
			},
			[6] = {
				name = "Dragon Scale Boots", 
				storageId = 1113,
				missionId = 6,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Dragon Scale Boots que está no subsolo da Ilha de Tortuga.",
					[1] = "Completed"
				}
			},
			[7] = {
				name = "Four Leaf Clover", 
				storageId = 1115,
				missionId = 7,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Leaf Clover que está ao sul de Dunedain.",
					[1] = "Completed"
				}
			},
			[8] = {
				name = "Gandalf Ring", 
				storageId = 1048,
				missionId = 8,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Gandalf Ring que fica no subsolo de Mordor.",
					[1] = "Completed"
				}
			},
			[9] = {
				name = "Giant Shrimp", 
				storageId = 1116,
				missionId = 9,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Giant Shrimp que está nos mares profundos de Atlantida.",
					[1] = "Completed"
				}
			},
			[10] = {
				name = "Golden Key 666", 
				storageId = 1039,
				missionId = 10,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Golden Key 666  que fica no subsolo de Minas Tirith.",
					[1] = "Completed"
				}
			},
			[11] = {
				name = "Pharao Sword", 
				storageId = 1109,
				missionId = 11,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Pharao Sword que está no subsolo de Dunedain.",
					[1] = "Completed"
				}
			},
			[12] = {
				name = "Saurons Breath Scepter", 
				storageId = 1086,
				missionId = 12,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Saurons Breath Scepter que está em Evendim.",
					[1] = "Completed"
				}
			},
			[13] = {
				name = "Soft Boots", 
				storageId = 1049,
				missionId = 13,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Soft Boots que fica no subsolo de Mordor.",
					[1] = "Completed"
				}
			},
			[14] = {
				name = "Starlight Amulet", 
				storageId = 1118,
				missionId = 14,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Starlight Amulet que está ao leste de Anfallas.",
					[1] = "Completed"
				}
			},
			[15] = {
				name = "Tempest Shield", 
				storageId = 1117,
				missionId = 15,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre Tempest Shield que está no leste de Anfallas.",
					[1] = "Completed"
				}
			},
			[16] = {
				name = "Zenit Cuirass", 
				storageId = 1049,
				missionId = 16,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Zenit Cuirass que está no subsolo de Anfallas.",
					[1] = "Completed"
				}
			}
		}
	},
	[16] = { 
		name = "Quests Tradicionais 51 ao 100", 
		startStorageId = 30001, 
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Aghanim Boots", 
				storageId = 1050,
				missionId = 1,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Aghanim Boots que está no vale de wyvern.",
					[1] = "Completed"
				}
			},
			[2] = {
				name = "Aghanim Legs", 
				storageId = 1038,
				missionId = 2,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Aghanim Legs que fica no subsolo de Minas Tirith.",
					[1] = "Completed"
				}
			},
			[3] = {
				name = "Aghanim Robe", 
				storageId = 1065,
				missionId = 3,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Aghanim Robe que está no subsolo de Dragon VIP.",
					[1] = "Completed"
				}
			},
			[4] = {
				name = "Amazon Armor", 
				storageId = 1044,
				missionId = 4,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Aghanim Robe que fica ao noroeste de Argond.",
					[1] = "Completed"
				}
			},
			[5] = {
				name = "Blue Robe", 
				storageId = 1004,
				missionId = 5,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Blue Robe que está no subsolo da Catedral De Eriador que fica ao sul de Bree.",
					[1] = "Completed"
				}
			},
			[6] = {
				name = "Boots of Haste", 
				storageId = 1131,
				missionId = 6,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Boots of Haste que está ao leste de Dol'Guldur.",
					[1] = "Completed"
				}
			},
			[7] = {
				name = "Djinn Blade", 
				storageId = 1129,
				missionId = 7,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Djinn Blade que está ao leste de Dol'Guldur.",
					[1] = "Completed"
				}
			},
			[8] = {
				name = "Earthborn Titan Armor", 
				storageId = 1135,
				missionId = 8,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Earthborn Titan Armor que está ao leste de Dol'Guldur.",
					[1] = "Completed"
				}
			},
			[9] = {
				name = "Elven Bow", 
				storageId = 1067,
				missionId = 9,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Elven Bow que está no subsolo de Dragon VIP.",
					[1] = "Completed"
				}
			},
			[10] = {
				name = "Focus Cape", 
				storageId = 1133,
				missionId = 10,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Focus Cape que está ao leste de Dol'Guldur.",
					[1] = "Completed"
				}
			},
			[11] = {
				name = "Fur Backpack", 
				storageId = 1126,
				missionId = 11,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Fur Backpack que está nas profundezas de Mordor.",
					[1] = "Completed"
				}
			},
			[12] = {
				name = "Giant Sword", 
				storageId = 1125,
				missionId = 12,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Giant Sword que está nas profundezas de Mordor.",
					[1] = "Completed"
				}
			},
			[13] = {
				name = "Guardian Halberd", 
				storageId = 1047,
				missionId = 13,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Guardian Halber fica em Dragon Mountains.",
					[1] = "Completed"
				}
			},
			[14] = {
				name = "Headchopper", 
				storageId = 1124,
				missionId = 14,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Headchopper que está nas profundezas de Mordor.",
					[1] = "Completed"
				}
			},
			[15] = {
				name = "Magma Coat", 
				storageId = 1027,
				missionId = 15,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Magma Coat que fica ao noroeste de Bree.",
					[1] = "Completed"
				}
			},
			[16] = {
				name = "Magma Legs", 
				storageId = 1022,
				missionId = 16,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Magma Legs que está na cidade Proibida ao noroeste de Bree.",
					[1] = "Completed"
				}
			},
			[17] = {
				name = "Motaba Wand", 
				storageId = 1040,
				missionId = 17,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Motaba Wand que fica na Caverna das Aranhas ao noroeste de Edoras.",
					[1] = "Completed"
				}
			},
			[18] = {
				name = "Red Robe", 
				storageId = 1010,
				missionId = 18,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Red Robe que fica na Ilha De Gelo que fica ao leste de Forodwaith.",
					[1] = "Completed"
				}
			},
			[19] = {
				name = "Ring of the Tarrasque", 
				storageId = 1031,
				missionId = 19,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Ring of the Tarrasque que fica em Dragon VIP.",
					[1] = "Completed"
				}
			},
			[20] = {
				name = "Saruman Scepter", 
				storageId = 1030,
				missionId = 20,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Saruman Scepter que fica na Ilha De Rhun.",
					[1] = "Completed"
				}
			},
			[21] = {
				name = "Skull Helmet", 
				storageId = 1130,
				missionId = 21,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Skull Helmet que está ao leste de Dol'Guldur.",
					[1] = "Completed"
				}
			},
			[22] = {
				name = "Skull Staff", 
				storageId = 1005,
				missionId = 22,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Skull Staff que está no subsolo da Catedral De Eriador que fica ao sul de Bree",
					[1] = "Completed"
				}
			},
			[23] = {
				name = "Slingshot", 
				storageId = 1066,
				missionId = 23,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Slingshot que está no subsolo de Dragon VIP.",
					[1] = "Completed"
				}
			},
			[24] = {
				name = "Steel Boots", 
				storageId = 1128,
				missionId = 24,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Steel Boots que está nas profundezas de Mordor.",
					[1] = "Completed"
				}
			},
			[25] = {
				name = "Terra Amulet", 
				storageId = 1061,
				missionId = 25,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Terra Amulet que está no subsolo de Minas Tirith.",
					[1] = "Completed"
				}
			},
			[26] = {
				name = "Tower Shield", 
				storageId = 1134,
				missionId = 26,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Tower Shield que está ao leste de Dol'Guldur.",
					[1] = "Completed"
				}
			},
			[27] = {
				name = "Twin Axe", 
				storageId = 1132,
				missionId = 27,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Twin Axe que está ao leste de Dol'Guldur.",
					[1] = "Completed"
				}
			},
			[28] = {
				name = "Warsinger Bow", 
				storageId = 1088,
				missionId = 28,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Warsinger Bow que está no subsolo do Vale Da Morte.",
					[1] = "Completed"
				}
			},
			[29] = {
				name = "War Hammer", 
				storageId = 1127,
				missionId = 29,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o War Hammer que está nas profundezas de Mordor.",
					[1] = "Completed"
				}
			}
		}
	},
	[17] = { 
		name = "Quests Tradicionais 8 ao 50", 
		startStorageId = 30001, 
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Amulet Of Loss", 
				storageId = 1069,
				missionId = 1,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Amulet Of Loss que fica ao norte de Beleghost.",
					[1] = "Completed"
				}
			},
			[2] = {
				name = "Ancient Rune", 
				storageId = 1045,
				missionId = 2,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Ancient Rune que fica no subsolo de Moria.",
					[1] = "Completed"
				}
			},
			[3] = {
				name = "Ancient Tiara", 
				storageId = 1089, 
				missionId = 3,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Ancient Tiara que está no subsolo do Vale Da Morte.",
					[1] = "Completed"
				}
			},
			[4] = {
				name = "Arcane Wand", 
				storageId = 1020, 
				missionId = 4,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Arcane Wand que fica na Caverna das Aranhas ao noroeste de Edoras.",
					[1] = "Completed"
				}
			},
			[5] = {
				name = "Backpack Yalahar", 
				storageId = 1093,
				missionId = 5,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Backpack Yalahar que está no subsolo de Dunedain.",
					[1] = "Completed"
				}
			},
			[6] = {
				name = "Barbarian Axe", 
				storageId = 1026,
				missionId = 6,
				startValue = 0, 
				endValue = 1,
				states = {
					[0] = "Encontre o Barbarian Axe que fica ao sudeste de Mordor.",
					[1] = "Completed"
				}
			},
			[7] = {
				name = "Battle Axe", 
				storageId = 1077,
				missionId = 7,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Battle Axe que está ao nordeste de Enedwaith.",
					[1] = "Completed"
				}
			},
			[8] = {
				name = "Black Pearl", 
				storageId = 1081,
				missionId = 8,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Black Perl que está no Amazon Camp ao sul de Bree.",
					[1] = "Completed"
				}
			},
			[9] = {
				name = "Blue Note", 
				storageId = 1095,
				missionId = 9,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Blue Note que está em Nimrais.",
					[1] = "Completed"
				}
			},
			[10] = {
				name = "Boots Of Haste", 
				storageId = 1035,
				missionId = 10,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Boots Of Haste que fica na Caverna das Aranhas ao noroeste de Edoras.",
					[1] = "Completed"
				}
			},
			[11] = {
				name = "Brass Armor", 
				storageId = 1119, 
				missionId = 11,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Brass Armor que está em Lorien.",
					[1] = "Completed"
				}
			},
			[12] = {
				name = "Brass Armor", 
				storageId = 1072,
				missionId = 12,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Brass Armor que está no subsolo de Lorien que fica ao sudoeste de Dol'Guldur.",
					[1] = "Completed"
				}
			},
			[13] = {
				name = "Brass Legs", 
				storageId = 1075, 
				missionId = 13,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Brass Legs que está na florestá de Edoras.",
					[1] = "Completed"
				}
			},
			[14] = {
				name = "Bright Sword", 
				storageId = 1033, 
				missionId = 14,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Bright Sword que fica ao noroeste de Minas Tirith.",
					[1] = "Completed"
				}
			},
			[15] = {
				name = "Burning Heart", 
				storageId = 1070, 
				missionId = 15,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Burning Heart que fica ao nordeste de Beleghost.",
					[1] = "Completed"
				}
			},
			[16] = {
				name = "Chain Armor", 
				storageId = 1006, 
				missionId = 16,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Chain Armor que fica no subsolo de Bree.",
					[1] = "Completed"
				}	
			},
			[17] = {
				name = "Cook Book", 
				storageId = 1062, 
				missionId = 17,
				startValue = 0, 
				endValue = 1,
				states = {
					[0] = "Encontre o Cook Book que fica no subsolo da Vila Dos Dworcs ao sudoeste Forodwaith.",
					[1] = "Completed"
				}
			},
			[18] = {
				name = "Crocodile Boots", 
				storageId = 1076, 
				missionId = 18,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Crocodile Boots que está no subsolo do Misterio Das Wyverns.",
					[1] = "Completed"
				}
			},
			[19] = {
				name = "Crossbow", 
				storageId = 1034, 
				missionId = 19,
				startValue = 0,
				endValue = 1,
				states = { 
					[0] = "Encontre o Crossbow que está em Rivendell.",
					[1] = "Completed"
				}
			},
			[20] = {
				name = "Dark Helmet", 
				storageId = 1017, 
				missionId = 20,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Dark Helmet que está noroeste de Mordor.",
					[1] = "Completed"
				}
			},
			[21] = {
				name = "Defiler Remains", 
				storageId = 1064, 
				missionId = 21,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Defiler Remains que fica no Arredores de Minas Tirith.",
					[1] = "Completed"
				}
			},
			[22] = {
				name = "Devil Helmet", 
				storageId = 1041, 
				missionId = 22,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Devil Helmet que está ao noroeste de Mordor.",
					[1] = "Completed"
				}
			},
			[23] = {
				name = "Drum", 
				storageId = 1079, 
				missionId = 23,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Drum que está ao norte de Eriador.",
					[1] = "Completed"
				}
			},
			[24] = {
				name = "Dwarven Legs 1", 
				storageId = 1002, 
				missionId = 24,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Dwarven Legs na Montanha Solitaria que fica ao norte de Esgaroth.",
					[1] = "Completed"
				}
			},
			[25] = {
				name = "Dwarven Legs 2", 
				storageId = 1082, 
				missionId = 25,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Dwarven Legs que está no subsolo de Rivendell.",
					[1] = "Completed"
				}	
			},
			[26] = {
				name = "Emerald Sword", 
				storageId = 1092, 
				missionId = 26,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Emerald Sword que está no subsolo de Mordor.",
					[1] = "Completed"
				}
			},
			[27] = {
				name = "Fire Axe", 
				storageId = 1029, 
				missionId = 27,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Fire Axe que fica na Ilha De Rhun.",
					[1] = "Completed"
				}	
			},
			[28] = {
				name = "Frost Razor", 
				storageId = 1032, 
				missionId = 28,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Frost Razor que fica ao noroeste de Minas Tirith.",
					[1] = "Completed"
				}	
			},
			[29] = {
				name = "Glacier Boots", 
				storageId = 1021, 
				missionId = 29,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Glacier Boots que fica na Aldeia dos Barbaros ao leste de Forodwaith.",
					[1] = "Completed"
				}	
			},
			[30] = {
				name = "Glacier Kilt", 
				storageId = 1018, 
				missionId = 30,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Glacier Kilt que fica no subsolo de Esgaroth.",
					[1] = "Completed"
				}	
			},
			[31] = {
				name = "Glacier Robe", 
				storageId = 1037, 
				missionId = 31,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Glacier Robe que fica no subsolo de Forochel.",
					[1] = "Completed"
				}	
			},
			[32] = {
				name = "Gold Nugeet", 
				storageId = 1105, 
				missionId = 32,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Gold Nugget que está no subsolo do Pantano dos Lichs.",
					[1] = "Completed"
				}	
			},
			[33] = {
				name = "Green Gem", 
				storageId = 1083, 
				missionId = 33,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Green Gem que está no subsolo do Vale Da Morte.",
					[1] = "Completed"
				}	
			},
			[34] = {
				name = "Griffin Shield", 
				storageId = 1099, 
				missionId = 34,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Griffin Shield que está no subsolo do Condado.",
					[1] = "Completed"
				}
			},
			[35] = {
				name = "Guardian Shield", 
				storageId = 1046, 
				missionId = 35,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre Guardian Shield que está ao norte de Mordor.",
					[1] = "Completed"
				}
			},
			[36] = {
				name = "Hailstorm Rod 1", 
				storageId = 1000, 
				missionId = 36,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Hailstorm Rod na Ilha De Gelo que fica ao leste de Forodwaith.",
					[1] = "Completed"
				}
			},
			[37] = {
				name = "Hailstorm Rod 2", 
				storageId = 1098, 
				missionId = 37,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Hailstorm Rod que está ao noroeste de Minas Tirith.",
					[1] = "Completed"
				}
			},
			[38] = {
				name = "Helmet of the Deep", 
				storageId = 1019, 
				missionId = 38,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Helmet of the Deep que está na Ilha Dos Piratas ao sudoeste de Edoras.",
					[1] = "Completed"
				}
			},
			[39] = {
				name = "Holy Orchid", 
				storageId = 1051, 
				missionId = 39,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Holy Orchid que fia no subsolo de Moria.",
					[1] = "Completed"
				}
			},
			[40] = {
				name = "Horseman Helmet", 
				storageId = 1014, 
				missionId = 40,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Horseman Helmet que fica na cidade dos Heros ao norte de Belfallas.",
					[1] = "Completed"
				}
			},
			[41] = {
				name = "Ice Rapier 1", 
				storageId = 1012, 
				missionId = 41,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Ice Rapier que está no subsolo de Dol'Guldur.",
					[1] = "Completed"
				}
			},
			[42] = {
				name = "Ice Rapier 2", 
				storageId = 1043, 
				missionId = 42,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Ice Rapier que fica no subsolo de Forodwaith.",
					[1] = "Completed"
				}
			},
			[43] = {
				name = "Icicle", 
				storageId = 1094, 
				missionId = 43,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Icicle que está no subsolo de Nimrais.",
					[1] = "Completed"
				}
			},
			[44] = {
				name = "Iron Helmet", 
				storageId = 1084, 
				missionId = 44,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Iron Helmet que está no subsolo do cemiterio de Bree.",
					[1] = "Completed"
				}
			},
			[45] = {
				name = "Knight Axe", 
				storageId = 1001, 
				missionId = 45,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Knight Axe que está em Dark Fortess ao nordeste de Bree.",
					[1] = "Completed"
				}
			},
			[46] = {
				name = "Light Shovel", 
				storageId = 1042, 
				missionId = 46,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Light Shovel que fica no subsolo de Moria.",
					[1] = "Completed"
				}
			},
			[47] = {
				name = "Magician Hat", 
				storageId = 1106,
				missionId = 47,
				startValue = 0,
				endValue = 1,
				states = { 
					[0] = "Encontre a Magician Hat que fica na Vila Dos Dworcs ao sudoeste de Forodwaith.",
					[1] = "Completed"
				}
			},
			[48] = {
				name = "Mysterious Fetish", 
				storageId = 1078, 
				missionId = 48,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Mysterious Fetish que está ao norte de Eriador.",
					[1] = "Completed"
				}
			},
			[49] = {
				name = "Native Armor 1", 
				storageId = 1008, 
				missionId = 49,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Native Armor que fica no subsolo da Vila Dos Dworcs ao sudoeste de Forodwaith.",
					[1] = "Completed"
				}
			},
			[50] = {
				name = "Native Armor 2", 
				storageId = 1104, 
				missionId = 50,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Native Armor que está no subsolo do Pantano Dos Lichs.",
					[1] = "Completed"
				}	
			},
			[51] = {
				name = "Noble Armor", 
				storageId = 1013, 
				missionId = 51,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Noble Armor que fica na cidade dos Heros ao norte de Belfallas.",
					[1] = "Completed"
				}
			},
			[52] = {
				name = "Phoenix Plate", 
				storageId = 1090, 
				missionId = 52,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Phoenix Plate que está no subsolo de Dunedain.",
					[1] = "Completed"
				}
			},
			[53] = {
				name = "Pirate Boots 1", 
				storageId = 1011, 
				missionId = 53,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Pirate Boots que está em Pirate Bay ao oeste de Ashenport.",
					[1] = "Completed"
				}
			},
			[54] = {
				name = "Pirate Boots 2", 
				storageId = 1052, 
				missionId = 54,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Pirate Boots que fica em Corsario.",
					[1] = "Completed"
				}
			},
			[55] = {
				name = "Plate Armor", 
				storageId = 1080, 
				missionId = 55,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Plate Armor que está proximo a entrada de Moria.",
					[1] = "Completed"
				}	
			},
			[56] = {
				name = "Poison Dagger", 
				storageId = 1120, 
				missionId = 56,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Poison Dagger que está dentro de uma montanha ao norte de Edoras.",
					[1] = "Completed"
				}
			},
			[57] = {
				name = "Raspberry", 
				storageId = 1101, 
				missionId = 57,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Raspberry que está na cidade dos Elfs.",
					[1] = "Completed"
				}
			},
			[58] = {
				name = "Red Robe", 
				storageId = 1010, 
				missionId = 58,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Red Robe que fica no Subsolo da Vila Dos Dworcs ao sudoeste de Forodwaith.",
					[1] = "Completed"
				}
			},
			[59] = {
				name = "Ripper Lance", 
				storageId = 1003, 
				missionId = 59,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Ripper Lance que estáno Amazon Camp ao sul de Bree",
					[1] = "Completed"
				}
			},
			[60] = {
				name = "Robe of the Underworld", 
				storageId = 1123, 
				missionId = 60,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Robe of the Underworld que está no território do Necromancer.",
					[1] = "Completed"
				}
			},
			[61] = {
				name = "Sapphire Hammer", 
				storageId = 1028, 
				missionId = 61,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Sapphire Hammer que está na Orc Fortress ao Leste de Dol'Guldur.",
					[1] = "Completed"
				}
			},
			[62] = {
				name = "Scale Armor 1", 
				storageId = 1007, 
				missionId = 62,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Scale Armor que está em Minotown que fica ao norte de Bree.",
					[1] = "Completed"
				}
			},
			[63] = {
				name = "Scale Armor 2", 
				storageId = 1073, 
				missionId = 63,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Scale Armor que está na Florestá De Edoras.",
					[1] = "Completed"
				}	
			},
			[64] = {
				name = "Scimitar", 
				storageId = 1074, 
				missionId = 64,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Scimitar que está na Florestá de Edoras.",
					[1] = "Completed"
				}	
			},
			[65] = {
				name = "Shield of Honor", 
				storageId = 1102, 
				missionId = 65,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Shield of Honor que está em Peninsula de Argond.",
					[1] = "Completed"
				}
			},
			[66] = {
				name = "Silver Amulet", 
				storageId = 1121, 
				missionId = 66,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Silver Amulet que está ao leste de Erebor.",
					[1] = "Completed"
				}
			},
			[67] = {
				name = "Stell Helmet", 
				storageId = 1071, 
				missionId = 67,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Stell Helmet que está em Lorien que fica ao sudoeste de Dol'Guldur.",
					[1] = "Completed"
				}
			},
			[68] = {
				name = "Stone Skin Amulet", 
				storageId = 1122, 
				missionId = 68,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Stone Skin Amulet que está ao norte de Mordor.",
					[1] = "Completed"
				}
			},
			[69] = {
				name = "Strange Book", 
				storageId = 1063, 
				missionId = 69,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Strange Book que fica no subsolo do Arredores de Minas Tirith.",
					[1] = "Completed"
				}
			},
			[70] = {
				name = "Tear of Daraman", 
				storageId = 1097, 
				missionId = 70,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Tear of Daraman que está em Nimrais.",
					[1] = "Completed"
				}
			},
			[71] = {
				name = "Tower Shield", 
				storageId = 1053, 
				missionId = 71,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Tower Shield que fica no subsolo de Moria.",
					[1] = "Completed"
				}
			},
			[72] = {
				name = "Vampire Dust", 
				storageId = 1068, 
				missionId = 72,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre o Vampire Dust que fica ao nordeste de Beleghost.",
					[1] = "Completed"
				}
			},
			[73] = {
				name = "Vile Axe", 
				storageId = 1091, 
				missionId = 73,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Vile Axe que está no subsolo de Dunedain.",
					[1] = "Completed"
				}
			},
			[74] = {
				name = "Wand Of Cosmic Energy", 
				storageId = 1085, 
				missionId = 74,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Wand of Cosmic Energy que está no subsolo de Minotown.",
					[1] = "Completed"
				}
			},
			[75] = {
				name = "Wand Of Inferno", 
				storageId = 1009, 
				missionId = 75,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Wand Of Inferno que está no Dragon Layer a norte de Bree.",
					[1] = "Completed"
				}
			},
			[76] = {
				name = "Wooden Key 3001", 
				storageId = 1023, 
				missionId = 76,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Wooden Key 3001 que fica no subsolo da Vila dos Macacos ao leste de Dol'Guldur.",
					[1] = "Completed"
				}
			},
			[77] = {
				name = "Wooden Key 3002", 
				storageId = 1024, 
				missionId = 77,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Wooden Key 3002 que fica no subsolo da Vila dos Macacos ao leste de Dol'Guldur.",
					[1] = "Completed"
				}
			},
			[78] = {
				name = "Wooden Key 3003", 
				storageId = 1025, 
				missionId = 78,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Wooden Key 3003 que fica no subsolo da Vila dos Macacos ao leste de Dol'Guldur.",
					[1] = "Completed"
				}
			},
			[79] = {
				name = "Yellow Gem", 
				storageId = 1103, 
				missionId = 79,
				startValue = 0, 
				endValue = 1,
				states = { 
					[0] = "Encontre a Yellow Gem que está no subsolo do Condado.",
					[1] = "Completed"
				}
			}
		}
	},

	[18] = { 
		name = "Task Log", 
		startStorageId = 30001, 
		startStorageValue = -1,
		missions = {
			[1] = {
				name = "Amazonas", 
				storageId = 7104, 
				missionId = 1,
				startValue = 0, 
				endValue = 121,
				states = { 
					[0] = "Mate 120 Amazonas (Amazon, Valkyrie) e retorne ao Grizzly Adams para obter sua recompensa.",
					[121] = "Completed"
				}
			},
			[2] = {
				name = "Aranhas", 
				storageId = 7106, 
				missionId = 2,
				startValue = 0,
				endValue = 201,
				states = { 
					[0] = "Mate 200 Aranhas (Spider, Poison Spider, Tarantula) e retorne ao Grizzly Adams para obter sua recompensa.",
					[201] = "Completed"
				}
			},
			[3] = {
				name = "Bandidos", 
				storageId = 7102, 
				missionId = 3,
				startValue = 0, 
				endValue = 81,
				states = { 
					[0] = "Mate 80 Bandidos (Bandit, Smuggler, Rohirim) e retorne ao Grizzly Adams para obter sua recompensa.",
					[81] = "Completed"
				}
			},
			[4] = {
				name = "Banshees", 
				storageId = 7151, 
				missionId = 4,
				startValue = 0, 
				endValue = 501,
				states = { 
					[0] = "Mate 500 Banshees (Banshee) e retorne ao Grizzly Adams para obter sua recompensa.",
					[501] = "Completed"
				}
			},
			[5] = {
				name = "Bárbaros", 
				storageId = 7116, 
				missionId = 5,
				startValue = 0, 
				endValue = 201,
				states = { 
					[0] = "Mate 200 Bárbaros (Barbarian Bloodwalker, Barbarian Brutetamer, Barbarian Headsplitter, Barbarian Skullhunter) e retorne ao Grizzly Adams para obter sua recompensa.",
					[201] = "Completed"
				}
			},
			[6] = {
				name = "Beleghost", 
				storageId = 7126, 
				missionId = 6,
				startValue = 0, 
				endValue = 301,
				states = { 
					[0] = "Mate 300 monstros de Beleghost (Haunted Treeling, Nightstalker) e retorne ao Grizzly Adams para obter sua recompensa.",
					[301] = "Completed"
				}
			},
			[7] = {
				name = "Behemoths", 
				storageId = 7138, 
				missionId = 7,
				startValue = 0, 
				endValue = 901,
				states = { 
					[0] = "Mate 900 Behemoths (Behemoth) e retorne ao Grizzly Adams para obter sua recompensa.",
					[901] = "Completed"
				}
			},
			[8] = {
				name = "Chakoyas", 
				storageId = 7109, 
				missionId = 8,
				startValue = 0, 
				endValue = 121,
				states = { 
					[0] = "Mate 120 Chakoyas (Chakoya Toolshaper, Chakoya Tribewarden, Chakoya Windcaller) e retorne ao Grizzly Adams para obter sua recompensa.",
					[121] = "Completed"
				}
			},
			[9] = {
				name = "Crystal", 
				storageId = 7153, 
				missionId = 9,
				startValue = 0, 
				endValue = 1501,
				states = { 
					[0] = "Mate 1500 monstros de Crystal (Iron Blight, Stone Devourer, Cliff Strider) e retorne ao Grizzly Adams para obter sua recompensa.",
					[1501] = "Completed"
				}
			},
			[10] = {
				name = "Cults", 
				storageId = 7117, 
				missionId = 10,
				startValue = 0, 
				endValue = 301,
				states = { 
					[0] = "Mate 300 Cults (Acolyte of the Cult, Adept of the Cult, Enlightened of the Cult, Novice of the Cult) e retorne ao Grizzly Adams para obter sua recompensa.",
					[301] = "Completed"
				}
			},
			[11] = {
				name = "Cyclopes", 
				storageId = 7119, 
				missionId = 11,
				startValue = 0, 
				endValue = 301,
				states = { 
					[0] = "Mate 300 Cyclopes (Cylops, Cyclops Drone, Cyclops Smith) e retorne ao Grizzly Adams para obter sua recompensa.",
					[301] = "Completed"
				}
			},
			[12] = {
				name = "Darkfeyrist", 
				storageId = 7162, 
				missionId = 12,
				startValue = 0, 
				endValue = 801,
				states = { 
					[0] = "Mate 800 monstros de Dark Feyrist (Dark Faun, Twisted Pooka, Boogy) e retorne ao Grizzly Adams para obter sua recompensa.",
					[801] = "Completed"
				}
			},
			[13] = {
				name = "Deeplings", 
				storageId = 7152, 
				missionId = 13,
				startValue = 0, 
				endValue = 1201,
				states = { 
					[0] = "Mate 1200 Deeplings (Deepling Brawler, Deepling Warrior, Deepling Master) e retorne ao Grizzly Adams para obter sua recompensa.",
					[1201] = "Completed"
				}
			},
			[14] = {
				name = "Demons", 
				storageId = 7129, 
				missionId = 14,
				startValue = 0, 
				endValue = 901,
				states = { 
					[0] = "Mate 900 Demons (Demon) e retorne ao Grizzly Adams para obter sua recompensa.",
					[901] = "Completed"
				}
			},
			[15] = {
				name = "Destroyers", 
				storageId = 7132, 
				missionId = 15,
				startValue = 0, 
				endValue = 801,
				states = { 
					[0] = "Mate 800 Destroyers (Destroyer, Gravedigger, Plaguesmith) e retorne ao Grizzly Adams para obter sua recompensa.",
					[801] = "Completed"
				}
			},
			[16] = {
				name = "Dragons", 
				storageId = 7133, 
				missionId = 16,
				startValue = 0, 
				endValue = 1201,
				states = { 
					[0] = "Mate 1200 Dragons (Dragon, Dragon Lord) e retorne ao Grizzly Adams para obter sua recompensa.",
					[1201] = "Completed"
				}
			},
			[17] = {
				name = "Drakens", 
				storageId = 7148, 
				missionId = 17,
				startValue = 0, 
				endValue = 1801,
				states = { 
					[0] = "Mate 1800 Drakens (Draken Warmaster, Draken Spellweaver, Draken Elite, Draken Abomination) e retorne ao Grizzly Adams para obter sua recompensa.",
					[1801] = "Completed"
				}
			},
			[18] = {
				name = "Dunland", 
				storageId = 7125, 
				missionId = 18,
				startValue = 0, 
				endValue = 301,
				states = { 
					[0] = "Mate 300 monstros de Dunland (Dragon Hatchling, Dragon Lord Hatchling) e retorne ao Grizzly Adams para obter sua recompensa.",
					[301] = "Completed"
				}
			},
			[19] = {
				name = "Dwarfs", 
				storageId = 7110, 
				missionId = 19,
				startValue = 0, 
				endValue = 301,
				states = { 
					[0] = "Mate 300 Dwarfs (Dwarf, Dwarf Soldier, Dwarf Guard, Dwarf Miner, Dwarf Geomancer) e retorne ao Grizzly Adams para obter sua recompensa.",
					[301] = "Completed"
				}	
			},
			[20] = {
				name = "Dworcs", 
				storageId = 7111, 
				missionId = 20,
				startValue = 0, 
				endValue = 201,
				states = { 
					[0] = "Mate 200 Dworcs (Dworc Fleshhunter, Dworc Venomsniper, Dworc Voodoomaster) e retorne ao Grizzly Adams para obter sua recompensa.",
					[201] = "Completed"
				}
			},
			[21] = {
				name = "Elfos", 
				storageId = 7112, 
				missionId = 21,
				startValue = 0, 
				endValue = 501,
				states = { 
					[0] = "Mate 500 Elfos (Elf, Elf Scout, Elf Ranger, Elf Soldier, High Elf) e retorne ao Grizzly Adams para obter sua recompensa.",
					[501] = "Completed"
				}
			},
			[22] = {
				name = "Feyrist", 
				storageId = 7161, 
				missionId = 22,
				startValue = 0, 
				endValue = 801,
				states = { 
					[0] = "Mate 800 monstros de Feyrist (Faun, Pooka, Pixie, Nymph) e retorne ao Grizzly Adams para obter sua recompensa.",
					[801] = "Completed"
				}
			},
			[23] = {
				name = "Fire", 
				storageId = 7166, 
				missionId = 23,
				startValue = 0, 
				endValue = 1201,
				states = { 
					[0] = "Mate 1200 monstros de Fire (Spirit of Fire, Hellfire Fighter) e retorne ao Grizzly Adams para obter sua recompensa.",
					[1201] = "Completed"
				}
			},
			[24] = {
				name = "Furys", 
				storageId = 7131, 
				missionId = 24,
				startValue = 0, 
				endValue = 601,
				states = { 
					[0] = "Mate 600 Furys (Fury) e retorne ao Grizzly Adams para obter sua recompensa.",
					[601] = "Completed"
				}
			},
			[25] = {
				name = "Goblins", 
				storageId = 7167, 
				missionId = 25,
				startValue = 0, 
				endValue = 201,
				states = { 
					[0] = "Mate 200 Goblin (Goblin, Goblin Assassin) e retorne ao Grizzly Adams para obter sua recompensa.",
					[201] = "Completed"
				}
			},
			[26] = {
				name = "Glooth", 
				storageId = 7156, 
				missionId = 26,
				startValue = 0, 
				endValue = 1201,
				states = { 
					[0] = "Mate 1200 monstros de Glooth (Blood Beast, Glooth Anemone) e retorne ao Grizzly Adams para obter sua recompensa.",
					[1201] = "Completed"
				}
			}
		}
	}
}
end

if not LastQuestlogUpdate then
	LastQuestlogUpdate = {}
end

if not PlayerTrackedMissionsData then
	PlayerTrackedMissionsData = {}
end

-- Text functions

function evaluateText(value, player)
	if type(value) == "function" then
		return tostring(value(player))
	end

	return tostring(value)
end

-- Game functions

function Player.hasTrackingQuest(self, missionId)
	local trackedQuests = PlayerTrackedMissionsData[self:getId()]
	if trackedQuests then
		for i = 1, #trackedQuests do
			local mission = trackedQuests[i]
			if mission and mission.missionId == missionId then
				return true
			end
		end
	end
	return false
end

function Player.getQuestDataByMissionId(self, missionId)
	for questId = 1, #Quests do
		local quest = Game.getQuest(questId)
		if quest then
			if quest.missions then
				for i = 1, #quest.missions do
					local mission = quest.missions[i]
					if mission and mission.missionId == missionId then
						return quest.name, questId, i
					end
				end
			end
		end
	end
	return false
end

function Player.resetTrackedMissions(self, missions)
	local maxAllowed = self:getAllowedTrackedQuestCount()
	PlayerTrackedMissionsData[self:getId()] = {}
	for i = 1, #missions do
		local missionId = missions[i]
		local questName, questId, missionIndex = self:getQuestDataByMissionId(missionId)
		if questName and questId and missionIndex then
			if self:missionIsStarted(questId, missionIndex) then
				local data = {
					missionId = missionId,
					questName = questName,
					missionName = self:getMissionName(questId, missionIndex),
					missionDesc = "Utilize o Quest Log do Endor para verificar o seu progresso em nossas Quests e Tasks."
				}
				table.insert(PlayerTrackedMissionsData[self:getId()], data)
				if #PlayerTrackedMissionsData[self:getId()] >= maxAllowed then
					break
				end
			end
		end
	end

	self:sendTrackedQuests(maxAllowed - #PlayerTrackedMissionsData[self:getId()], PlayerTrackedMissionsData[self:getId()])
end

function Player.getAllowedTrackedQuestCount(self)
	return self:isPremium() and 25 or 10
end

function Game.isValidQuest(questId)
	return (Quests and Quests[questId])
end

function Game.isValidMission(questId, missionId)
	return (Game.isValidQuest(questId) and Quests[questId].missions and Quests[questId].missions[missionId])
end

function Game.getQuest(questId)
	if Game.isValidQuest(questId) then
		return Quests[questId]
	end
	return false
end

function Game.getQuestIdByName(name)
	for questId = 1, #Quests do
		local quest = Game.getQuest(questId)
		if quest and quest.name:lower() == name:lower() then
			return questId
		end
	end
	return false
end

function Game.getMission(questId, missionId)
	if Game.isValidMission(questId, missionId) then
		return Quests[questId].missions[missionId]
	end
	return false
end

function Player.getMissionsData(self, storage)
	local missions = {}
	for questId = 1, #Quests do
		local quest = Game.getQuest(questId)
		if quest and quest.missions then
			for missionId = 1, #quest.missions do
				local started = self:missionIsStarted(questId, missionId)
				if started then
					local mission = quest.missions[missionId]
					if mission.storageId == storage then
						local data = {
							missionId = mission.missionId,
							missionName = self:getMissionName(questId, missionId),
							missionDesc = self:getMissionDescription(questId, missionId)
						}
						missions[#missions + 1] = data
					end
				end
			end
		end
	end
	return missions
end

function Game.isQuestStorage(key, value, oldValue)
	for questId = 1, #Quests do
		local quest = Game.getQuest(questId)
		if quest then
			if quest.startStorageId == key and quest.startStorageValue == value then
				return true
			end

			if quest.missions then
				for missionId = 1, #quest.missions do
					local mission = Game.getMission(questId, missionId)
					if mission then
						if mission.storageId == key and value >= mission.startValue and value <= mission.endValue then
							return mission.description or oldValue < mission.storageId or oldValue > mission.endValue
						end
					end
				end
			end
		end
	end
	return false
end

function Game.getQuestsCount(player)
	local count = 0
	if Quests then
		for id = 1, #Quests do
			if player:questIsStarted(id) then
				count = count + 1
			end
		end
	end
	return count
end

function Game.getMissionsCount(player, questId)
	local quest = Game.getQuest(questId)
	local count = 0
	if quest then
		local missions = quest.missions
		if missions then
			for missionId = 1, #missions do
				if player:missionIsStarted(questId, missionId) then
					count = count + 1
				end
			end
		end
	end
	return count
end

function Game.addQuest(quest)
	local findQuest = Game.getQuestIdByName(quest.name)
	if findQuest then
		Quests[findQuest] = quest
		return findQuest
	end

	local questId = #Quests + 1
	Quests[questId] = quest
	return questId
end

-- Player functions

function Player.questIsStarted(self, questId)
	local quest = Game.getQuest(questId)
	if quest and self:getStorageValue(quest.startStorageId) ~= -1 or self:getStorageValue(quest.startStorageId) >= quest.startStorageValue then
		return true
	end
	return false
end

function Player.missionIsStarted(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		local value = self:getStorageValue(mission.storageId)
		if value == -1 or value < mission.startValue or (not mission.ignoreendvalue and value > mission.endValue) then
			return false
		end

		return true
	end
	return false
end

function Player.questIsCompleted(self, questId)
	local quest = Game.getQuest(questId)
	if quest then
		local missions = quest.missions
		if missions then
			for missionId = 1, #missions do
				if not self:missionIsCompleted(questId, missionId) then
					return false
				end
			end
		end
		return true
	end
	return false
end

function Player.missionIsCompleted(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		local value = self:getStorageValue(mission.storageId)
		if value == -1 then
			return false
		end

		if mission.ignoreendvalue then
			return value >= mission.endValue
		end

		return value == mission.endValue
	end
	return false
end

function Player.getMissionName(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		if self:missionIsCompleted(questId, missionId) then
			return mission.name .. " (completed)"
		end
		return mission.name
	end
	return ""
end

function Player.getMissionId(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		return mission.missionId
	end
	return 0
end

function Player.getMissionDescription(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		if mission.description then
			return evaluateText(mission.description, self)
		end

		local value = self:getStorageValue(mission.storageId)
		local state = value
		if mission.ignoreendvalue and value > table.maxn(mission.states) then
			state = table.maxn(mission.states)
		end
		return evaluateText(mission.states[state], self)
	end
	return "An error has occurred, please contact a gamemaster."
end

function Player.sendQuestLog(self)
	local msg = NetworkMessage()
	msg:addByte(0xF0)
	msg:addU16(Game.getQuestsCount(self))
	for questId = 1, #Quests do
		if self:questIsStarted(questId) then
			msg:addU16(questId)
			msg:addString(Quests[questId].name .. (self:questIsCompleted(questId) and " (completed)" or ""))
			msg:addByte(self:questIsCompleted(questId))
		end
	end
	msg:sendToPlayer(self)
	msg:delete()
end

function Player.sendQuestLine(self, questId)
	local quest = Game.getQuest(questId)
	if quest then
		local missions = quest.missions
		local msg = NetworkMessage()
		msg:addByte(0xF1)
		msg:addU16(questId)
		msg:addByte(Game.getMissionsCount(self, questId))
		if missions then
			for missionId = 1, #missions do
				if self:missionIsStarted(questId, missionId) then
					msg:addU16(self:getMissionId(questId, missionId))
					msg:addString(self:getMissionName(questId, missionId))
					msg:addString(self:getMissionDescription(questId, missionId))
				end
			end
		end

		msg:sendToPlayer(self)
		msg:delete()
	end
end

function Player.sendTrackedQuests(self, remainingQuests, missions)
	local msg = NetworkMessage()
	msg:addByte(0xD0)
	msg:addByte(0x01)
	msg:addByte(remainingQuests)
	msg:addByte(#missions)
	for _, mission in ipairs(missions) do
		msg:addU16(mission.missionId)
		msg:addString(mission.questName)
		msg:addString(mission.missionName)
		msg:addString(mission.missionDesc)
	end
	msg:sendToPlayer(self)
	msg:delete()
end

function Player.sendUpdateTrackedQuest(self, mission)
	local msg = NetworkMessage()
	msg:addByte(0xD0)
	msg:addByte(0x00)
	msg:addU16(mission.missionId)
	msg:addString(mission.missionName)
	msg:addString(mission.missionDesc)
	msg:sendToPlayer(self)
	msg:delete()
end

function Player.updateStorage(self, key, value, oldValue, currentFrameTime)
	local playerId = self:getId()
	if LastQuestlogUpdate[playerId] ~= currentFrameTime and Game.isQuestStorage(key, value, oldValue) then
		LastQuestlogUpdate[playerId] = currentFrameTime
		self:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your questlog has been updated.")
	end
	local missions = self:getMissionsData(key)
	for i = 1, #missions do
		local mission = missions[i]
		if self:hasTrackingQuest(mission.missionId) then
			self:sendUpdateTrackedQuest(mission)
		end
	end
end

local function sendPrint(questId, index)
	print(string.format("> Quest id: %d, mission: %d", questId, index))
end

for questId = 1, #Quests do
	local quest = Game.getQuest(questId)
	if quest then
		for index, value in ipairs(quest.missions) do
			if index then
				if not value.name then
					print(">> Wrong mission name found")
					sendPrint(questId, index)
				end
				if not value.storageId then
					print(">> Wrong mission storage found")
					sendPrint(questId, index)
				end
				if not value.missionId then
					print(">> Wrong mission id found")
					sendPrint(questId, index)
				end
				if not value.startValue then
					print(">> Wrong mission start value found")
					sendPrint(questId, index)
				end
				if not value.endValue then
					print(">> Wrong mission end value found")
					sendPrint(questId, index)
				end
			end
		end
	end
end

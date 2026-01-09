Hooks:Add("LocalizationManagerPostInit", "LocalizationManagerPostInit_ViewmodelTweak", function(loc)
	loc:load_localization_file(ViewmodelTweak._path .. "loc/en.txt")
end)

Hooks:Add("MenuManagerInitialize", "MenuManagerInitialize_ViewmodelTweak", function(menu_manager)
	-- ---------------------------------------------------------
	-- GLOBAL SETTINGS
	-- ---------------------------------------------------------
	MenuCallbackHandler.vmt_global_x_call = function(this, item)
		ViewmodelTweak._data.global_x = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_global_y_call = function(this, item)
		ViewmodelTweak._data.global_y = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_global_z_call = function(this, item)
		ViewmodelTweak._data.global_z = tonumber(item:value())
	end

	MenuCallbackHandler.vmt_global_reset_call = function(this, item)
		ViewmodelTweak._data.global_x = 0
		ViewmodelTweak._data.global_y = 0
		ViewmodelTweak._data.global_z = 0

		local reset = {
			["vmt_global_x"] = true,
			["vmt_global_y"] = true,
			["vmt_global_z"] = true
		}
		MenuHelper:ResetItemsToDefaultValue(item, reset, 0)
	end

	-- ---------------------------------------------------------
	-- RIFLE SETTINGS
	-- ---------------------------------------------------------
	MenuCallbackHandler.vmt_rifle_x_call = function(this, item)
		ViewmodelTweak._data.rifle_x = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_rifle_y_call = function(this, item)
		ViewmodelTweak._data.rifle_y = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_rifle_z_call = function(this, item)
		ViewmodelTweak._data.rifle_z = tonumber(item:value())
	end

	MenuCallbackHandler.vmt_rifle_reset_call = function(this, item)
		ViewmodelTweak._data.rifle_x = 0
		ViewmodelTweak._data.rifle_y = 0
		ViewmodelTweak._data.rifle_z = 0

		local reset = {
			["vmt_rifle_x"] = true,
			["vmt_rifle_y"] = true,
			["vmt_rifle_z"] = true
		}
		MenuHelper:ResetItemsToDefaultValue(item, reset, 0)
	end

	MenuCallbackHandler.vmt_akm_call = function(this, item)
		ViewmodelTweak._data.akm_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_ak5_call = function(this, item)
		ViewmodelTweak._data.ak5_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_flint_call = function(this, item)
		ViewmodelTweak._data.flint_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_ak74_call = function(this, item)
		ViewmodelTweak._data.ak74_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_amcar_call = function(this, item)
		ViewmodelTweak._data.amcar_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_m16_call = function(this, item)
		ViewmodelTweak._data.m16_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_tecci_call = function(this, item)
		ViewmodelTweak._data.tecci_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_new_m4_call = function(this, item)
		ViewmodelTweak._data.new_m4_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_sub2000_call = function(this, item)
		ViewmodelTweak._data.sub2000_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_famas_call = function(this, item)
		ViewmodelTweak._data.famas_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_s552_call = function(this, item)
		ViewmodelTweak._data.s552_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_scar_call = function(this, item)
		ViewmodelTweak._data.scar_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_ching_call = function(this, item)
		ViewmodelTweak._data.ching_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_galil_call = function(this, item)
		ViewmodelTweak._data.galil_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_g3_call = function(this, item)
		ViewmodelTweak._data.g3_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_akm_gold_call = function(this, item)
		ViewmodelTweak._data.akm_gold_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_g36_call = function(this, item)
		ViewmodelTweak._data.g36_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_vhs_call = function(this, item)
		ViewmodelTweak._data.vhs_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_contraband_call = function(this, item)
		ViewmodelTweak._data.contraband_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_new_m14_call = function(this, item)
		ViewmodelTweak._data.new_m14_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_l85a2_call = function(this, item)
		ViewmodelTweak._data.l85a2_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_aug_call = function(this, item)
		ViewmodelTweak._data.aug_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_corgi_call = function(this, item)
		ViewmodelTweak._data.corgi_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_asval_call = function(this, item)
		ViewmodelTweak._data.asval_enabled = (item:value() == "on" and true or false)
	end

	-- ---------------------------------------------------------
	-- SMG SETTINGS
	-- ---------------------------------------------------------
	MenuCallbackHandler.vmt_smg_x_call = function(this, item)
		ViewmodelTweak._data.smg_x = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_smg_y_call = function(this, item)
		ViewmodelTweak._data.smg_y = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_smg_z_call = function(this, item)
		ViewmodelTweak._data.smg_z = tonumber(item:value())
	end

	MenuCallbackHandler.vmt_smg_reset_call = function(this, item)
		ViewmodelTweak._data.smg_x = 0
		ViewmodelTweak._data.smg_y = 0
		ViewmodelTweak._data.smg_z = 0

		local reset = {
			["vmt_smg_x"] = true,
			["vmt_smg_y"] = true,
			["vmt_smg_z"] = true
		}
		MenuHelper:ResetItemsToDefaultValue(item, reset, 0)
	end

	MenuCallbackHandler.vmt_tec9_call = function(this, item)
		ViewmodelTweak._data.tec9_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_mp9_call = function(this, item)
		ViewmodelTweak._data.mp9_enabled = (item:value() == "on" and true or false)
	end

	MenuCallbackHandler.vmt_hajk_call = function(this, item)
		ViewmodelTweak._data.hajk_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_m1928_call = function(this, item)
		ViewmodelTweak._data.m1928_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_scorpion_call = function(this, item)
		ViewmodelTweak._data.scorpion_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_new_mp5_call = function(this, item)
		ViewmodelTweak._data.new_mp5_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_sr2_call = function(this, item)
		ViewmodelTweak._data.sr2_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_schakal_call = function(this, item)
		ViewmodelTweak._data.schakal_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_cobray_call = function(this, item)
		ViewmodelTweak._data.cobray_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_p90_call = function(this, item)
		ViewmodelTweak._data.p90_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_akmsu_call = function(this, item)
		ViewmodelTweak._data.akmsu_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_polymer_call = function(this, item)
		ViewmodelTweak._data.polymer_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_erma_call = function(this, item)
		ViewmodelTweak._data.erma_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_mac10_call = function(this, item)
		ViewmodelTweak._data.mac10_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_baka_call = function(this, item)
		ViewmodelTweak._data.baka_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_olympic_call = function(this, item)
		ViewmodelTweak._data.olympic_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_sterling_call = function(this, item)
		ViewmodelTweak._data.sterling_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_mp7_call = function(this, item)
		ViewmodelTweak._data.mp7_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_m45_call = function(this, item)
		ViewmodelTweak._data.m45_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_coal_call = function(this, item)
		ViewmodelTweak._data.coal_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_uzi_call = function(this, item)
		ViewmodelTweak._data.uzi_enabled = (item:value() == "on" and true or false)
	end

	-- ---------------------------------------------------------
	-- PISTOL SETTINGS
	-- ---------------------------------------------------------
	MenuCallbackHandler.vmt_pistol_x_call = function(this, item)
		ViewmodelTweak._data.pistol_x = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_pistol_y_call = function(this, item)
		ViewmodelTweak._data.pistol_y = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_pistol_z_call = function(this, item)
		ViewmodelTweak._data.pistol_z = tonumber(item:value())
	end

	MenuCallbackHandler.vmt_pistol_reset_call = function(this, item)
		ViewmodelTweak._data.pistol_x = 0
		ViewmodelTweak._data.pistol_y = 0
		ViewmodelTweak._data.pistol_z = 0

		local reset = {
			["vmt_pistol_x"] = true,
			["vmt_pistol_y"] = true,
			["vmt_pistol_z"] = true
		}
		MenuHelper:ResetItemsToDefaultValue(item, reset, 0)
	end

	MenuCallbackHandler.vmt_glock_17_call = function(this, item)
		ViewmodelTweak._data.glock_17_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_glock_18c_call = function(this, item)
		ViewmodelTweak._data.glock_18c_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_deagle_call = function(this, item)
		ViewmodelTweak._data.deagle_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_colt_1911_call = function(this, item)
		ViewmodelTweak._data.colt_1911_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_b92fs_call = function(this, item)
		ViewmodelTweak._data.b92fs_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_new_raging_bull_call = function(this, item)
		ViewmodelTweak._data.new_raging_bull_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_pl14_call = function(this, item)
		ViewmodelTweak._data.pl14_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_usp_call = function(this, item)
		ViewmodelTweak._data.usp_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_g22c_call = function(this, item)
		ViewmodelTweak._data.g22c_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_c96_call = function(this, item)
		ViewmodelTweak._data.c96_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_g26_call = function(this, item)
		ViewmodelTweak._data.g26_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_ppk_call = function(this, item)
		ViewmodelTweak._data.ppk_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_p226_call = function(this, item)
		ViewmodelTweak._data.p226_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_peacemaker_call = function(this, item)
		ViewmodelTweak._data.peacemaker_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_hs2000_call = function(this, item)
		ViewmodelTweak._data.hs2000_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_mateba_call = function(this, item)
		ViewmodelTweak._data.mateba_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_packrat_call = function(this, item)
		ViewmodelTweak._data.packrat_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_sparrow_call = function(this, item)
		ViewmodelTweak._data.sparrow_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_lemming_call = function(this, item)
		ViewmodelTweak._data.lemming_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_breech_call = function(this, item)
		ViewmodelTweak._data.breech_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_shrew_call = function(this, item)
		ViewmodelTweak._data.shrew_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_chinchilla_call = function(this, item)
		ViewmodelTweak._data.chinchilla_enabled = (item:value() == "on" and true or false)
	end

	-- ---------------------------------------------------------
	-- SHOTGUN SETTINGS
	-- ---------------------------------------------------------
	MenuCallbackHandler.vmt_shotgun_x_call = function(this, item)
		ViewmodelTweak._data.shotgun_x = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_shotgun_y_call = function(this, item)
		ViewmodelTweak._data.shotgun_y = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_shotgun_z_call = function(this, item)
		ViewmodelTweak._data.shotgun_z = tonumber(item:value())
	end

	MenuCallbackHandler.vmt_shotgun_reset_call = function(this, item)
		ViewmodelTweak._data.shotgun_x = 0
		ViewmodelTweak._data.shotgun_y = 0
		ViewmodelTweak._data.shotgun_z = 0

		local reset = {
			["vmt_shotgun_x"] = true,
			["vmt_shotgun_y"] = true,
			["vmt_shotgun_z"] = true
		}
		MenuHelper:ResetItemsToDefaultValue(item, reset, 0)
	end

	MenuCallbackHandler.vmt_boot_call = function(this, item)
		ViewmodelTweak._data.boot_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_m37_call = function(this, item)
		ViewmodelTweak._data.m37_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_rota_call = function(this, item)
		ViewmodelTweak._data.rota_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_basset_call = function(this, item)
		ViewmodelTweak._data.basset_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_saiga_call = function(this, item)
		ViewmodelTweak._data.saiga_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_b682_call = function(this, item)
		ViewmodelTweak._data.b682_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_serbu_call = function(this, item)
		ViewmodelTweak._data.serbu_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_benelli_call = function(this, item)
		ViewmodelTweak._data.benelli_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_huntsman_call = function(this, item)
		ViewmodelTweak._data.huntsman_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_spas12_call = function(this, item)
		ViewmodelTweak._data.spas12_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_ksg_call = function(this, item)
		ViewmodelTweak._data.ksg_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_r870_call = function(this, item)
		ViewmodelTweak._data.r870_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_aa12_call = function(this, item)
		ViewmodelTweak._data.aa12_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_striker_call = function(this, item)
		ViewmodelTweak._data.striker_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_judge_call = function(this, item)
		ViewmodelTweak._data.judge_enabled = (item:value() == "on" and true or false)
	end

	-- ---------------------------------------------------------
	-- LMG SETTINGS
	-- ---------------------------------------------------------
	MenuCallbackHandler.vmt_lmg_x_call = function(this, item)
		ViewmodelTweak._data.lmg_x = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_lmg_y_call = function(this, item)
		ViewmodelTweak._data.lmg_y = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_lmg_z_call = function(this, item)
		ViewmodelTweak._data.lmg_z = tonumber(item:value())
	end

	MenuCallbackHandler.vmt_lmg_reset_call = function(this, item)
		ViewmodelTweak._data.lmg_x = 0
		ViewmodelTweak._data.lmg_y = 0
		ViewmodelTweak._data.lmg_z = 0

		local reset = {
			["vmt_lmg_x"] = true,
			["vmt_lmg_y"] = true,
			["vmt_lmg_z"] = true
		}
		MenuHelper:ResetItemsToDefaultValue(item, reset, 0)
	end

	MenuCallbackHandler.vmt_hk21_call = function(this, item)
		ViewmodelTweak._data.hk21_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_mg42_call = function(this, item)
		ViewmodelTweak._data.mg42_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_m249_call = function(this, item)
		ViewmodelTweak._data.m249_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_par_call = function(this, item)
		ViewmodelTweak._data.par_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_rpk_call = function(this, item)
		ViewmodelTweak._data.rpk_enabled = (item:value() == "on" and true or false)
	end

	-- ---------------------------------------------------------
	-- SNIPER SETTINGS
	-- ---------------------------------------------------------
	MenuCallbackHandler.vmt_sniper_x_call = function(this, item)
		ViewmodelTweak._data.sniper_x = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_sniper_y_call = function(this, item)
		ViewmodelTweak._data.sniper_y = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_sniper_z_call = function(this, item)
		ViewmodelTweak._data.sniper_z = tonumber(item:value())
	end

	MenuCallbackHandler.vmt_sniper_reset_call = function(this, item)
		ViewmodelTweak._data.sniper_x = 0
		ViewmodelTweak._data.sniper_y = 0
		ViewmodelTweak._data.sniper_z = 0

		local reset = {
			["vmt_sniper_x"] = true,
			["vmt_sniper_y"] = true,
			["vmt_sniper_z"] = true
		}
		MenuHelper:ResetItemsToDefaultValue(item, reset, 0)
	end

	MenuCallbackHandler.vmt_tti_call = function(this, item)
		ViewmodelTweak._data.tti_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_desertfox_call = function(this, item)
		ViewmodelTweak._data.desertfox_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_siltstone_call = function(this, item)
		ViewmodelTweak._data.siltstone_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_wa2000_call = function(this, item)
		ViewmodelTweak._data.wa2000_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_mosin_call = function(this, item)
		ViewmodelTweak._data.mosin_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_model70_call = function(this, item)
		ViewmodelTweak._data.model70_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_r93_call = function(this, item)
		ViewmodelTweak._data.r93_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_winchester1874_call = function(this, item)
		ViewmodelTweak._data.winchester1874_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_m95_call = function(this, item)
		ViewmodelTweak._data.m95_enabled = (item:value() == "on" and true or false)
	end

	-- ---------------------------------------------------------
	-- AKIMBO SETTINGS
	-- ---------------------------------------------------------
	MenuCallbackHandler.vmt_akimbo_x_call = function(this, item)
		ViewmodelTweak._data.akimbo_x = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_akimbo_y_call = function(this, item)
		ViewmodelTweak._data.akimbo_y = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_akimbo_z_call = function(this, item)
		ViewmodelTweak._data.akimbo_z = tonumber(item:value())
	end

	MenuCallbackHandler.vmt_akimbo_reset_call = function(this, item)
		ViewmodelTweak._data.akimbo_x = 0
		ViewmodelTweak._data.akimbo_y = 0
		ViewmodelTweak._data.akimbo_z = 0

		local reset = {
			["vmt_akimbo_x"] = true,
			["vmt_akimbo_y"] = true,
			["vmt_akimbo_z"] = true
		}
		MenuHelper:ResetItemsToDefaultValue(item, reset, 0)
	end

	MenuCallbackHandler.vmt_jowi_call = function(this, item)
		ViewmodelTweak._data.jowi_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_1911_call = function(this, item)
		ViewmodelTweak._data.x_1911_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_b92fs_call = function(this, item)
		ViewmodelTweak._data.x_b92fs_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_deagle_call = function(this, item)
		ViewmodelTweak._data.x_deagle_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_g22c_call = function(this, item)
		ViewmodelTweak._data.x_g22c_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_g17_call = function(this, item)
		ViewmodelTweak._data.x_g17_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_usp_call = function(this, item)
		ViewmodelTweak._data.x_usp_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_sr2_call = function(this, item)
		ViewmodelTweak._data.x_sr2_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_mp5_call = function(this, item)
		ViewmodelTweak._data.x_mp5_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_akmsu_call = function(this, item)
		ViewmodelTweak._data.x_akmsu_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_basset_call = function(this, item)
		ViewmodelTweak._data.x_basset_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_shrew_call = function(this, item)
		ViewmodelTweak._data.x_shrew_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_chinchilla_call = function(this, item)
		ViewmodelTweak._data.x_chinchilla_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_packrat_call = function(this, item)
		ViewmodelTweak._data.x_packrat_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_coal_call = function(this, item)
		ViewmodelTweak._data.x_coal_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_baka_call = function(this, item)
		ViewmodelTweak._data.x_baka_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_cobray_call = function(this, item)
		ViewmodelTweak._data.x_cobray_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_erma_call = function(this, item)
		ViewmodelTweak._data.x_erma_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_hajk_call = function(this, item)
		ViewmodelTweak._data.x_hajk_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_m45_call = function(this, item)
		ViewmodelTweak._data.x_m45_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_m1928_call = function(this, item)
		ViewmodelTweak._data.x_m1928_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_mac10_call = function(this, item)
		ViewmodelTweak._data.x_mac10_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_mp7_call = function(this, item)
		ViewmodelTweak._data.x_mp7_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_mp9_call = function(this, item)
		ViewmodelTweak._data.x_mp9_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_olympic_call = function(this, item)
		ViewmodelTweak._data.x_olympic_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_g18c_call = function(this, item)
		ViewmodelTweak._data.x_g18c_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_p90_call = function(this, item)
		ViewmodelTweak._data.x_p90_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_polymer_call = function(this, item)
		ViewmodelTweak._data.x_polymer_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_schakal_call = function(this, item)
		ViewmodelTweak._data.x_schakal_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_scorpion_call = function(this, item)
		ViewmodelTweak._data.x_scorpion_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_sterling_call = function(this, item)
		ViewmodelTweak._data.x_sterling_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_tec9_call = function(this, item)
		ViewmodelTweak._data.x_tec9_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_uzi_call = function(this, item)
		ViewmodelTweak._data.x_uzi_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_2006m_call = function(this, item)
		ViewmodelTweak._data.x_2006m_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_breech_call = function(this, item)
		ViewmodelTweak._data.x_breech_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_c96_call = function(this, item)
		ViewmodelTweak._data.x_c96_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_hs2000_call = function(this, item)
		ViewmodelTweak._data.x_hs2000_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_lemming_call = function(this, item)
		ViewmodelTweak._data.x_lemming_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_p226_call = function(this, item)
		ViewmodelTweak._data.x_p226_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_pl14_call = function(this, item)
		ViewmodelTweak._data.x_pl14_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_ppk_call = function(this, item)
		ViewmodelTweak._data.x_ppk_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_rage_call = function(this, item)
		ViewmodelTweak._data.x_rage_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_sparrow_call = function(this, item)
		ViewmodelTweak._data.x_sparrow_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_judge_call = function(this, item)
		ViewmodelTweak._data.x_judge_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_x_rota_call = function(this, item)
		ViewmodelTweak._data.x_rota_enabled = (item:value() == "on" and true or false)
	end

	-- ---------------------------------------------------------
	-- SPECIAL SETTINGS
	-- ---------------------------------------------------------
	MenuCallbackHandler.vmt_special_x_call = function(this, item)
		ViewmodelTweak._data.special_x = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_special_y_call = function(this, item)
		ViewmodelTweak._data.special_y = tonumber(item:value())
	end
	MenuCallbackHandler.vmt_special_z_call = function(this, item)
		ViewmodelTweak._data.special_z = tonumber(item:value())
	end

	MenuCallbackHandler.vmt_special_reset_call = function(this, item)
		ViewmodelTweak._data.special_x = 0
		ViewmodelTweak._data.special_y = 0
		ViewmodelTweak._data.special_z = 0

		local reset = {
			["vmt_special_x"] = true,
			["vmt_special_y"] = true,
			["vmt_special_z"] = true
		}
		MenuHelper:ResetItemsToDefaultValue(item, reset, 0)
	end

	MenuCallbackHandler.vmt_ecp_call = function(this, item)
		ViewmodelTweak._data.ecp_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_arbiter_call = function(this, item)
		ViewmodelTweak._data.arbiter_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_china_call = function(this, item)
		ViewmodelTweak._data.china_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_ray_call = function(this, item)
		ViewmodelTweak._data.ray_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_slap_call = function(this, item)
		ViewmodelTweak._data.slap_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_long_call = function(this, item)
		ViewmodelTweak._data.long_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_flamethrower_mk2_call = function(this, item)
		ViewmodelTweak._data.flamethrower_mk2_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_gre_m79_call = function(this, item)
		ViewmodelTweak._data.gre_m79_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_arblast_call = function(this, item)
		ViewmodelTweak._data.arblast_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_rpg7_call = function(this, item)
		ViewmodelTweak._data.rpg7_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_frankish_call = function(this, item)
		ViewmodelTweak._data.frankish_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_m32_call = function(this, item)
		ViewmodelTweak._data.m32_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_hunter_call = function(this, item)
		ViewmodelTweak._data.hunter_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_saw_call = function(this, item)
		ViewmodelTweak._data.saw_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_plainsrider_call = function(this, item)
		ViewmodelTweak._data.plainsrider_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_m134_call = function(this, item)
		ViewmodelTweak._data.m134_enabled = (item:value() == "on" and true or false)
	end
	MenuCallbackHandler.vmt_shuno_call = function(this, item)
		ViewmodelTweak._data.shuno_enabled = (item:value() == "on" and true or false)
	end


	MenuCallbackHandler.vmt_save_call = function(this, item)
		ViewmodelTweak:Save()
	end

	ViewmodelTweak:Load()

	MenuHelper:LoadFromJsonFile(ViewmodelTweak._path .. "menu/options.json", ViewmodelTweak, ViewmodelTweak._data)
	MenuHelper:LoadFromJsonFile(ViewmodelTweak._path .. "menu/options_rifle.json", ViewmodelTweak, ViewmodelTweak._data)
	MenuHelper:LoadFromJsonFile(ViewmodelTweak._path .. "menu/options_lmg.json", ViewmodelTweak, ViewmodelTweak._data)
	MenuHelper:LoadFromJsonFile(ViewmodelTweak._path .. "menu/options_smg.json", ViewmodelTweak, ViewmodelTweak._data)
	MenuHelper:LoadFromJsonFile(ViewmodelTweak._path .. "menu/options_sniper.json", ViewmodelTweak, ViewmodelTweak._data)
	MenuHelper:LoadFromJsonFile(ViewmodelTweak._path .. "menu/options_pistol.json", ViewmodelTweak, ViewmodelTweak._data)
	MenuHelper:LoadFromJsonFile(ViewmodelTweak._path .. "menu/options_shotgun.json", ViewmodelTweak, ViewmodelTweak._data)
	MenuHelper:LoadFromJsonFile(ViewmodelTweak._path .. "menu/options_akimbo.json", ViewmodelTweak, ViewmodelTweak._data)
	MenuHelper:LoadFromJsonFile(ViewmodelTweak._path .. "menu/options_special.json", ViewmodelTweak, ViewmodelTweak._data)
end)
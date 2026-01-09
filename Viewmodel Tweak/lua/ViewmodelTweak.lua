_G.ViewmodelTweak = _G.ViewmodelTweak or {}
ViewmodelTweak._path = ModPath
ViewmodelTweak._data_path = SavePath .. "viewmodel_tweak.txt"
ViewmodelTweak._data = {}
ViewmodelTweak.settings = {
	global_x = 0,
	global_y = 0,
	global_z = 0,
	rifle_x = 0,
	rifle_y = 0,
	rifle_z = 0,
	sniper_x = 0,
	sniper_y = 0,
	sniper_z = 0,
	lmg_x = 0,
	lmg_y = 0,
	lmg_z = 0,
	smg_x = 0,
	smg_y = 0,
	smg_z = 0,
	pistol_x = 0,
	pistol_y = 0,
	pistol_z = 0,
	akimbo_x = 0,
	akimbo_y = 0,
	akimbo_z = 0,
	smg_x = 0,
	smg_y = 0,
	smg_z = 0,
	shotgun_x = 0,
	shotgun_y = 0,
	shotgun_z = 0,
	special_x = 0,
	special_y = 0,
	special_z = 0,
	
	akm_enabled = true,
	ak5_enabled = true,
	flint_enabled = true,
	ak74_enabled = true,
	amcar_enabled = true,
	m16_enabled = true,
	tecci_enabled = true,
	new_m4_enabled = true,
	sub2000_enabled = true,
	famas_enabled = true,
	s552_enabled = true,
	scar_enabled = true,
	ching_enabled = true,
	galil_enabled = true,
	g3_enabled = true,
	fal_enabled = true,
	akm_gold_enabled = true,
	g36_enabled = true,
	vhs_enabled = true,
	contraband_enabled = true,
	new_m14_enabled = true,
	l85a2_enabled = true,
	aug_enabled = true,
	corgi_enabled = true,
	asval_enabled = true,

	tec9_enabled = true,
	mp9_enabled = true,
	hajk_enabled = true,
	m1928_enabled = true,
	scorpion_enabled = true,
	new_mp5_enabled = true,
	sr2_enabled = true,
	schakal_enabled = true,
	cobray_enabled = true,
	p90_enabled = true,
	akmsu_enabled = true,
	polymer_enabled = true,
	erma_enabled = true,
	mac10_enabled = true,
	baka_enabled = true,
	olympic_enabled = true,
	sterling_enabled = true,
	mp7_enabled = true,
	m45_enabled = true,
	coal_enabled = true,
	uzi_enabled = true,

	glock_17_enabled = true,
	glock_18c_enabled = true,
	deagle_enabled = true,
	colt_1911_enabled = true,
	b92fs_enabled = true,
	new_raging_bull_enabled = true,
	pl14_enabled = true,
	usp_enabled = true,
	g22c_enabled = true,
	c96_enabled = true,
	g26_enabled = true,
	ppk_enabled = true,
	p226_enabled = true,
	peacemaker_enabled = true,
	hs2000_enabled = true,
	mateba_enabled = true,
	packrat_enabled = true,
	sparrow_enabled = true,
	lemming_enabled = true,
	breech_enabled = true,
	shrew_enabled = true,
	chinchilla_enabled = true,

	boot_enabled = true,
	m37_enabled = true,
	rota_enabled = true,
	basset_enabled = true,
	saiga_enabled = true,
	b682_enabled = true,
	serbu_enabled = true,
	benelli_enabled = true,
	huntsman_enabled = true,
	spas12_enabled = true,
	ksg_enabled = true,
	r870_enabled = true,
	aa12_enabled = true,
	striker_enabled = true,
	judge_enabled = true,

	hk21_enabled = true,
	mg42_enabled = true,
	m249_enabled = true,
	par_enabled = true,
	rpk_enabled = true,

	tti_enabled = true,
	desertfox_enabled = true,
	siltstone_enabled = true,
	wa2000_enabled = true,
	mosin_enabled = true,
	model70_enabled = true,
	r93_enabled = true,
	winchester1874_enabled = true,
	m95_enabled = true,

	jowi_enabled = true,
	x_1911_enabled = true,
	x_b92fs_enabled = true,
	x_deagle_enabled = true,
	x_g22c_enabled = true,
	x_g17_enabled = true,
	x_usp_enabled = true,
	x_sr2_enabled = true,
	x_mp5_enabled = true,
	x_akmsu_enabled = true,
	x_basset_enabled = true,
	x_shrew_enabled = true,
	x_chinchilla_enabled = true,
	x_packrat_enabled = true,
	x_coal_enabled = true,
	x_baka_enabled = true,
	x_cobray_enabled = true,
	x_erma_enabled = true,
	x_hajk_enabled = true,
	x_m45_enabled = true,
	x_m1928_enabled = true,
	x_mac10_enabled = true,
	x_mp7_enabled = true,
	x_mp9_enabled = true,
	x_olympic_enabled = true,
	x_p90_enabled = true,
	x_polymer_enabled = true,
	x_schakal_enabled = true,
	x_scorpion_enabled = true,
	x_sterling_enabled = true,
	x_tec9_enabled = true,
	x_uzi_enabled = true,
	x_2006m_enabled = true,
	x_breech_enabled = true,
	x_c96_enabled = true,
	x_g18c_enabled = true,
	x_hs2000_enabled = true,
	x_lemming_enabled = true,
	x_p226_enabled = true,
	x_pl14_enabled = true,
	x_ppk_enabled = true,
	x_rage_enabled = true,
	x_sparrow_enabled = true,
	x_judge_enabled = true,
	x_rota_enabled = true,

	ecp_enabled = true,
	arbiter_enabled = true,
	china_enabled = true,
	ray_enabled = true,
	slap_enabled = true,
	long_enabled = true,
	flamethrower_mk2_enabled = true,
	arblast_enabled = true,
	rpg7_enabled = true,
	frankish_enabled = true,
	m32_enabled = true,
	hunter_enabled = true,
	saw_enabled = true,
	plainsrider_enabled = true,
	m134_enabled = true,
	shuno_enabled = true
}

function ViewmodelTweak:IsEnabled(weap)
	if (weap == 'ak5' and not self.settings.ak5_enabled) then return false
	elseif (weap == 'ak74' and not self.settings.ak74_enabled) then return false
	elseif (weap == 'akm' and not self.settings.akm_enabled) then return false
	elseif (weap == 'amcar' and not self.settings.amcar_enabled) then return false
	elseif (weap == 'new_m4' and not self.settings.new_m4_enabled) then return false
	elseif (weap == 'm16' and not self.settings.m16_enabled) then return false
	elseif (weap == 'aug' and not self.settings.aug_enabled) then return false
	elseif (weap == 'g36' and not self.settings.g36_enabled) then return false
	elseif (weap == 'new_m14' and not self.settings.new_m14_enabled) then return false
	elseif (weap == 'akm_gold' and not self.settings.akm_gold_enabled) then return false
	elseif (weap == 's552' and not self.settings.s552_enabled) then return false
	elseif (weap == 'scar' and not self.settings.scar_enabled) then return false
	elseif (weap == 'fal' and not self.settings.fal_enabled) then return false
	elseif (weap == 'g3' and not self.settings.g3_enabled) then return false
	elseif (weap == 'galil' and not self.settings.galil_enabled) then return false
	elseif (weap == 'famas' and not self.settings.famas_enabled) then return false
	elseif (weap == 'l85a2' and not self.settings.l85a2_enabled) then return false
	elseif (weap == 'asval' and not self.settings.asval_enabled) then return false
	elseif (weap == 'vhs' and not self.settings.vhs_enabled) then return false
	elseif (weap == 'sub2000' and not self.settings.sub2000_enabled) then return false
	elseif (weap == 'contraband' and not self.settings.contraband_enabled) then return false
	elseif (weap == 'flint' and not self.settings.flint_enabled) then return false
	elseif (weap == 'ching' and not self.settings.ching_enabled) then return false
	elseif (weap == 'corgi' and not self.settings.corgi_enabled) then return false

	elseif (weap == 'tec9' and not self.settings.tec9_enabled) then return false
	elseif (weap == 'mp9' and not self.settings.mp9_enabled) then return false
	elseif (weap == 'hajk' and not self.settings.hajk_enabled) then return false
	elseif (weap == 'm1928' and not self.settings.m1928_enabled) then return false
	elseif (weap == 'scorpion' and not self.settings.scorpion_enabled) then return falser
	elseif (weap == 'new_mp5' and not self.settings.new_mp5_enabled) then return falser
	elseif (weap == 'sr2' and not self.settings.sr2_enabled) then return falser
	elseif (weap == 'schakal' and not self.settings.schakal_enabled) then return falser
	elseif (weap == 'cobray' and not self.settings.cobray_enabled) then return falser
	elseif (weap == 'p90' and not self.settings.p90_enabled) then return false
	elseif (weap == 'akmsu' and not self.settings.akmsu_enabled) then return false
	elseif (weap == 'polymer' and not self.settings.polymer_enabled) then return false
	elseif (weap == 'erma' and not self.settings.erma_enabled) then return false
	elseif (weap == 'mac10' and not self.settings.mac10_enabled) then return false
	elseif (weap == 'baka' and not self.settings.baka_enabled) then return false
	elseif (weap == 'olympic' and not self.settings.olympic_enabled) then return false
	elseif (weap == 'sterling' and not self.settings.sterling_enabled) then return false
	elseif (weap == 'mp7' and not self.settings.mp7_enabled) then return false
	elseif (weap == 'm45' and not self.settings.m45_enabled) then return false
	elseif (weap == 'coal' and not self.settings.coal_enabled) then return false
	elseif (weap == 'uzi' and not self.settings.uzi_enabled) then return false

	elseif (weap == 'glock_17' and not self.settings.glock_17_enabled) then return false
	elseif (weap == 'glock_18c' and not self.settings.glock_18c_enabled) then return false
	elseif (weap == 'deagle' and not self.settings.deagle_enabled) then return false
	elseif (weap == 'colt_1911' and not self.settings.colt_1911_enabled) then return false
	elseif (weap == 'b92fs' and not self.settings.b92fs_enabled) then return false
	elseif (weap == 'new_raging_bull' and not self.settings.new_raging_bull_enabled) then return false
	elseif (weap == 'pl14' and not self.settings.pl14_enabled) then return false
	elseif (weap == 'usp' and not self.settings.usp_enabled) then return false
	elseif (weap == 'g22c' and not self.settings.g22c_enabled) then return false
	elseif (weap == 'c96' and not self.settings.c96_enabled) then return false
	elseif (weap == 'g26' and not self.settings.g26_enabled) then return false
	elseif (weap == 'ppk' and not self.settings.ppk_enabled) then return false
	elseif (weap == 'p226' and not self.settings.p226_enabled) then return false
	elseif (weap == 'peacemaker' and not self.settings.peacemaker_enabled) then return false
	elseif (weap == 'hs2000' and not self.settings.hs2000_enabled) then return false
	elseif (weap == 'mateba' and not self.settings.mateba_enabled) then return false
	elseif (weap == 'packrat' and not self.settings.packrat_enabled) then return false
	elseif (weap == 'sparrow' and not self.settings.sparrow_enabled) then return false
	elseif (weap == 'lemming' and not self.settings.lemming_enabled) then return false
	elseif (weap == 'breech' and not self.settings.breech_enabled) then return false
	elseif (weap == 'shrew' and not self.settings.shrew_enabled) then return false
	elseif (weap == 'chinchilla' and not self.settings.chinchilla_enabled) then return false

	elseif (weap == 'boot' and not self.settings.boot_enabled) then return false
	elseif (weap == 'm37' and not self.settings.m37_enabled) then return false
	elseif (weap == 'rota' and not self.settings.rota_enabled) then return false
	elseif (weap == 'basset' and not self.settings.basset_enabled) then return false
	elseif (weap == 'saiga' and not self.settings.saiga_enabled) then return false
	elseif (weap == 'b682' and not self.settings.b682_enabled) then return false
	elseif (weap == 'serbu' and not self.settings.serbu_enabled) then return false
	elseif (weap == 'benelli' and not self.settings.benelli_enabled) then return false
	elseif (weap == 'huntsman' and not self.settings.huntsman_enabled) then return false
	elseif (weap == 'spas12' and not self.settings.spas12_enabled) then return false
	elseif (weap == 'ksg' and not self.settings.ksg_enabled) then return false
	elseif (weap == 'r870' and not self.settings.r870_enabled) then return false
	elseif (weap == 'aa12' and not self.settings.aa12_enabled) then return false
	elseif (weap == 'striker' and not self.settings.striker_enabled) then return false
	elseif (weap == 'judge' and not self.settings.judge_enabled) then return false

	elseif (weap == 'hk21' and not self.settings.hk21_enabled) then return false
	elseif (weap == 'mg42' and not self.settings.mg42_enabled) then return false
	elseif (weap == 'm249' and not self.settings.m249_enabled) then return false
	elseif (weap == 'par' and not self.settings.par_enabled) then return false
	elseif (weap == 'rpk' and not self.settings.rpk_enabled) then return false

	elseif (weap == 'tti' and not self.settings.tti_enabled) then return false
	elseif (weap == 'desertfox' and not self.settings.desertfox_enabled) then return false
	elseif (weap == 'siltstone' and not self.settings.siltstone_enabled) then return false
	elseif (weap == 'wa2000' and not self.settings.wa2000_enabled) then return false
	elseif (weap == 'mosin' and not self.settings.mosin_enabled) then return false
	elseif (weap == 'model70' and not self.settings.model70_enabled) then return false
	elseif (weap == 'r93' and not self.settings.r93_enabled) then return false
	elseif (weap == 'winchester1874' and not self.settings.winchester1874_enabled) then return false
	elseif (weap == 'm95' and not self.settings.m95_enabled) then return false

	elseif (weap == 'jowi' and not self.settings.jowi_enabled) then return false
	elseif (weap == 'x_1911' and not self.settings.x_1911_enabled) then return false
	elseif (weap == 'x_b92fs' and not self.settings.x_b92fs_enabled) then return false
	elseif (weap == 'x_deagle' and not self.settings.x_deagle_enabled) then return false
	elseif (weap == 'x_g22c' and not self.settings.x_g22c_enabled) then return false
	elseif (weap == 'x_g17' and not self.settings.x_g17_enabled) then return false
	elseif (weap == 'x_usp' and not self.settings.x_usp_enabled) then return false
	elseif (weap == 'x_sr2' and not self.settings.x_sr2_enabled) then return false
	elseif (weap == 'x_mp5' and not self.settings.x_mp5_enabled) then return false
	elseif (weap == 'x_akmsu' and not self.settings.x_akmsu_enabled) then return false
	elseif (weap == 'x_basset' and not self.settings.x_basset_enabled) then return false
	elseif (weap == 'x_shrew' and not self.settings.x_shrew_enabled) then return false
	elseif (weap == 'x_chinchilla' and not self.settings.x_chinchilla_enabled) then return false
	elseif (weap == 'x_packrat' and not self.settings.x_packrat_enabled) then return false
	elseif (weap == 'x_coal' and not self.settings.x_coal_enabled) then return false
	elseif (weap == 'x_baka' and not self.settings.x_baka_enabled) then return false
	elseif (weap == 'x_cobray' and not self.settings.x_cobray_enabled) then return false
	elseif (weap == 'x_erma' and not self.settings.x_erma_enabled) then return false
	elseif (weap == 'x_hajk' and not self.settings.x_hajk_enabled) then return false
	elseif (weap == 'x_m45' and not self.settings.x_m45_enabled) then return false
	elseif (weap == 'x_m1928' and not self.settings.x_m1928_enabled) then return false
	elseif (weap == 'x_mac10' and not self.settings.x_mac10_enabled) then return false
	elseif (weap == 'x_mp7' and not self.settings.x_mp7_enabled) then return false
	elseif (weap == 'x_mp9' and not self.settings.x_mp9_enabled) then return false
	elseif (weap == 'x_olympic' and not self.settings.x_olympic_enabled) then return false
	elseif (weap == 'x_p90' and not self.settings.x_p90_enabled) then return false
	elseif (weap == 'x_polymer' and not self.settings.x_polymer_enabled) then return false
	elseif (weap == 'x_schakal' and not self.settings.x_schakal_enabled) then return false
	elseif (weap == 'x_scorpion' and not self.settings.x_scorpion_enabled) then return false
	elseif (weap == 'x_sterling' and not self.settings.x_sterling_enabled) then return false
	elseif (weap == 'x_tec9' and not self.settings.x_tec9_enabled) then return false
	elseif (weap == 'x_uzi' and not self.settings.x_uzi_enabled) then return false
	elseif (weap == 'x_2006m' and not self.settings.x_2006m_enabled) then return false
	elseif (weap == 'x_breech' and not self.settings.x_breech_enabled) then return false
	elseif (weap == 'x_c96' and not self.settings.x_c96_enabled) then return false
	elseif (weap == 'x_g18c' and not self.settings.x_g18c_enabled) then return false
	elseif (weap == 'x_hs2000' and not self.settings.x_hs2000_enabled) then return false
	elseif (weap == 'x_lemming' and not self.settings.x_lemming_enabled) then return false
	elseif (weap == 'x_p226' and not self.settings.x_p226_enabled) then return false
	elseif (weap == 'x_pl14' and not self.settings.x_pl14_enabled) then return false
	elseif (weap == 'x_ppk' and not self.settings.x_ppk_enabled) then return false
	elseif (weap == 'x_rage' and not self.settings.x_rage_enabled) then return false
	elseif (weap == 'x_sparrow' and not self.settings.x_sparrow_enabled) then return false
	elseif (weap == 'x_judge' and not self.settings.x_judge_enabled) then return false
	elseif (weap == 'x_rota' and not self.settings.x_rota_enabled) then return false

	elseif (weap == 'ecp' and not self.settings.ecp_enabled) then return false
	elseif (weap == 'arbiter' and not self.settings.arbiter_enabled) then return false
	elseif (weap == 'china' and not self.settings.china_enabled) then return false
	elseif (weap == 'ray' and not self.settings.ray_enabled) then return false
	elseif (weap == 'slap' and not self.settings.slap_enabled) then return false
	elseif (weap == 'long' and not self.settings.long_enabled) then return false
	elseif (weap == 'flamethrower_mk2' and not self.settings.flamethrower_mk2_enabled) then return false
	elseif (weap == 'arblast' and not self.settings.arblast_enabled) then return false
	elseif (weap == 'rpg7' and not self.settings.rpg7_enabled) then return false
	elseif (weap == 'frankish' and not self.settings.frankish_enabled) then return false
	elseif (weap == 'm32' and not self.settings.m32_enabled) then return false
	elseif (weap == 'hunter' and not self.settings.hunter_enabled) then return false
	elseif (weap == 'saw' and not self.settings.saw_enabled) then return false
	elseif (weap == 'plainsrider' and not self.settings.plainsrider_enabled) then return false
	elseif (weap == 'm134' and not self.settings.m134_enabled) then return false
	elseif (weap == 'shuno' and not self.settings.shuno_enabled) then return false
	end
	return true
end

function ViewmodelTweak:Save()
	for k, v in pairs(self._data) do
		if (self._data[k] ~= nil) then
			self.settings[k] = v
		end
	end

	local file = io.open(self._data_path, "w+")
	
	if (file) then
		file:write(json.encode(self.settings))
		file:close()
	end
end

function ViewmodelTweak:Load()
	local file = io.open(self._data_path, "r")
	
	if (file) then
		self._data = json.decode(file:read("*all"))
		file:close()
	end

	for k, v in pairs(self._data) do
		if (self._data[k] ~= nil) then
			self.settings[k] = v
		end
	end
end
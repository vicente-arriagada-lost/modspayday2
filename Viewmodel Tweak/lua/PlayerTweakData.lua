local viewmodel_tweaks = {
	['ak74'] = {									-- AK Rifle
		category = 'Rifle',
		trans = {10.6635, 40.3795, -4.93265},
		rot = {0.10668, -0.0844958, 0.629228},
		pos = {7.25, 35, -3}
	},
	['ak5'] = {										-- AK5
		category = 'Rifle',
		trans = {10.7331, 15.6146, -2.75547},
		rot = {0.106611, -0.431014, 0.6292},
		pos = {7.25, 17, -5.5}
	},
	['akm'] = {										-- AK.762
		category = 'Rifle',
		trans = {10.6635, 40.3795, -4.93265},
		rot = {0.10668, -0.0844958, 0.629228},
		pos = {7.5, 36, -3.5}
	},
	['amcar'] = {									-- AMCAR
		category = 'Rifle',
		trans = {10.7332, 15.6145, -2.75549},
		rot = {0.106625, -0.450997, 0.629212},
		pos = {6.25, 13, -2.75}
	},
	['new_m4'] = {									-- CAR-4
		category = 'Rifle',
		trans = {10.7332, 15.6145, -2.75549},
		rot = {0.106625, -0.450997, 0.629212},
		pos = {7, 15, -3}
	},
	['m16'] = {										-- AMR-16
		category = 'Rifle',
		trans = {10.7353, 23.0139, -1.43553},
		rot = {0.106665, -0.0845104, 0.629231},
		pos = {7.5, 22, -2.5}
	},
	['aug'] = {										-- UAR
		category = 'Rifle',
		trans = {8.80945, 14.8857, -4.39332},
		rot = {0.106486, -0.0841679, 0.627838},
		pos = {6.25, 21, -4}
	},
	['g36'] = {										-- JP36
		category = 'Rifle',
		trans = {10.5658, 24.8768, -1.07923},
		rot = {-3.13746E-4, 8.13967E-4, -2.7678E-4},
		pos = {8.25, 23, -2.5}
	},
	['new_m14'] = {									-- M308
		category = 'Rifle',
		trans = {10.7037, 23.0304, -4.44631},
		rot = {0.10663, -0.0844432, 0.629197},
		pos = {7.5, 17, -4.5}
	},
	['akm_gold'] = {								-- Golden AK.762
		category = 'Rifle',
		trans = {10.6635, 40.3795, -4.93265},
		rot = {0.10668, -0.0844958, 0.629228},
		pos = {6, 34, -3},
		func = PlayerTweakData._init_akm_gold
	},
	['s552'] = {									-- Commando 553
		category = 'Rifle',
		trans = {11.6642, 22.0789, -4.95194},
		rot = {0.106285, -0.08453, 0.630167},
		pos = {8, 20, -4},
		func = PlayerTweakData._init_s552
	},
	['scar'] = {									-- Eagle Heavy
		category = 'Rifle',
		trans = {10.7779, 19.512, 0.0239211},
		rot = {0.107705, -0.0837022, 0.629766},
		pos = {7.25, 17.5, -2},
		func = PlayerTweakData._init_scar
	},
	['fal'] = {										-- Falcon
		category = 'Rifle',
		trans = {10.6398, 30.1141, -4.37184},
		rot = {0.106667, -0.0849355, 0.628585},
		pos = {7.25, 29, -4.5},
		func = PlayerTweakData._init_fal
	},
	['g3'] = {										-- Gewehr 3
		category = 'Rifle',
		trans = {10.7158, 21.5452, -1.67945},
		rot = {0.107438, -0.0837396, 0.629882},
		pos = {8.25, 24, -4},
		func = PlayerTweakData._init_g3
	},
	['galil'] = {									-- Gecko 7.62
		category = 'Rifle',
		trans = {10.7344, 22.1028, -3.71493},
		rot = {0.107212, -0.0843867, 0.629332},
		pos = {7, 17, -3},
		func = PlayerTweakData._init_galil
	},
	['famas'] = {									-- Clarion
		category = 'Rifle',
		trans = {12.4978, 36.9949, -1.6971},
		rot = {2.58401, -0.0831424, 0.629405},
		pos = {7.5, 36, -3},
		func = PlayerTweakData._init_famas
	},
	['l85a2'] = {									-- Queen's Wrath
		category = 'Rifle',
		trans = {9.494, 25.5678, -0.986251},
		rot = {0.00116616, 0.00248113, 6.06522E-4},
		pos = {7.75, 32, -1},
		func = PlayerTweakData._init_l85a2
	},
	['asval'] = {									-- Valkyria
		category = 'Rifle',
		trans = {10.6379, 44.277, -6.34431},
		rot = {0.108542, -0.0846267, 0.631398},
		pos = {6.5, 45, -4},
		func = PlayerTweakData._init_asval
	},
	['vhs'] = {										-- Lion's Roar
		category = 'Rifle',
		trans = {9.11614, 8.59096, -0.476531},
		rot = {1.99016E-5, 0.00109528, 3.12054E-4},
		pos = {9, 23, -2.5},
		func = PlayerTweakData._init_vhs
	},
	['sub2000'] = {									-- Cavity 9mm
		category = 'Rifle',
		trans = {10.579, 18.1015, -4.96283},
		rot = {6.05534E-4, 0.00148493, 6.76394E-4},
		pos = {6.5, 22, -3.5},
		func = PlayerTweakData._init_sub2000
	},
	['tecci'] = {									-- Bootleg
		category = 'Rifle',
		trans = {11.2307, 11.2773, -3.55915},
		rot = {5.14897E-5, 0.00122516, -3.32118E-4},
		pos = {6.5, 21, -2.6},
		func = PlayerTweakData._init_tecci
	},
	['contraband'] = {								-- Little Friend 7.62
		category = 'Rifle',
		trans = {10.5287, 22.9343, -2.3085},
		rot = {6.99405E-5, 3.77474E-4, -6.77576E-4},
		pos = {8.5, 24, -4.5},
		func = PlayerTweakData._init_contraband
	},
	['flint'] = {									-- AK17
		category = 'Rifle',
		trans = {10.2469, 16.6957, -4.38158},
		rot = {8.23052E-5, 3.24433E-4, -8.04522E-4},
		pos = {9, 22, -4},
		func = PlayerTweakData._init_flint
	},
	['ching'] = {									-- Galant
		category = 'Rifle',
		trans = {10.895, 16.2585, -2.67599},
		rot = {4.6449e-05, 0.000568613, -0.000336067},
		pos = {8, 22, -5.5},
		func = PlayerTweakData._init_ching
	},
	['corgi'] = {									-- Union 5.56
		category = 'Rifle',
		trans = {11.8414, 20.7689, -4.23194},
		rot = {2.71007e-05, -0.00103648, -0.000739368},
		pos = {7, 21, -3.5},
		func = PlayerTweakData._init_corgi
	},
	['mg42'] = {									-- Buzzsaw 42
		category = 'LMG',
		trans = {10.713, 47.8277, 0.873785},
		rot = {0.10662, -0.0844545, 0.629209},
		pos = {9.5, 47, -6},
		func = PlayerTweakData._init_mg42
	},
	['hk21'] = {									-- Brenner 21
		category = 'LMG',
		trans = {8.59464, 11.3996, -3.26142},
		rot = {7.08051E-6, 0.00559065, 3.07211E-4},
		pos = {7, 12, -4.5},
		func = PlayerTweakData._init_hk21
	},
	['m249'] = {									-- KSP
		category = 'LMG',
		trans = {10.7806, 4.38612, -0.718837},
		rot = {0.106596, -0.0844502, 0.629187},
		pos = {7.5, 14, -4},
		func = PlayerTweakData._init_m249
	},
	['rpk'] = {										-- RPK
		category = 'LMG',
		trans = {10.6725, 27.7166, -4.93564},
		rot = {0.1067, -0.0850111, 0.629008},
		pos = {7, 35, -3},
		func = PlayerTweakData._init_rpk
	},
	['par'] = {										-- Ksp 58
		category = 'LMG',
		trans = {10.7056, 4.38842, -0.747177},
		rot = {0.106618, -0.084954, 0.62858},
		pos = {8.5, 8, -3},
		func = PlayerTweakData._init_par
	},
	['model70'] = {									-- Platypus 70
		category = 'Sniper',
		trans = {7.96526, 39.0739, -3.92198},
		rot = {4.36208E-5, 6.03618E-4, -3.30838E-4},
		pos = {10, 53, -8.5},
		func = PlayerTweakData._init_model70
	},
	['msr'] = {										-- Rattlesnake
		category = 'Sniper',
		trans = {8.74673, 40.7228, -3.34979},
		rot = {0.106658, -0.0843346, 0.62918},
		pos = {11, 45, -9.5},
		func = PlayerTweakData._init_msr
	},
	['r93'] = {										-- R93
		category = 'Sniper',
		trans = {8.74673, 40.7228, -3.34979},
		rot = {0.106658, -0.0843346, 0.62918},
		pos = {9, 40, -7.5},
		func = PlayerTweakData._init_r93
	},
	['m95'] = {										-- Thanatos .50 cal
		category = 'Sniper',
		trans = {12.9429, 21.4699, -2.48515},
		rot = {0.113195, 0.518822, 0.628052},
		pos = {9, 25, -10},
		func = PlayerTweakData._init_m95
	},
	['mosin'] = {									-- Nagant
		category = 'Sniper',
		trans = {8.73391, 40.3748, -4.10975},
		rot = {0.106649, -0.0843498, 0.629165},
		pos = {9.5, 45, -8},
		func = PlayerTweakData._init_mosin
	},
	['wa2000'] = {									-- Lebensauger .308
		category = 'Sniper',
		trans = {10.5502, 10.5337, 0.275142},
		rot = {-2.25784E-4, 0.00162484, -1.92709E-4},
		pos = {8.75, 32, -4},
		func = PlayerTweakData._init_wa2000
	},
	['winchester1874'] = {							-- Repeater 1874
		category = 'Sniper',
		trans = {10.7128, 49.0468, -8.57197},
		rot = {0.00173532, -0.0855528, 0.630742},
		pos = {7, 54, -6},
		func = PlayerTweakData._init_winchester1874
	},
	['desertfox'] = {								-- Desertfox
		category = 'Sniper',
		trans = {7.4322, 8.2886, -4.55909},
		rot = {-0.18072, 0.18035, -0.180208},
		pos = {8, 21, -7},
		func = PlayerTweakData._init_desertfox
	},
	['siltstone'] = {								-- Grom
		category = 'Sniper',
		trans = {9.42981, 34.8465, -3.24468},
		rot = {1.98032E-4, -7.19335E-5, -0.00179495},
		pos = {9.5, 51, -7.5},
		func = PlayerTweakData._init_siltstone
	},
	['tti'] = {										-- Contractor .308
		category = 'Sniper',
		trans = {9.36916, 15.8528, -0.934953},
		rot = {-7.13286E-4, 3.4839E-4, -5.86914E-5},
		pos = {10, 30, -6},
		func = PlayerTweakData._init_tti
	},
	['saiga'] = {									-- IZHMA 12G
		category = 'Shotgun',
		trans = {7.41774, 29.7226, -1.95727},
		rot = {0.106196, -0.0625882, 0.630612},
		pos = {7.25, 36, -3}
	},
	['r870'] = {									-- Reinfield 880
		category = 'Shotgun',
		trans = {10.7362, 12.88858, -4.29568},
		rot = {0.106618, -0.0844415, 0.629205},
		pos = {7, 21, -5}
	},
	['huntsman'] = {								-- Mosconi 12G
		category = 'Shotgun',
		trans = {10.6562, 32.9715, -6.73279},
		rot = {0.106667, -0.0844876, 0.629223},
		pos = {6.5, 23, -6}
	},
	['serbu'] = {									-- Locomotive 12G
		category = 'Shotgun',
		trans = {10.7362, 12.88858, -4.29568},
		rot = {0.106618, -0.0844415, 0.629205},
		pos = {6.5, 20, -4},
		func = PlayerTweakData._init_serbu
	},
	['benelli'] = {									-- M1014
		category = 'Shotgun',
		trans = {10.7073, 26.1675, -5.32389},
		rot = {0.107094, -0.0844561, 0.62985},
		pos = {6.25, 36, -6.5},
		func = PlayerTweakData._init_benelli
	},
	['spas12'] = {									-- Predator 12G
		category = 'Shotgun',
		trans = {10.6588, 45.1588, -4.51644},
		rot = {0.106619, -0.0844517, 0.629206},
		pos = {7.5, 48, -6},
		func = PlayerTweakData._init_spas12
	},
	['judge'] = {									-- The Judge
		category = 'Shotgun',
		trans = {8.51217, 43.8759, -2.44869},
		rot = {0.0994018, -0.689525, 0.618385},
		pos = {5.5, 33, -3.25},
		func = PlayerTweakData._init_judge
	},
	['striker'] = {									-- Street Sweeper
		category = 'Shotgun',
		trans = {10.761, 11.8207, -3.78517},
		rot = {0.106622, -0.0844409, 0.629204},
		pos = {7.5, 23, -4.5},
		func = PlayerTweakData._init_striker
	},
	['ksg'] = {										-- Raven
		category = 'Shotgun',
		trans = {7.46753, 41.4613, -0.60714},
		rot = {-2.09266E-5, 7.14203E-4, 2.76649E-4},
		pos = {7, 38, -4},
		func = PlayerTweakData._init_ksg
	},
	['b682'] = {									-- Josceline O/U 12G
		category = 'Shotgun',
		trans = {8.47311, 22.1434, -6.31211},
		rot = {-1.83462E-5, 0.00105637, 3.52956E-4},
		pos = {6.75, 24, -5.5},
		func = PlayerTweakData._init_b682
	},
	['aa12'] = {									-- Steakout 12G
		category = 'Shotgun',
		trans = {10.9866, 17.7262, -1.21375},
		rot = {1.26918, 0.0466027, -0.0824729},
		pos = {6.75, 24, -3.5},
		func = PlayerTweakData._init_aa12
	},
	['m37'] = {										-- GSPS 12G
		category = 'Shotgun',
		trans = {9.27651, 19.3937, -6.03765},
		rot = {4.57709E-5, 5.5666E-4, -3.35693E-4},
		pos = {7, 32, -8},
		func = PlayerTweakData._init_m37
	},
	['boot'] = {									-- Breaker 12G
		category = 'Shotgun',
		trans = {9.33495, 21.5547, -4.86749},
		rot = {9.1203E-4, 1.68071E-4, -3.24595E-4},
		pos = {7, 28, -6},
		func = PlayerTweakData._init_boot
	},
	['rota'] = {									-- Goliath 12G
		category = 'Shotgun',
		trans = {11.4444, 18.1551, -2.51491},
		rot = {4.7187E-5, 5.80673E-4, -3.38008E-4},
		pos = {6.5, 26, -1.5},
		func = PlayerTweakData._init_rota
	},
	['basset'] = {									-- Grimm 12G
		category = 'Shotgun',
		trans = {11.8411, 23.0275, -2.16914},
		rot = {4.34121e-05, -0.00103616, -0.000334039},
		pos = {7, 28, -3},
		func = PlayerTweakData._init_basset
	},
	['olympic'] = {									-- Para
		category = 'SMG',
		trans = {10.7332, 15.6145, -2.75549},
		rot = {0.106625, -0.450997, 0.629212},
		pos = {7, 16, -5}
	},
	['akmsu'] = {									-- Krinkov
		category = 'SMG',
		trans = {10.6646, 40.3785, -4.67554},
		rot = {0.10634, -0.0854686, 0.628928},
		pos = {6.5, 37.5, -4}
	},
	['p90'] = {										-- Kobus 90
		category = 'SMG',
		trans = {11.0002, 24.3293, -0.962641},
		rot = {0.21279, 0.970214, 0.197877},
		pos = {6.5, 26, -3}
	},
	['mp9'] = {										-- CMP
		category = 'SMG',
		trans = {10.7255, 18.222, -5.70686},
		rot = {0.106402, -0.084293, 0.629528},
		pos = {7, 18, -4}
	},
	['new_mp5'] = {									-- Compact-5
		category = 'SMG',
		trans = {10.7414, 18.4543, -4.29175},
		rot = {0.106934, -0.220015, 0.629729},
		pos = {7, 18, -8}
	},
	['mac10'] = {									-- Mark 10
		category = 'SMG',
		trans = {8.66375, 35.7106, -2.84375},
		rot = {0.110006, -0.898579, 0.630296},
		pos = {7.5, 24, -3}
	},
	['m45'] = {										-- Swedish K
		category = 'SMG',
		trans = {10.6536, 33.375, -6.99766},
		rot = {0.106609, -0.0844488, 0.629209},
		pos = {6.5, 34, -6.5},
		func = PlayerTweakData._init_m45
	},
	['sterling'] = {								-- Patchett L2A1
		category = 'SMG',
		trans = {7.87354, 11.0128, -5.21259},
		rot = {-0.0789313, 0.143449, -7.47492},
		pos = {6.5, 17, -7},
		func = PlayerTweakData._init_sterling
	},
	['mp7'] = {										-- SpecOps
		category = 'SMG',
		trans = {10.7255, 18.222, -5.70686},
		rot = {0.106402, -0.084293, 0.629528},
		pos = {6.5, 21, -4.5},
		func = PlayerTweakData._init_mp7
	},
	['scorpion'] = {								-- Cobra
		category = 'SMG',
		trans = {10.6943, 28.787, -6.49269},
		rot = {0.106445, -0.0842811, 0.629473},
		pos = {6, 23, -4},
		func = PlayerTweakData._init_scorpion
	},
	['uzi'] = {										-- Uzi
		category = 'SMG',
		trans = {10.7319, 15.1611, -5.78384},
		rot = {0.1059, -0.083914, 0.628742},
		pos = {7.5, 20, -4.5},
		func = PlayerTweakData._init_uzi
	},
	['m1928'] = {									-- Chicago Typewriter
		category = 'SMG',
		trans = {8.4985, 11.6288, -3.91554},
		rot = {1.8476E-5, 0.00110369, 3.2262E-4},
		pos = {6, 16, -6},
		func = PlayerTweakData._init_m1928
	},
	['tec9'] = {									-- Blaster 9mm
		category = 'SMG',
		trans = {11.0476, 19.994, -4.43386},
		rot = {5.01575E-5, 5.80993E-4, -3.39375E-4},
		pos = {6.5, 30, -5.25},
		func = PlayerTweakData._init_tec9
	},
	['polymer'] = {									-- Kross Vertex
		category = 'SMG',
		trans = {9.00921, 13.825, -1.23709},
		rot = {-1.555E-4, 1.91465, 2.96338E-4},
		pos = {6.5, 19, -3},
		func = PlayerTweakData._init_polymer
	},
	['cobray'] = {									-- Jacket's Piece
		category = 'SMG',
		trans = {9.27773, 14.4497, -5.83427},
		rot = {5.61873E-5, 5.80566E-4, -3.41083E-4},
		pos = {7.25, 19, -5.5},
		func = PlayerTweakData._init_cobray
	},
	['baka'] = {									-- Micro Uzi
		category = 'SMG',
		trans = {9.33471, 13.913, -0.0159556},
		rot = {0.001265, 0.00210433, -3.65091E-4},
		pos = {7.5, 17, -1},
		func = PlayerTweakData._init_baka
	},
	['sr2'] = {										-- Heather
		category = 'SMG',
		trans = {9.46072, 17.5362, -5.3306},
		rot = {4.59269E-5, 7.82065E-4, -3.35783E-4},
		pos = {6.5, 28, -4.5},
		func = PlayerTweakData._init_sr2
	},
	['hajk'] = {									-- CR 805B
		category = 'SMG',
		trans = {9.18603, 10.1026, -1.49307},
		rot = {5.61948E-5, 9.37625E-4, -3.0285E-4},
		pos = {6.75, 19, -3.5},
		func = PlayerTweakData._init_hajk
	},
	['schakal'] = {									-- Jackal
		category = 'SMG',
		trans = {7.87628, 9.54151, -2.2033},
		rot = {5.55797E-5, 5.68586E-4, -3.34093E-4},
		pos = {6.5, 20, -4.5},
		func = PlayerTweakData._init_schakal
	},
	['coal'] = {									-- Tatonka
		category = 'SMG',
		trans = {11.6275, 30.2986, -3.54447},
		rot = {5.21439E-5, 5.83994E-4, -3.39108E-4},
		pos = {6.5, 37, -5},
		func = PlayerTweakData._init_coal
	},
	['erma'] = {									-- MP40
		category = 'SMG',
		trans = {8.49394, 27.436, -2.76126},
		rot = {4.62656e-05, 0.000556874, -0.000332545},
		pos = {6.75, 34, -6},
		func = PlayerTweakData._init_erma
	},
	['glock_17'] = {								-- Chimano 88
		category = 'Pistol',
		trans = {8.48582, 38.7727, -5.49358},
		rot = {0.100007, -0.687692, 0.630291},
		pos = {5, 30, -3}
	},
	['glock_18c'] = {								-- STRYK 18c
		category = 'Pistol',
		trans = {8.49051, 38.6474, -5.09399},
		rot = {0.0999949, -0.687702, 0.630304},
		pos = {6, 33, -3}
	},
	['deagle'] = {									-- Deagle
		category = 'Pistol',
		trans = {8.51744, 40.6489, -2.66934},
		rot = {0.100008, -0.687698, 0.630289},
		pos = {8, 36, -4}
	},
	['colt_1911'] = {								-- Crosskill
		category = 'Pistol',
		trans = {8.51072, 41.1823, -3.19592},
		rot = {0.0999825, -0.688529, 0.630296},
		pos = {8, 36, -4.8}
	},
	['b92fs'] = {									-- Bernetti 9
		category = 'Pistol',
		trans = {8.50075, 40.9227, -4.15328},
		rot = {0.0994, -0.687851, 0.630047},
		pos = {6.8, 37, -3.75}
	},
	['new_raging_bull'] = {							-- Bronco .44
		category = 'Pistol',
		trans = {8.48834, 43.8612, -2.19366},
		rot = {0.0999871, -0.68716, 0.629919},
		pos = {6, 35, -4}
	},
	['pl14'] = {									-- White Streak
		category = 'Pistol',
		trans = {8.44347, 40.2309, -5.37017},
		rot = {0.100314, -0.688477, 0.629269},
		pos = {6, 36, -3.75}
	},
	['usp'] = {										-- Interceptor .45
		category = 'Pistol',
		trans = {8.51087, 41.182, -3.19589},
		rot = {0.0996996, -0.686868, 0.630304},
		pos = {6, 41, -3.5},
		func = PlayerTweakData._init_usp
	},
	['g22c'] = {									-- Chimano Custom
		category = 'Pistol',
		trans = {8.48582, 38.7727, -5.49358},
		rot = {0.100007, -0.687692, 0.630291},
		pos = {5, 30, -3},
		func = PlayerTweakData._init_g22c
	},
	['c96'] = {										-- Broomstick
		category = 'Pistol',
		trans = {8.49335, 44.033, -4.32192},
		rot = {0.100005, -0.687696, 0.630292},
		pos = {4.75, 32, -3.5},
		func = PlayerTweakData._init_c96
	},
	['g26'] = {										-- Chimano Compact
		category = 'Pistol',
		trans = {8.48582, 38.7727, -5.49358},
		rot = {0.100007, -0.687692, 0.630291},
		pos = {5, 30, -3},
		func = PlayerTweakData._init_g26
	},
	['ppk'] = {										-- Gruber Kurz
		category = 'Pistol',
		trans = {8.49608, 40.6427, -4.65654},
		rot = {0.0989007, -0.686519, 0.631465},
		pos = {5.25, 33, -3.5},
		func = PlayerTweakData._init_ppk
	},
	['p226'] = {									-- Signature .40
		category = 'Pistol',
		trans = {8.5121, 38.8014, -3.46065},
		rot = {0.10024, -0.688283, 0.631346},
		pos = {6.5, 36, -4},
		func = PlayerTweakData._init_p226
	},
	['peacemaker'] = {								-- Peacemaker .45
		category = 'Pistol',
		trans = {8.51249, 54.0571, -3.47982},
		rot = {0.0999728, -0.687715, 0.630303},
		pos = {8, 50, -4.5},
		func = PlayerTweakData._init_peacemaker
	},
	['hs2000'] = {									-- LEO pistol
		category = 'Pistol',
		trans = {8.48582, 38.7727, -5.49358},
		rot = {0.100007, -0.687692, 0.630291},
		pos = {5.25, 31, -4},
		func = PlayerTweakData._init_hs2000
	},
	['mateba'] = {									-- Matever .357
		category = 'Pistol',
		trans = {8.52839, 40.2153, -3.77382},
		rot = {0.0991125, -0.687691, 0.607803},
		pos = {8, 36, -6},
		func = PlayerTweakData._init_mateba
	},
	['packrat'] = {									-- Contractor
		category = 'Pistol',
		trans = {8.43619, 40.2227, -6.04893},
		rot = {0.100209, -0.688219, 0.630716},
		pos = {7, 32, -4},
		func = PlayerTweakData._init_packrat
	},
	['sparrow'] = {									-- Baby Deagle
		category = 'Pistol',
		trans = {8.44539, 43.3056, -4.70979},
		rot = {0.100026, -0.68821, 0.629665},
		pos = {6, 36, -4.5},
		func = PlayerTweakData._init_sparrow
	},
	['lemming'] = {									-- 5/7 AP
		category = 'Pistol',
		trans = {8.44788, 38.6251, -5.22182},
		rot = {0.100018, -0.688258, 0.629664},
		pos = {7.5, 33, -5},
		func = PlayerTweakData._init_lemming
	},
	['breech'] = {									-- Parabellum
		category = 'Pistol',
		trans = {8.14622, 27.4494, -3.81421},
		rot = {0.160076, -0.075191, -0.10197},
		pos = {8, 33, -6},
		func = PlayerTweakData._init_breech
	},
	['shrew'] = {									-- Crosskill Guard
		category = 'Pistol',
		trans = {8.45918, 40.2496, -4.0125},
		rot = {0.100786, -0.68813, 0.629919},
		pos = {6.5, 36, -4},
		func = PlayerTweakData._init_shrew
	},
	['chinchilla'] = {								-- Castigo .44
		category = 'Pistol',
		trans = {8.43099, 44.68, -2.92959},
		rot = {0.100017, -0.688284, 0.608061},
		pos = {5.5, 28, -3.5},
		func = PlayerTweakData._init_chinchilla
	},
	['jowi'] = {									-- Akimbo Chimano Compact
		category = 'Akimbo',
		trans = {11.4939, 42.8789, -1.11447},
		rot = {-0.347954, 0.253161, 0.281029},
		pos = {10.95, 34, -4}
	},
	['x_1911'] = {									-- Akimbo Crosskill
		category = 'Akimbo',
		trans = {11.4939, 42.8789, -1.11447},
		rot = {-0.347954, 0.253161, 0.281029},
		pos = {10.95, 35, -6},
		func = PlayerTweakData._init_x_1911
	},
	['x_b92fs'] = {									-- Akimbo Bernetti 9
		category = 'Akimbo',
		trans = {11.1926, 42.656, -1.92934},
		rot = {-0.291899, 0.237935, -0.510313},
		pos = {11, 35, -6},
		func = PlayerTweakData._init_x_b92fs
	},
	['x_deagle'] = {								-- Akimbo Deagle
		category = 'Akimbo',
		trans = {11.4931, 42.3369, -0.596629},
		rot = {-0.34809, 0.254047, 0.28066},
		pos = {10.95, 35, -6},
		func = PlayerTweakData._init_x_deagle
	},
	['x_g22c'] = {									-- Akimbo Chimano Custom
		category = 'Akimbo',
		trans = {11.4939, 42.8789, -1.11447},
		rot = {-0.347954, 0.253161, 0.281029},
		pos = {10.95, 35, -6},
		func = PlayerTweakData._init_x_g22c
	},
	['x_g17'] = {									-- Akimbo Chimano 88
		category = 'Akimbo',
		trans = {11.4939, 42.8789, -1.11447},
		rot = {-0.347954, 0.253161, 0.281029},
		pos = {10.95, 35, -6},
		func = PlayerTweakData._init_x_g17
	},
	['x_usp'] = {									-- Akimbo Interceptor .45
		category = 'Akimbo',
		trans = {11.4939, 42.8789, -1.11447},
		rot = {-0.347954, 0.253161, 0.281029},
		pos = {10.95, 35, -6},
		func = PlayerTweakData._init_x_usp
	},
	['x_sr2'] = {									-- Akimbo Heather
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371E-8, -8.32429E-6, -1.70755E-6},
		pos = {10.95, 34, -6},
		func = PlayerTweakData._init_x_sr2
	},
	['x_mp5'] = {									-- Akimbo Compact-5
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371E-8, -8.32429E-6, -1.70755E-6},
		pos = {10.95, 46, -6},
		func = PlayerTweakData._init_x_mp5
	},
	['x_akmsu'] = {									-- Akimbo Krinkov
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371E-8, -8.32429E-6, -1.70755E-6},
		pos = {10.95, 44, -5},
		func = PlayerTweakData._init_x_akmsu
	},
	['x_basset'] = {								-- Brothers Grimm 12G
		category = 'Akimbo',
		trans = {10.582, 24.5843, -11.4445},
		rot = {0.177415, -0.514434, 0.970513},
		pos = {10.95, 24, -15},
		func = PlayerTweakData._init_x_basset
	},
	['x_shrew'] = {									-- Akimbo Crosskill Guard
		category = 'Akimbo',
		trans = {11.4139, 42.291, -2.06512},
		rot = {-0.000180056, 0.00124487, -0.000512829},
		pos = {10.95, 36, -5},
		func = PlayerTweakData._init_x_shrew
	},
	['x_chinchilla'] = {							-- Akimbo Castigo .44
		category = 'Akimbo',
		trans = {9.0014, 44.6795, -2.91751},
		rot = {0.100034, -0.688648, 0.42562},
		pos = {9, 40, -3},
		func = PlayerTweakData._init_x_chinchilla
	},
	['x_packrat'] = {								-- Akimbo Contractor
		category = 'Akimbo',
		trans = {11.4939, 42.8789, -1.11447},
		rot = {-0.347954, 0.253161, 0.281029},
		pos = {10.95, 36, -4.5},
		func = PlayerTweakData._init_x_packrat
	},
	['x_coal'] = {									-- Akimbo Tatonka
		category = 'Akimbo',
		trans = {21.7292, 50.4726, -2.2322},
		rot = {-0.000329317, 9.74379e-05, -0.000336547},
		pos = {21, 48, -8.5},
		func = PlayerTweakData._init_x_coal
	},
	['x_baka'] = {									-- Akimbo Micro Uzi
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 58, -4},
		func = PlayerTweakData._init_x_baka
	},
	['x_cobray'] = {								-- Akimbo Jacket's Piece
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 62, -4},
		func = PlayerTweakData._init_x_cobray
	},
	['x_erma'] = {									-- Akimbo MP40
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 46, -8.5},
		func = PlayerTweakData._init_x_erma
	},
	['x_hajk'] = {									-- Akimbo CR 805B
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 46, -7},
		func = PlayerTweakData._init_x_hajk
	},
	['x_m45'] = {									-- Akimbo Swedish K
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 46, -6},
		func = PlayerTweakData._init_x_m45
	},
	['x_m1928'] = {									-- Akimbo Chicago Typewriter
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 44, -6},
		func = PlayerTweakData._init_x_m1928
	},
	['x_mac10'] = {									-- Akimbo Mark 10
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 58, -4},
		func = PlayerTweakData._init_x_mac10
	},
	['x_mp7'] = {									-- Akimbo SpecOps
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 56, -4},
		func = PlayerTweakData._init_x_mp7
	},
	['x_mp9'] = {									-- Akimbo CMP
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 56, -2.5},
		func = PlayerTweakData._init_x_mp9
	},
	['x_olympic'] = {								-- Akimbo Para
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 44, -7.5},
		func = PlayerTweakData._init_x_olympic
	},
	['x_p90'] = {									-- Akimbo Kobus 90
		category = 'Akimbo',
		trans = {21.7292, 50.4726, -2.2322},
		rot = {-0.000329317, 9.74379e-05, -0.000336547},
		pos = {21, 53, -6.5},
		func = PlayerTweakData._init_x_p90
	},
	['x_polymer'] = {								-- Akimbo Kross Vertex
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 44, -5.5},
		func = PlayerTweakData._init_x_polymer
	},
	['x_schakal'] = {								-- Akimbo Jackal
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 46, -6},
		func = PlayerTweakData._init_x_schakal
	},
	['x_scorpion'] = {								-- Akimbo Cobra
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 46, -5},
		func = PlayerTweakData._init_x_scorpion
	},
	['x_sterling'] = {								-- Akimbo Patchett L2A1
		category = 'Akimbo',
		trans = {21.7292, 50.4726, -2.2322},
		rot = {-0.000329317, 9.74379e-05, -0.000336547},
		pos = {21, 46, -8},
		func = PlayerTweakData._init_x_sterling
	},
	['x_tec9'] = {									-- Akimbo Blaster 9mm
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 50, -5},
		func = PlayerTweakData._init_x_tec9
	},
	['x_uzi'] = {									-- Akimbo Uzi
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 52, -5},
		func = PlayerTweakData._init_x_uzi
	},
	['x_2006m'] = {									-- Akimbo Matever
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 35, -5},
		func = PlayerTweakData._init_x_2006m
	},
	['x_breech'] = {								-- Akimbo Parabellum
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 35, -5},
		func = PlayerTweakData._init_x_breech
	},
	['x_c96'] = {									-- Akimbo Broomstick
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 35, -7},
		func = PlayerTweakData._init_x_c96
	},
	['x_g18c'] = {									-- Akimbo STRYK 18c
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 39, -5},
		func = PlayerTweakData._init_x_g18c
	},
	['x_hs2000'] = {								-- Akimbo LEO Pistol
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 39, -5},
		func = PlayerTweakData._init_x_hs2000
	},
	['x_lemming'] = {								-- Akimbo 5/7 AP
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 39, -5},
		func = PlayerTweakData._init_x_lemming
	},
	['x_p226'] = {									-- Akimbo Signature .40
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 39, -5},
		func = PlayerTweakData._init_x_p226
	},
	['x_peacemaker'] = {							-- Akimbo Peacemaker .45
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 39, -5},
		func = PlayerTweakData._init_x_peacemaker
	},
	['x_pl14'] = {									-- Akimbo White Streak
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 39, -5},
		func = PlayerTweakData._init_x_pl14
	},
	['x_ppk'] = {									-- Akimbo Gruber Kurz
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 39, -5},
		func = PlayerTweakData._init_x_ppk
	},
	['x_rage'] = {									-- Akimbo Bronco .44
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 32, -6},
		func = PlayerTweakData._init_x_rage
	},
	['x_sparrow'] = {								-- Akimbo Baby Deagle
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 39, -5},
		func = PlayerTweakData._init_x_sparrow
	},
	['x_judge'] = {									-- Akimbo Judge
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.4, 38, -7.5},
		func = PlayerTweakData._init_x_judge
	},
	['x_rota'] = {									-- Akimbo Goliath 12G
		category = 'Akimbo',
		trans = {10.9257, 47.3309, -0.659333},
		rot = {-7.3371e-08, -8.32429e-06, -1.70755e-06},
		pos = {10.5, 39, -5},
		func = PlayerTweakData._init_x_rota
	},
	['gre_m79'] = {									-- GL40
		category = 'Special',
		trans = {10.6363, 52.3198, -7.34957},
		rot = {0.106995, -2.19204, 0.629449},
		pos = {8, 48, -6},
		func = PlayerTweakData._init_gre_m79
	},
	['china'] = {									-- China Puff 40mm
		category = 'Special',
		trans = {12.6957, 28.6528, -8.7},
		rot = {4.47095E-5, 5.89182E-4, -3.37808E-4},
		pos = {10, 36, -11},
		func = PlayerTweakData._init_china
	},
	['m32'] = {										-- Piglet
		category = 'Special',
		trans = {9.71578, 20.864, -3.15926},
		rot = {-3.7146E-6, 0.00110462, 3.00785E-4},
		pos = {7, 25, -4.5},
		func = PlayerTweakData._init_m32
	},
	['arbiter'] = {									-- Arbiter
		category = 'Special',
		trans = {12.6007, 11.9289, 1.92507},
		rot = {7.38981E-5, -8.69142E-4, -0.0013114},
		pos = {8, 30, -3},
		func = PlayerTweakData._init_arbiter
	},
	['slap'] = {									-- Compact 40mm Grenade Launcher
		category = 'Special',
		trans = {6.62696, 28.6192, -5.18681},
		rot = {3.37723e-05, 0.000599136, -0.000336921},
		pos = {2.5, 32, -3.5},
		func = PlayerTweakData._init_slap
	},
	['arblast'] = {									-- Heavy Crossbow
		category = 'Special',
		trans = {11.3759, 27.2897, -11.445},
		rot = {-2.2432E-5, 0.00111043, 3.02449E-4},
		pos = {6, 32, -11},
		func = PlayerTweakData._init_arblast
	},
	['frankish'] = {								-- Light Crossbow
		category = 'Special',
		trans = {11.376, 27.2898, -11.4456},
		rot = {5.81843E-4, 4.85653E-4, 1.57514E-4},
		pos = {6, 32, -11},
		func = PlayerTweakData._init_frankish
	},
	['flamethrower_mk2'] = {						-- Flamethrower
		category = 'Special',
		trans = {10.7639, 15.2768, -1.63551},
		rot = {0.108359, -0.086669, 0.631366},
		pos = {7, 18, -4},
		func = PlayerTweakData._init_flamethrower_mk2
	},
	['m134'] = {									-- Vulcan Minigun
		category = 'Special',
		trans = {4.11438, 35.5734, -13.4323},
		rot = {-1.22503E-5, 0.00110689, 2.82252E-4},
		pos = {6, 46, -20},
		func = PlayerTweakData._init_m134
	},
	['shuno'] = {									-- XL 5.56 Microgun
		category = 'Special',
		trans = {7.51824, 28.414, -10.4346},
		rot = {-0.552457, 0.0015095, -0.000355581},
		pos = {2, 42, -22},
		func = PlayerTweakData._init_shuno
	},
	['saw'] = {										-- OVE9000
		category = 'Special',
		trans = {10.1399, 11.1007, -9.93544},
		rot = {0.145081, 4.12987, 0.620396},
		pos = {10, 12, -12},
		func = PlayerTweakData._init_saw
	},
	['ray'] = {										-- Commando 101
		category = 'Special',
		trans = {2.48815, 7.60753, -5.20907},
		rot = {0.106386, -0.085203, 0.628541},
		pos = {3, 18, -3},
		func = PlayerTweakData._init_ray
	},
	['hunter'] = {									-- Pistol Crossbow
		category = 'Special',
		trans = {10.5286, 37.1301, -5.39847},
		rot = {4.53226e-05, 0.000561889, -0.000335053},
		pos = {9, 30, -3.5},
		func = PlayerTweakData._init_hunter
	},
	['rpg7'] = {									-- HRL-7
		category = 'Special',
		trans = {9.60744, 14.1008, 1.8554},
		rot = {4.08927e-05, 0.000580566, -0.000338095},
		pos = {8, 12, 3},
		func = PlayerTweakData._init_rpg7
	},
	['plainsrider'] = {								-- Plainsrider Bow
		category = 'Special',
		trans = {6.53874, 36.6672, -17.3943},
		rot = {0.00233964, 0.00195501, 55.0004},
		pos = {11, 36, -13},
		func = PlayerTweakData._init_plainsrider
	},
	['long'] = {									-- English Longbow
		category = 'Special',
		trans = {6.50446, 35.57, -17.2983},
		rot = {0.00224909, 0.00268967, 54.9997},
		pos = {10, 42, -14},
		func = PlayerTweakData._init_long
	},
	['ecp'] = {										-- Airbow
		category = 'Special',
		trans = {3.56467, 19.1489, -4.35772},
		rot = {0.000122739, 0.00080217, -6.66219e-05},
		pos = {1.5, 29, -6.5},
		func = PlayerTweakData._init_ecp
	}
}
ViewmodelTweak:Load()
ViewmodelTweak:Save()

function set(self, weap)
	if (viewmodel_tweaks[weap] == nil) then
		return
	end
	if (viewmodel_tweaks[weap].func ~= nil) then
		viewmodel_tweaks[weap].func(self)
	end
	if (not ViewmodelTweak:IsEnabled(weap)) then
		return
	end
	local trans = viewmodel_tweaks[weap].trans
	local rot = viewmodel_tweaks[weap].rot
	local pos = viewmodel_tweaks[weap].pos

	local cat = viewmodel_tweaks[weap].category
	if (cat == 'Rifle') then
		local x = (1 + ViewmodelTweak.settings.rifle_x / 100) * pos[1]
		local y = (1 + ViewmodelTweak.settings.rifle_y / 100) * pos[2]
		local z = (-1 + ViewmodelTweak.settings.rifle_z / 100) * pos[3]
		pos = { x, y, z }
	elseif (cat == 'SMG') then
		local x = (1 + ViewmodelTweak.settings.smg_x / 100) * pos[1]
		local y = (1 + ViewmodelTweak.settings.smg_y / 100) * pos[2]
		local z = (-1 + ViewmodelTweak.settings.smg_z / 100) * pos[3]
		pos = { x, y, z }
	elseif (cat == 'LMG') then
		local x = (1 + ViewmodelTweak.settings.lmg_x / 100) * pos[1]
		local y = (1 + ViewmodelTweak.settings.lmg_y / 100) * pos[2]
		local z = (-1 + ViewmodelTweak.settings.lmg_z / 100) * pos[3]
		pos = { x, y, z }
	elseif (cat == 'Sniper') then
		local x = (1 + ViewmodelTweak.settings.sniper_x / 100) * pos[1]
		local y = (1 + ViewmodelTweak.settings.sniper_y / 100) * pos[2]
		local z = (-1 + ViewmodelTweak.settings.sniper_z / 100) * pos[3]
		pos = { x, y, z }
	elseif (cat == 'Pistol') then
		local x = (1 + ViewmodelTweak.settings.pistol_x / 100) * pos[1]
		local y = (1 + ViewmodelTweak.settings.pistol_y / 100) * pos[2]
		local z = (-1 + ViewmodelTweak.settings.pistol_z / 100) * pos[3]
		pos = { x, y, z }
	elseif (cat == 'Shotgun') then
		local x = (1 + ViewmodelTweak.settings.shotgun_x / 100) * pos[1]
		local y = (1 + ViewmodelTweak.settings.shotgun_y / 100) * pos[2]
		local z = (-1 + ViewmodelTweak.settings.shotgun_z / 100) * pos[3]
		pos = { x, y, z }
	elseif (cat == 'Akimbo') then
		local x = (1 + ViewmodelTweak.settings.akimbo_x / 100) * pos[1]
		local y = (1 + ViewmodelTweak.settings.akimbo_y / 100) * pos[2]
		local z = (-1 + ViewmodelTweak.settings.akimbo_z / 100) * pos[3]
		pos = { x, y, z }
	elseif (cat == 'Special') then
		local x = (1 + ViewmodelTweak.settings.special_x / 100) * pos[1]
		local y = (1 + ViewmodelTweak.settings.special_y / 100) * pos[2]
		local z = (-1 + ViewmodelTweak.settings.special_z / 100) * pos[3]
		pos = { x, y, z }
	end

	-- Global multiplier stacks with category multipliers.
	local x = (1 + ViewmodelTweak.settings.global_x / 100) * pos[1]
	local y = (1 + ViewmodelTweak.settings.global_y / 100) * pos[2]
	local z = (-1 + ViewmodelTweak.settings.global_z / 100) * pos[3]
	pos = { x, y, z }

	local shoulder_trans = Vector3(trans[1], trans[2], trans[3])
	local shoulder_rot = Rotation(rot[1], rot[2], rot[3])

	local head_trans = Vector3(pos[1], pos[2], pos[3])
	local head_rot = Rotation(0, 0, 0)
	
	self.stances[weap].standard.shoulders.translation = head_trans - shoulder_trans:rotate_with(shoulder_rot:inverse()):rotate_with(head_rot)
	self.stances[weap].standard.shoulders.rotation = head_rot * shoulder_rot:inverse()
	
	local head_trans = Vector3(pos[1] - 1, pos[2] - 2, pos[3] + 1)

	if (cat == 'Pistol') then
		head_trans = Vector3(pos[1] - 1, pos[2] - 1, pos[3] - 1)
	end
	local head_rot = Rotation(0, 0, 0)
	
	self.stances[weap].crouched.shoulders.translation = head_trans - shoulder_trans:rotate_with(shoulder_rot:inverse()):rotate_with(head_rot)
	self.stances[weap].crouched.shoulders.rotation = head_rot * shoulder_rot:inverse()
end

local orig_init_new_stances = PlayerTweakData._init_new_stances
function PlayerTweakData:_init_new_stances()
	orig_init_new_stances(self)

	for k, v in pairs(viewmodel_tweaks) do
		if (k ~= nil and viewmodel_tweaks[k].func == nil) then
			set(self, k)
		end
	end
end

function PlayerTweakData:_init_akm_gold()
	set(self, 'akm_gold')
end

function PlayerTweakData:_init_s552()
	set(self, 's552')
end

function PlayerTweakData:_init_scar()
	set(self, 'scar')
end

function PlayerTweakData:_init_fal()
	set(self, 'fal')
end

function PlayerTweakData:_init_g3()
	set(self, 'g3')
end

function PlayerTweakData:_init_galil()
	set(self, 'galil')
end

function PlayerTweakData:_init_famas()
	set(self, 'famas')
end

function PlayerTweakData:_init_l85a2()
	set(self, 'l85a2')
end

function PlayerTweakData:_init_asval()
	set(self, 'asval')
end

function PlayerTweakData:_init_vhs()
	set(self, 'vhs')
end

function PlayerTweakData:_init_sub2000()
	set(self, 'sub2000')
end

function PlayerTweakData:_init_contraband()
	set(self, 'contraband')
end

function PlayerTweakData:_init_flint()
	set(self, 'flint')
end

function PlayerTweakData:_init_tecci()
	set(self, 'tecci')
end

function PlayerTweakData:_init_mg42()
	set(self, 'mg42')
end

function PlayerTweakData:_init_hk21()
	set(self, 'hk21')
end

function PlayerTweakData:_init_m249()
	set(self, 'm249')
end

function PlayerTweakData:_init_rpk()
	set(self, 'rpk')
end

function PlayerTweakData:_init_par()
	set(self, 'par')
end

function PlayerTweakData:_init_mosin()
	set(self, 'mosin')
end

function PlayerTweakData:_init_msr()
	set(self, 'msr')
end

function PlayerTweakData:_init_r93()
	set(self, 'r93')
end

function PlayerTweakData:_init_m95()
	set(self, 'm95')
end

function PlayerTweakData:_init_wa2000()
	set(self, 'wa2000')
end

function PlayerTweakData:_init_winchester1874()
	set(self, 'winchester1874')
end

function PlayerTweakData:_init_model70()
	set(self, 'model70')
end

function PlayerTweakData:_init_desertfox()
	set(self, 'desertfox')
end

function PlayerTweakData:_init_siltstone()
	set(self, 'siltstone')
end

function PlayerTweakData:_init_tti()
	set(self, 'tti')
end

function PlayerTweakData:_init_serbu()
	set(self, 'serbu')
end

function PlayerTweakData:_init_benelli()
	set(self, 'benelli')
end

function PlayerTweakData:_init_spas12()
	set(self, 'spas12')
end

function PlayerTweakData:_init_judge()
	set(self, 'judge')
end

function PlayerTweakData:_init_striker()
	set(self, 'striker')
end

function PlayerTweakData:_init_ksg()
	set(self, 'ksg')
end

function PlayerTweakData:_init_b682()
	set(self, 'b682')
end

function PlayerTweakData:_init_aa12()
	set(self, 'aa12')
end

function PlayerTweakData:_init_m37()
	set(self, 'm37')
end

function PlayerTweakData:_init_boot()
	set(self, 'boot')
end

function PlayerTweakData:_init_rota()
	set(self, 'rota')
end

function PlayerTweakData:_init_m45()
	set(self, 'm45')
end

function PlayerTweakData:_init_sterling()
	set(self, 'sterling')
end

function PlayerTweakData:_init_mp7()
	set(self, 'mp7')
end

function PlayerTweakData:_init_scorpion()
	set(self, 'scorpion')
end

function PlayerTweakData:_init_uzi()
	set(self, 'uzi')
end

function PlayerTweakData:_init_m1928()
	set(self, 'm1928')
end

function PlayerTweakData:_init_tec9()
	set(self, 'tec9')
end

function PlayerTweakData:_init_polymer()
	set(self, 'polymer')
end

function PlayerTweakData:_init_cobray()
	set(self, 'cobray')
end

function PlayerTweakData:_init_baka()
	set(self, 'baka')
end

function PlayerTweakData:_init_sr2()
	set(self, 'sr2')
end

function PlayerTweakData:_init_hajk()
	set(self, 'hajk')
end

function PlayerTweakData:_init_hs2000()
	set(self, 'hs2000')
end

function PlayerTweakData:_init_schakal()
	set(self, 'schakal')
end

function PlayerTweakData:_init_coal()
	set(self, 'coal')
end

function PlayerTweakData:_init_usp()
	set(self, 'usp')
end

function PlayerTweakData:_init_g22c()
	set(self, 'g22c')
end

function PlayerTweakData:_init_c96()
	set(self, 'c96')
end

function PlayerTweakData:_init_g26()
	set(self, 'g26')
end

function PlayerTweakData:_init_ppk()
	set(self, 'ppk')
end

function PlayerTweakData:_init_p226()
	set(self, 'p226')
end

function PlayerTweakData:_init_peacemaker()
	set(self, 'peacemaker')
end

function PlayerTweakData:_init_mateba()
	set(self, 'mateba')
end

function PlayerTweakData:_init_packrat()
	set(self, 'packrat')
end

function PlayerTweakData:_init_x_packrat()
	set(self, 'x_packrat')
end

function PlayerTweakData:_init_sparrow()
	set(self, 'sparrow')
end

function PlayerTweakData:_init_lemming()
	set(self, 'lemming')
end

function PlayerTweakData:_init_x_1911()
	set(self, 'x_1911')
end

function PlayerTweakData:_init_x_b92fs()
	set(self, 'x_b92fs')
end

function PlayerTweakData:_init_x_deagle()
	set(self, 'x_deagle')
end

function PlayerTweakData:_init_x_g22c()
	set(self, 'x_g22c')
end

function PlayerTweakData:_init_x_g17()
	set(self, 'x_g17')
end

function PlayerTweakData:_init_x_usp()
	set(self, 'x_usp')
end

function PlayerTweakData:_init_x_sr2()
	set(self, 'x_sr2')
end

function PlayerTweakData:_init_x_mp5()
	set(self, 'x_mp5')
end

function PlayerTweakData:_init_x_akmsu()
	set(self, 'x_akmsu')
end

function PlayerTweakData:_init_x_coal()
	set(self, 'x_coal')
end

function PlayerTweakData:_init_x_baka()
	set(self, 'x_baka')
end

function PlayerTweakData:_init_x_cobray()
	set(self, 'x_cobray')
end

function PlayerTweakData:_init_x_erma()
	set(self, 'x_erma')
end

function PlayerTweakData:_init_x_hajk()
	set(self, 'x_hajk')
end

function PlayerTweakData:_init_x_m45()
	set(self, 'x_m45')
end

function PlayerTweakData:_init_x_m1928()
	set(self, 'x_m1928')
end

function PlayerTweakData:_init_x_mac10()
	set(self, 'x_mac10')
end

function PlayerTweakData:_init_x_mp7()
	set(self, 'x_mp7')
end

function PlayerTweakData:_init_x_mp9()
	set(self, 'x_mp9')
end

function PlayerTweakData:_init_x_olympic()
	set(self, 'x_olympic')
end

function PlayerTweakData:_init_x_p90()
	set(self, 'x_p90')
end

function PlayerTweakData:_init_x_polymer()
	set(self, 'x_polymer')
end

function PlayerTweakData:_init_x_schakal()
	set(self, 'x_schakal')
end

function PlayerTweakData:_init_x_scorpion()
	set(self, 'x_scorpion')
end

function PlayerTweakData:_init_x_sterling()
	set(self, 'x_sterling')
end

function PlayerTweakData:_init_x_tec9()
	set(self, 'x_tec9')
end

function PlayerTweakData:_init_x_uzi()
	set(self, 'x_uzi')
end

function PlayerTweakData:_init_x_2006m()
	set(self, 'x_2006m')
end

function PlayerTweakData:_init_x_breech()
	set(self, 'x_breech')
end

function PlayerTweakData:_init_x_c96()
	set(self, 'x_c96')
end

function PlayerTweakData:_init_x_g18c()
	set(self, 'x_g18c')
end

function PlayerTweakData:_init_x_hs2000()
	set(self, 'x_hs2000')
end

function PlayerTweakData:_init_x_lemming()
	set(self, 'x_lemming')
end

function PlayerTweakData:_init_x_p226()
	set(self, 'x_p226')
end

function PlayerTweakData:_init_x_peacemaker()
	set(self, 'x_peacemaker')
end

function PlayerTweakData:_init_x_pl14()
	set(self, 'x_pl14')
end

function PlayerTweakData:_init_x_ppk()
	set(self, 'x_ppk')
end

function PlayerTweakData:_init_x_rage()
	set(self, 'x_rage')
end

function PlayerTweakData:_init_x_sparrow()
	set(self, 'x_sparrow')
end

function PlayerTweakData:_init_x_judge()
	set(self, 'x_judge')
end

function PlayerTweakData:_init_x_rota()
	set(self, 'x_rota')
end

function PlayerTweakData:_init_m134()
	set(self, 'm134')
end

function PlayerTweakData:_init_flamethrower_mk2()
	set(self, 'flamethrower_mk2')
end

function PlayerTweakData:_init_saw()
	set(self, 'saw')
end

function PlayerTweakData:_init_gre_m79()
	set(self, 'gre_m79')
end

function PlayerTweakData:_init_m32()
	set(self, 'm32')
end

function PlayerTweakData:_init_arblast()
	set(self, 'arblast')
end

function PlayerTweakData:_init_frankish()
	set(self, 'frankish')
end

function PlayerTweakData:_init_china()
	set(self, 'china')
end

function PlayerTweakData:_init_arbiter()
	set(self, 'arbiter')
end

function PlayerTweakData:_init_ching()
	set(self, 'ching')
end

function PlayerTweakData:_init_breech()
	set(self, 'breech')
end

function PlayerTweakData:_init_erma()
	set(self, 'erma')
end

function PlayerTweakData:_init_basset()
	set(self, 'basset')
end

function PlayerTweakData:_init_x_basset()
	set(self, 'x_basset')
end

function PlayerTweakData:_init_shrew()
	set(self, 'shrew')
end

function PlayerTweakData:_init_x_shrew()
	set(self, 'x_shrew')
end

function PlayerTweakData:_init_chinchilla()
	set(self, 'chinchilla')
end

function PlayerTweakData:_init_x_chinchilla()
	set(self, 'x_chinchilla')
end

function PlayerTweakData:_init_ray()
	set(self, 'ray')
end

function PlayerTweakData:_init_hunter()
	set(self, 'hunter')
end

function PlayerTweakData:_init_rpg7()
	set(self, 'rpg7')
end

function PlayerTweakData:_init_plainsrider()
	set(self, 'plainsrider')
end

function PlayerTweakData:_init_long()
	set(self, 'long')
end

function PlayerTweakData:_init_corgi()
	set(self, 'corgi')
end

function PlayerTweakData:_init_slap()
	set(self, 'slap')
end

function PlayerTweakData:_init_ecp()
	set(self, 'ecp')
end

function PlayerTweakData:_init_shuno()
	set(self, 'shuno')
end
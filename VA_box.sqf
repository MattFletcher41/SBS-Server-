// Check if boxes exists
_boxArray = [];
for "_t" from 0  to 49 do{
	_string = format ["box%1", _t];
	if (isNil _string) then {
//		hint format ["%1 doesn't exit", _string]
		}
		Else {
			_string = call compile format ["%1", _string];
			_tempArray = [_string];
			_boxArray = _boxArray + _tempArray;
		};
	};

_defWeapon = [
	"UK3CB_BAF_L85A2",
	"hgun_mas_bhp_F",
	"RH_fn57",
	"RH_g17",
	"RH_g19",
	"hgun_mas_glocksf_F",
	"UK3CB_BAF_L131A1",
	"hgun_mas_p226_F",
	"UK3CB_BAF_AT4_AP_Launcher",
	"UK3CB_BAF_AT4_AT_Launcher",
	"hlc_smg_mp5a4",
	"hlc_smg_mp5sd5",
	"RH_fnp45",
	"RH_kimber_nw",
	"RH_uspm",
	"RH_usp"
];

_defBackpacks = [
	"B_AssaultPack_rgr",
	"B_AssaultPack_sgg",
	"B_AssaultPack_blk",
	"B_AssaultPack_cbr",
	"B_AssaultPack_mcamo",
	"B_Kitbag_mcamo",
	"B_Kitbag_sgg",
	"B_Kitbag_cbr",
	"B_Carryall_khk",
	"B_Carryall_cbr",
	"B_mas_AssaultPack_wint",
	"B_mas_m_Bergen_us_w",
	"B_mas_m_Bergen_us_b",
	"B_mas_m_Bergen_us_m",
	"B_mas_m_Bergen_us_g",
	"B_mas_m_Bergen_us",
	"B_mas_m_Bergen_acr_w",
	"B_mas_m_Bergen_acr_g",
	"B_mas_m_Bergen_acr",
	"B_mas_m_Bergen_acr",
	"O_UAV_01_backpack_F",
	"B_mas_Kitbag_wint",
	"B_mas_Kitbag_black",
	"B_mas_Kitbag_mul",
	"B_mas_Kitbag_rng"
];

 _defItem = [
	"gpn18",
	"ACE_NVG_Gen4",
	"ItemMap",
	"ItemGPS",
	"tf_anprc152",
	"ItemCompass",
	"ACE_fieldDressing",
	"ACE_epinephrine",
	"ACE_EarPlugs",
	"ACE_MapTools",
	"ACE_morphine",
	"ACE_Flashlight_XL50",
	"FHQ_optic_AC11704",
	"FHQ_optic_AC12136",
	"FHQ_optic_ACOG",
	"FHQ_optic_AIM",
	"FHQ_optic_AIM_tan",
	"FHQ_optic_AimM_BLK",
	"FHQ_optic_AimM_TAN",
	"iansky_t1",
	"iansky_t1kf",
	"iansky_t1s",
	"optic_Arco",
	"optic_mas_Arco_blk",
	"iansky_specterdr",
	"FHQ_optic_HWS_G33_DWN",
	"FHQ_optic_HWS",
	"iansky_deltapoint",
	"optic_MRCO",
	"optic_Hamr",
	"acc_mas_pointer_IR_b",
	"acc_mas_pointer_IR_top_b",
	"FHQ_acc_LLM01F",
	"acc_flashlight",
	"acc_mas_flash_gun",
	"RH_M6X",
	"RH_X2",
	"RH_X300",
	"UK3CB_BAF_Flashlight_L131A1",
	"ACE_muzzle_mzls_L",
	"muzzle_MK18_L",
	"muzzle_snds_M",
	"UK3CB_BAF_Silencer_L85",
	"UK3CB_BAF_SFFH",
	"FHQ_muzzle_snds_68SPC",
	"muzzle_mas_snds_SM",
	"muzzle_snds_L",
	"muzzle_mas_snds_L",
	"RH_sfn57",
	"RH_gemtech9",
	"bipod_01_F_blk",
	"bipod_01_F_snd",
	"H_mas_uk_beretn",
	"H_mas_uk_MilCap_mcamo",
	"H_mas_uk_MilCap_mcamo_m",
	"H_mas_uk_Cap",
	"H_mas_uk_Cap_headphones",
	"H_mas_uk_Cap_headphones_d",
	"H_mas_uk_Cap_headphones_v",
	"H_mas_uk_Cap_headphones_g",
	"H_mas_uk_revcapheadset_b",
	"H_mas_uk_patrolheadset_b",
	"H_mas_uk_Woolhat",
	"H_mas_uk_Woolhat_c",
	"H_mas_uk_Woolhat_w",
	"H_mas_uk_woolhat_ht",
	"H_mas_uk_woolhat_ht_w",
	"H_mas_uk_Booniehat_mult",
	"H_mas_uk_Booniehat_mtp",
	"H_mas_uk_Booniehat_mul_h",
	"H_mas_uk_Booniehat_mul_hm",
	"H_mas_uk_headset_b",
	"H_mas_uk_Bandana",
	"H_mas_uk_Bandana_h",
	"H_mas_uk_helmet_mich_sf",
	"H_mas_uk_helmet_mich_sf_g",
	"H_mas_uk_helmet_mich_sf_m",
	"H_mas_uk_helmet_mich_sf_w",
	"H_mas_uk_helmet_mich_sf_b",
	"H_mas_uk_helmet_mich_sf_gog",
	"H_mas_uk_helmet_mich_sf_gog_g",
	"H_mas_uk_helmet_mich_sf_gog_m",
	"H_mas_uk_helmet_mich_sf_gog_w",
	"H_mas_uk_helmet_mich_sf_gog_b",
	"H_mas_uk_helmet_mich_sf_h",
	"H_mas_uk_helmet_mich_sf_h_g",
	"H_mas_uk_helmet_mich_sf_h_m",
	"H_mas_uk_helmet_mich_sf_h_w",
	"H_mas_uk_helmet_mich_sf_h_b",
	"H_mas_uk_helmet_ops_sf",
	"H_mas_uk_helmet_ops_sf_b",
	"H_mas_uk_helmet_ops_sf_g",
	"H_mas_uk_helmet_ops_sf_d",
	"H_mas_uk_helmet_ops_sf_w",
	"H_mas_uk_helmet_ops_sf_gog",
	"H_mas_uk_helmet_ops_sf_gog_b",
	"H_mas_uk_helmet_ops_sf_gog_g",
	"H_mas_uk_helmet_ops_sf_gog_d",
	"H_mas_uk_helmet_ops_sf_gog_w",
	"H_mas_uk_helmet_ops_sf_h",
	"H_mas_uk_helmet_ops_sf_h_b",
	"H_mas_uk_helmet_ops_sf_h_g",
	"H_mas_uk_helmet_ops_sf_h_d",
	"H_mas_uk_helmet_ops_sf_h_w",
	"H_mas_uk_helmet_pro",
	"H_mas_uk_helmet_pro_b",
	"H_mas_uk_helmet_pro_gog",
	"H_mas_uk_helmet_pro_gog_b",
	"H_HelmetB_camo",
	"H_HelmetSpecB",
	"H_Booniehat_mcamo",
	"H_Booniehat_khk_hs",
	"G_Combat",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Sport_Blackred",
	"G_Sport_Blackyellow",
	"G_Squares_Tinted",
	"G_Tactical_Black",
	"G_Tactical_Clear",
	"G_Bandanna_blk",
	"G_mas_wpn_gog",
	"G_mas_wpn_gog_d",
	"G_mas_wpn_gog_m",
	"G_mas_wpn_gog_md",
	"G_mas_wpn_gog_g",
	"G_mas_wpn_gog_gd",
	"G_mas_wpn_mask",
	"G_mas_wpn_mask_b",
	"G_mas_wpn_wrap",
	"G_mas_wpn_wrap_f",
	"G_mas_wpn_wrap_t",
	"G_mas_wpn_wrap_b",
	"G_mas_wpn_wrap_c",
	"G_mas_wpn_wrap_g",
	"G_mas_wpn_wrap_gog",
	"G_mas_wpn_wrap_gog_f",
	"G_mas_wpn_wrap_gog_t",
	"G_mas_wpn_wrap_gog_b",
	"G_mas_wpn_wrap_gog_c",
	"G_mas_wpn_wrap_gog_g",
	"G_mas_wpn_wrap_mask",
	"G_mas_wpn_wrap_mask_t",
	"G_mas_wpn_wrap_mask_f",
	"G_mas_wpn_wrap_mask_b",
	"G_mas_wpn_wrap_mask_c",
	"G_mas_wpn_wrap_mask_g",
	"G_mas_wpn_bala",
	"G_mas_wpn_bala_b",
	"G_mas_wpn_bala_t",
	"G_mas_wpn_bala_gog",
	"G_mas_wpn_bala_gog_b",
	"G_mas_wpn_bala_gog_t",
	"G_mas_wpn_bala_mask",
	"G_mas_wpn_bala_mask_b",
	"G_mas_wpn_bala_mask_t",
	"G_mas_wpn_shemag",
	"G_mas_wpn_shemag_r",
	"G_mas_wpn_shemag_w",
	"G_mas_wpn_shemag_gog",
	"G_mas_wpn_shemag_mask",
	"G_mas_uk_wpn_gasmask",
	"U_mas_uk_B_CombatUniform_mtp",
	"U_mas_uk_B_CombatUniform_mtp_tshirt",
	"U_mas_uk_B_CombatUniform_mtp_vest",
	"U_mas_uk_B_CombatUniform_mcam",
	"U_mas_uk_B_CombatUniform_mcam_tshirt",
	"U_mas_uk_B_CombatUniform_mcam_vest",
	"U_mas_uk_B_CombatUniform_mcam1_vest",
	"U_mas_uk_B_CombatUniform_mcam2_vest",
	"U_mas_uk_B_CombatUniform_mcam3_vest",
	"U_mas_uk_B_CombatUniform_mcam4_vest",
	"U_mas_uk_B_Wetsuit",
	"U_mas_uk_B_GhillieSuit",
	"U_mas_uk_B_CombatUniform_sage_vest",
	"U_mas_uk_B_CombatUniform_sage",
	"G2_RU_MTP",
	"G2_CU_MTP",
	"G3_RU_MTP",
	"G3_CU_MTP",
	"G3_CU_MTPA",
	"G3_CU_MTPB",
	"V_PlateCarrier1_blk",
	"V_PlateCarrier2_blk",
	"V_Chestrig_blk",
	"V_Chestrig_rgr",
	"V_Chestrig_oli",
	"V_Chestrig_khk",
	"V_PlateCarrierL_CTRG",
	"V_PlateCarrierH_CTRG",
	"V_Rangemaster_belt",
	"V_TacVestIR_blk",
	"V_RebreatherB",
	"V_mas_uk_Rangemaster_belt",
	"V_mas_uk_BandollierB_rgr",
	"V_mas_uk_PlateCarrier1_rgr",
	"V_mas_uk_PlateCarrier2_rgr",
	"V_mas_uk_PlateCarrierGL_rgr",
	"V_mas_uk_ChestrigB_rgr",
	"V_mas_uk_Rangemaster_belt_v",
	"V_mas_uk_BandollierB_rgr_v",
	"V_mas_uk_PlateCarrier1_rgr_v",
	"V_mas_uk_PlateCarrier2_rgr_v",
	"V_mas_uk_PlateCarrierGL_rgr_v",
	"V_mas_uk_ChestrigB_rgr_v",
	"V_mas_uk_PlateCarrier1_rgr_g",
	"V_mas_uk_ChestrigB_rgr_g",
	"V_mas_uk_PlateCarrier1_rgr_w",
	"V_mas_uk_ChestrigB_rgr_w",
	"V_mas_uk_TacVest_p",
	"V_mas_uk_TacVest_g",
	"lbt_comms_coy",
	"lbt_medical_coy",
	"lbt_operator_coy",
	"lbt_tl_coy",
	"lbt_weapons_coy",
	"lbt_comms_od",
	"lbt_medical_od",
	"lbt_operator_od",
	"lbt_tl_od",
	"lbt_weapons_od",
	"G_mas_wpn_gasmask",
	"Binocular",
	"B_UavTerminal",
	"FHQ_acc_ANPEQ15",
	"FHQ_acc_ANPEQ15_black",
	"acc_mas_pointer_IR_b",
	"acc_mas_pointer_IR_top_b",
	"acc_mas_pointer_IR",
	"acc_mas_pointer_IR_top",
	"PEQ15_A3_Top",
	"iansky_specterdrkf",
	"iansky_specterdrkf_d_2D",
	"iansky_specterdrkf_fde_2D",
	"iansky_specterdrkf_d",
	"iansky_specterdrkf_fde",
	"optic_mas_Holosight_blk",
	"RH_docter",
	"muzzle_snds_acp",
	"RH_gemtech45",
	"RH_matchsd",
	"RH_aacusp"

 ];


 _c = 0;

 for [{_i=0}, {_i < count _boxArray}, {_i=_i+1}] do {
 	_k = _boxArray select _c;
 	_c = _c + 1;

	//##################// RIFLEMAN //##################//
			_custWeaponRifleman = [
			"arifle_mas_arx_l",
			"arifle_mas_arx",
			"CAG_HK416",
			"CAG_HK416A_FG",
			"CAG_HK416C_RS",
			"CAG_HK416_MX",
			"CAG_HK416AFG_MX",
			"CAG_HK416AFG_D",
			"CAG_HK416CRS_MX",
			"CAG_HK416CRS_D",
			"CAG_HK416_D",
			"arifle_mas_hk416",
			"UK3CB_BAF_L85A2",
			"UK3CB_BAF_L85A2_RIS_AFG",
			"UK3CB_BAF_L85A2_EMAG",
			"UK3CB_BAF_L85A2_RIS",
			"RHARD_M4DDR_F",
			"RHARD_M4DDRP_F",
			"RHARD_M4DDRPD_F",
			"RHARD_M4DDRD_F",
			"RHARD_M4DDR_B_F",
			"RHARD_M4DDRD_B_F",
			"arifle_mas_m4vlt",
			"arifle_mas_m4",
			"arifle_mas_m4c",
			"RHARD_MK18_F",
			"RHARD_MK18E_F",
			"RHARD_MK18AFG_F",
			"RHARD_MK18AFG_B_F",
			"FHQ_arifle_ACR_blk",
			"arifle_mas_mk16_l",
			"UK3CB_BAF_L86A2"
			];

			_custItemRifleman = [
			];

			_custWeaponRiflemanComp = _custWeaponRifleman + _defWeapon;
			_custItemRiflemanComp = _custItemRifleman + _defItem;

			if (typeof player == "B_mas_uk_Soldier_F") then		//Replace B_Soldier_F with your unit class name
				{
					[_k, _custWeaponRiflemanComp, true] call BIS_fnc_addVirtualweaponCargo;

					[_k, _defBackpacks, true] call BIS_fnc_addVirtualBackpackCargo;

					[_k, true, true] call BIS_fnc_addVirtualMagazineCargo;

					[_k, _custItemRiflemanComp, true] call BIS_fnc_addVirtualItemCargo;
				};
	//######################################################//

		//##################// SQAUD - LEAD //##################//
			_custWeaponSquadL = [
			"arifle_mas_arx_l_gl",
			"UK3CB_BAF_L85A2_UGL",
			"RHARD_M4DDRGL_F",
			"arifle_mas_m4_gl",
			"arifle_mas_mk16_l_gl",
			"Rangefinder"

			];

			_custWeaponSquadLComp = _custWeaponSquadL + _defWeapon + _custWeaponRifleman;

			if (typeof player == "B_mas_uk_Soldier_SL_F") then		//Replace B_Soldier_SL_F with your unit class name
				{
					[_k, _custWeaponSquadLComp, true] call BIS_fnc_addVirtualweaponCargo;

					[_k, _defBackpacks, true] call BIS_fnc_addVirtualBackpackCargo;

					[_k, true, true] call BIS_fnc_addVirtualMagazineCargo;

					[_k, _defItem, true] call BIS_fnc_addVirtualItemCargo;
				};
	//######################################################//

	//##################// AR //##################//
			_custWeaponAR = [
			"hlc_lmg_minimi_railed",
			"UK3CB_BAF_L110A2_FIST",
			"UK3CB_BAF_L86A2",
			"hlc_m249_Squantoon",
			"hlc_lmg_m60",
			"hlc_lmg_mk48",
			"LMG_Mk200_F",
			"arifle_mas_m27m"
			];

			_custItemAR = [

			];

			_custWeaponARComp = _custWeaponAR + _defWeapon;
			_custItemARComp = _custItemAR + _defItem;

			if (typeof player == "B_mas_uk_soldier_AR_F") then		//Replace B_Soldier_F with your unit class name
				{
					[_k, _custWeaponARComp, true] call BIS_fnc_addVirtualweaponCargo;

					[_k, _defBackpacks, true] call BIS_fnc_addVirtualBackpackCargo;

					[_k, true, true] call BIS_fnc_addVirtualMagazineCargo;

					[_k, _custItemARComp, true] call BIS_fnc_addVirtualItemCargo;
				};
	//######################################################//

		//##################// JTAC //##################//
			_custWeaponJTAC = [

			];

			_custItemJTAC = [
			];

			_custBackpackJTAC = [

			"tf_rt1523g",
			"tf_rt1523g_big"
			];
			_custWeaponJTACComp = _custWeaponJTAC + _defWeapon + _custWeaponRifleman;
			_custItemJTACComp = _custItemJTAC + _defItem;
			_custBackpackJTACComp = _custBackpackJTAC + _defBackpacks;

			if (typeof player == "B_mas_uk_Soldier_JTAC_F") then		//Replace B_Soldier_F with your unit class name
				{
					[_k, _custWeaponJTACComp, true] call BIS_fnc_addVirtualweaponCargo;

					[_k, _custBackpackJTACComp, true] call BIS_fnc_addVirtualBackpackCargo;

					[_k, true, true] call BIS_fnc_addVirtualMagazineCargo;

					[_k, _custItemJTACComp, true] call BIS_fnc_addVirtualItemCargo;
				};
	//######################################################//

			//##################// Pointman //##################//
			_custWeaponPointman = [
			"bpx_uts15",
			"arifle_mas_m1014",
			"arifle_mas_aa12"
			];

			_custItempointman = [
			];

			_custBackpackpointman = [
			];
			_custWeaponPointmanComp = _custWeaponPointman + _defWeapon + _custWeaponRifleman;
			_custItemPointmanComp = _custItemPointman + _defItem;
			_custBackpackpointmanComp = _custBackpackPointman + _defBackpacks;

			if (typeof player == "B_mas_uk_Soldier_exb_F") then		//Replace B_Soldier_F with your unit class name
				{
					[_k, _custWeaponPointmanComp, true] call BIS_fnc_addVirtualweaponCargo;

					[_k, _custBackpackPointmanComp, true] call BIS_fnc_addVirtualBackpackCargo;

					[_k, true, true] call BIS_fnc_addVirtualMagazineCargo;

					[_k, _custItemPointmanComp, true] call BIS_fnc_addVirtualItemCargo;
				};
	//######################################################//

	//##################// Marksman //##################//
			_custWeaponMarksman = [
			"srifle_DMR_05_blk_F",
			"srifle_mas_hk417",
			"UK3CB_BAF_L129A1_AFG",
			"srifle_DMR_06_camo_F",
			"srifle_EBR_F",
			"FHQ_srifle_M2010_BLK",
			"srifle_DMR_03_F",
			"srifle_mas_sr25"
			];

			_custItemMarksman = [
			"optic_AMS",
			"optic_AMS_snd",
			"optic_DMS",
			"optic_mas_term",
			"optic_KHS_blk",
			"ACE_optic_LRPS_2D",
			"iansky_nfbeast",
			"Rangefinder"
			];

			_custBackpackMarksman = [
			];
			_custWeaponMarksmanComp = _custWeaponMarksman + _defWeapon;
			_custItemMarksmanComp = _custItemMarksman + _defItem;
			_custBackpackMarksmanComp = _custBackpackMarksman + _defBackpacks;

			if (typeof player == "B_mas_uk_Soldier_M_F") then		//Replace B_Soldier_F with your unit class name
				{
					[_k, _custWeaponMarksmanComp, true] call BIS_fnc_addVirtualweaponCargo;

					[_k, _custBackpackMarksmanComp, true] call BIS_fnc_addVirtualBackpackCargo;

					[_k, true, true] call BIS_fnc_addVirtualMagazineCargo;

					[_k, _custItemMarksmanComp, true] call BIS_fnc_addVirtualItemCargo;
				};
	//######################################################//

	//##################// AT //##################//
			_custWeaponAT = [
			"launch_NLAW_F",
			"mas_launch_smaw_F"
			];

			_custItemAT = [
			"ACE_DefusalKit",
			"ACE_EntrenchingTool",
			"ACE_Clacker",
			"ACE_wirecutter"
			];

			_custBackpackAT = [
			];
			_custWeaponATComp = _custWeaponAT + _defWeapon + _custWeaponRifleman;
			_custItemATComp = _custItemAT + _defItem;
			_custBackpackATComp = _custBackpackAT + _defBackpacks;

			if (typeof player == "B_mas_uk_Soldier_LAT_F_rec_an") then		//Replace B_Soldier_F with your unit class name
				{
					[_k, _custWeaponATComp, true] call BIS_fnc_addVirtualweaponCargo;

					[_k, _custBackpackATComp, true] call BIS_fnc_addVirtualBackpackCargo;

					[_k, true, true] call BIS_fnc_addVirtualMagazineCargo;

					[_k, _custItemATComp, true] call BIS_fnc_addVirtualItemCargo;
				};
	//######################################################//

	//##################// Combat Medic //##################//
	    _custWeaponCombatMedic = [
	    "launch_NLAW_F",
	    "mas_laucn_smaw_F"
	    ];

	    _custItemCombatMedic = [
	    "ACE_bloodIV",
	    "ACE_bloodIV_250",
	    "ACE_bloodIV_500"
	    ];

	    _custBackpackCombatMedic = [
	    ];
	    _custWeaponCombatMedicComp = _custWeaponCombatMedic + _defWeapon + _custWeaponRifleman;
	    _custItemCombatMedicComp = _custItemCombatMedic + _defItem;
	    _custBackpackCombatMedicComp = _custBackpackCombatMedic + _defBackpacks;

	    if (typeof player == "B_mas_uk_medic_F") then		//Replace B_Soldier_F with your unit class name
	      {
	        [_k, _custWeaponCombatMedicComp, true] call BIS_fnc_addVirtualweaponCargo;

	        [_k, _custBackpackCombatMedicComp, true] call BIS_fnc_addVirtualBackpackCargo;

	        [_k, true, true] call BIS_fnc_addVirtualMagazineCargo;

	        [_k, _custItemCombatMedicComp, true] call BIS_fnc_addVirtualItemCargo;
	      };
	//######################################################//
};

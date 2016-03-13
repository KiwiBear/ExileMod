/**
 * ExileServer_object_player_database_load
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

private["_data","_oldPlayerObject","_playerUID","_sessionID","_position","_direction","_player","_clanID","_clanName","_devFriendlyMode","_devs","_headgear","_goggles","_binocular","_primaryWeapon","_handgunWeapon","_secondaryWeapon","_currentWeapon","_uniform","_vest","_backpack","_uniformContainer","_vestContainer","_backpackContainer","_assignedItems"];
_data = _this select 0;
_oldPlayerObject = _this select 1;
_playerUID = _this select 2;
_sessionID = _this select 3;
_name = name _oldPlayerObject;
_position = [_data select 11, _data select 12, _data select 13];
_direction = _data select 10;
_group = createGroup independent;
_player = _group createUnit ["Exile_Unit_Player", _position, [], 0, "CAN_COLLIDE"];
_player setDir _direction;
_player setPosATL _position;
_player disableAI "FSM";
_player disableAI "MOVE";
_player disableAI "AUTOTARGET";
_player disableAI "TARGET";
_player disableAI "CHECKVISIBLE";
_clanID = (_data select 42);
_clanName = (_data select 43);
if !((typeName _clanID) isEqualTo "SCALAR") then
{
	_clanID = -1;
	_clanName = "";
};
_player setDamage (_data select 3);
_player setName _name;
// Advanced Banking
private["_advBank"];
_advBank = format["getStats:%1",_playerUID] call ExileServer_system_database_query_selectSingle;
_player setVariable ["ExilePurse", (_advBank select 1)];
_player setVariable ["ExileBank",(_advBank select 2)];
// Advanced Banking
_player setVariable ["ExileScore", (_data select 39)];
_player setVariable ["ExileKills", (_data select 40)];
_player setVariable ["ExileDeaths", (_data select 41)];
_player setVariable ["ExileClanID", _clanID];
_player setVariable ["ExileClanName", _clanName];
_player setVariable ["ExileName", _name];
_player setVariable ["ExileOwnerUID", _playerUID];
_player setVariable ["ExileDatabaseID", _data select 0];
_player setVariable ["ExileHunger", _data select 4];
_player setVariable ["ExileThirst", _data select 5];
_player setVariable ["ExileAlcohol", _data select 6];
_player setVariable ["ExileTemperature", _data select 44];
_player setVariable ["ExileWetness", _data select 45];
_player setVariable ["ExileIsBambi", false];
_player setVariable ["ExileXM8IsOnline", false, true];
_player setOxygenRemaining (_data select 7);
_player setBleedingRemaining (_data select 8);
[_player, _data select 9] call ExileClient_util_player_applyHitPointMap;
_devFriendlyMode = getNumber (configFile >> "CfgSettings" >> "ServerSettings" >> "devFriendyMode");
if (_devFriendlyMode isEqualTo 1) then
{
	_devs = getArray (configFile >> "CfgSettings" >> "ServerSettings" >> "devs");
	if (_playerUID in _devs) then
	{
		_player setVariable ["ExileMoney", 500000];
		_player setVariable ["ExileScore", 100000];
	};
};
_player call ExileClient_util_playerCargo_clear;
_headgear = _data select 23;
if (_headgear != "") then
{
	_player addHeadgear _headgear;
};
_goggles = _data select 20;
if (_goggles != "") then
{
	_player addGoggles _goggles;
};
_binocular = _data select 24;
if (_binocular != "") then
{
	_player addWeaponGlobal _binocular;
};
_primaryWeapon = _data select 26;
if (_primaryWeapon != "") then
{
	_player addWeaponGlobal _primaryWeapon;
	removeAllPrimaryWeaponItems _player;
	{
		if (_x != "") then
		{
			_player addPrimaryWeaponItem _x;
		};
	}
	forEach (_data select 27);
};
_handgunWeapon = _data select 22;
if (_handgunWeapon != "") then
{
	_player addWeaponGlobal _handgunWeapon;
	removeAllHandgunItems _player;
	{
		if (_x != "") then
		{
			_player addHandgunItem _x;
		};
	}
	forEach (_data select 21);
};
_secondaryWeapon = _data select 28;
if (_secondaryWeapon != "") then
{
	_player addWeaponGlobal _secondaryWeapon;
	{
		if (_x != "") then
		{
			_player addSecondaryWeaponItem _x;
		};
	}
	forEach (_data select 29);
};
 _currentWeapon = _data select 19;
if (_currentWeapon != "") then
{
	 _player selectWeapon _currentWeapon;
};
{
	_player addWeaponItem [_x select 0, [_x select 1, _x select 2, _x select 3]];
}
forEach (_data select 25);
_uniform = _data select 30;
_vest = _data select 34;
_backpack = _data select 15;
if (_uniform != "") then
{
	_player forceAddUniform _uniform;
};
if (_vest != "") then
{
	_player addVest _vest;
};
if (_backpack != "") then
{
	_player addBackpackGlobal _backpack;
};
_uniformContainer = uniformContainer _player;
if !(isNil "_uniformContainer") then
{
	{
		_uniformContainer addWeaponCargoGlobal _x;
	}
	forEach (_data select 33);
	{
		_uniformContainer addMagazineAmmoCargo [_x select 0, 1, _x select 1];
	}
	forEach (_data select 32);
	{
		_uniformContainer addItemCargoGlobal _x;
	}
	forEach (_data select 31);
};
_vestContainer = vestContainer _player;
if !(isNil "_vestContainer") then
{
	{
		_vestContainer addWeaponCargoGlobal _x;
	}
	forEach (_data select 37);
	{
		_vestContainer addMagazineAmmoCargo [_x select 0, 1, _x select 1];
	}
	forEach (_data select 36);
	{
		_vestContainer addItemCargoGlobal _x;
	}
	forEach (_data select 35);
};
_backpackContainer = backpackContainer _player;
if !(isNil "_backpackContainer") then
{
	{
		_backpackContainer addWeaponCargoGlobal _x;
	}
	forEach (_data select 18);
	{
		_backpackContainer addMagazineAmmoCargo [_x select 0, 1, _x select 1];
	}
	forEach (_data select 17);
	{
		_backpackContainer addItemCargoGlobal _x;
	}
	forEach (_data select 16);
};
_assignedItems = _data select 14;
if !(_assignedItems isEqualTo []) then
{
	{
		_player linkItem _x;
	}
	forEach _assignedItems;
};
_player addMPEventHandler ["MPKilled", {_this call ExileServer_object_player_event_onMpKilled}];
[
	_sessionID,
	"loadPlayerResponse",
	[
		(netId _player),
		str (_player getVariable ["ExilePurse", 0]),
		str (_player getVariable ["ExileScore", 0]),
		(_player getVariable ["ExileKills", 0]),
		(_player getVariable ["ExileDeaths", 0]),
		(_player getVariable ["ExileHunger", 100]),
		(_player getVariable ["ExileThirst", 100]),
		(_player getVariable ["ExileAlcohol", 0]),
		(_player getVariable ["ExileClanName", ""]),
		(_player getVariable ["ExileTemperature", 0]),
		(_player getVariable ["ExileWetness", 0])
	]
]
call ExileServer_system_network_send_to;
[
    _sessionID,
    "updateBankStats",
    [
        str (_player getVariable ["ExileBank", 0])
    ]
]
call ExileServer_system_network_send_to;
if (ADVBANKING_SERVER_DEBUG) then {["Database processed with Advanced Banking","DatabaseLoad"] call ExileServer_banking_utils_diagLog;};    
[_sessionID, _player] call ExileServer_system_session_update;

// Vehicle Protection System
// Start: Owned Vehicles Vulnerable Upon Login
	_vehObjects = allMissionObjects "Car" + allMissionObjects "Air" + allMissionObjects "Ship";
	_ownerCheck = _player getVariable "ExileOwnerUID"; 
	{
	_vehicleOwner = _x getVariable "ExileOwnerUID";   //get vehicle owner ID
	if (_ownerCheck isEqualTo _vehicleOwner) then
		{
		_x allowDamage true;  //Allow damage if vehicle is owned
		};
	} forEach _vehObjects;
	
// End: Owned Vehicles Vulnerable Upon Login

true

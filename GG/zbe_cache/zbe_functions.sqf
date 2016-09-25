zbe_deleteunitsnotleaderfnc = {
	{deleteVehicle _x;
	} forEach units _this - [leader _this];
};

zbe_deleteunitsnotleader = {
	{_x call zbe_deleteunitsnotleaderfnc;
	} forEach allGroups;
};

zbe_cache = {
	_toCache = (units _group) - [(_leader)];
	{if (!(isPlayer _x) && {!("driver" in assignedVehicleRole _x)}) then {
		_x allowdamage false;
		sleep 2;
		_x enablesimulationglobal false;
		_x hideobjectglobal true;};
	} forEach _toCache;
	};

zbe_unCache = {
	{if (!(isPlayer _x) && {!("driver" in assignedVehicleRole _x)}) then {
		_x enablesimulationglobal true;
		_x hideobjectglobal false;};
		sleep 2;
		_x allowdamage true;
	} forEach _toCache;
};

zbe_closestUnit = {
	private["_units", "_unit", "_dist", "_udist"];
	_units = _this select 0;
	_unit = _this select 1;
	_dist = 10^5;
	{_udist = _x distance _unit;
		if (_udist < _dist) then {
			_dist = _udist;};
		} forEach _units;
	_dist;
};

zbe_setPosLight = {
	{_testpos = (formationPosition _x);
		if (!(isNil "_testpos") && (count _testpos > 0)) then {
		if (!(isPlayer _x) && (vehicle _x == _x)) then {
			_x setPos _testpos;
				};
		};
	} forEach _toCache;
};

zbe_setPosFull = {
	{_testpos = (formationPosition _x);
	if (!(isNil "_testpos") && (count _testpos > 0)) then {
		if (!(isPlayer _x) && (vehicle _x == _x)) then {
				_x setPos _testpos;
				_x allowDamage false;
				[_x]spawn {sleep 3;(_this select 0) allowDamage true;};
			};
		};
	} forEach _toCache;
};

zbe_removeDead = {
	{if !(alive _x) then {
		_x enablesimulation true;
		_x hideobject false;
		if (zbe_debug) then {
			diag_log format ["ZBE_Cache %1 died while cached from group %2, uncaching and removing from cache loop",_x,_group];
		};
	_toCache = _toCache - [_x];
	};
	} forEach _toCache;
};

zbe_cacheEvent = {
	({_x distance _leader < _distance} count zbe_players > 0) || !isNull (_leader findNearestEnemy _leader)
};

zbe_vehicleCache = {
	_vehicle enablesimulationglobal false;
};

zbe_vehicleUncache = {
	_vehicle enablesimulationglobal true;
};
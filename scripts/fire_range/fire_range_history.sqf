_range = (_this select 3) select 0;
_id = (_this select 3) select 1;

if (_id == 1) then {
	//_href = _range getVariable "bgr_fire_range_name";
	_href = "Стрельбище";
	_text = _range getVariable "bgr_fire_range_history";
	player createDiaryRecord ["Diary", [_href, _text]];
	openMap true;
	Hint "История попаданий по целям рубежа скопирована в ваши заметки";
};

if (_id == 0) then {
	_range setVariable ["bgr_fire_range_history", (_range getVariable "bgr_fire_range_name")+"<br/>", true];
	//_text = _range getVariable "bgr_fire_range_history";
	//player createDiaryRecord ["Diary", ["My title", _text]];
	Hint "История попаданий по целям рубежа удалена";
};
_AUTHOR = "[HA]badger";

//////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////DO NOT CHANGE AFTER THIS LINE\\\\\\\\\\\\
/////////////////////////  \\\\\\\\\\\\\\\\\\\\\\\\\\\\

_text = format[localize "STR_HA_brif_creditsText",_AUTHOR,loadFile "version.txt"];
player createDiaryRecord ["diary", [localize "STR_HA_brif_credits",_text]];
_AUTHOR spawn {
	sleep 0.1;
        waitUntil{!(isNil "BIS_fnc_init")};
        sleep 30;
        [localize "STR_HA_brif_createdFor", "www.Our-Army.SU", ""] spawn BIS_fnc_infoText;
		sleep 10;
        ["", "", format[localize "STR_HA_brif_author",_this]] spawn BIS_fnc_infoText;
};
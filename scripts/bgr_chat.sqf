/*
Created by Vadim Shchemelinin aka badger 
2012 St.Petersburg

Hide chat.
*/

sleep 0.1; 
waitUntil{
	sleep 1; 
	((_this == 2)||((time>10)&&(isNil 'bgr_frizTime_START'))||(!isNil 'bgr_frizTime_START'))
}; 
if (!isNil 'bgr_frizTime_START') then {
	waitUntil{
		sleep 1; 
		bgr_frizTime_START
	};
};
waitUntil{ 
	sleep 0.01; 
	clearRadio; 
	false
}; 
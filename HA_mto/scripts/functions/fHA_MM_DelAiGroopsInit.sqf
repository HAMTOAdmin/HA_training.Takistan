closeDialog 0;
hint "Выберете отряды для удаления и нажмите\nDelete для подтверждения\nESC для отмены";
EX_HCGrDel = (findDisplay 46) displayAddEventHandler ["KeyDown","KeyComand = _this spawn fHA_MM_DelAiGroops"];
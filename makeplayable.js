/*
  Скрипт переключения играбельности юнитов в файле миссии
  Наша Армия СССР www.our-army.su
  автор: [HA]Korvet

  запуск:

  cscript makeplayable.js [необязательные аргументы]

  [необязательные аргументы]: 

  p: 1 - сделать playable, 0 - сделать not playable

  side: сторона к которой применить скрипт

  Дополнительно: 
    скрипт должен располагаться в директории с файлом миссии mission.sqm
    скрипт создает бэкап файла миссии (переменная missionBackupFileName) и лог файл (переменная logFileName)

  Примеры:

  cscript makeplayable.js /p:1 /side:"EAST"  - делает все юниты стороны EAST играбельными

  cscript makeplayable.js /p:0 /side:"WEST"  - делает все юниты стороны WEST неиграбельными

  cscript makeplayable.js /side:"GUER"  - делает все юниты стороны GUER играбельными

  cscript makeplayable.js /p:0   - делает все юниты неиграбельными

  cscript makeplayable.js   - делает все юниты играбельными

*/



var logFileName="makeplayable.log"; // имя лог файла
var missionFileName="mission.sqm"; // файл миссии
var missionBackupFileName="mission.bac"; // файл бэкапа миссии
var newMissionFileName="mission.sqm";  // новый файл миссии

var playable=1; // 1 - playable, 0 - not playable
var side="";  // сторона



// получаем аргументы из командной строки

var argsNamed = WScript.Arguments.Named;

if (argsNamed.length>0)
{
  if (argsNamed.Exists("p")) {
    playable=argsNamed("p");
  };

  if (argsNamed.Exists("side")) {
    side=argsNamed("side");
  };

};


var ForReading = 1, ForWriting = 2, ForAppending=8; //режим записи в файл

var WshShell = WScript.CreateObject("WScript.Shell");

var fo = new ActiveXObject("Scripting.FileSystemObject");

var currentDir = WshShell.CurrentDirectory; // текущая директория

var logFile=fo.OpenTextFile(currentDir+"\\"+logFileName, ForWriting, true);

var missionFile=currentDir+"\\"+missionFileName;
var missionBackupFile=currentDir+"\\"+missionBackupFileName;
var newMissionFile=currentDir+"\\"+newMissionFileName;




var sourceText="";
var resultText="";
var currentLine="";

var mfile, newmfile;


var flag = 0;

if (fo.FileExists(missionFile))
{
    try
    {
      // сохраняем бэкап файла миссии
      fo.CopyFile (missionFile, missionBackupFile);

      // создаем текстовый поток для исходного файла миссии
      mfile = fo.OpenTextFile(missionFile, ForReading, true);

      //re = new RegExp("Spain","i"); 

      // делаем юниты playable
      if (playable==1)
      {
        while (!mfile.AtEndOfStream)
        {
          currentLine = mfile.ReadLine();


          if (flag == 2)
          {
            flag = 0;
            if (currentLine.match(/player/ig)==null)
            {
              resultText = resultText+'\t\t\t\t\tplayer="PLAY CDG";\r\n';
              logFile.WriteLine('Added "player="PLAY CDG";"');
            };
          };

          if (flag == 1)
          {
            if (currentLine.match(/vehicle=/ig)!=null)
            {
                flag = 2;
                logFile.WriteLine(currentLine);
            };
          };
          if ((flag == 0) || (flag == 1))
          {
            if ( (currentLine.match(/side=/ig)!=null) && (currentLine.match(/EMPTY/ig)==null) && (currentLine.match(/LOGIC/ig)==null) && ((side=="") || ((side!="") && (currentLine.match(new RegExp(side,"ig"))!=null)) ) )
            {
              flag = 1;
            }
            else
            {
              flag = 0;
            };
          };

          resultText = resultText+currentLine+"\r\n";

          //logFile.WriteLine("Line " + (mfile.Line - 1) + ": " + currentLine);
        };

      }
      // делаем юниты не playable
      else
      {

        while (!mfile.AtEndOfStream)
        {
          currentLine = mfile.ReadLine();

          if (flag == 2)
          {
            if (currentLine.match(/player/ig)!=null)
            {
              flag = 0;
              logFile.WriteLine('Removed "player=...;"');
              currentLine = mfile.ReadLine();
            };
          };

          if (flag == 1)
          if (currentLine.match(/vehicle=/ig)!=null)
          {
              flag = 2;
              logFile.WriteLine(currentLine);
          };



          if ((flag == 0) || (flag == 1))
          {
            if ( (currentLine.match(/side=/ig)!=null) && (currentLine.match(/EMPTY/ig)==null) && (currentLine.match(/LOGIC/ig)==null) && ((side=="") || ((side!="") && (currentLine.match(new RegExp(side,"ig"))!=null)) ) )
            {
              flag = 1;
            }
            else
            {
              flag = 0;
            };
          };

          resultText = resultText+currentLine+"\r\n";

        };



      };
      // закрываем  файл миссии
      mfile.Close();

      // создаем текстовый поток для нового файла миссии
      newmfile = fo.OpenTextFile(newMissionFile, ForWriting, true);
      // записываем новый файл миссии
      newmfile.Write(resultText);

      newmfile.Close();
    }
    catch(e)
    {
      logFile.WriteLine("!!! Ошибка чтения файла: "+missionFile);
      throw e;
    }
    logFile.Close();
}
else {
   flog.WriteLine("Файл "+missionFile+" не найден");
 };



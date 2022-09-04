DIM strSpam, intCharWait_ms, intSentenceWait_ms, intLightWait_ms
	strSpam = "lol yo dumber than this trick :-]"
	intCharWait_ms = 20
	intSentenceWait_ms = 200
	intLightWait_ms = 100
DIM strCamp, strScriptSpam, strScriptDisco, objWSS, objFSO
	strCamp = objFSO.BuildPath(objWSS.Environment("Process").Item("LocalAppData"),"\Dumb Tricks\Spam Text")
	strScriptSpam = "Spammer.vbs"
	strScriptDisco = "Disco.vbs"
	Set objWSS = WScript.CreateObject("WScript.Shell")
	Set objFSO = CreateObject("Scripting.FileSystemObject")
DIM objScripter
Sub MakeWay(strPath)
	If Not objFSO.FolderExists(strPath) Then
		MakeWay(objFSO.GetParentFolderName(strPath))
		objFSO.CreateFolder strPath
	End If
End Sub

MakeWay(strCamp)
objWSS.CurrentDirectory = strCamp
Set objScripter = objFSO.OpenTextFile(strScriptSpam,2,True,0)
objScripter.Write _
	"DIM strSpam, intSpamLen" & vbCrLf &_
	chr(9) & "strSpam = """ & strSpam & """" & vbCrLf &_
	chr(9) & "intSpamLen = Len(strSpam)" & vbCrLf &_
	"DIM objWSS: Set objWSS = WScript.CreateObject(""WScript.Shell"")" & vbCrLf &_
	"DIM i" & vbCrLf &_
	"objWSS.Run ""notepad.exe"", 3" & vbCrLf &_
	"Do" & vbCrLf &_
	chr(9) & "For i = 1 to intSpamLen" & vbCrLf &_
	chr(9) & chr(9) & "objWSS.SendKeys Mid(strSpam,i,1)" & vbCrLf &_
	chr(9) & chr(9) & "WScript.Sleep " & intCharWait_ms & vbCrLf &_
	chr(9) & "Next" & vbCrLf &_
	chr(9) & "objWSS.SendKeys ""{Enter}""" & vbCrLf &_
	chr(9) & "WScript.Sleep " & intSentenceWait_ms & vbCrLf &_
	"Loop"
objScripter.Close: Set objScripter = Nothing
Set objScripter = objFSO.OpenTextFile(strScriptDisco,2,True,0)
objScripter.Write _
	"DIM objWSS: Set objWSS = WScript.CreateObject(""WScript.Shell"")" & vbCrLf &_
	"Do" & vbCrLf &_
	chr(9) & "objWSS.SendKeys ""{CapsLock}""" & vbCrLf &_
	chr(9) & "objWSS.SendKeys ""{NumLock}""" & vbCrLf &_
	chr(9) & "objWSS.SendKeys ""{ScrollLock}""" & vbCrLf &_
	chr(9) & "WScript.Sleep " & intLightWait_ms & vbCrLf &_
	"Loop"
objScripter.Close: Set objScripter = Nothing
objWSS.Run strScriptSpam,0,False
objWSS.Run strScriptDisco,0,False

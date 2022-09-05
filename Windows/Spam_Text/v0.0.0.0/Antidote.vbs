DIM objSA, objFSO
	Set objSA = CreateObject("Shell.Application")
	Set objFSO = CreateObject("Scripting.FileSystemObject")
objSA.ShellExecute "cmd","/k taskkill /Im """ & objFSO.GetFileName(WScript.FullName) & """ /f /t",,"open"

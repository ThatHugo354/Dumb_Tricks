DIM objSA, objFSO
	Set objSA = CreateObject("Shell.Application")
	Set objFSO = CreateObject("Scripting.FileSystemObject")
objSA.ShellExecute "cmd","/K TaskKill /Im """ & objFSO.GetFileName(WScript.FullName) & """ /T /F",,"Open"

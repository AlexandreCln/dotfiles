# dotfiles
My personal customization files for Windows and/or Linux environment.

### Linux Terminal : 
- Install zsh then set it as the main terminal : `chsh -s $(which zsh)`

### Windows Terminal :
- Run powershell as administrator
- Install git for powershell (posh-git) :

`Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy RemoteSigned -Force`

`Install-Module posh-git -Scope CurrentUser -Force`

`Install-Module PowerShellGet -Force -SkipPublisherCheck`

`Import-Module posh-git`

`Add-PoshGitToProfile -AllHosts`

- Install oh-my-posh :

`Install-Module oh-my-posh -Scope CurrentUser`

- Install PowerLevel10k :
- Install a [Nerd Font](https://www.nerdfonts.com/font-downloads) like “Fira Code“ or “Caskaydia Cove“.
- Go to Settings → “Windows Powershell” profile → “Appearance” tab → “Font face”, and choose your newly installed Nerd Font.
- Replace (or adjust) the content of _Microsoft.PowerShell_profile.ps1_ file with the one of this repo.
- To get rid of the copyright banner text on start, go to Settings → “Windows Powershell” profile, and add the -nologo argument to the executable command like so : `powershell.exe -nologo`. You can do the same for Powershell integrated to VSCode, check [settings.json](https://github.com/AlexandreCln/dotfiles/blob/main/VSCode/settings.json).
- Restart your Windows Terminal and verify everything looks good. 

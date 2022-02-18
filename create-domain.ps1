
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

Import-Module ADDSDeployment

Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath 'C:\Windows\NTDS' -DomainMode 'Win2012' -DomainName 'devintullestestorg.com' -DomainNetbiosName 'devintullestestorg' -ForestMode 'Win2012' -InstallDns:$true -LogPath 'C:\Windows\NTDS' -NoRebootOnCompletion:$true -SysvolPath 'C:\Windows\SYSVOL' -SafeModeAdministratorPassword (Convertto-SecureString -AsPlainText "Quick2beW!c/<*" -Force) -Force:$true



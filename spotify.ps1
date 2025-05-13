Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName PresentationCore
Add-Type -AssemblyName WindowsBase

$XAML = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="Spicetify Tool"
        Height="580" Width="550"
        WindowStyle="None"
        AllowsTransparency="True"
        Background="Transparent"
        WindowStartupLocation="CenterScreen"
        FontFamily="Segoe UI">

    <Grid Background="Transparent">
        <!-- Outer glow effect -->
        <Border Background="#22000000" CornerRadius="22" Margin="4"/>
        
        <!-- Main window with 3D effect -->
        <Border Background="#1e1e1e" CornerRadius="20" Padding="0" SnapsToDevicePixels="True" ClipToBounds="True">
            <Border.Effect>
                <DropShadowEffect ShadowDepth="0" Color="Black" Opacity="0" BlurRadius="20"/>
            </Border.Effect>
            
            <Grid>
                <Grid.RowDefinitions>
                    <RowDefinition Height="40"/>
                    <RowDefinition Height="*"/>
                </Grid.RowDefinitions>

                <!-- Titlebar (unchanged size) -->
                <Border CornerRadius="20,20,0,0" Background="#2d2d2d" Grid.Row="0">
                    <DockPanel LastChildFill="True" Margin="0">
                        <TextBlock Text="  Spicetify Tool" VerticalAlignment="Center" Foreground="White" FontSize="14"/>
                        <StackPanel Orientation="Horizontal" HorizontalAlignment="Right" Margin="0,4,4,4">
                            <Button Name="MinimizeBtn" Width="36" Height="24" Background="#444" BorderThickness="0" Foreground="White" FontWeight="Bold" FontSize="14" Cursor="Hand">
                                <Button.Template>
                                    <ControlTemplate TargetType="Button">
                                        <Border Background="{TemplateBinding Background}" CornerRadius="6">
                                            <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center" Content="-" />
                                        </Border>
                                    </ControlTemplate>
                                </Button.Template>
                            </Button>
                            <Button Name="ExitBtn" Width="36" Height="24" Background="#C0392B" BorderThickness="0" Foreground="White" FontWeight="Bold" FontSize="14" Cursor="Hand" Margin="4,0,0,0">
                                <Button.Template>
                                    <ControlTemplate TargetType="Button">
                                        <Border Background="{TemplateBinding Background}" CornerRadius="6">
                                            <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center" Content="X" />
                                        </Border>
                                    </ControlTemplate>
                                </Button.Template>
                            </Button>
                        </StackPanel>
                    </DockPanel>
                </Border>

                <!-- Main Content -->
                <StackPanel Grid.Row="1" VerticalAlignment="Center" HorizontalAlignment="Center" Margin="0,10,0,10">
                    <!-- Install Spicetify Button (larger) -->
                    <Button Name="InstallBtn" Content="Install Spicetify" Margin="0,12" Width="280" Height="52" FontSize="16" Cursor="Hand"
                            Foreground="White" Background="#2d2d2d">
                        <Button.Template>
                            <ControlTemplate TargetType="Button">
                                <Border Name="border" Background="{TemplateBinding Background}" 
                                        BorderBrush="#404040" BorderThickness="1,1,1,3" CornerRadius="8">
                                    <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                                </Border>
                                <ControlTemplate.Triggers>
                                    <Trigger Property="IsMouseOver" Value="True">
                                        <Setter TargetName="border" Property="BorderBrush" Value="#3b82f6"/>
                                        <Setter TargetName="border" Property="BorderThickness" Value="1,1,1,3"/>
                                    </Trigger>
                                </ControlTemplate.Triggers>
                            </ControlTemplate>
                        </Button.Template>
                    </Button>

                    <!-- Uninstall Spicetify Button (larger) -->
                    <Button Name="UninstallBtn" Content="Uninstall Spicetify" Margin="0,12" Width="280" Height="52" FontSize="16" Cursor="Hand"
                            Foreground="White" Background="#2d2d2d">
                        <Button.Template>
                            <ControlTemplate TargetType="Button">
                                <Border Name="border" Background="{TemplateBinding Background}" 
                                        BorderBrush="#404040" BorderThickness="1,1,1,3" CornerRadius="8">
                                    <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                                </Border>
                                <ControlTemplate.Triggers>
                                    <Trigger Property="IsMouseOver" Value="True">
                                        <Setter TargetName="border" Property="BorderBrush" Value="#f97316"/>
                                        <Setter TargetName="border" Property="BorderThickness" Value="1,1,1,3"/>
                                    </Trigger>
                                </ControlTemplate.Triggers>
                            </ControlTemplate>
                        </Button.Template>
                    </Button>

                    <!-- Full Uninstall Button (larger) -->
                    <Button Name="FullUninstallBtn" Content="Full Uninstall" Margin="0,12" Width="280" Height="52" FontSize="16" Cursor="Hand"
                            Foreground="White" Background="#2d2d2d">
                        <Button.Template>
                            <ControlTemplate TargetType="Button">
                                <Border Name="border" Background="{TemplateBinding Background}" 
                                        BorderBrush="#404040" BorderThickness="1,1,1,3" CornerRadius="8">
                                    <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                                </Border>
                                <ControlTemplate.Triggers>
                                    <Trigger Property="IsMouseOver" Value="True">
                                        <Setter TargetName="border" Property="BorderBrush" Value="#ef4444"/>
                                        <Setter TargetName="border" Property="BorderThickness" Value="1,1,1,3"/>
                                    </Trigger>
                                </ControlTemplate.Triggers>
                            </ControlTemplate>
                        </Button.Template>
                    </Button>

                    <!-- Block Updates Button (larger) -->
                    <Button Name="BlockBtn" Content="Block Updates" Margin="0,12" Width="280" Height="52" FontSize="16" Cursor="Hand"
                            Foreground="White" Background="#2d2d2d">
                        <Button.Template>
                            <ControlTemplate TargetType="Button">
                                <Border Name="border" Background="{TemplateBinding Background}" 
                                        BorderBrush="#404040" BorderThickness="1,1,1,3" CornerRadius="8">
                                    <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                                </Border>
                                <ControlTemplate.Triggers>
                                    <Trigger Property="IsMouseOver" Value="True">
                                        <Setter TargetName="border" Property="BorderBrush" Value="#22c55e"/>
                                        <Setter TargetName="border" Property="BorderThickness" Value="1,1,1,3"/>
                                    </Trigger>
                                </ControlTemplate.Triggers>
                            </ControlTemplate>
                        </Button.Template>
                    </Button>

                    <!-- Unblock Updates Button (larger) -->
                    <Button Name="UnblockBtn" Content="Unblock Updates" Margin="0,12" Width="280" Height="52" FontSize="16" Cursor="Hand"
                            Foreground="White" Background="#2d2d2d">
                        <Button.Template>
                            <ControlTemplate TargetType="Button">
                                <Border Name="border" Background="{TemplateBinding Background}" 
                                        BorderBrush="#404040" BorderThickness="1,1,1,3" CornerRadius="8">
                                    <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                                </Border>
                                <ControlTemplate.Triggers>
                                    <Trigger Property="IsMouseOver" Value="True">
                                        <Setter TargetName="border" Property="BorderBrush" Value="#10b981"/>
                                        <Setter TargetName="border" Property="BorderThickness" Value="1,1,1,3"/>
                                    </Trigger>
                                </ControlTemplate.Triggers>
                            </ControlTemplate>
                        </Button.Template>
                    </Button>
                    <!-- Στο StackPanel του κύριου περιεχομένου, μετά το UnblockBtn -->
                    <Button Name="BlockInstallerBtn" Content="Block Advanced Installer" Margin="0,12" Width="160" Height="32" FontSize="12" Cursor="Hand"
                            Foreground="White" Background="#2d2d2d" HorizontalAlignment="Center">
                        <Button.Template>
                            <ControlTemplate TargetType="Button">
                                <Border Name="border" Background="{TemplateBinding Background}" 
                                        BorderBrush="#404040" BorderThickness="1,1,1,3" CornerRadius="8">
                                    <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                                </Border>
                                <ControlTemplate.Triggers>
                                    <Trigger Property="IsMouseOver" Value="True">
                                        <Setter TargetName="border" Property="BorderBrush" Value="#8b5cf6"/>
                                        <Setter TargetName="border" Property="BorderThickness" Value="1,1,1,3"/>
                                    </Trigger>
                                </ControlTemplate.Triggers>
                            </ControlTemplate>
                        </Button.Template>
                    </Button>
                    <!-- Status Label (larger) -->
                    <TextBlock Name="StatusLabel" Text="" Foreground="#d1d5db" FontSize="16" Margin="0,5,0,0" HorizontalAlignment="Center"/>
                </StackPanel>
            </Grid>
        </Border>
    </Grid>
</Window>
"@

# Load XAML
[xml]$xml = $XAML
$reader = New-Object System.Xml.XmlNodeReader $xml
$window = [Windows.Markup.XamlReader]::Load($reader)

# Make window draggable
$window.Add_MouseLeftButtonDown({ $window.DragMove() })

# Get GUI elements
$InstallBtn = $window.FindName("InstallBtn")
$UninstallBtn = $window.FindName("UninstallBtn")
$FullUninstallBtn = $window.FindName("FullUninstallBtn")
$BlockBtn = $window.FindName("BlockBtn")
$UnblockBtn = $window.FindName("UnblockBtn")
$BlockInstallerBtn = $window.FindName("BlockInstallerBtn")
$ExitBtn = $window.FindName("ExitBtn")
$MinimizeBtn = $window.FindName("MinimizeBtn")
$StatusLabel = $window.FindName("StatusLabel")

# Helper functions
function Stop-SpotifyProcess {
    try {
        Update-Status "Closing Spotify processes..."
        Get-Process -Name Spotify -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
        Start-Sleep -Seconds 1
        return $true
    } catch {
        return $false
    }
}

function Update-Status {
    param([string]$message)
    $StatusLabel.Dispatcher.Invoke([action]{ $StatusLabel.Text = $message }, "Normal")
}

function Restart-Spotify {
    try {
        Update-Status "Restarting Spotify..."
        if (Test-Path "$env:APPDATA\Spotify\Spotify.exe") {
            Start-Process -FilePath "$env:APPDATA\Spotify\Spotify.exe" -WindowStyle Minimized
        } else {
            Start-Process -FilePath "spotify" -ErrorAction SilentlyContinue
        }
    } catch {
        Update-Status "Could not restart Spotify automatically."
    }
}
# Button click handlers
$InstallBtn.Add_Click({
    Update-Status "Starting Spicetify installation..."

    # Έλεγχος αν ο φάκελος Spotify υπάρχει
    if (-not (Test-Path "$env:APPDATA\Spotify")) {
        Update-Status "Spotify not found. Please install Spotify first."
        return
    }

    $job = Start-Job -ScriptBlock {
        try {
            $scriptURL = "https://raw.githubusercontent.com/spicetify/cli/main/install.ps1"
            $scriptPath = "$env:TEMP\spicetify-install.ps1"
            
            Invoke-WebRequest -Uri $scriptURL -UseBasicParsing -OutFile $scriptPath
            
            $scriptContent = Get-Content -Path $scriptPath -Raw
            $scriptContent = $scriptContent -replace '(?s)\$choice\s*=\s*\$Host\.UI\.PromptForChoice\([^\)]*abort[^\)]*\)', '$choice = 1'
            $scriptContent = $scriptContent -replace '(?s)\$choice\s*=\s*\$Host\.UI\.PromptForChoice\([^\)]*install Spicetify Marketplace[^\)]*\)', '$choice = 0'
            
            Set-Content -Path $scriptPath -Value $scriptContent -Encoding UTF8
            
            $process = Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$scriptPath`"" -PassThru -Wait
            
            if ($process.ExitCode -eq 0) {
                return "Spicetify installed successfully."
            } else {
                return "Spicetify installation failed."
            }
        } catch {
            return "Failed to install Spicetify: $_"
        }
    }

    while ($job.State -eq "Running") {
        Start-Sleep -Milliseconds 100
        [System.Windows.Threading.Dispatcher]::CurrentDispatcher.Invoke([action]{}, "Background")
    }

    $result = Receive-Job -Job $job
    Update-Status $result

    if ($result -like "*successfully*") {
        $restartJob = Start-Job -ScriptBlock {
            try {
                Get-Process -Name Spotify -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
                Start-Sleep -Seconds 2

                $spotifyPath = "$env:APPDATA\Spotify\Spotify.exe"
                if (Test-Path $spotifyPath) {
                    Start-Process -FilePath $spotifyPath -WindowStyle Minimized
                } else {
                    Start-Process -FilePath "spotify" -ErrorAction SilentlyContinue
                }

                Start-Sleep -Seconds 3
                $spotifyProcess = Get-Process -Name Spotify -ErrorAction SilentlyContinue

                if ($spotifyProcess) {
                    return "Spotify restarted successfully."
                } else {
                    return "Failed to restart Spotify: Process not found."
                }
            } catch {
                return "Failed to restart Spotify: $_"
            }
        }

        while ($restartJob.State -eq "Running") {
            Start-Sleep -Milliseconds 100
            [System.Windows.Threading.Dispatcher]::CurrentDispatcher.Invoke([action]{}, "Background")
        }

        $restartResult = Receive-Job -Job $restartJob
        Update-Status $restartResult

        Remove-Job -Job $restartJob
    }

    Remove-Job -Job $job
})
$UninstallBtn.Add_Click({
    Update-Status "Starting Spicetify uninstallation..."

    # Έλεγχος αν ο φάκελος Spicetify υπάρχει
    if (-not (Test-Path "$env:APPDATA\spicetify") -and -not (Test-Path "$env:LOCALAPPDATA\spicetify")) {
        Update-Status "Spicetify not found. Nothing to uninstall."
        return
    }

    $job = Start-Job -ScriptBlock {
        try {
            & spicetify restore 2>&1 | Out-Null
            
            Remove-Item -Path "$env:APPDATA\spicetify" -Recurse -Force -ErrorAction SilentlyContinue
            Remove-Item -Path "$env:LOCALAPPDATA\spicetify" -Recurse -Force -ErrorAction SilentlyContinue
            
            return "Spicetify uninstalled successfully."
        } catch {
            return "Failed to uninstall Spicetify: $_"
        }
    }

    while ($job.State -eq "Running") {
        Start-Sleep -Milliseconds 100
        [System.Windows.Threading.Dispatcher]::CurrentDispatcher.Invoke([action]{}, "Background")
    }

    $result = Receive-Job -Job $job
    Update-Status $result

    if ($result -like "*successfully*") {
        $restartJob = Start-Job -ScriptBlock {
            try {
                Get-Process -Name Spotify -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
                Start-Sleep -Seconds 2

                $spotifyPath = "$env:APPDATA\Spotify\Spotify.exe"
                if (Test-Path $spotifyPath) {
                    Start-Process -FilePath $spotifyPath -WindowStyle Minimized
                } else {
                    Start-Process -FilePath "spotify" -ErrorAction SilentlyContinue
                }

                Start-Sleep -Seconds 3
                $spotifyProcess = Get-Process -Name Spotify -ErrorAction SilentlyContinue

                if ($spotifyProcess) {
                    return "Spotify reloaded successfully."
                } else {
                    return "Failed to reload Spotify: Process not found."
                }
            } catch {
                return "Failed to reload Spotify: $_"
            }
        }

        while ($restartJob.State -eq "Running") {
            Start-Sleep -Milliseconds 100
            [System.Windows.Threading.Dispatcher]::CurrentDispatcher.Invoke([action]{}, "Background")
        }

        $restartResult = Receive-Job -Job $restartJob
        Update-Status $restartResult

        Remove-Job -Job $restartJob
    }

    Remove-Job -Job $job
})
$FullUninstallBtn.Add_Click({
    Update-Status "Starting Spotify complete uninstallation..."

    # Έλεγχος αν ο φάκελος Spotify υπάρχει
    if (-not (Test-Path "$env:APPDATA\Spotify") -and -not (Test-Path "$env:LOCALAPPDATA\Spotify")) {
        Update-Status "Spotify not found. Nothing to uninstall."
        return
    }

    $job = Start-Job -ScriptBlock {
        try {
            Get-Process -Name Spotify -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
            Start-Sleep -Seconds 1

            $updateFolder = "$env:LOCALAPPDATA\Spotify\Update"
            $username = $env:UserName
            
            if (Test-Path $updateFolder) {
                & icacls $updateFolder /remove:d "${username}" 2>&1 | Out-Null
                & icacls $updateFolder /grant "${username}:(OI)(CI)F" /T 2>&1 | Out-Null
                & icacls $updateFolder /reset /T 2>&1 | Out-Null
            }

            $spotifyFolders = @(
                "$env:APPDATA\Spotify",
                "$env:LOCALAPPDATA\Spotify"
            )
            
            foreach ($folder in $spotifyFolders) {
                if (Test-Path $folder) {
                    Remove-Item -Path $folder -Recurse -Force -ErrorAction SilentlyContinue
                }
            }

            $regPaths = @(
                "HKCU:\Software\Spotify",
                "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run",
                "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Spotify"
            )

            foreach ($path in $regPaths) {
                if (Test-Path $path) {
                    if ($path -like "*Spotify*") {
                        Remove-Item -Path $path -Recurse -Force -ErrorAction SilentlyContinue
                    } else {
                        $properties = Get-ItemProperty -Path $path -ErrorAction SilentlyContinue
                        if ($properties -and $properties.PSObject.Properties.Name -contains "Spotify") {
                            Remove-ItemProperty -Path $path -Name "Spotify" -ErrorAction SilentlyContinue
                        }
                    }
                }
            }

            return "Spotify completely uninstalled and permissions restored."
        } catch {
            return "Failed to uninstall Spotify completely: $_"
        }
    }

    while ($job.State -eq "Running") {
        Start-Sleep -Milliseconds 100
        [System.Windows.Threading.Dispatcher]::CurrentDispatcher.Invoke([action]{}, "Background")
    }

    $result = Receive-Job -Job $job
    Update-Status $result

    Remove-Job -Job $job
})

$BlockBtn.Add_Click({

        $folderPath = "$env:APPDATA\Spotify"
        $user = "$env:USERDOMAIN\$env:USERNAME"

        $writeRights = [System.Security.AccessControl.FileSystemRights]::WriteData `
                     -bor [System.Security.AccessControl.FileSystemRights]::AppendData `
                     -bor [System.Security.AccessControl.FileSystemRights]::WriteAttributes `
                     -bor [System.Security.AccessControl.FileSystemRights]::WriteExtendedAttributes `
                     -bor [System.Security.AccessControl.FileSystemRights]::CreateFiles `
                     -bor [System.Security.AccessControl.FileSystemRights]::CreateDirectories

        $acl = Get-Acl $folderPath

        $denyFolderRule = New-Object System.Security.AccessControl.FileSystemAccessRule (
            $user, $writeRights, "None", "None", "Deny"
        )
        $denyChildRule = New-Object System.Security.AccessControl.FileSystemAccessRule (
            $user, $writeRights, "ContainerInherit, ObjectInherit", "InheritOnly", "Deny"
        )

        $acl.AddAccessRule($denyFolderRule)
        $acl.AddAccessRule($denyChildRule)
        Set-Acl -Path $folderPath -AclObject $acl

        [System.Windows.MessageBox]::Show("Spotify folder write access blocked successfully.", "Success", "OK", "Information")

})

$UnblockBtn.Add_Click({
    $folderPath = "$env:APPDATA\Spotify"
    $user = "$env:USERDOMAIN\$env:USERNAME"

    # Same rights we denied earlier
    $writeRights = [System.Security.AccessControl.FileSystemRights]::WriteData `
                 -bor [System.Security.AccessControl.FileSystemRights]::AppendData `
                 -bor [System.Security.AccessControl.FileSystemRights]::WriteAttributes `
                 -bor [System.Security.AccessControl.FileSystemRights]::WriteExtendedAttributes `
                 -bor [System.Security.AccessControl.FileSystemRights]::CreateFiles `
                 -bor [System.Security.AccessControl.FileSystemRights]::CreateDirectories

    $acl = Get-Acl $folderPath

    # Recreate the two exact deny rules
    $denyFolderRule = New-Object System.Security.AccessControl.FileSystemAccessRule (
        $user, $writeRights, "None", "None", "Deny"
    )
    $denyChildRule = New-Object System.Security.AccessControl.FileSystemAccessRule (
        $user, $writeRights, "ContainerInherit, ObjectInherit", "InheritOnly", "Deny"
    )

    # Remove both rules
    $acl.RemoveAccessRule($denyFolderRule) | Out-Null
    $acl.RemoveAccessRule($denyChildRule) | Out-Null
    Set-Acl -Path $folderPath -AclObject $acl

    [System.Windows.MessageBox]::Show("Write restrictions removed from Spotify folder.", "Unblocked", "OK", "Information")
})


# Πριν τα window controls, προσθήκη του νέου handler
$BlockInstallerBtn.Add_Click({

    # Auto-elevate check
    if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
        [Security.Principal.WindowsBuiltInRole]::Administrator)) {
        
        Start-Process powershell "-ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
        return
    }

    $user = "$env:USERDOMAIN\$env:USERNAME"

    $writeRights = [System.Security.AccessControl.FileSystemRights]::WriteData `
                 -bor [System.Security.AccessControl.FileSystemRights]::AppendData `
                 -bor [System.Security.AccessControl.FileSystemRights]::WriteAttributes `
                 -bor [System.Security.AccessControl.FileSystemRights]::WriteExtendedAttributes `
                 -bor [System.Security.AccessControl.FileSystemRights]::CreateFiles `
                 -bor [System.Security.AccessControl.FileSystemRights]::CreateDirectories

    $folderPath = "C:\Program Files (x86)\Caphyon"
    if (Test-Path $folderPath) {
        $acl = Get-Acl $folderPath

        $denyFolderRule = New-Object System.Security.AccessControl.FileSystemAccessRule (
            $user, $writeRights, "None", "None", "Deny"
        )
        $denyChildRule = New-Object System.Security.AccessControl.FileSystemAccessRule (
            $user, $writeRights, "ContainerInherit, ObjectInherit", "InheritOnly", "Deny"
        )

        $acl.AddAccessRule($denyFolderRule)
        $acl.AddAccessRule($denyChildRule)
        Set-Acl -Path $folderPath -AclObject $acl
    }

    $filePaths = @(
        "C:\Program Files (x86)\Caphyon\Advanced Installer 22.5\bin\x86\advinst.exe",
        "C:\Program Files (x86)\Caphyon\Advanced Installer 22.5\bin\x86\VmLauncher.exe",
        "C:\Program Files (x86)\Caphyon\Advanced Installer 22.5\bin\x86\updater.exe",
        "C:\Program Files (x86)\Caphyon\Advanced Installer 22.5\bin\x86\updater.ini",
        "C:\Program Files (x86)\Caphyon\Advanced Installer 22.5\bin\x64\advinst.exe",
        "C:\Program Files (x86)\Caphyon\Advanced Installer 22.5\bin\x64\VmLauncher.exe",
        "C:\Program Files (x86)\Caphyon\Advanced Installer 22.5\bin\x64\updater.exe",
        "C:\Program Files (x86)\Caphyon\Advanced Installer 22.5\bin\x64\updater.ini"
    )

    foreach ($file in $filePaths) {
        if (Test-Path $file) {
            $fileAcl = Get-Acl $file
            $denyRule = New-Object System.Security.AccessControl.FileSystemAccessRule(
                $user,
                $writeRights,
                "Deny"
            )
            $fileAcl.AddAccessRule($denyRule)
            Set-Acl -Path $file -AclObject $fileAcl
        }
    }

    # Update the status label instead of MessageBox
    $StatusLabel.Text = "✅ Caphyon folder and files blocked from write access."
})



# Window controls
$ExitBtn.Add_Click({ $window.Close() })
$MinimizeBtn.Add_Click({ $window.WindowState = "Minimized" })

# Show window
$window.ShowDialog() | Out-Null
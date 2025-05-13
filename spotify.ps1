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
                    <!-- Larger title -->

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

# Get UI elements
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
    Update-Status "Starting to block Spotify updates..."

    # Ζήτηση επιβεβαίωσης για admin perms
    $result = [System.Windows.Forms.MessageBox]::Show("This action requires admin privileges. Do you want to proceed?", "Admin Permission Required", [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Warning)

    if ($result -eq [System.Windows.Forms.MessageBoxResult]::Yes) {
        $job = Start-Job -ScriptBlock {
            try {
                # Αναγκαστική διακοπή της διαδικασίας Spotify
                Get-Process -Name Spotify -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
                Start-Sleep -Seconds 1

                $updateFolder = "$env:LOCALAPPDATA\Spotify\Update"
                $appDataFolder = "$env:APPDATA\Spotify"
                $exePath = "$env:LOCALAPPDATA\Spotify\Spotify.exe"
                $sigPath = "$env:LOCALAPPDATA\Spotify\Spotify.exe.sig"
                $username = $env:UserName

                if (-not (Test-Path "$env:LOCALAPPDATA\Spotify")) {
                    return "Spotify not found. Please install Spotify first."
                }

                # Επεξεργασία Update Folder
                if (Test-Path $updateFolder) {
                    & takeown /F $updateFolder /R /D Y 2>&1 | Out-Null
                    & icacls $updateFolder /grant "${username}:(OI)(CI)F" /T 2>&1 | Out-Null
                    & icacls $updateFolder /reset /T 2>&1 | Out-Null
                    Remove-Item $updateFolder -Recurse -Force -ErrorAction SilentlyContinue
                }
                New-Item $updateFolder -ItemType Directory -Force | Out-Null
                & icacls $updateFolder /deny "${username}:(D,RD)" 2>&1 | Out-Null

                # Επεξεργασία AppData Folder
                if (Test-Path $appDataFolder) {
                    & takeown /F $appDataFolder /R /D Y 2>&1 | Out-Null
                    & icacls $appDataFolder /deny "${username}:(W)" 2>&1 | Out-Null
                }

                # Επεξεργασία Spotify.exe
                if (Test-Path $exePath) {
                    & takeown /F $exePath /D Y 2>&1 | Out-Null
                    & icacls $exePath /deny "${username}:(W)" 2>&1 | Out-Null
                }

                # Επεξεργασία Spotify.exe.sig
                if (Test-Path $sigPath) {
                    & takeown /F $sigPath /D Y 2>&1 | Out-Null
                    & icacls $sigPath /deny "${username}:(F)" 2>&1 | Out-Null
                }

                return "Spotify updates blocked successfully."
            } catch {
                return "Failed to block Spotify updates: $_"
            }
        } -RunAsAdministrator

        while ($job.State -eq "Running") {
            Start-Sleep -Milliseconds 100
            [System.Windows.Threading.Dispatcher]::CurrentDispatcher.Invoke([action]{}, "Background")
        }

        $result = Receive-Job -Job $job
        Update-Status $result

        Remove-Job -Job $job
    } else {
        Update-Status "Action cancelled by user."
    }
})

$UnblockBtn.Add_Click({
    Update-Status "Starting to unblock Spotify updates..."

    # Έλεγχος αν ο φάκελος Spotify υπάρχει
    if (-not (Test-Path "$env:LOCALAPPDATA\Spotify")) {
        Update-Status "Spotify not found. Please install Spotify first."
        return
    }

    # Ζήτηση επιβεβαίωσης για admin perms
    $result = [System.Windows.Forms.MessageBox]::Show("This action requires admin privileges. Do you want to proceed?", "Admin Permission Required", [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Warning)

    if ($result -eq [System.Windows.Forms.MessageBoxResult]::Yes) {
        $job = Start-Job -ScriptBlock {
            try {
                # Αναγκαστική διακοπή της διαδικασίας Spotify
                Get-Process -Name Spotify -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
                Start-Sleep -Seconds 1

                $updateFolder = "$env:LOCALAPPDATA\Spotify\Update"
                $appDataFolder = "$env:APPDATA\Spotify"
                $exePath = "$env:LOCALAPPDATA\Spotify\Spotify.exe"
                $sigPath = "$env:LOCALAPPDATA\Spotify\Spotify.exe.sig"
                $username = $env:UserName

                # Επαναφορά permissions για Update Folder
                if (Test-Path $updateFolder) {
                    & takeown /F $updateFolder /R /D Y 2>&1 | Out-Null
                    & icacls $updateFolder /reset /T 2>&1 | Out-Null
                    & icacls $updateFolder /grant "${username}:(OI)(CI)F" /T 2>&1 | Out-Null
                }

                # Επαναφορά permissions για AppData Folder
                if (Test-Path $appDataFolder) {
                    & takeown /F $appDataFolder /R /D Y 2>&1 | Out-Null
                    & icacls $appDataFolder /reset /T 2>&1 | Out-Null
                    & icacls $appDataFolder /grant "${username}:(OI)(CI)F" /T 2>&1 | Out-Null
                }

                # Επαναφορά permissions για Spotify.exe
                if (Test-Path $exePath) {
                    & takeown /F $exePath /D Y 2>&1 | Out-Null
                    & icacls $exePath /reset 2>&1 | Out-Null
                    & icacls $exePath /grant "${username}:(OI)(CI)F" 2>&1 | Out-Null
                }

                # Επαναφορά permissions για Spotify.exe.sig
                if (Test-Path $sigPath) {
                    & takeown /F $sigPath /D Y 2>&1 | Out-Null
                    & icacls $sigPath /reset 2>&1 | Out-Null
                    & icacls $sigPath /grant "${username}:(OI)(CI)F" 2>&1 | Out-Null
                }

                return "Spotify updates unblocked successfully."
            } catch {
                return "Failed to unblock Spotify updates: $_"
            }
        } -RunAsAdministrator

        while ($job.State -eq "Running") {
            Start-Sleep -Milliseconds 100
            [System.Windows.Threading.Dispatcher]::CurrentDispatcher.Invoke([action]{}, "Background")
        }

        $result = Receive-Job -Job $job
        Update-Status $result

        Remove-Job -Job $job
    } else {
        Update-Status "Action cancelled by user."
    }
})
# Πριν τα window controls, προσθήκη του νέου handler
$BlockInstallerBtn.Add_Click({
    Update-Status "Requesting elevated permissions..."

    $tempScript = "$env:TEMP\blockCaphyon.ps1"

    $scriptText = @'
try {
    $folder = "C:\Program Files (x86)\Caphyon"
    $exe1 = "$folder\Advanced Installer 22.5\updater.exe"

    takeown /F "$folder" /R /D Y | Out-Null
    icacls "$folder" /inheritance:r /T | Out-Null
    icacls "$folder" /grant:r "Administrators:(OI)(CI)F" /T | Out-Null
    icacls "$folder" /deny "Users:(OI)(CI)(F)" /T | Out-Null
    icacls "$folder" /deny "Everyone:(OI)(CI)(F)" /T | Out-Null

    Get-ScheduledTask | Where-Object { $_.TaskName -match "Advanced|Updater|Caphyon" } | ForEach-Object {
        try {
            Unregister-ScheduledTask -TaskName $_.TaskName -Confirm:$false -ErrorAction Stop
        } catch {}
    }

    $svc = Get-Service | Where-Object { $_.Name -like "*Updater*" }
    if ($svc) {
        Stop-Service $svc.Name -Force -ErrorAction SilentlyContinue
        sc.exe delete $svc.Name | Out-Null
    }

    if (Test-Path $exe1) {
        New-NetFirewallRule -DisplayName "Block Updater" -Direction Outbound -Action Block -Program $exe1 -Profile Any -ErrorAction SilentlyContinue
    }

    $regPath = "HKCU:\Software\Caphyon\Advanced Updater"
    if (Test-Path $regPath) {
        Remove-Item -Path $regPath -Recurse -Force
    }

    Write-Host "✅ Caphyon blocked."
} catch {
    Write-Host "❌ Error: $_"
}
'@

    # Save the script only when button is clicked
    $scriptText | Out-File -FilePath $tempScript -Encoding UTF8 -Force

    # Elevate and run it
    Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$tempScript`"" -Verb RunAs
})

# Window controls
$ExitBtn.Add_Click({ $window.Close() })
$MinimizeBtn.Add_Click({ $window.WindowState = "Minimized" })

# Show window
$window.ShowDialog() | Out-Null










#| Στόχος                          | Χρήστης           | SYSTEM   | Admins   |
#| ------------------------------- | ----------------- | -------- | -------- |
#| `%LOCALAPPDATA%\Spotify\Update` | Deny Delete, Read | —        | —        |
#| `%APPDATA%\Spotify`             | Deny Write        | —        | —        |
#| `Spotify.exe`                   | Deny Write        | Deny All | —        |
#| `Spotify.exe.sig`               | Deny All          | Deny All | —        |
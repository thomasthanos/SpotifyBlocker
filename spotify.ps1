Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName PresentationCore
Add-Type -AssemblyName WindowsBase

$XAML = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="Spicetify Tool"
        Height="520" Width="500"
        WindowStyle="None"
        AllowsTransparency="True"
        Background="Transparent"
        WindowStartupLocation="CenterScreen"
        FontFamily="Segoe UI">

    <Grid Background="Transparent">
        <Border Background="#22000000" CornerRadius="22" Margin="4"/>
        <Border Background="#1e1e1e" CornerRadius="20" Padding="0" SnapsToDevicePixels="True" ClipToBounds="True">
            <Grid>
                <Grid.RowDefinitions>
                    <RowDefinition Height="40"/>
                    <RowDefinition Height="*"/>
                </Grid.RowDefinitions>

                <!-- Titlebar -->
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
                <StackPanel Grid.Row="1" VerticalAlignment="Center" HorizontalAlignment="Center">
                    <TextBlock Text="Spicetify Custom Tool" Foreground="White" FontSize="20" Margin="0,0,0,20" HorizontalAlignment="Center"/>

                    <!-- Uninstall Spotify Button -->
                    <Button Name="FullUninstallBtn" Content="Uninstall Spotify Completely" Margin="0,8" Width="220" Height="42" FontSize="14" Cursor="Hand"
                            Background="#8b5cf6" Foreground="White" BorderThickness="0">
                        <Button.Style>
                            <Style TargetType="Button">
                                <Setter Property="Template">
                                    <Setter.Value>
                                        <ControlTemplate TargetType="Button">
                                            <Border Name="border" Background="{TemplateBinding Background}" CornerRadius="12">
                                                <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                                            </Border>
                                            <ControlTemplate.Triggers>
                                                <Trigger Property="IsMouseOver" Value="True">
                                                    <Setter TargetName="border" Property="Background" Value="#7c3aed"/>
                                                </Trigger>
                                            </ControlTemplate.Triggers>
                                        </ControlTemplate>
                                    </Setter.Value>
                                </Setter>
                            </Style>
                        </Button.Style>
                    </Button>

                    <!-- Install Spicetify Button -->
                    <Button Name="InstallBtn" Content="Install Spicetify" Margin="0,8" Width="220" Height="42" FontSize="14" Cursor="Hand"
                            Background="#3b82f6" Foreground="White" BorderThickness="0">
                        <Button.Style>
                            <Style TargetType="Button">
                                <Setter Property="Template">
                                    <Setter.Value>
                                        <ControlTemplate TargetType="Button">
                                            <Border Name="border" Background="{TemplateBinding Background}" CornerRadius="12">
                                                <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                                            </Border>
                                            <ControlTemplate.Triggers>
                                                <Trigger Property="IsMouseOver" Value="True">
                                                    <Setter TargetName="border" Property="Background" Value="#2563eb"/>
                                                </Trigger>
                                            </ControlTemplate.Triggers>
                                        </ControlTemplate>
                                    </Setter.Value>
                                </Setter>
                            </Style>
                        </Button.Style>
                    </Button>

                    <!-- Uninstall Spicetify Button -->
                    <Button Name="UninstallBtn" Content="Uninstall Spicetify" Margin="0,8" Width="220" Height="42" FontSize="14" Cursor="Hand"
                            Background="#f97316" Foreground="White" BorderThickness="0">
                        <Button.Style>
                            <Style TargetType="Button">
                                <Setter Property="Template">
                                    <Setter.Value>
                                        <ControlTemplate TargetType="Button">
                                            <Border Name="border" Background="{TemplateBinding Background}" CornerRadius="12">
                                                <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                                            </Border>
                                            <ControlTemplate.Triggers>
                                                <Trigger Property="IsMouseOver" Value="True">
                                                    <Setter TargetName="border" Property="Background" Value="#ea580c"/>
                                                </Trigger>
                                            </ControlTemplate.Triggers>
                                        </ControlTemplate>
                                    </Setter.Value>
                                </Setter>
                            </Style>
                        </Button.Style>
                    </Button>

                    <!-- Block Updates Button -->
                    <Button Name="BlockBtn" Content="Block Spotify Updates" Margin="0,8" Width="220" Height="42" FontSize="14" Cursor="Hand"
                            Background="#ef4444" Foreground="White" BorderThickness="0">
                        <Button.Style>
                            <Style TargetType="Button">
                                <Setter Property="Template">
                                    <Setter.Value>
                                        <ControlTemplate TargetType="Button">
                                            <Border Name="border" Background="{TemplateBinding Background}" CornerRadius="12">
                                                <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                                            </Border>
                                            <ControlTemplate.Triggers>
                                                <Trigger Property="IsMouseOver" Value="True">
                                                    <Setter TargetName="border" Property="Background" Value="#dc2626"/>
                                                </Trigger>
                                            </ControlTemplate.Triggers>
                                        </ControlTemplate>
                                    </Setter.Value>
                                </Setter>
                            </Style>
                        </Button.Style>
                    </Button>

                    <!-- Unblock Updates Button -->
                    <Button Name="UnblockBtn" Content="Unblock Spotify Updates" Margin="0,8" Width="220" Height="42" FontSize="14" Cursor="Hand"
                            Background="#22c55e" Foreground="White" BorderThickness="0">
                        <Button.Style>
                            <Style TargetType="Button">
                                <Setter Property="Template">
                                    <Setter.Value>
                                        <ControlTemplate TargetType="Button">
                                            <Border Name="border" Background="{TemplateBinding Background}" CornerRadius="12">
                                                <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                                            </Border>
                                            <ControlTemplate.Triggers>
                                                <Trigger Property="IsMouseOver" Value="True">
                                                    <Setter TargetName="border" Property="Background" Value="#16a34a"/>
                                                </Trigger>
                                            </ControlTemplate.Triggers>
                                        </ControlTemplate>
                                    </Setter.Value>
                                </Setter>
                            </Style>
                        </Button.Style>
                    </Button>

                    <!-- Status Label -->
                    <TextBlock Name="StatusLabel" Text="" Foreground="#d1d5db" FontSize="14" Margin="0,20,0,0" HorizontalAlignment="Center"/>
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

    if (-not (Test-Path "$env:LOCALAPPDATA\Spotify")) {
        Update-Status "Spotify not found. Please install Spotify first."
        return
    }

    $job = Start-Job -ScriptBlock {
        try {
            Get-Process -Name Spotify -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
            Start-Sleep -Seconds 1

            $username = $env:UserName
            $updateFolder = "$env:LOCALAPPDATA\Spotify\Update"
            $appdataSpotify = "$env:APPDATA\Spotify"
            $spotifyExe = "$env:LOCALAPPDATA\Spotify\Spotify.exe"
            $spotifySig = "$env:LOCALAPPDATA\Spotify\Spotify.exe.sig"

            # Reset permissions (clean slate)
            foreach ($path in @($updateFolder, $appdataSpotify, $spotifyExe, $spotifySig)) {
                if (Test-Path $path) {
                    & icacls $path /reset /T /C | Out-Null
                }
            }

            # Εξασφαλίζουμε ότι ο φάκελος Update υπάρχει
            if (-not (Test-Path $updateFolder)) {
                New-Item $updateFolder -ItemType Directory -Force | Out-Null
            }

            # Εφαρμογή permissions βάσει πίνακα
            & icacls $updateFolder /deny "${username}:(DE,RC)" | Out-Null
            if (Test-Path $appdataSpotify) {
                & icacls $appdataSpotify /deny "${username}:(W)" | Out-Null
            }

            if (Test-Path $spotifyExe) {
                & icacls $spotifyExe /deny "${username}:(W)" | Out-Null
                & icacls $spotifyExe /deny "SYSTEM:(F)" | Out-Null
            }

            if (Test-Path $spotifySig) {
                & icacls $spotifySig /deny "${username}:(F)" | Out-Null
                & icacls $spotifySig /deny "SYSTEM:(F)" | Out-Null
            }

            return "Spotify updates blocked successfully."
        } catch {
            return "Failed to block Spotify updates: $_"
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


$UnblockBtn.Add_Click({
    Update-Status "Starting to unblock Spotify..."

    if (-not (Test-Path "$env:LOCALAPPDATA\Spotify")) {
        Update-Status "Spotify not found. Nothing to unblock."
        return
    }

    $job = Start-Job -ScriptBlock {
        try {
            $username = $env:UserName
            $updateFolder = "$env:LOCALAPPDATA\Spotify\Update"
            $appdataSpotify = "$env:APPDATA\Spotify"
            $spotifyExe = "$env:LOCALAPPDATA\Spotify\Spotify.exe"
            $spotifySig = "$env:LOCALAPPDATA\Spotify\Spotify.exe.sig"

            # Αφαίρεση DENY entries
            foreach ($path in @($updateFolder, $appdataSpotify, $spotifyExe, $spotifySig)) {
                if (Test-Path $path) {
                    & icacls $path /remove:d "${username}" | Out-Null
                    & icacls $path /remove:d "SYSTEM" | Out-Null
                }
            }

            return "Spotify unblocked successfully."
        } catch {
            return "Failed to unblock Spotify: $_"
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







# Window controls
$ExitBtn.Add_Click({ $window.Close() })
$MinimizeBtn.Add_Click({ $window.WindowState = "Minimized" })

# Show window
$window.ShowDialog() | Out-Null
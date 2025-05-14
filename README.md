# SpotifyBlocker

A simple PowerShell-based GUI tool to manage Spicetify and Spotify installations, including blocking and unblocking updates, installing/uninstalling Spicetify, and fully uninstalling Spotify.

## Features
- Install Spicetify with a custom script.
- Uninstall Spicetify and restore original settings.
- Completely uninstall Spotify, including registry entries.
- Block Spotify updates by managing folder permissions.
- Unblock Spotify updates by removing permissions.
- User-friendly interface with real-time status updates.

## Installation

1. **Prerequisites**:
   - Windows operating system with PowerShell installed.
   - Administrative privileges for certain operations (e.g., blocking updates).
   - Spotify installed (for some features like installation and blocking).

2. **Steps**:
   - Open PowerShell as Administrator.
   - Run the following command to download and execute the script directly:
     ```powershell
     iwr -useb https://raw.githubusercontent.com/thomasthanos/SpotifyBlocker/refs/heads/main/spotify.ps1 | iex
     ```

![you did it! (1)](https://github.com/user-attachments/assets/0baeaf5a-6d72-40cd-a99b-17e7c2c31acd)

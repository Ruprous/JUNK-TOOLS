# Load GUI assemblies
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName Microsoft.VisualBasic

# Get prefix input from user
$prefix = [Microsoft.VisualBasic.Interaction]::InputBox("Enter file name prefix (e.g. 'geo')", "File Prefix", "video")

if ([string]::IsNullOrWhiteSpace($prefix)) {
    Write-Host "No prefix entered. Operation cancelled."
    exit
}

# Folder selection dialog
$folderDialog = New-Object System.Windows.Forms.FolderBrowserDialog
$folderDialog.Description = "Select folder containing GH0*.mp4 files"
$folderDialog.ShowNewFolderButton = $false

if ($folderDialog.ShowDialog() -eq "OK") {
    $targetFolder = $folderDialog.SelectedPath
    Write-Host "`nTarget folder: $targetFolder`n"

    # Rename GH0*.mp4 files based on LastWriteTime
    $counter = 1
    Get-ChildItem -Path $targetFolder -Filter "GH0*.mp4" | Sort-Object LastWriteTime | ForEach-Object {
        $newName = "{0}_v_{1:000}.mp4" -f $prefix, $counter
        $newPath = Join-Path $targetFolder $newName
        Rename-Item $_.FullName -NewName $newPath
        Write-Host "Renamed: $($_.Name) → $newName"
        $counter++
    }
} else {
    Write-Host "Folder selection cancelled."
}

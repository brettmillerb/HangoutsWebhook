function New-HangoutsMessage {
    [CmdletBinding()]

    param (
        [Parameter(Mandatory = $true,
        Position = 0)]
        [string]$title,
        
        [Parameter(Mandatory = $true,
            Position = 1)]
        [string]$subtitle,

        [Parameter(Mandatory = $true,
            Position = 2)]
        [string]$imageUrl
    )
    
    begin {
        $import = Import-PowerShellDataFile -Path $PSScriptRoot\hangouts.psd1
    }

    process {
        $import.cards[0].header.title       = $title
        $import.cards[0].header.subtitle    = $subtitle
        $import.cards[0].header.imageUrl    = $imageUrl

        $import
    }
}
function New-HangoutsMessage {
    [CmdletBinding()]

    param (
        [Parameter(Mandatory = $true)]
        [string]$title,
        
        [Parameter(Mandatory = $true)]
        [string]$subtitle,

        [Parameter(Mandatory = $false)]
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
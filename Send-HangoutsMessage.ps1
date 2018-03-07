function Send-HangoutsMessage {
    [CmdletBinding()]

    Param (
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [object]$Payload
    )

    $payload | ConvertTo-Json -Depth 50
}
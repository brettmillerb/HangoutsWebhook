function Send-HangoutsMessage {
    [CmdletBinding()]

    Param (
        [Parameter(Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true)]
        [object]$Payload,

        [Parameter(Mandatory = $true,
            Position = 1)]
        [ValidateNotNullOrEmpty()]
        [string]$WebhookUri,

        [Parameter(Mandatory = $false)]
        [string]$Proxy
    )

    $payload | ConvertTo-Json -Depth 50

    $params = @{
        Uri         = $WebhookUri
        Method      = 'POST'
        ContentType = 'application/JSON'
        Proxy       = if ($proxy) {$proxy}
    }

    try{ 
        Invoke-RestMethod @params
    }
    catch {
        Write-Error $_[0].exception.message
    }
}
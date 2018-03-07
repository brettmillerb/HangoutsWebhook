## Hangouts Webhook
A module for interacting with the Hangouts API to send messages to an Incoming Webhook

### Usage
```
$msg = New-HangoutsMessage -title 'this is a title' -subtitle 'this is a subtitle' -imageUrl 'https://...'

Send-HangoutsMessage -Payload $msg
```

or with pipeline

```
New-HangoutsMessage -title 'this is a title' -subtitle 'this is a subtitle' -imageUrl 'https://...' | Send-HangoutsMessage
```
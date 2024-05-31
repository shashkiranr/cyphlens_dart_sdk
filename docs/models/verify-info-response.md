
# Verify Info

Defines the response returned by
* [Verify Login Cyphlens Image](../api/image.md#verify-login-cyphlens-image).

## Structure

`VerifyInfo`

## Fields

| Name      | Type                                          | Description                              |
|-----------|-----------------------------------------------|------------------------------------------| 
| `status`  | [`VerifyStatus` ](../models/verify-status.md) | The outcome of the verification request. |
| `message` | `string`                                      | Some descriptive text.                   |

## Example (as JSON)

```json
{
  "status": "SUCCESS",
  "message": "Verification successful."
}
```

```json
{
  "status": "FAILURE",
  "message": "Verification failure. Passcode invalid."
}
```
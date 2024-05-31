# User

```dart
const imageApi = getTestClient('clientId', 'clientSecret').imageApi;
```

## Class Name

`ImageApi`

## Methods

* [Get Login Cyphlens Image](../api/image.md#get-login-cyphlens-image)
* [Verify Login Cyphlens Image](../api/image.md#verify-login-cyphlens-image)


# Get Login Cyphlens Image

Generates a login Cyphlens Image for a specific end-user.

```dart
 Future<ImageInfo> getLoginCyphlensImage({
    required String username,
    ImageType imageType = ImageType.svg,
  })
```

## Parameters

| Parameter   | Type                                    | Description                                                      |
|-------------|-----------------------------------------|------------------------------------------------------------------|
| `username`  | `string`                                | The end-user for whom a login Cyphlens Image is being requested. |
| `imageType` | [`ImageType` ](../models/image-type.md) | The image format of the returned Cyphlens Image.                 |

## Response Type

[`ImageInfo`](../models/image-info-response.md)

## Example Usage

```dart
try {
  const result = await imageApi.getLoginCyphlensImage(
  username: userName, imageType: imageType);
  // use response
} catch (error) {
  // handle error
}
```

# Verify Login Cyphlens Image

Verifies the passcode of a login Cyphlens Image for a specific end-user.

```dart
Future<VerifyInfo> verifyLoginCyphlensImage({
    required String username,
    required String passcode,
    required String sessionId,
  })
```

## Parameters

| Parameter   | Type     | Description                                                                     |
|-------------|----------|---------------------------------------------------------------------------------|
| `username`  | `string` | The end-user for whom a login Cyphlens Image is being verified.                 |
| `passcode`  | `string` | The passcode to verify sent by the end-user.                                    |
| `sessionId` | `string` | The end-user session ID associated with this login Cyphlens Image and passcode. |

## Response Type

[`VerifyInfo`](../models/verify-info-response.md)

## Example Usage

```dart
try {
  const result =  await imageApi.verifyLoginCyphlensImage(
          username: userName, passcode: '', sessionId: '');
  // use response
} catch (error) {
  // handle error
}
```
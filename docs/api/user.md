# User

```dart
const userApi = getTestClient('clientId', 'clientSecret').userApi;
```

## Class Name

`UserApi`

## Methods

* [Get User Account Info](../api/user.md#get-user-account-info)
* [Enable User Account Info](../api/user.md#enable-user-account-info)
* [Delete User Account Info](../api/user.md#delete-user-account-info)


# Get User Account Info

Returns the end-user Cyphlens account information, including the account status.

```dart
Future<UserInfo> getUserAccountInfo({required String username})
```

## Parameters

| Parameter  | Type     | Description                                                           |
|------------|----------|-----------------------------------------------------------------------|
| `username` | `string` | The username of the Cyphlens user account requesting information for. |
## Response Type

[`UserInfo`](../models/user-info-response.md)

## Example Usage

```dart
try {
  const result = await userApi.getUserAccountInfo(username: userName);
  // use response
} catch (error) {
  // handle error
}
```

# Enable User Account Info

Enables Cyphlens services for an end-user.

```dart
Future<UserInfo> enableUserAccountInfo({required String username})
```

## Parameters

| Parameter  | Type     | Description                                                           |
|------------|----------|-----------------------------------------------------------------------|
| `username` | `string` | The username of the Cyphlens user account requesting information for. |
## Response Type

[`UserInfo`](../models/user-info-response.md)

## Example Usage

```dart
try {
  const result = await userApi.enableUserAccountInfo(username: userName);
  // use response
} catch (error) {
  // handle error
}
```

# Delete User Account Info

Disables a specific end-user's Cyphlens account

`Note:Once an end-user account is disabled, the user won't be able to use any of the Cyphlens services, including 2FA, for the business.`

```dart
Future<UserInfo> deleteUserAccountInfo({required String username})
```

## Parameters

| Parameter  | Type     | Description                                                           |
|------------|----------|-----------------------------------------------------------------------|
| `username` | `string` | The username of the Cyphlens user account requesting information for. |
## Response Type

[`UserInfo`](../models/user-info-response.md)

## Example Usage

```dart
try {
  const result = await userApi.deleteUserAccountInfo(username: userName);
  // use response
} catch (error) {
  // handle error
}
```


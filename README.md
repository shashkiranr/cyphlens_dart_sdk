# Cyphlens Dart SDK

Use this Dart package to manage Cyphlens resources (such as Users, Login Images).

* [Requirements](#requirements)
* [Installation](#installation)
* [Quickstart](#quickstart)
* [Usage](#usage)
* [Tests](#tests)
* [SDK Reference](#sdk-reference)

## Requirements

Use of the Cyphlens Dart SDK requires:

* dart: "'>=3.3.2 <4.0.0'"
* flutter: ">=1.17.0"

## Installation

For more information, see [Set Up Your Flutter Project](https://flutter.dev).

## Quickstart

For more information, see [Cyphlens Dart SDK Quickstart](https://cyphlens.com/docs/sdk-reference.html#configuration).

## Usage
For more information, see [Using the Cyphlens Dart SDK](https://cyphlens.com/docs/sdk-reference.htm).

## Tests


First, clone the repo locally and `cd` into the directory.


```sh

git clone https://github.com/shashkiranr/cyphlens-dart-sdk.git

cd cyphlens-dart-sdk

```


Next, install dependencies.


```sh

dart pub get

```


Before running the tests, get a sandbox client id and client secret from your [Developer Dashboard] and use it to set a `CLIENT_ID` and `CLIENT_SECRET` environment variable.


And run the tests.


```sh

flutter test 

```


## SDK Reference


### User

* [User]


### Image

* [Image]


[User]: docs/api/user.md

[Image]: docs/api/image.md

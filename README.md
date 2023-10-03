# tang

Tang is a server for binding data to network presence.

## Table of Contents

1. [Description](#description)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Limitations - OS compatibility, etc.](#limitations)

## Description

In simple terms: you have some data, but you only want it to be available
when the system containing the data is on a certain, usually secure, network.
This is where Tang comes in.

First, the client gets a list of the Tang server’s advertised asymmetric keys.
This can happen online by a simple HTTP GET.

Second, the client uses one of these public keys to generate a unique,
cryptographically strong encryption key.

The data is then encrypted using this key. Once the data is encrypted, the key is discarded.
Some small metadata is produced as part of this operation which the client should store in a
convenient location.
This process of encrypting data is the provisioning step.

Third, when the client is ready to access its data, it simply loads the metadata
produced in the provisioning step and performs an HTTP POST to recover the encryption key.

This process of encrypting data is the provisioning step.

## Usage

Just include the tang class:

```puppet
include tang
```

## Limitations

Only working on RedHat based OS


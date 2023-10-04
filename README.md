# tang

[![Build Status](https://github.com/voxpupuli/puppet-tang/workflows/CI/badge.svg)](https://github.com/voxpupuli/puppet-tang/actions?query=workflow%3ACI)
[![Release](https://github.com/voxpupuli/puppet-tang/actions/workflows/release.yml/badge.svg)](https://github.com/voxpupuli/puppet-tang/actions/workflows/release.yml)
[![Puppet Forge](https://img.shields.io/puppetforge/v/puppet/tang.svg)](https://forge.puppetlabs.com/puppet/tang)
[![Puppet Forge - downloads](https://img.shields.io/puppetforge/dt/puppet/tang.svg)](https://forge.puppetlabs.com/puppet/tang)
[![Puppet Forge - endorsement](https://img.shields.io/puppetforge/e/puppet/tang.svg)](https://forge.puppetlabs.com/puppet/tang)
[![Puppet Forge - scores](https://img.shields.io/puppetforge/f/puppet/tang.svg)](https://forge.puppetlabs.com/puppet/tang)
[![puppetmodule.info docs](http://www.puppetmodule.info/images/badge.png)](http://www.puppetmodule.info/m/puppet-tang)
[![AGPL v3 License](https://img.shields.io/github/license/voxpupuli/puppet-tang.svg)](LICENSE)

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


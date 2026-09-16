# CloudX Meta adapter Swift package

This repository distributes the Meta adapter for the CloudX iOS SDK.

## Requirements

- iOS 15 or later for the current release
- Xcode 15 or later
- CloudX Core 3.9.1 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-meta.git
```

Select an exact package version from the compatibility table. Add the
`CloudXMetaAdapter` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the adapter registration code.

| Package version | CloudX adapter | Meta Audience Network SDK |
| --- | --- | --- |
| `6220000.0.0` | `6.22.0.0` | `6.22.0` |
| `6210100.0.0` | `6.21.1.0` | `6.21.1` |

Package `6210100.0.0` supports iOS 13 or later.

The package installs CloudX Core and Meta Audience Network SDK as dependencies.
Import `CloudXCore` in the application. The adapter registers when the
application loads.

## Versioning

CloudX adapter versions have four components. Swift package versions use three.
The package tag joins the adapter components into the major number. For example,
adapter `6.21.1.0` uses package version `6210100.0.0`.

## License

The CloudX adapter uses the Business Source License 1.1. See [LICENSE](LICENSE).

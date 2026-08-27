# Format Tagged

Formatting seam between
[`swift-format`](https://github.com/swift-atoms/swift-format) and
[`swift-tagged`](https://github.com/swift-atoms/swift-tagged).

This molecule adds `formatted(_:)` when a `Tagged` value wraps a
`BinaryFloatingPoint`. It delegates to `Format.Decimal`, preserving the tag at
the type level while formatting only the underlying value. Neither atom owns
that cross-domain overload.

```swift
import Format_Tagged

enum Percentage {}

let completion = Tagged<Percentage, Double>(_unchecked: 0.125)
let text = completion.formatted(.percent.precision(1)) // "12.5%"
```

## Installation

```swift
dependencies: [
    .package(
        url: "https://github.com/swift-molecules/swift-format-tagged.git",
        branch: "main"
    ),
]
```

```swift
.target(
    name: "App",
    dependencies: [
        .product(name: "Format Tagged", package: "swift-format-tagged"),
    ]
)
```

The package is pre-1.0 and follows the live `main` branches of its atom
dependencies. It requires Swift 6.4 and the Apple 27 platform generation (or a
matching Linux or Windows toolchain).

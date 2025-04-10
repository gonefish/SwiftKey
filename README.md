# SwiftlyKey

以类型安全的方式来定义和管理键名。

```swift
import SwiftKey

enum MyUserDefaultKey: SwiftlyKey {
  case foo, bar
}

UserDefaults.standard.string(for: MyUserDefaultKey.foo)

UserDefaults.standard.set("Hello", for: MyUserDefaultKey.foo)

```

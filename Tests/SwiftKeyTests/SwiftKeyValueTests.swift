import XCTest
@testable import SwiftKey

enum SwiftKeyValueTestKey: SwiftKey {
    case foo, bar
}

extension SwiftKeyValue where Value == Int {
    static let testValue1 = SwiftKeyValue(key: SwiftKeyValueTestKey.foo)
}

extension SwiftKeyValue where Value == String {

    static let testValue2 = SwiftKeyValue(key: SwiftKeyValueTestKey.bar)
}

final class SwiftKeyValueTests: XCTestCase {

    let userDefaults = UserDefaults(suiteName: "SwiftKeyValueTests")!

    override func setUp() {
        userDefaults.removePersistentDomain(forName: "SwiftKeyValueTests")
    }

    func testKeyValue() throws {
        let keyValue = SwiftKeyValue<String>(key: SwiftKeyValueTestKey.foo)

        userDefaults.set("Hello", for: .testValue2)
        userDefaults.set("Hello", for: keyValue)

        let count = userDefaults.object(for: .testValue1) ?? 0
        userDefaults.set(count + 1, for: .testValue1)
    }


}

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

        userDefaults.set("Hello", forKeyValue: .testValue2)
        userDefaults.set("Hello", forKeyValue: keyValue)

        let count = userDefaults.object(forKeyValue: .testValue1) ?? 0
        userDefaults.set(count + 1, forKeyValue: .testValue1)
    }


}

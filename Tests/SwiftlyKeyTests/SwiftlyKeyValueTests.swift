import XCTest
@testable import SwiftlyKey

enum SwiftKeyValueTestKey: SwiftlyKey {
    case foo, bar
}

extension SwiftlyKeyValue where Value == Int {
    static let testValue1 = SwiftlyKeyValue(key: SwiftKeyValueTestKey.foo)
}

extension SwiftlyKeyValue where Value == String {

    static let testValue2 = SwiftlyKeyValue(key: SwiftKeyValueTestKey.bar)
}

final class SwiftlyValueTests: XCTestCase {

    let userDefaults = UserDefaults(suiteName: "SwiftKeyValueTests")!

    override func setUp() {
        userDefaults.removePersistentDomain(forName: "SwiftKeyValueTests")
    }

    func testKeyValue() throws {
        let keyValue = SwiftlyKeyValue<String>(key: SwiftKeyValueTestKey.foo)

        userDefaults.set("Hello", forKeyValue: .testValue2)
        userDefaults.set("Hello", forKeyValue: keyValue)

        let count = userDefaults.object(forKeyValue: .testValue1) ?? 0
        userDefaults.set(count + 1, forKeyValue: .testValue1)
    }

    func testSubscript() {
        var tmp: [String : String] = .init()
        
        tmp[.testValue2] = "test"

        XCTAssertEqual(tmp[.testValue2], "test")

    }


}

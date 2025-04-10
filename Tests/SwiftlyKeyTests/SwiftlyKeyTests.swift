import XCTest
@testable import SwiftlyKey

enum TestKey: SwiftlyKey {
case foo, bar, camelCaseToSpace
}

enum TestKey2: SwiftlyKey {
    case foo, bar

    var name: String {
        value(delimiter: "#")
    }
}


final class SwiftlyKeyTests: XCTestCase {

    let userDefaults = UserDefaults(suiteName: "SwiftKeyTests")!

    override func setUp() {
        userDefaults.removePersistentDomain(forName: "SwiftKeyTests")
    }

    func testGetAndSet() throws {
        userDefaults.set("Hello", for: TestKey.foo)
        XCTAssertEqual("Hello", userDefaults.string(for: TestKey.foo))
    }
    
    func testName() {
        XCTAssertEqual("TestKey.foo", TestKey.foo.name)
    }

    func testName2() {
        XCTAssertEqual("TestKey2#foo", TestKey2.foo.name)
    }

    func testValue() {
        XCTAssertEqual("TestKey_foo", TestKey.foo.value(delimiter: "_"))
    }
    
    func testValueFormat() {
        XCTAssertEqual("TESTKEY_FOO", TestKey.foo.value(delimiter: "_", domainCase: .uppercase, keyCase: .uppercase))
        
        XCTAssertEqual("Testkey_Foo", TestKey.foo.value(delimiter: "_", domainCase: .capitalized, keyCase: .capitalized))
        
        XCTAssertEqual("Test Key_Camel Case To Space", TestKey.camelCaseToSpace.value(delimiter: "_", domainCase: .camelCaseToSpace, keyCase: .camelCaseToSpace))
    }
    
    func testDictionary() {
        let dict = ["TestKey.foo" : "show"]
        
        XCTAssertEqual(dict[TestKey.foo], "show")
    }
}

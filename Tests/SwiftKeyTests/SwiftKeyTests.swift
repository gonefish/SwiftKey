import XCTest
@testable import SwiftKey

enum TestKey: SwiftKey {
case foo, bar
}

final class SwiftKeyTests: XCTestCase {
    func testGetAndSet() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        UserDefaults.standard.set("Hello", for: TestKey.foo)
        
        XCTAssertEqual("Hello", UserDefaults.standard.string(for: TestKey.foo))
    }
    
    func testName() {
        XCTAssertEqual("TestKey.foo", TestKey.foo.name)
    }
    
    func testValue() {
        XCTAssertEqual("TestKey_foo", TestKey.foo.value(delimiter: "_"))
    }
    
    func testValueFormat() {
        XCTAssertEqual("TESTKEY_FOO", TestKey.foo.value(delimiter: "_", domainCase: .uppercase, keyCase: .uppercase))
    }
    
    func testDictionary() {
        let dict = ["TestKey.foo" : "show"]
        
        XCTAssertEqual(dict[TestKey.foo], "show")
    }
}

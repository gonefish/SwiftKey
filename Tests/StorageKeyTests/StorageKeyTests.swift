import XCTest
@testable import StorageKey

enum TestKey: StorageKey {
case foo, bar
}

final class StorageKeyTests: XCTestCase {
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
}

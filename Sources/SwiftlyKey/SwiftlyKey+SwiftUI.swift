#if canImport(SwiftUI)

import SwiftUI

@available(macOS 11.0, iOS 14, watchOS 7, tvOS 14, *)
public extension AppStorage {
    
    init(wrappedValue: Value, _ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value == String {
        self.init(wrappedValue: wrappedValue, key.name, store: store)
    }
    
    init(wrappedValue: Value, _ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value : RawRepresentable, Value.RawValue == Int {
        self.init(wrappedValue: wrappedValue, key.name, store: store)
    }
    
    init(wrappedValue: Value, _ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value == Data {
        self.init(wrappedValue: wrappedValue, key.name, store: store)
    }
    
    init(wrappedValue: Value, _ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value == Int {
        self.init(wrappedValue: wrappedValue, key.name, store: store)
    }
    
    init(wrappedValue: Value, _ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value : RawRepresentable, Value.RawValue == String {
        self.init(wrappedValue: wrappedValue, key.name, store: store)
    }
    
    init(wrappedValue: Value, _ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value == URL {
        self.init(wrappedValue: wrappedValue, key.name, store: store)
    }
    
    init(wrappedValue: Value, _ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value == Double {
        self.init(wrappedValue: wrappedValue, key.name, store: store)
    }
    
    init(wrappedValue: Value, _ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value == Bool {
        self.init(wrappedValue: wrappedValue, key.name, store: store)
    }
    
    init(_ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value == Int? {
        self.init(key.name, store: store)
    }
    
    init(_ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value == String? {
        self.init(key.name, store: store)
    }
    
    init(_ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value == Double? {
        self.init(key.name, store: store)
    }
    
    @available(macOS 12.0, iOS 15, watchOS 8, tvOS 15, *)
    init<R>(_ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value == R?, R : RawRepresentable, R.RawValue == Int {
        self.init(key.name, store: store)
    }
    
    @available(macOS 12.0, iOS 15, watchOS 8, tvOS 15, *)
    init<R>(_ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value == R?, R : RawRepresentable, R.RawValue == String {
        self.init(key.name, store: store)
    }
    
    init(_ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value == Data? {
        self.init(key.name, store: store)
    }
    
    init(_ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value == Bool? {
        self.init(key.name, store: store)
    }
    
    init(_ key: any RawRepresentable<SwiftlyKey>, store: UserDefaults? = nil) where Value == URL? {
        self.init(key.name, store: store)
    }
}

#endif
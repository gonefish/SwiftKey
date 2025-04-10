import Foundation

extension SwiftlyKeyValueReadable where Self: UserDefaults {

    public func object<Value>(forKeyValue keyValue: SwiftlyKeyValue<Value>) -> Value? {
        return object(forKey: keyValue.keyName) as? Value
    }

}

extension UserDefaults : SwiftlyKeyValueReadable {}

extension SwiftlyKeyValueWritable where Self: UserDefaults {

    public func set<Value>(_ value: Value, forKeyValue keyValue: SwiftlyKeyValue<Value>) {
        set(value, forKey: keyValue.keyName)
    }

    public func removeObject<Value>(forKeyValue keyValue: SwiftlyKeyValue<Value>) {
        removeObject(forKey: keyValue.keyName)
    }

}

extension UserDefaults : SwiftlyKeyValueWritable {}

extension SwiftlyKeyValueReadable where Self: NSUbiquitousKeyValueStore {

    public func object<Value>(forKeyValue keyValue: SwiftlyKeyValue<Value>) -> Value? {
        return object(forKey: keyValue.keyName) as? Value
    }

}

extension NSUbiquitousKeyValueStore : SwiftlyKeyValueReadable {}

extension SwiftlyKeyValueWritable where Self: NSUbiquitousKeyValueStore {

    public func set<Value>(_ value: Value, forKeyValue keyValue: SwiftlyKeyValue<Value>) {
        set(value, forKey: keyValue.keyName)
    }

    public func removeObject<Value>(forKeyValue keyValue: SwiftlyKeyValue<Value>) {
        removeObject(forKey: keyValue.keyName)
    }

}

public extension Dictionary {

    subscript(keyValue: SwiftlyKeyValue<Value>) -> Value? where Key == String {
        get {
            return self[keyValue.keyName]
        }
        set(newValue) {
            self[keyValue.keyName] = newValue
        }
    }

}

import Foundation

extension UserDefaults {

  public func object<Value>(forKeyValue keyValue: SwiftKeyValue<Value>) -> Value? {
      return object(forKey: keyValue.keyName) as? Value
  }

  public func set<Value>(_ value: Value, forKeyValue keyValue: SwiftKeyValue<Value>) {
      set(value, forKey: keyValue.keyName)
  }

  public func removeObject<Value>(forKeyValue keyValue: SwiftKeyValue<Value>) {
      removeObject(forKey: keyValue.keyName)
  }
}

public extension Dictionary {

    subscript(keyValue: SwiftKeyValue<Value>) -> Value? where Key == String {
        return self[keyValue.keyName]
    }

}

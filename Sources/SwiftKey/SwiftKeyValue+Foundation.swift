import Foundation

extension UserDefaults {

  public func object<Value>(for keyValue: SwiftKeyValue<Value>) -> Value? {
      return object(forKey: keyValue.keyName) as? Value
  }

  public func set<Value>(_ value: Value, for keyValue: SwiftKeyValue<Value>) {
      set(value, forKey: keyValue.keyName)
  }

  public func removeObject<Value>(for keyValue: SwiftKeyValue<Value>) {
      removeObject(forKey: keyValue.keyName)
  }
}

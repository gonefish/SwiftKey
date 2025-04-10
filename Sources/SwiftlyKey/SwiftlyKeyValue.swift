public struct SwiftlyKeyValue<Value> : Sendable {

    public let keyName: String

    public init(key: any RawRepresentable<SwiftlyKey>) {
        self.init(keyName: key.name)
    }

    public init(keyName: String) {
        self.keyName = keyName
    }

}

public protocol SwiftlyKeyValueReadable {

    func object<Value>(forKeyValue keyValue: SwiftlyKeyValue<Value>) -> Value?

}

public protocol SwiftlyKeyValueWritable {

    func set<Value>(_ value: Value, forKeyValue keyValue: SwiftlyKeyValue<Value>)

    func removeObject<Value>(forKeyValue keyValue: SwiftlyKeyValue<Value>)

}

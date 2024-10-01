public struct SwiftKeyValue<Value> {

    public let keyName: String

    public init(key: any RawRepresentable<SwiftKey>) {
        self.keyName = key.name
    }

}

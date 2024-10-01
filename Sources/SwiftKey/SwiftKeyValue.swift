public struct SwiftKeyValue<Value> {

    let keyName: String

    public init(key: any RawRepresentable<SwiftKey>) {
        self.keyName = key.name
    }

}

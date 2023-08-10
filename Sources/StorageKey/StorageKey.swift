public typealias StorageKey = String

public extension RawRepresentable where RawValue == StorageKey {
    var name: String {
        "\(String(describing: type(of: self))).\(rawValue)"
    }
}


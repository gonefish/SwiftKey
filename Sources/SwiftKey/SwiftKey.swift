public typealias SwiftKey = String

public extension RawRepresentable where RawValue == SwiftKey {
    var name: String {
        "\(String(describing: type(of: self))).\(rawValue)"
    }
}


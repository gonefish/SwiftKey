public struct SwiftKey : Equatable {
    var string: String
}

extension SwiftKey : ExpressibleByStringLiteral {

    public init(stringLiteral value: StringLiteralType) {
        string = value
    }

}

public enum SwiftKeyCaseFormat {
    case lowercase
    case uppercase
    case capitalized
}

public extension RawRepresentable where RawValue == SwiftKey {
    
    var name: String {
        value(delimiter: ".")
    }
    
    func value(delimiter: Character = ".", domainCase: SwiftKeyCaseFormat? = nil, keyCase: SwiftKeyCaseFormat? = nil) -> String {
        var (domain, key) = items
        
        if let domainCase {
            switch domainCase {
            case .lowercase:
                domain = domain.lowercased()
            case .uppercase:
                domain = domain.uppercased()
            case .capitalized:
                domain = domain.capitalized
            }
        }
        
        if let keyCase {
            switch keyCase {
            case .lowercase:
                key = key.lowercased()
            case .uppercase:
                key = key.uppercased()
            case .capitalized:
                key = key.capitalized
            }
        }
        
        return "\(domain)\(delimiter)\(key)"
    }
    
    private var items: (String, String) {
        (String(describing: type(of: self)), rawValue.string)
    }
}


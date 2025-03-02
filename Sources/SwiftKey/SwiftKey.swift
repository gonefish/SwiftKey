public struct SwiftKey : Equatable {
    public let string: String
}

extension SwiftKey : ExpressibleByStringLiteral {

    public init(stringLiteral value: StringLiteralType) {
        string = value
    }

}

extension String {
    func camelCaseToSpace() -> String {
        let pattern = "([a-z])([A-Z])"
        let result = self.replacingOccurrences(of: pattern, with: "$1 $2", options: .regularExpression, range: nil)
        return result.split(separator: " ").map { $0.capitalized }.joined(separator: " ")
    }
}

public enum SwiftKeyCaseFormat {
    case lowercase
    case uppercase
    case capitalized
    case camelCaseToSpace
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
            case .camelCaseToSpace:
                domain = domain.camelCaseToSpace()
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
            case .camelCaseToSpace:
                key = key.camelCaseToSpace()
            }
        }
        
        return "\(domain)\(delimiter)\(key)"
    }
    
    private var items: (String, String) {
        (String(describing: type(of: self)), rawValue.string)
    }
}


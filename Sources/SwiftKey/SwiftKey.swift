public typealias SwiftKey = String

public enum SwiftKeyCaseFormat {
    case lowercase
    case uppercase
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
            }
        }
        
        if let keyCase {
            switch keyCase {
            case .lowercase:
                key = key.lowercased()
            case .uppercase:
                key = key.uppercased()
            }
        }
        
        return "\(domain)\(delimiter)\(key)"
    }
    
    private var items: (String, String) {
        (String(describing: type(of: self)), rawValue)
    }
}


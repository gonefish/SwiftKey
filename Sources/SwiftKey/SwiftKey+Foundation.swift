
import Foundation

public extension UserDefaults {
    
    func object(for key: any RawRepresentable<SwiftKey>) -> Any? {
        object(forKey: key.name)
    }
    
    func url(for key: any RawRepresentable<SwiftKey>) -> URL? {
        url(forKey: key.name)
    }
    
    func array(for key: any RawRepresentable<SwiftKey>) -> [Any]? {
        array(forKey: key.name)
    }
    
    func dictionary(for key: any RawRepresentable<SwiftKey>) -> [String : Any]? {
        dictionary(forKey: key.name)
    }
    
    func string(for key: any RawRepresentable<SwiftKey>) -> String? {
        string(forKey: key.name)
    }
    
    func stringArray(for key: any RawRepresentable<SwiftKey>) -> [String]? {
        stringArray(forKey: key.name)
    }
    
    func data(for key: any RawRepresentable<SwiftKey>) -> Data? {
        data(forKey: key.name)
    }
    
    func bool(for key: any RawRepresentable<SwiftKey>) -> Bool {
        bool(forKey: key.name)
    }
    
    func integer(for key: any RawRepresentable<SwiftKey>) -> Int {
        integer(forKey: key.name)
    }
    
    func float(for key: any RawRepresentable<SwiftKey>) -> Float {
        float(forKey: key.name)
    }
    
    func double(for key: any RawRepresentable<SwiftKey>) -> Double {
        double(forKey: key.name)
    }
     
    func set(_ value: Any?, for key: any RawRepresentable<SwiftKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ value: Float, for key: any RawRepresentable<SwiftKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ value: Double, for key: any RawRepresentable<SwiftKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ value: Int, for key: any RawRepresentable<SwiftKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ value: Bool, for key: any RawRepresentable<SwiftKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ url: URL?, for key: any RawRepresentable<SwiftKey>) {
        set(url, forKey: key.name)
    }
    
    func removeObject(for key: any RawRepresentable<SwiftKey>) {
        removeObject(forKey: key.name)
    }
    
}

public extension Dictionary {
    
    subscript<T>(key: any RawRepresentable<SwiftKey>) -> T? {
        return self[key.name as! Key] as? T
    }
    
}



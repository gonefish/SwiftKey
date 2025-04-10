
import Foundation

public extension UserDefaults {
    
    func object(for key: any RawRepresentable<SwiftlyKey>) -> Any? {
        object(forKey: key.name)
    }
    
    func url(for key: any RawRepresentable<SwiftlyKey>) -> URL? {
        url(forKey: key.name)
    }
    
    func array(for key: any RawRepresentable<SwiftlyKey>) -> [Any]? {
        array(forKey: key.name)
    }
    
    func dictionary(for key: any RawRepresentable<SwiftlyKey>) -> [String : Any]? {
        dictionary(forKey: key.name)
    }
    
    func string(for key: any RawRepresentable<SwiftlyKey>) -> String? {
        string(forKey: key.name)
    }
    
    func stringArray(for key: any RawRepresentable<SwiftlyKey>) -> [String]? {
        stringArray(forKey: key.name)
    }
    
    func data(for key: any RawRepresentable<SwiftlyKey>) -> Data? {
        data(forKey: key.name)
    }
    
    func bool(for key: any RawRepresentable<SwiftlyKey>) -> Bool {
        bool(forKey: key.name)
    }
    
    func integer(for key: any RawRepresentable<SwiftlyKey>) -> Int {
        integer(forKey: key.name)
    }
    
    func float(for key: any RawRepresentable<SwiftlyKey>) -> Float {
        float(forKey: key.name)
    }
    
    func double(for key: any RawRepresentable<SwiftlyKey>) -> Double {
        double(forKey: key.name)
    }
     
    func set(_ value: Any?, for key: any RawRepresentable<SwiftlyKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ value: Float, for key: any RawRepresentable<SwiftlyKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ value: Double, for key: any RawRepresentable<SwiftlyKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ value: Int, for key: any RawRepresentable<SwiftlyKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ value: Bool, for key: any RawRepresentable<SwiftlyKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ url: URL?, for key: any RawRepresentable<SwiftlyKey>) {
        set(url, forKey: key.name)
    }
    
    func removeObject(for key: any RawRepresentable<SwiftlyKey>) {
        removeObject(forKey: key.name)
    }
    
}

public extension Dictionary {
    
    subscript(key: any RawRepresentable<SwiftlyKey>) -> Value? where Key == String {
        return self[key.name]
    }

}



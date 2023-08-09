import Foundation

public typealias StorageKey = String

public extension UserDefaults {
    
    func object(for key: any RawRepresentable<StorageKey>) -> Any? {
        object(forKey: key.rawValue)
    }
    
    func url(for key: any RawRepresentable<StorageKey>) -> URL? {
        url(forKey: key.rawValue)
    }
    
    func array(for key: any RawRepresentable<StorageKey>) -> [Any]? {
        array(forKey: key.rawValue)
    }
    
    func dictionary(for key: any RawRepresentable<StorageKey>) -> [String : Any]? {
        dictionary(forKey: key.rawValue)
    }
    
    func string(for key: any RawRepresentable<StorageKey>) -> String? {
        string(forKey: key.rawValue)
    }
    
    func stringArray(for key: any RawRepresentable<StorageKey>) -> [String]? {
        stringArray(forKey: key.rawValue)
    }
    
    func data(for key: any RawRepresentable<StorageKey>) -> Data? {
        data(forKey: key.rawValue)
    }
    
    func bool(for key: any RawRepresentable<StorageKey>) -> Bool {
        bool(forKey: key.rawValue)
    }
    
    func integer(for key: any RawRepresentable<StorageKey>) -> Int {
        integer(forKey: key.rawValue)
    }
    
    func float(for key: any RawRepresentable<StorageKey>) -> Float {
        float(forKey: key.rawValue)
    }
    
    func double(for key: any RawRepresentable<StorageKey>) -> Double {
        double(forKey: key.rawValue)
    }
     
    func set(_ value: Any?, for key: any RawRepresentable<StorageKey>) {
        set(value, forKey: key.rawValue)
    }
    
    func set(_ value: Float, for key: any RawRepresentable<StorageKey>) {
        set(value, forKey: key.rawValue)
    }
    
    func set(_ value: Double, for key: any RawRepresentable<StorageKey>) {
        set(value, forKey: key.rawValue)
    }
    
    func set(_ value: Int, for key: any RawRepresentable<StorageKey>) {
        set(value, forKey: key.rawValue)
    }
    
    func set(_ value: Bool, for key: any RawRepresentable<StorageKey>) {
        set(value, forKey: key.rawValue)
    }
    
    func set(_ url: URL?, for key: any RawRepresentable<StorageKey>) {
        set(url, forKey: key.rawValue)
    }
    
    func removeObject(for key: any RawRepresentable<StorageKey>) {
        removeObject(forKey: key.rawValue)
    }
    
}


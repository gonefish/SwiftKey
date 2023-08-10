
import Foundation

public extension UserDefaults {
    
    func object(for key: any RawRepresentable<StorageKey>) -> Any? {
        object(forKey: key.name)
    }
    
    func url(for key: any RawRepresentable<StorageKey>) -> URL? {
        url(forKey: key.name)
    }
    
    func array(for key: any RawRepresentable<StorageKey>) -> [Any]? {
        array(forKey: key.name)
    }
    
    func dictionary(for key: any RawRepresentable<StorageKey>) -> [String : Any]? {
        dictionary(forKey: key.name)
    }
    
    func string(for key: any RawRepresentable<StorageKey>) -> String? {
        string(forKey: key.name)
    }
    
    func stringArray(for key: any RawRepresentable<StorageKey>) -> [String]? {
        stringArray(forKey: key.name)
    }
    
    func data(for key: any RawRepresentable<StorageKey>) -> Data? {
        data(forKey: key.name)
    }
    
    func bool(for key: any RawRepresentable<StorageKey>) -> Bool {
        bool(forKey: key.name)
    }
    
    func integer(for key: any RawRepresentable<StorageKey>) -> Int {
        integer(forKey: key.name)
    }
    
    func float(for key: any RawRepresentable<StorageKey>) -> Float {
        float(forKey: key.name)
    }
    
    func double(for key: any RawRepresentable<StorageKey>) -> Double {
        double(forKey: key.name)
    }
     
    func set(_ value: Any?, for key: any RawRepresentable<StorageKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ value: Float, for key: any RawRepresentable<StorageKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ value: Double, for key: any RawRepresentable<StorageKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ value: Int, for key: any RawRepresentable<StorageKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ value: Bool, for key: any RawRepresentable<StorageKey>) {
        set(value, forKey: key.name)
    }
    
    func set(_ url: URL?, for key: any RawRepresentable<StorageKey>) {
        set(url, forKey: key.name)
    }
    
    func removeObject(for key: any RawRepresentable<StorageKey>) {
        removeObject(forKey: key.name)
    }
    
}

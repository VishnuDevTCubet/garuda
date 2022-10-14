//
//  HelperClass.swift
//  Test
//
//  Created by Vishnu Dev on 06/10/22.
//

import UIKit
extension NSObject {
    class var nameOfClass: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}


final public class PlatformManager: NSObject {
    static let shared = PlatformManager()
    private override init() { }
    func setToken(_ userid: String) {
        UserDefaults.standard.set(userid, forKey: "token")
        UserDefaults.standard.synchronize()
    }
    func getToken() -> String {
        return UserDefaults.standard.value(forKey: "token") as? String ?? ""
    }
}



import Foundation
//Body - email, password (nidhinnp@gmail.com, 12345678Np)

struct Urls {
  static let login = "http://training.pixbit.in/api/login"
  static let contactList = "http://training.pixbit.in/api/employees"
}

class NetWorkManager {
 private init(){}
 static let shared = NetWorkManager()
    // post api call
    func postApiCall (actionHandler: ( (LoginModel) -> Void)?) {
        let params = ["email":"nidhinnp@gmail.com", "password":"12345678Np"] as Dictionary<String, String>

        var request = URLRequest(url: URL(string: Urls.login)!)
        request.httpMethod = "POST"
        request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: [])
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            do {
                let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
                print(json)
                guard let data = data else {return}
                let user = try JSONDecoder().decode(LoginModel.self, from: data)
                if let token = user.data?.access_token , let type =  user.data?.token_type {
                    PlatformManager.shared.setToken("\(type) \(token)")
                }
                actionHandler?(user)
                
               
            } catch {
                print("error")
            }
        })

        task.resume()
    }
    
    // get api call
    func getApiCall (actionHandler: ( (UserModel) -> Void)?) {
       
        var request = URLRequest(url: URL(string: Urls.contactList)!)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue(PlatformManager.shared.getToken(), forHTTPHeaderField: "Authorization")
        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            do {
                let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
                print(json)
                guard let data = data else {return}
                let user = try JSONDecoder().decode(UserModel.self, from: data)
                actionHandler?(user)
               
            } catch {
                print("error")
            }
        })

        task.resume()
    }
    
}



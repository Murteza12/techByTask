//
//  UserSession.swift
//  Kanz
//
//  Created by Murteza on 03/09/2020.
//  Copyright © 2020 Murteza. All rights reserved.
//

import Foundation


//class UserSession:NSObject {
//    private static let _shared = UserSession()
//    static var shared : UserSession {
//        return _shared
//    }
//    var user : User?{
//        didSet{
//            //Save user session if any change happen
//            do {
//                guard let user = user else {return}
//                let data = try JSONEncoder().encode(user)
//                UserDefaults.standard.setUserSession(value: data)
//            }catch let error {
//                print(error)
//            }
//            print(user?.name ?? "")
//        }
//    }
//}

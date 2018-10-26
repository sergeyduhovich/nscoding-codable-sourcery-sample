//
//  User.swift
//  Demo
//
//  Created by Sergey Duhovich on 23.9.18.
//  Copyright © 2018 iTechArt. All rights reserved.
//

import Foundation

class User: NSObject, NSCoding, Codable {
  
  // sourcery:rawKey=userId
  var id: Int?
  var avatar: ImageResource?
  var userName: String?
  var birthday: Date?
  var created: Date?
  var email: String?
  var firstName: String?
  var lastName: String?
  //var gender: UserGender?
  var lastLogin: Date?
  
  
  // sourcery:inline:User.CodingKeys
  enum CodingKeys: String, CodingKey {
    case id = "userId"
    case avatar
    case userName
    case birthday
    case created
    case email
    case firstName
    case lastName
    case lastLogin
  }
  // sourcery:end
  
  // MARK: - Initializers
  override init() {}
  
  // MARK: - Codable
  // sourcery:inline:User.CodableInit
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      id = try container.decodeIfPresent(Int.self, forKey: .id)
      avatar = try container.decodeIfPresent(ImageResource.self, forKey: .avatar)
      userName = try container.decodeIfPresent(String.self, forKey: .userName)
      birthday = try container.decodeIfPresent(Date.self, forKey: .birthday)
      created = try container.decodeIfPresent(Date.self, forKey: .created)
      email = try container.decodeIfPresent(String.self, forKey: .email)
      firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
      lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
      lastLogin = try container.decodeIfPresent(Date.self, forKey: .lastLogin)
  }
  // sourcery:end
  
  // sourcery:inline:User.CodableEncode
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(id, forKey: .id)
      try container.encode(avatar, forKey: .avatar)
      try container.encode(userName, forKey: .userName)
      try container.encode(birthday, forKey: .birthday)
      try container.encode(created, forKey: .created)
      try container.encode(email, forKey: .email)
      try container.encode(firstName, forKey: .firstName)
      try container.encode(lastName, forKey: .lastName)
      try container.encode(lastLogin, forKey: .lastLogin)
  }
  // sourcery:end
  
  // MARK: - NSCoding
  // sourcery:inline:User.NSCodingInit
  required init?(coder aDecoder: NSCoder) {
    //guard statements for non optional types

    //non optional types

    //optional types
      id = aDecoder.decodeObject(forKey: CodingKeys.id.rawValue) as? Int
      avatar = aDecoder.decodeObject(forKey: CodingKeys.avatar.rawValue) as? ImageResource
      userName = aDecoder.decodeObject(forKey: CodingKeys.userName.rawValue) as? String
      birthday = aDecoder.decodeObject(forKey: CodingKeys.birthday.rawValue) as? Date
      created = aDecoder.decodeObject(forKey: CodingKeys.created.rawValue) as? Date
      email = aDecoder.decodeObject(forKey: CodingKeys.email.rawValue) as? String
      firstName = aDecoder.decodeObject(forKey: CodingKeys.firstName.rawValue) as? String
      lastName = aDecoder.decodeObject(forKey: CodingKeys.lastName.rawValue) as? String
      lastLogin = aDecoder.decodeObject(forKey: CodingKeys.lastLogin.rawValue) as? Date
  }
  // sourcery:end
  
  // sourcery:inline:User.NSCodingEncode
  func encode(with aCoder: NSCoder) {
      aCoder.encode(id, forKey: CodingKeys.id.rawValue)
      aCoder.encode(avatar, forKey: CodingKeys.avatar.rawValue)
      aCoder.encode(userName, forKey: CodingKeys.userName.rawValue)
      aCoder.encode(birthday, forKey: CodingKeys.birthday.rawValue)
      aCoder.encode(created, forKey: CodingKeys.created.rawValue)
      aCoder.encode(email, forKey: CodingKeys.email.rawValue)
      aCoder.encode(firstName, forKey: CodingKeys.firstName.rawValue)
      aCoder.encode(lastName, forKey: CodingKeys.lastName.rawValue)
      aCoder.encode(lastLogin, forKey: CodingKeys.lastLogin.rawValue)
  }
  // sourcery:end
  
  // sourcery:inline:User.IsEqual
  override func isEqual(_ object: Any?) -> Bool {
    guard let rhs = object as? User else { return false }
        if self.id != rhs.id { return false }
        if self.avatar != rhs.avatar { return false }
        if self.userName != rhs.userName { return false }
        if self.birthday != rhs.birthday { return false }
        if self.created != rhs.created { return false }
        if self.email != rhs.email { return false }
        if self.firstName != rhs.firstName { return false }
        if self.lastName != rhs.lastName { return false }
        if self.lastLogin != rhs.lastLogin { return false }
    return true
  }
  // sourcery:end
}

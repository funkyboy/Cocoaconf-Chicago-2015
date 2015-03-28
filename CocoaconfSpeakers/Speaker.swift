//
//  Speaker.swift
//  CocoaconfSpeakers
//
//  Created by Cesare Rocchi on 14/11/14.
//  Copyright (c) 2014 Cesare Rocchi. All rights reserved.
//

import UIKit

class Speaker: NSObject {
  var speakerName: String = ""
  var avatarURL: String = ""
  
  init(dictionary: NSDictionary) {
    self.speakerName = dictionary["speakerName"] as String
    //self.speakerTitle = dictionary["speakerTitle"] as String
    let s = dictionary["avatarURL"] as String
    self.avatarURL = s
    if (ONLINE) {
      self.avatarURL = s
    }
    super.init()
  }
  
  func debugDescription () -> String {
    return "\(speakerName) - \(avatarURL)"
  }
}

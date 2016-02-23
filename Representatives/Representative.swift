//
//  Representative.swift
//  Representatives
//
//  Created by Diego Aguirre on 2/18/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation


struct Representative {
    
    static let kName = "name"
    static let kParty = "party"
    static let kState = "state"
    static let kDistrict = "district"
    static let kPhone = "phone"
    static let kOffice = "office"
    static let kLink = "link"
    static let kResults = "results"
    
    var name: String?
    var party: String?
    var state: String = ""
    var district: String = ""
    var phone: String = ""
    var office: String = ""
    var link: String = ""
    
    init(jsonDictionary: [String : String]) {
        
        self.name = jsonDictionary[Representative.kName]
        self.party = jsonDictionary[Representative.kParty]
        self.state = jsonDictionary[Representative.kState] ?? ""
        self.district = jsonDictionary[Representative.kDistrict] ?? ""
        self.phone = jsonDictionary[Representative.kPhone] ?? ""
        self.office = jsonDictionary[Representative.kOffice] ?? ""
        self.link = jsonDictionary[Representative.kLink] ?? ""
    }
}
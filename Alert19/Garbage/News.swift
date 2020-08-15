//
//  News.swift
//  Alert19
//
//  Created by Andrés Berumen on 30/04/20.
//  Copyright © 2020 Andrés Berumen. All rights reserved.
//

import UIKit
import os.log


class News: NSObject, NSCoding {
    
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var infoe: String
    
    
    
    // MARK: Archiving Paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("news")
    
    
    // MARK: Types
    
    struct PropertyKey {
        static let name = "name"
        static let photo = "photo"
        static let infoe = "infoe"
    }
    
    
    // MARK: Initialization
    init?(name: String, photo: UIImage?, infoe: String) {
        guard !name.isEmpty else {
        return nil
        }
        
        self.name = name
        self.photo = photo
        self.infoe = infoe
        
    }
    
    
    // MARK: NSCoding
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: PropertyKey.name)
        aCoder.encode(photo, forKey: PropertyKey.photo)
        aCoder.encode(infoe, forKey: PropertyKey.infoe)

    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let name = aDecoder.decodeObject(forKey: PropertyKey.name) as? String else {
            os_log("Unable to...")
            return nil
        }
        let photo = aDecoder.decodeObject(forKey: PropertyKey.photo) as? UIImage
        guard let infoe = aDecoder.decodeObject(forKey: PropertyKey.infoe) as? String else {
            os_log("Unable to...")
            return nil
        }
        
        
        self.init(name: name, photo: photo, infoe: infoe)
    }
    
    
    
    
    
}

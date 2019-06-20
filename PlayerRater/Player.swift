//
//  Player.swift
//  PlayerRater
//
//  Created by Jorge Alejandro Raad on 6/20/19.
//  Copyright © 2019 Jorge Alejandro Raad. All rights reserved.
//

import UIKit

class Player {
    // MARK : Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        guard !name.isEmpty else {
            return nil
        }
        
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
    
}

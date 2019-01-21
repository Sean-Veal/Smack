//
//  Channel.swift
//  Smack
//
//  Created by Sean Veal on 1/20/19.
//  Copyright © 2019 Sean Veal. All rights reserved.
//

import Foundation

struct Channel {
    public private(set) var channelTitle: String!
    public private(set) var channelDescription: String!
    public private(set) var id: String!
    
    init(channelTitle: String, channelDescription: String, id: String) {
        self.channelTitle = channelTitle
        self.channelDescription = channelDescription
        self.id = id
    }
    
}

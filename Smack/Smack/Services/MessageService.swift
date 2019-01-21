//
//  MessageService.swift
//  Smack
//
//  Created by Sean Veal on 1/20/19.
//  Copyright © 2019 Sean Veal. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func findAllChannel(completion: @escaping CompletionHandler) {
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            if response.result.error == nil {
                guard let data = response.data else {return}
                do {
                    if let json = try JSON(data: data).array {
                        for item in json {
                            let name = item["name"].stringValue
                            let channelDesc = item["description"].stringValue
                            let id = item["_id"].stringValue
                            let channel = Channel(channelTitle: name, channelDescription: channelDesc, id: id)
                            self.channels.append(channel)
                        }
                    }
                    print("Channels: \(self.channels)")
                    completion(true)
                } catch {
                    
                }
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
}

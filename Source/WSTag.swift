//
//  WSTag.swift
//  Whitesmith
//
//  Created by Ricardo Pereira on 12/05/16.
//  Copyright © 2016 Whitesmith. All rights reserved.
//

import Foundation

public struct WSTag: Hashable {
    
    public let text: String
    public var userDatas: [String:Any]? = nil
    
    
    public init(_ text: String) {
        self.text = text
    }
    
    public var hashValue: Int {
        return self.text.hashValue
    }
    
    public func equals(_ other: WSTag) -> Bool {
        if self.userDatas != nil && other.userDatas != nil {
            return self.text == other.text && NSDictionary(dictionary: self.userDatas!).isEqual(to: other.userDatas!)
        }
        return self.text == other.text
    }
    
}

public func == (lhs: WSTag, rhs: WSTag) -> Bool {
    return lhs.equals(rhs)
}

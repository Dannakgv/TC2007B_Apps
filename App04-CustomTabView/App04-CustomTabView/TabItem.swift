//
//  TabItem.swift
//  App04-CustomTabView
//
//  Created by Danna Valencia on 21/09/23.
//

import Foundation

struct TabItem{
    
    var tab: Tab
    var image: String
    var selectedImage: String
    
}

extension TabItem {
    static public var home = TabItem(tab: .home, image: "house", selectedImage: "house.fill")
    static public var news = TabItem(tab: .news, image: "newspaper", selectedImage: "newspaper.fill")
    static public var search = TabItem(tab: .search, image: "magnifyingglass.circle", selectedImage: "magnifyingglass.circle.fill")
    static public var chat = TabItem(tab: .chat, image: "message", selectedImage: "message.fill")

}

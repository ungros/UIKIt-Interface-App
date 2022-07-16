//
//  File.swift
//  Sport Kit Interface
//
//  Created by Roman on 11.07.2022.
//

import UIKit


enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "A834D1")
        static var inactive = UIColor(hexString: "929DA5")
        
        static var background = UIColor(hexString: "F8F9F9")
        static var separate = UIColor(hexString: "E8ECEF")
        
        static var titleGrey = UIColor(hexString: "545C77")
    }

enum Strings {
    
    enum TabBar{
        static var overview = "Overview"
        static var session = "Session"
        static var progress = "Progress"
        static var settings = "Settings"
    }
}

enum Images {
    static var overview = UIImage(named: "overview_tab")
    static var session = UIImage(named: "session_tab")
    static var progress = UIImage(named: "progress_tab")
    static var settings = UIImage(named: "settings_tab")
 }
    
enum Fonts {
    static func helveticaRegular(with size: CGFloat) -> UIFont {
        UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}

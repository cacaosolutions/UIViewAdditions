//
//  UIView+Additions.swift
//
//  Created by Tarun Tyagi on 10/06/16.
//  Copyright © 2016 Cacao Solutions. All rights reserved.
//

import Foundation
import UIKit
import ObjectiveC

extension UIView {
    
    private struct Keys {
        static var indexPath = "cc_IndexPath"
        static var identifier = "cc_Identifier"
        static var userInfo = "cc_UserInfo"
        static var marked = "cc_Marked"
    }
    
    
    // Need to keep track of buttons/controls etc. inside UITableView/UICollectionView
    // Just associate the indexPath to the UIView and later use when needed
    var indexPath: NSIndexPath? {
        get {
            return objc_getAssociatedObject(self, &Keys.indexPath) as? NSIndexPath
        }
        set (newValue) {
            objc_setAssociatedObject(self, &Keys.indexPath, nil,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            
            objc_setAssociatedObject(self, &Keys.indexPath, newValue,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    
    // Need to assign a string as a name/identifier, just ask UIView to remember it for you
    var identifier: String? {
        get {
            return objc_getAssociatedObject(self, &Keys.identifier) as? String
        }
        set (newValue) {
            objc_setAssociatedObject(self, &Keys.identifier, nil,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            
            objc_setAssociatedObject(self, &Keys.identifier, newValue,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    
    // Avail some information to be remembered by UIView on your behalf
    var userInfo: [String:AnyObject]? {
        get {
            return objc_getAssociatedObject(self, &Keys.userInfo) as? [String:AnyObject]
        }
        set (newValue) {
            objc_setAssociatedObject(self, &Keys.userInfo, nil,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            
            objc_setAssociatedObject(self, &Keys.userInfo, newValue,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    
    // Need a use to a button of type UIButtonTypeSystem
    // Don't need the defualt highlight, can't use '.selected'
    // Why not make marking any view possible?
    var marked: Bool? {
        get {
            return objc_getAssociatedObject(self, &Keys.marked) as? Bool
        }
        set (newValue) {
            objc_setAssociatedObject(self, &Keys.marked, nil,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            
            objc_setAssociatedObject(self, &Keys.marked, newValue,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
}
//
//  UIView+Additions.h
//
//  Created by Tarun Tyagi on 10/06/16.
//  Copyright © 2016 Cacao Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Additions)


// Need to keep track of buttons/controls etc. inside UITableView/UICollectionView
// Just associate the indexPath to the UIView and later use when needed
-(nullable NSIndexPath*)indexPath;
-(void)setIndexPath:(nullable NSIndexPath*)indexPath;


// Need to assign a string as a name/identifier, just ask UIView to remember it for you
-(nullable NSString*)identifier;
-(void)setIdentifier:(nullable NSString*)identifier;


// Avail some information to be remembered by UIView on your behalf
-(nullable NSDictionary*)userInfo;
-(void)setUserInfo:(nullable NSDictionary*)userInfo;


// Need a use to a button of type UIButtonTypeSystem
// Don't need the defualt highlight, can't use '.selected'
// Why not make marking any view possible?
-(BOOL)marked;
-(void)setMarked:(BOOL)marked;


@end

NS_ASSUME_NONNULL_END

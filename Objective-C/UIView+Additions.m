//
//  UIView+Additions.m
//
//  Created by Tarun Tyagi on 10/06/16.
//  Copyright © 2016 Cacao Solutions. All rights reserved.
//

#import "UIView+Additions.h"
#import <objc/runtime.h>

#define KeyIndexPath  "cc_IndexPath"
#define KeyIdentifier "cc_Identifier"
#define KeyInfo       "cc_Info"
#define KeyMarked     "cc_Marked"

@implementation UIView (Additions)


#pragma mark - IndexPath

-(nullable NSIndexPath*)indexPath
{
    return (NSIndexPath*)objc_getAssociatedObject(self, KeyIndexPath);
}

-(void)setIndexPath:(nullable NSIndexPath*)indexPath
{
    objc_setAssociatedObject(self, KeyIndexPath, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, KeyIndexPath, indexPath, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


#pragma mark - Identifier

-(nullable NSString*)identifier
{
    return (NSString*)objc_getAssociatedObject(self, KeyIdentifier);
}

-(void)setIdentifier:(nullable NSString*)identifier
{
    objc_setAssociatedObject(self, KeyIdentifier, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, KeyIdentifier, identifier, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


#pragma mark - UserInfo

-(nullable NSDictionary*)userInfo
{
    return (NSDictionary*)objc_getAssociatedObject(self, KeyInfo);
}

-(void)setUserInfo:(nullable NSDictionary*)userInfo
{
    objc_setAssociatedObject(self, KeyInfo, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, KeyInfo, userInfo, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


#pragma mark - Marked

-(BOOL)marked
{
    return [(NSNumber*)objc_getAssociatedObject(self, KeyMarked) boolValue];
}

-(void)setMarked:(BOOL)marked
{
    objc_setAssociatedObject(self, KeyMarked, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, KeyMarked, @(marked), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


@end

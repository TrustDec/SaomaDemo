//
//  LBXScanPermissions.h
//  SaomaDemo
//
//  Created by Trust on 2019/7/17.
//  Copyright © 2019 ZH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LBXScanPermissions : NSObject

+ (BOOL)cameraPemission;

+ (void)requestCameraPemissionWithResult:(void(^)( BOOL granted))completion;

+ (BOOL)photoPermission;

@end


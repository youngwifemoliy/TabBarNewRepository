//
//  HTTPHelper.h
//  MLDBaseRepository
//
//  Created by Moliy on 2017/3/22.
//  Copyright © 2017年 Moliy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface HTTPHelper : NSObject
+ (AFHTTPSessionManager *)HTTPSManager;
@end

//
//  APIConfig.h
//  MLDBaseRepository
//
//  Created by Moliy on 2017/3/22.
//  Copyright © 2017年 Moliy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

#define HTTPHelper [APIConfig HTTPSManager]
//#define HTTPHelper [APIConfig HTTPManager]

@interface APIConfig : NSObject

+ (AFHTTPSessionManager *)HTTPSManager;
+ (AFHTTPSessionManager *)HTTPManager;

@end

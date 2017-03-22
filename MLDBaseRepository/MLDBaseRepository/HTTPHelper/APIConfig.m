//
//  APIConfig.m
//  MLDBaseRepository
//
//  Created by Moliy on 2017/3/22.
//  Copyright © 2017年 Moliy. All rights reserved.
//

#import "APIConfig.h"

@implementation APIConfig
+ (AFHTTPSessionManager *)HTTPSManager
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    NSString *certificatePath = [[NSBundle mainBundle] pathForResource:@"证书名称"
                                                                ofType:@"证书格式"];
    NSData *certificateData = [NSData dataWithContentsOfFile:certificatePath];
    NSSet *certificateSet = [[NSSet alloc] initWithObjects:certificateData, nil];
    [securityPolicy setPinnedCertificates:certificateSet];
    securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.validatesDomainName = NO;
    manager.securityPolicy = securityPolicy;
    return manager;
}

+ (AFHTTPSessionManager *)HTTPManager
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    return manager;
}
@end

//
//  NetworkController.h
//  Movie-Search
//
//  Created by Taylor Mott on 20 May 15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkController : NSObject

+ (NSURLSession *)api;

+ (NSDictionary *)parametersWithAPIKey:(NSDictionary *)parameters;

+ (NSDictionary *)apiKey;

@end

//
//  Movie.h
//  Movie-Search
//
//  Created by Jordan Nelson on 5/21/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *releaseDate;
@property (nonatomic, strong) NSString *averageVote;
@property (nonatomic, strong) UIImage *posterImage;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

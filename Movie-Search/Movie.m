//
//  Movie.m
//  Movie-Search
//
//  Created by Jordan Nelson on 5/21/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Movie.h"
#import <AFNetworking/UIImageView+AFNetworking.h>

@implementation Movie

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.title = dictionary[@"title"];
        self.releaseDate = dictionary[@"release_date"];
        self.averageVote = dictionary[@"vote_average"];
        self.posterImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://image.tmdb.org/t/p/w92/%@", dictionary[@"poster_path"]]]]];
    }
    return self;
}


@end

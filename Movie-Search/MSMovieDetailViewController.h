//
//  MSMovieDetailViewController.h
//  Movie-Search
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

@interface MSMovieDetailViewController : UIViewController

- (void)updateWithMovie:(Movie *)movie;

@end

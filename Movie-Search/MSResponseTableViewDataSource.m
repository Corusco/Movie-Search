//
//  MSResponseTableViewDataSource.m
//  Movie-Search
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "MSResponseTableViewDataSource.h"
#import "MovieController.h"
#import "Movie.h"

static NSString * const cellReuseKey = @"cell";

@interface MSResponseTableViewDataSource () 

@end

@implementation MSResponseTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[MovieController sharedInstance].resultMovies count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReuseKey];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellReuseKey];
    }
    
    Movie *movie = [[Movie alloc]initWithDictionary:[MovieController sharedInstance].resultMovies[indexPath.row]];
   
    cell.textLabel.text = movie.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ - %@",movie.releaseDate, movie.averageVote];
    cell.imageView.image = movie.posterImage;
    
    return cell;
}


@end

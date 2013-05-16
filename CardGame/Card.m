//
//  Card.m
//  CardGame
//
//  Created by anooprh on 15/05/13.
//  Copyright (c) 2013 learn. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) match:(Card *)card {
    int score = 0;
    
    if ([card.contents isEqualToString:self.contents]) {
        score = 1;
    }
    return score;
}
@end

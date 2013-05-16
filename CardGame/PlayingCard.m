//
//  PlayingCard.m
//  CardGame
//
//  Created by anooprh on 15/05/13.
//  Copyright (c) 2013 learn. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents {
    return [[[PlayingCard rankStrings] objectAtIndex:self.rank] stringByAppendingString:self.suit];
}

@synthesize suit=_suit;

+ (NSArray *)validSuites {
    return @[@"♥", @"♦", @"♠", @"♣"];
}

+ (NSArray *)rankStrings {
    return @[@"?", @"A", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank {
    return [[self rankStrings] count] - 1;
}

- (void)setRank:(NSUInteger)rank {
    if (rank < [PlayingCard  maxRank]) {
        _rank = rank;
    }
}

- (void)setSuit:(NSString *)suit {
    if ([[PlayingCard validSuites] containsObject: suit]) {
        _suit = suit;
    }   
}

- (NSString *) suit {
    return _suit;
}

- (int)match:(NSArray *)otherCards {
    int score = 0;
    if ([otherCards count] == 1) {
        PlayingCard *otherCard = [otherCards lastObject];
        if ([otherCard.suit isEqualToString:self.suit]) {
            score = 1;
        }
        else if (otherCard.rank == self.rank){
            score = 4;  
        }
    }
    return score;
}

@end

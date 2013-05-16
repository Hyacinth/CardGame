//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by anooprh on 16/05/13.
//  Copyright (c) 2013 learn. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (id)init {
    self = [super init];
    if (self) {
        for (NSString *suit in [PlayingCard validSuites]) {
            for (NSUInteger rank = 1 ; rank <= [PlayingCard maxRank] ; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                
                [self addCard:card atTop:YES]; 
            }
        }
    }
    return self;
}

@end

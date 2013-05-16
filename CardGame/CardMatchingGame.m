//
//  CardMatchingGame.m
//  CardGame
//
//  Created by anooprh on 16/05/13.
//  Copyright (c) 2013 learn. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame()

@property (readwrite, nonatomic) int score;
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation CardMatchingGame

- (NSMutableArray *)cards {
    if (_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (id)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck {
    self = [super init];
    if (self) {
        for (int i = 0 ; i < count ; i++) {
            Card *card = [deck drawRandomCard];
            if (card) {
                self.cards[i] = card;
            } else {
                self = nil;
                break;
            }
        }
    }
    return self;
}

#define MATCH_BONUS 4
#define MISMATCH_PENALTY 2
#define FLIP_COST 4

- (void)flipCardAtIndex:(NSUInteger)index {
    Card *card = [self cardAtIndex:index];
    
    if (card && !card.isUnplayable) {
        if(![card isFaceUp]){
            for (Card *othercard in self.cards) {
                if (othercard.isFaceUp && !othercard.isUnplayable) {
                    int matchScore = [card match:@[othercard]];
                    if(matchScore) {
                        card.unplayable = YES;
                        othercard.unplayable = YES;
                        self.score += matchScore * MATCH_BONUS;
                    }
                    else {
                        othercard.faceUp = NO;
                        self.score -= MISMATCH_PENALTY;
                    }
                    break;
                }
                self.score -= FLIP_COST;
            }
        }
    }
}

- (Card *)cardAtIndex:(NSUInteger)index {
    return index < [self.cards count] ? self.cards[index] : nil;
}

@end


//
//  Deck.h
//  CardGame
//
//  Created by anooprh on 15/05/13.
//  Copyright (c) 2013 learn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (Card *)drawRandomCard;

@end

//
//  Card.h
//  CardGame
//
//  Created by anooprh on 15/05/13.
//  Copyright (c) 2013 learn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUnplayable) BOOL unplayable;

- (int) match:(NSArray *)otherCards;

@end

//
//  CardMatchingGame.h
//  appCartas_IOS
//
//  Created by Alberto Flores on 23/12/20.
//  Copyright © 2020 Alberto Flores. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface CardMatchingGame : NSObject

-(instancetype) initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;

-(void)chooseCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic,readonly)NSInteger score;

@end

NS_ASSUME_NONNULL_END

//
//  PlayingCardDeck.m
//  appCartas_IOS
//
//  Created by Alberto Flores on 17/12/20.
//  Copyright © 2020 Alberto Flores. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

-(instancetype)init{
    self = [super init];
    
    if(self){
        for(NSString *suit in [PlayingCard validSuits]){
            for(NSUInteger rank = 1; rank<= [PlayingCard maxRank]; rank++){
                PlayingCard *card = [[PlayingCard alloc]init];
                card.rank=rank;
                card.suit=suit;
                [self addCard:card];
            }
        }
    }
    return self;
}

@end

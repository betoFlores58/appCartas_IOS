//
//  PlayingCard.h
//  appCartas_IOS
//
//  Created by Alberto Flores on 16/12/20.
//  Copyright © 2020 Alberto Flores. All rights reserved.
//

#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface PlayingCard : Card

@property (strong,nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger)maxRank;
@end

NS_ASSUME_NONNULL_END

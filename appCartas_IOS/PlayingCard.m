//
//  PlayingCard.m
//  appCartas_IOS
//
//  Created by Alberto Flores on 16/12/20.
//  Copyright © 2020 Alberto Flores. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(int)match:(NSArray *)otherCards{
    int score=0;
    if ([otherCards count]==1) {
        PlayingCard *otherCard = [otherCards firstObject];
        if (otherCard.rank == self.rank) {
            score=4;
        }else if ([otherCard.suit isEqualToString:self.suit]){
            score=1;
        }
    }
    return score;
}

-(NSString *)contents{
    NSArray *rankString = [PlayingCard rankStrings];
    return [rankString[self.rank]stringByAppendingString:self.suit];
}

@synthesize suit=_suit;

-(void)setSuit:(NSString *)suit{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit=suit;
    }
}

+(NSArray *)validSuits{
    return @[@"♥️",@"♦️",@"♠️",@"♣️"];
}
+(NSArray *)rankStrings{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+(NSUInteger)maxRank{
    return [[self rankStrings]count]-1;
}

-(void)setRank:(NSUInteger)rank{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}
-(NSString *)suit{
    return _suit ? _suit : @"?";
}
@end

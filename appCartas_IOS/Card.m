//
//  Card.m
//  appCartas_IOS
//
//  Created by Alberto Flores on 13/12/20.
//  Copyright © 2020 Alberto Flores. All rights reserved.
//

#import "Card.h"

@implementation Card

/*@synthesize contents = _contents;

-(NSString *)contents{
    return _contents;
}
-(void) setContents:(NSString *)contents{
    _contents=contents;
}*/
- (int)match:(NSArray *)otherCards{
    int score = 1;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score=1;
        }
    }
    return score;
}

@end

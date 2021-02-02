//
//  Deck.h
//  appCartas_IOS
//
//  Created by Alberto Flores on 16/12/20.
//  Copyright © 2020 Alberto Flores. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN


@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;

-(Card *)drawRandomCard;

@end

NS_ASSUME_NONNULL_END

//
//  Card.h
//  appCartas_IOS
//
//  Created by Alberto Flores on 13/12/20.
//  Copyright © 2020 Alberto Flores. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic,getter = isChosen) BOOL chosen;
@property (nonatomic,getter = isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end

NS_ASSUME_NONNULL_END

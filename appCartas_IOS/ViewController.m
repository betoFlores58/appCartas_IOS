//
//  ViewController.m
//  appCartas_IOS
//
//  Created by Alberto Flores on 13/12/20.
//  Copyright © 2020 Alberto Flores. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface ViewController ()

/*
@property (nonatomic) int flipCount;
@property (strong,nonatomic)Deck *deck;*/
@property (strong,nonatomic)CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardsButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
- (IBAction)btnShake:(UIButton *)sender;

@end

@implementation ViewController


-(CardMatchingGame *)game{
    if (!_game) {
        _game = [[CardMatchingGame alloc]initWithCardCount:[self.cardsButtons count] usingDeck:[self createDeck]];
    }
    return _game;
}

/*-(Deck *)deck{
    if (!_deck)
        _deck = [self createDeck];
    return _deck;
}*/

-(Deck *)createDeck{
    return [[PlayingCardDeck alloc]init];
}

/*-(void)setFlipCount:(int)flipCount{
    _flipCount=flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
}*/

- (IBAction)touchCardBtn:(UIButton *)sender {
    /*if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"Back-card-itl_tree"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        //[sender setImage:nil forState:UIControlStateNormal];
    }else{
        Card *randomCard = [self.deck drawRandomCard];
        if (randomCard) {
            [sender setBackgroundImage:[UIImage imageNamed:@"Blank-card"] forState:UIControlStateNormal];
            [sender setTitle:randomCard.contents forState:UIControlStateNormal];
        }
        //[sender setImage:@"suit.club.fill" forState:UIControlStateNormal];
    }*/
    int chooseButtonIndex = [self.cardsButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:chooseButtonIndex];
    [self updateUI];
    //self.flipCount++;
}

-(void)updateUI{
    for (UIButton *cardButton in self.cardsButtons) {
        int cardButtonIndex = [self.cardsButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d",self.game.score];
    }
}
-(NSString *)titleForCard:(Card *)card{
    return card.isChosen ? card.contents:@"";
}
-(UIImage *)backgroundImageForCard:(Card *)card{
    return [UIImage imageNamed:card.chosen ? @"Blank-card":@"Back-card-itl_tree"];
}


- (IBAction)btnShake:(UIButton *)sender {
    /*for (UIButton *cardButton in self.cardsButtons) {
        Card *card;
        [cardButton setBackgroundImage:[self backgroundImageForCard:@"Back-card-itl-tree"] forState:UIControlStateNormal];
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d",1];
    }*/
}
@end

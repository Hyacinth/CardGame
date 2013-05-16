//
//  CardGameViewController.m
//  CardGame
//
//  Created by anooprh on 15/05/13.
//  Copyright (c) 2013 learn. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) NSInteger flipcount;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@end

@implementation CardGameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setFlipcount:(NSInteger)flipcount {
    _flipcount = flipcount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips :%d",self.flipcount];
}

- (IBAction)flipCard:(UIButton *)sender {
    sender.selected = !sender.selected;
    self.flipcount++;
    
}

@end

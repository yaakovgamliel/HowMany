//
//  ViewController.m
//  HowMany
//
//  Created by yaakov gamliel on 9/28/14.
//  Copyright (c) 2014 g2think. All rights reserved.
//

#import "G2TViewController.h"
#import "G2THowManyCounter.h"


@interface G2TViewController ()

@property (weak, nonatomic) IBOutlet UILabel *countlabel;

@end

@implementation G2TViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateCountLabel];
}

- (void)updateCountLabel {
    self.countlabel.text = [NSString stringWithFormat:@"%ld",(long)[G2THowManyCounter howManyTimes]];
}
- (IBAction)counterButtonTouched:(id)sender {
   
    [G2THowManyCounter oneMoreTime];
    
    [self updateCountLabel];
}

@end

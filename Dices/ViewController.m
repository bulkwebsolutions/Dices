//
//  ViewController.m
//  Dices
//
//  Created by Alex Cruz on 7/8/15.
//  Copyright (c) 2015 Alex Cruz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) int dieOne;
@property (nonatomic) int dieTwo;

@property (nonatomic) int die1Value;
@property (nonatomic) int die2Value;

@property (nonatomic) int randomimages;
@property (nonatomic) int randomimages2;

@property (weak, nonatomic) IBOutlet UILabel *totalLabelIt;
@property (weak, nonatomic) IBOutlet UILabel *totalLabelLeft;
@property (weak, nonatomic) IBOutlet UILabel *totalLabelTotal;

@property (weak, nonatomic) IBOutlet UIButton *rollDice;

@end

@implementation ViewController


- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"felt.jpg"]];

}


- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


-(IBAction)randomize:(id)sender {
    self.randomimages = rand() % 6;
    switch (self.randomimages) {
            
        case 1:
            imageView.image = [UIImage imageNamed:@"dices1.png"];
            break;
        case 2:
            imageView.image = [UIImage imageNamed:@"dices2.png"];
            break;
        case 3:
            imageView.image = [UIImage imageNamed:@"dices3.png"];
            break;
        case 4:
            imageView.image = [UIImage imageNamed:@"dices4.png"];
            break;
        case 5:
            imageView.image = [UIImage imageNamed:@"dices5.png"];
            break;
        case 6:
            imageView.image = [UIImage imageNamed:@"dices6.png"];
            break;
    }
    
    self.totalLabelLeft.text = [NSString stringWithFormat:@"Left is: %li",(long)self.randomimages];
    
}


-(IBAction)randomize2:(id)sender2 {
    self.randomimages2 = rand() % 6;
    switch (self.randomimages2) {
            
        case 1:
            imageView2.image = [UIImage imageNamed:@"dices1.png"];
            break;
        case 2:
            imageView2.image = [UIImage imageNamed:@"dices2.png"];
            break;
        case 3:
            imageView2.image = [UIImage imageNamed:@"dices3.png"];
            break;
        case 4:
            imageView2.image = [UIImage imageNamed:@"dices4.png"];
            break;
        case 5:
            imageView2.image = [UIImage imageNamed:@"dices5.png"];
            break;
        case 6:
            imageView2.image = [UIImage imageNamed:@"dices6.png"];
            break;
            
    }
    
    self.totalLabelIt.text = [NSString stringWithFormat:@"Right is: %li",(long)self.randomimages2];
    
}


- (IBAction)totalIt {
    
    long total = self.randomimages + self.randomimages2;
    self.totalLabelTotal.text = [NSString stringWithFormat:@"Total is: %li",(long)total];
    
}


@end

//
//  ViewController.h
//  fractionCalculator
//
//  Created by Alexsandra on 2018/5/5.
//  Copyright © 2018年 Alexsandra. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong,nonatomic)IBOutlet UILabel *display;

-(void) processDigit:(int) digit;
-(void) processOp:(char) theOp;
-(void) storeFracPart;

//digit keys
-(IBAction) clickDigit:(UIButton *)sender;

//Arithmetic operation keys
-(IBAction) clickPlus;
-(IBAction) clickMinus;
-(IBAction) clickMultply;
-(IBAction) clickDivide;

//Misc keys
-(IBAction) clickOver;
-(IBAction) clickequals;
-(IBAction) clickClear;

@end


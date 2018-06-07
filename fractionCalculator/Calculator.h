//
//  Calculator.h
//  fractionCalculator
//
//  Created by Alexsandra on 2018/5/6.
//  Copyright © 2018年 Alexsandra. All rights reserved.
//


#import<UIKit/UIKit.h>
#import "Fraction.h"

@interface Calculator: NSObject

@property (strong,nonatomic) Fraction *operand1;
//@property (strong,nonatomic) Fraction *operand2;
@property (strong,nonatomic) Fraction *accumlator;

-(Fraction *)performOperation:(char) op;

-(void)clear;
@end
/* Calculator_h */

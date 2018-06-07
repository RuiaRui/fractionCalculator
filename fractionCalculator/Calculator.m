//
//  Calculator.m
//  fractionCalculator4
//
//  Created by Alexsandra on 2018/5/6.
//  Copyright © 2018年 Alexsandra. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Calculator.h"
@implementation Calculator
@synthesize operand1,accumlator;

-(id)init{
    self=[super init];
    
    if (self) {
        operand1 =[[Fraction alloc]init];
        //operand2 =[[Fraction alloc]init];
        accumlator =[[Fraction alloc]init];
    }
    return self;
}

-(void)clear{
    accumlator.numerator=0;
    accumlator.denominator=0;

}

-(Fraction *)performOperation:(char)op{
    Fraction *result;
    switch (op) {
        case '+':
            result =[accumlator add:operand1];
            break;
         case '-':
            result =[accumlator subtract:operand1];
            break;
        case'*':
            result =[accumlator multply:operand1];
            break;
        case '/':
            result =[accumlator divide:operand1];
            break;
        }
    accumlator.numerator=result.numerator;
    accumlator.denominator=result.denominator;
    return accumlator;
}

@end

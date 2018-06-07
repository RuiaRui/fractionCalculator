//
//  Fraction.h
//  fractionCalculator
//
//  Created by Alexsandra on 2018/5/6.
//  Copyright © 2018年 Alexsandra. All rights reserved.
//

#import<UIKit/UIKit.h>
@interface Fraction:NSObject

@property int numerator, denominator;

-(void) print;
-(void) setTo: (int) n over:(int)d;
-(Fraction *) add: (Fraction *)f;
-(Fraction *) subtract :(Fraction *)f;
-(Fraction *) multply: (Fraction *)f;
-(Fraction *) divide: (Fraction *)f;
-(void) reduce;
-(double) convertToNum;
-(NSString *) convertToString;

@end

 /* Fraction_h */

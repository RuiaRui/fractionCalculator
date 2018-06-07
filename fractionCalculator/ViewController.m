//
//  ViewController.m
//  fractionCalculator
//
//  Created by Alexsandra on 2018/5/5.
//  Copyright © 2018年 Alexsandra. All rights reserved.
//


#import "Calculator.h"
#import "ViewController.h"


@implementation ViewController {
    char op;
    int currentNumber;
    int opCount;
    BOOL firstOperand, isNumerator;
    Calculator *myCal;
    NSMutableString *displayString;
    
}

@synthesize display;


- (void) viewDidLoad;{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    firstOperand=YES;
    isNumerator=YES;
    displayString=[NSMutableString stringWithCapacity:40];
    myCal=[[Calculator alloc]init];
    
}

-(void) processDigit:(int)digit{
    currentNumber=currentNumber*10+digit;
    
    [displayString appendString:[NSString stringWithFormat:@"%i",digit]];
    display.text=displayString;
}

-(void)clickDigit:(UIButton *)sender
{
    int digit = sender.tag;
    [self processDigit:digit];
 
}

-(void) processOp:(char)theOp{
    [self storeFracPart];
    
    if(opCount>1){
        [myCal performOperation:op];
    }
    
    NSString *opStr;
    op=theOp;
    
    switch (theOp) {
            case '+':
            opStr=@" + ";
            break;
        case '-':
            opStr=@" - ";
            break;
        case '*':
            opStr=@" * ";
            break;
        case '/':
            opStr=@" ÷ ";
            break;
    }
    firstOperand=NO;
    isNumerator=YES;
    
    [displayString appendString:opStr];
    display.text=displayString;
    
}
-(void)storeFracPart{
    if(firstOperand){
        if(isNumerator){
            myCal.accumlator.numerator=currentNumber;
            myCal.accumlator.denominator=1;
        }
        else{
            myCal.accumlator.denominator=currentNumber;
        }
    }else {
        if(isNumerator){
            myCal.operand1.numerator=currentNumber;
            myCal.operand1.denominator=1;
        }
        else{
            myCal.operand1.denominator=currentNumber;
        }
    }
    currentNumber=0;
}

-(void)clickOver{
    [self storeFracPart];
    isNumerator=NO;
    [displayString appendString:@"/"];
    display.text=displayString;
}

-(IBAction)clickPlus{
    opCount++;
    [self processOp:'+'];
}

-(IBAction)clickMinus{
    opCount++;
    [self processOp:'-'];
}
-(IBAction)clickMultply{
    opCount++;
    [self processOp:'*'];
}
-(IBAction)clickDivide{
    opCount++;
    [self processOp:'/'];
}

-(IBAction)clickequals{
    if(firstOperand==NO){
        [self storeFracPart];
        [myCal performOperation:op];
        
        [displayString appendString:@"="];
        [displayString appendString:[myCal.accumlator convertToString]];
        display.text=displayString;
        
        currentNumber=0;
        opCount=0;
        isNumerator=YES;
        firstOperand=YES;
        [displayString setString:@""];
    }
}

-(IBAction)clickClear {
    currentNumber=0;
    opCount=0;
    isNumerator=YES;
    firstOperand=YES;
    [myCal clear];
    
    [displayString setString:@" "];
    display.text=displayString;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end


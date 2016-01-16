//
//  InputCollector.m
//  PizzaRestaurant
//
//  Created by Kerry Toonen on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString
{
    char inputChars [255];
    
    NSLog(@"%@", promptString);
    
    fgets(inputChars, 255, stdin);
    
    //convert char array to an NSString object
    NSString *userInput = [NSString stringWithUTF8String:inputChars];
    NSString *noN = [userInput stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    return noN;
}

@end

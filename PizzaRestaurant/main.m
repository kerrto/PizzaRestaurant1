//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [[Kitchen alloc] init];
        
        while (TRUE) {
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSString *sizeString = commandWords[0];
            
            
            PizzaSize pizzaSize = [Pizza pizzaSizeEnumFromString:sizeString];
            
            NSMutableArray *toppingsArray = [commandWords mutableCopy];
            [toppingsArray removeObjectAtIndex:0];
            
            Pizza *pizza = [restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppingsArray];
            NSLog(@"%@", pizza);
        }
        
    }
    return 0;
}


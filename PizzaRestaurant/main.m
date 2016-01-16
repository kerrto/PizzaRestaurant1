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
#import "Manager.h"
#import "Manager2.h"
#import "InputCollector.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [[Kitchen alloc] init];
        
        Manager *badManager =[[Manager alloc] init];
        
        Manager2 *niceManager = [[Manager2 alloc] init];
        
       
        InputCollector *mainInputCollector = [[InputCollector alloc]init];
        
        NSString *menuInput = @"Which manager would you like to have?(please type)\n bad manager\n nice manager\n no manager\n";
        
        NSString *userInput = [mainInputCollector inputForPrompt:menuInput];
        
        if([userInput isEqualToString:@"bad manager"]) {
            restaurantKitchen.delegate = badManager;}
        
        if ([userInput isEqualToString:@"nice manager"]) {
            restaurantKitchen.delegate =niceManager;}
        
        if ([userInput isEqualToString:@"no manager"]) {
            restaurantKitchen.delegate=nil;}
        
        else {
            restaurantKitchen.delegate=nil;
        }
        
        
        while (TRUE) {
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSLog(@"Which manager would you like to have?\n");
            
            
            
            
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


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
        
        while (TRUE) {
        
        
        Kitchen *restaurantKitchen = [[Kitchen alloc] init];
        
        Manager *badManager =[[Manager alloc] init];
        
        Manager2 *niceManager = [[Manager2 alloc] init];
        
       
        InputCollector *mainInputCollector = [[InputCollector alloc]init];
        
        NSString *menuInput = @"Which manager would you like to have?(please type)\n bad manager\n nice manager\n no manager\n exit\n";
        
        NSString *userInput = [mainInputCollector inputForPrompt:menuInput];
        
        if([userInput isEqualToString:@"bad manager"]) {
            restaurantKitchen.delegate = badManager;}
        
        if ([userInput isEqualToString:@"nice manager"]) {
            restaurantKitchen.delegate =niceManager;}
        if ([userInput isEqualToString:@"exit"]) {
                return FALSE;}
      
            NSLog(@"Please enter your order like this: small pepperoni cheese");
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
            
            NSString *pizzaSizeString = [[NSString alloc] init];
            
            Pizza *pizza = [restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppingsArray];
         
            
        }
        
    }
    return 0;
}


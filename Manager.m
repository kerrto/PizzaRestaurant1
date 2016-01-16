//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Kerry Toonen on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"
#import "Pizza.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    
    if ([toppings containsObject:@"anchovies"]) {
        NSLog(@"Achovies are gross, either get out or order again");;
        return NO;
    }
    return YES;
    
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

@end

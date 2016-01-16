//
//  Manager2.m
//  PizzaRestaurant
//
//  Created by Kerry Toonen on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Manager2.h"
#import "Kitchen.h"

@implementation Manager2

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    
    return YES;
    
}



-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}



-(void)kitchenDidMakePizza:(Pizza *)pizza{

    NSLog(@"You are so awesome!");
}





@end

//
//  Manager2.m
//  PizzaRestaurant
//
//  Created by Kerry Toonen on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Manager2.h"
#import "Kitchen.h"
#import "Pizza.h"

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
-(int)upGradeOrder:(Pizza *)PizzaSize {
    if ([self.sizeString isEqualToString:@"small"]) {
        NSLog(@"Your pizza was upgraded to medium size for FREE!!!!");
        return Medium;}
     else if ([self.sizeString isEqualToString:@"medium"]) {
         NSLog(@"Your pizza was upgraded to large size for FREE!!!");
         return Large;}
     else if ([self.sizeString isEqualToString:@"large"]) {
         NSLog(@"Looks like somebody's having a pizza party!! You bought the biggest pizza!");
         return Large;}
     else {
         return Medium;
     }
    }

@end

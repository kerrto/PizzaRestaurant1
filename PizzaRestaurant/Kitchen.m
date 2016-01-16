//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"


@implementation Kitchen




- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    
    if (!self.delegate) {
        return nil; }
    
    
        BOOL shouldUpsize = [self.delegate kitchenShouldUpgradeOrder:self];
        
        PizzaSize newSize = size;
        
        if (shouldUpsize) {
            newSize = Large;
        }
    
    
    Pizza *newPizza = [[Pizza alloc] initWithPizzaSize:newSize toppings:toppings];
    
    
    BOOL respondsToDidMakePizza = [self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)];
    
    if (respondsToDidMakePizza) {
        [self.delegate kitchenDidMakePizza:newPizza];
    }
 
    return newPizza;
}





@end

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
        
        NSString *madePizzaSizeString = [[NSString alloc] init];
        if (size==Small){
            madePizzaSizeString = @"Small";}
        if (size==Medium) {
            madePizzaSizeString = @"Medium"; }
        if (size==Large) {
            madePizzaSizeString = @"Large";}
        NSLog(@"Here's your %@ pizza with %@\n",madePizzaSizeString,toppings);}

        BOOL shouldUpsize = [self.delegate kitchenShouldUpgradeOrder:self];
    
        PizzaSize newSize = size;
    
        if (shouldUpsize) {
            
            NSLog(@"Your pizza was upgraded to large size for FREE!!!");
            newSize = Large;
            NSString *madePizzaSizeString = [[NSString alloc] init];
            madePizzaSizeString = @"Large";
            NSLog(@"Here's your %@ pizza with %@\n",madePizzaSizeString,toppings);
    
    Pizza *newPizza = [[Pizza alloc]initWithPizzaSize:newSize toppings:toppings];
//    NSString *madePizzaSizeString = [[NSString alloc] init];
//    if (size==Small){
//        madePizzaSizeString = @"Small";}
//    if (size==Medium) {
//        madePizzaSizeString = @"Medium"; }
//    if (size==Large) {
//        madePizzaSizeString = @"Large";}
//            NSLog(@"Here's your %@ pizza with %@\n",madePizzaSizeString,toppings);


    BOOL respondsToDidMakePizza = [self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)];
    
    if (respondsToDidMakePizza) {
        [self.delegate kitchenDidMakePizza:newPizza];}
    
    return newPizza;
}
        else {
            Pizza *newPizza = [[Pizza alloc]initWithPizzaSize:newSize toppings:toppings];
                NSString *madePizzaSizeString = [[NSString alloc] init];
                if (size==Small){
                    madePizzaSizeString = @"Small";}
                if (size==Medium) {
                    madePizzaSizeString = @"Medium"; }
                if (size==Large) {
                    madePizzaSizeString = @"Large";}
                        NSLog(@"Here's your %@ pizza with %@\n",madePizzaSizeString,toppings);
            
            
            BOOL respondsToDidMakePizza = [self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)];
            
            if (respondsToDidMakePizza) {
                [self.delegate kitchenDidMakePizza:newPizza];}
            
            return newPizza;
}
}
@end

//
//  Manager2.h
//  PizzaRestaurant
//
//  Created by Kerry Toonen on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

@interface Manager2 : NSObject <KitchenDelegate>

@property (nonatomic) NSString *sizeString;

@end
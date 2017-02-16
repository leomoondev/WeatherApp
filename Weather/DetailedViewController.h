//
//  DetailedViewController.h
//  Weather
//
//  Created by Hyung Jip Moon on 2017-02-15.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "City.h"

@interface DetailedViewController : UIViewController

@property (nonatomic, strong) City *cityNameDetailedVC;
- (instancetype)initWithCityName: (City*)cityNameDetailedVC;
- (void) showMoreDetails;

@end

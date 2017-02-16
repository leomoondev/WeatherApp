//
//  CityViewController.h
//  Weather
//
//  Created by Hyung Jip Moon on 2017-02-15.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailedViewController.h"
#import "City.h"

@interface CityViewController : UIViewController

@property (nonatomic, strong) City *cityNameVC;


- (instancetype)initWithCityName:(City*)cityNameVC;

- (void) showWeatherDetails;


@end

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
@property City *cityName;

- (instancetype)initWithCityName: (City*)cityName;
- (void) createStoryBoardDetails;

@end

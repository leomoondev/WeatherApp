//
//  DetailedViewController.m
//  Weather
//
//  Created by Hyung Jip Moon on 2017-02-15.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"

@implementation DetailedViewController

- (instancetype)initWithCityName: (City*)cityNameDetailedVC {
    if (self = [super init]) {
        _cityNameDetailedVC = cityNameDetailedVC;
        
        [self showMoreDetails];

    }
    return self;
}


- (void) showMoreDetails {
    //write the required code here, button is same as the favbutton which is written above.
    self.view.backgroundColor = [UIColor redColor];
    
    UILabel *showCity = [[UILabel alloc] initWithFrame:CGRectMake(10, 75, 300, 20)];
    showCity.text = [NSString stringWithFormat:@"City: %@", self.cityNameDetailedVC.cityName];
    showCity.textColor = [UIColor whiteColor];
    
    UILabel *showTemperature = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 300, 20)];
    showTemperature.text = [NSString stringWithFormat:@"Temperature: %.1f", self.cityNameDetailedVC.cityTemperature];
    showTemperature.textColor = [UIColor whiteColor];
    
    UILabel *showPrecipitation = [[UILabel alloc] initWithFrame:CGRectMake(10, 125, 300, 20)];
    showPrecipitation.text = [NSString stringWithFormat:@"Precipitation: %i", self.cityNameDetailedVC.cityPrecipitation];
    showPrecipitation.textColor = [UIColor whiteColor];
    
    NSDate *showTime = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    UILabel *showTimeOnView = [[UILabel alloc] initWithFrame:CGRectMake(10, 150, 300, 20)];

    if ([self.cityNameDetailedVC.cityName isEqualToString:@"Vancouver"]) {
        [formatter setDateStyle:NSDateFormatterShortStyle];
        [formatter setTimeStyle:NSDateFormatterShortStyle];
        [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"Canada/Vancouver"]];
        NSString* storeTheTime = [formatter stringFromDate:showTime];
        showTimeOnView.text = [NSString stringWithFormat:@"Current Time: %@", storeTheTime];
        showTimeOnView.textColor = [UIColor whiteColor];

    }
    else if ([self.cityNameDetailedVC.cityName isEqualToString:@"Toronto"]) {
        [formatter setDateStyle:NSDateFormatterShortStyle];
        [formatter setTimeStyle:NSDateFormatterShortStyle];
        [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"America/Toronto"]];
        NSString* storeTheTime = [formatter stringFromDate:showTime];
        showTimeOnView.text = [NSString stringWithFormat:@"Current Time: %@", storeTheTime];
        showTimeOnView.textColor = [UIColor whiteColor];
    }
    else if ([self.cityNameDetailedVC.cityName isEqualToString:@"Seattle"]) {
        [formatter setDateStyle:NSDateFormatterShortStyle];
        [formatter setTimeStyle:NSDateFormatterShortStyle];
        [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"America/Seattle"]];
        NSString* storeTheTime = [formatter stringFromDate:showTime];
        showTimeOnView.text = [NSString stringWithFormat:@"Current Time: %@", storeTheTime];
        showTimeOnView.textColor = [UIColor whiteColor];
    }
    else if ([self.cityNameDetailedVC.cityName isEqualToString:@"Chicago"]) {
        [formatter setDateStyle:NSDateFormatterShortStyle];
        [formatter setTimeStyle:NSDateFormatterShortStyle];
        [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"America/Chicago"]];
        NSString* storeTheTime = [formatter stringFromDate:showTime];
        showTimeOnView.text = [NSString stringWithFormat:@"Current Time: %@", storeTheTime];
        showTimeOnView.textColor = [UIColor whiteColor];    }
    
    else if ([self.cityNameDetailedVC.cityName isEqualToString:@"Paris"]) {
        [formatter setDateStyle:NSDateFormatterShortStyle];
        [formatter setTimeStyle:NSDateFormatterShortStyle];
        [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"Europe/Paris"]];
        NSString* storeTheTime = [formatter stringFromDate:showTime];
        showTimeOnView.text = [NSString stringWithFormat:@"Current Time: %@", storeTheTime];
        showTimeOnView.textColor = [UIColor whiteColor];
    }
    
    else {
        formatter = nil;
    }
    
    [self.view addSubview:showCity];
    [self.view addSubview:showTemperature];
    [self.view addSubview:showPrecipitation];
    [self.view addSubview:showTimeOnView];
 
}
@end

//
//  CityViewController.m
//  Weather
//
//  Created by Hyung Jip Moon on 2017-02-15.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"

@implementation CityViewController

- (instancetype)initWithCityName:(City*)cityNameVC {
    
    if (self = [super init]) {
        
        self.title = cityNameVC.cityName;
        _cityNameVC = cityNameVC;

        [self showWeatherDetails];
        
    }
    return self;
}

- (void) showWeatherDetails {
    
    self.view.backgroundColor = [UIColor orangeColor];

    DetailedViewController *showDetails = [[DetailedViewController alloc] initWithCityName:self.cityNameVC];
    
    UILabel *showCity = [[UILabel alloc] initWithFrame:CGRectMake(10, 75, 300, 20)];
    showCity.text = [NSString stringWithFormat:@"City: %@", self.cityNameVC.cityName];
    showCity.textColor = [UIColor whiteColor];
    
    UILabel *showDescription = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 300, 20)];
    showDescription.text = [NSString stringWithFormat:@"Weather: %@", self.cityNameVC.cityWeatherDescription];
    showDescription.textColor = [UIColor whiteColor];

    UILabel *showTemperature = [[UILabel alloc] initWithFrame:CGRectMake(10, 125, 300, 20)];
    showTemperature.text = [NSString stringWithFormat:@"Temperature: %.1f", self.cityNameVC.cityTemperature];
    showTemperature.textColor = [UIColor whiteColor];
    
    UIImageView *showWeatherIcon = [[UIImageView alloc] initWithFrame:CGRectMake(25, 160, 50, 50)];

    if ([self.cityNameVC.cityWeatherDescription isEqualToString:@"Sunny"]) {
        showWeatherIcon.image = [UIImage imageNamed:@"Sunny.png"];
    }
    else if ([self.cityNameVC.cityWeatherDescription isEqualToString:@"Cloudy"]) {
        showWeatherIcon.image = [UIImage imageNamed:@"cloudy.png"];
    }
    else if ([self.cityNameVC.cityWeatherDescription isEqualToString:@"Rainy"]) {
        showWeatherIcon.image = [UIImage imageNamed:@"rain.png"];
    }
    else if ([self.cityNameVC.cityWeatherDescription isEqualToString:@"Windy"]) {
        showWeatherIcon.image = [UIImage imageNamed:@"wind.png"];
    }
    
    else if ([self.cityNameVC.cityWeatherDescription isEqualToString:@"Snowy"]) {
        showWeatherIcon.image = [UIImage imageNamed:@"snow.png"];
    }
    else {
        showWeatherIcon.image = nil;
    }

    [self.view addSubview:showCity];
    [self.view addSubview:showDescription];
    [self.view addSubview:showTemperature];
    [self.view addSubview:showWeatherIcon];

    [self.navigationController pushViewController:showDetails animated:YES];

}




@end

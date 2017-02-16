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
    
    DetailedViewController *showDetails = [[DetailedViewController alloc] initWithCityName:self.cityNameVC];
    
    UILabel *showCity = [[UILabel alloc] initWithFrame:CGRectMake(150, 200, 300, 20)];
    //sUILabel *weatherLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 220, 400, 20)];
    self.view.backgroundColor = [UIColor orangeColor];

    showCity.text = [NSString stringWithFormat:@"City: %@", self.cityNameVC.cityName];

    showCity.textColor = [UIColor redColor];
    //weatherLabel.text = [NSString stringWithFormat:@"Weather: %@", [self showWeatherDetails];
    
    [self.view addSubview:showCity];
    //[self.view addSubview:weatherLabel];
    
    [self.navigationController pushViewController:showDetails animated:YES];

}




@end

//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "CityViewController.h"
#import "City.h"
#import "DetailedViewController.h"

@interface LHWAppDelegate () {
    
}

@property (nonatomic, strong) CityViewController *cityViewController;
@end
@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController

    UITabBarController *tabBarController = [[UITabBarController alloc] init];


    City *cityVancouver = [[City alloc] initWithCityName:@"Vancouver" initWithCityWeatherDescription:@"Sunny" initWithCityTemperature:10.0 initWithCityPrecipitation:0];
    City *cityToronto = [[City alloc] initWithCityName:@"Toronto" initWithCityWeatherDescription:@"Cloudy" initWithCityTemperature:20.0 initWithCityPrecipitation:50];
    City *citySeattle = [[City alloc] initWithCityName:@"Seattle" initWithCityWeatherDescription:@"Rainy" initWithCityTemperature:15.0 initWithCityPrecipitation:100];
    City *cityChicago = [[City alloc] initWithCityName:@"Chicago" initWithCityWeatherDescription:@"Windy" initWithCityTemperature:5.0 initWithCityPrecipitation:80];
    City *cityParis = [[City alloc] initWithCityName:@"Paris" initWithCityWeatherDescription:@"Snowy" initWithCityTemperature:-10.0 initWithCityPrecipitation:40];
    
    CityViewController *cityVCVancouer = [[CityViewController alloc] initWithCityName:cityVancouver];
    CityViewController *cityVCToronto = [[CityViewController alloc] initWithCityName:cityToronto];
    CityViewController *cityVCSeattle = [[CityViewController alloc] initWithCityName:citySeattle];
    CityViewController *cityVCChicago = [[CityViewController alloc] initWithCityName:cityChicago];
    CityViewController *cityVCParis = [[CityViewController alloc] initWithCityName:cityParis];
    
    UINavigationController *navVancouver = [[UINavigationController alloc] initWithRootViewController:cityVCVancouer];
    UINavigationController *navToronto = [[UINavigationController alloc] initWithRootViewController:cityVCToronto];
    UINavigationController *navSeattle = [[UINavigationController alloc] initWithRootViewController:cityVCSeattle];
    UINavigationController *navChicago = [[UINavigationController alloc] initWithRootViewController:cityVCChicago];
    UINavigationController *navParis = [[UINavigationController alloc] initWithRootViewController:cityVCParis];

    
    tabBarController.viewControllers = @[navVancouver, navToronto, navSeattle, navChicago, navParis];
    
    [self.window setRootViewController:tabBarController];

    [self.window makeKeyAndVisible];
    
    return YES;
}

@end

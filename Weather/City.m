//
//  City.m
//  Weather
//
//  Created by Hyung Jip Moon on 2017-02-15.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)initWithCityName:(NSString*)cityName initWithCityWeatherDescription:(NSString*) cityWeatherDescription initWithCityTemperature:(float) cityTemperature {
    
    if (self = [super init]) {
        
        _cityName = cityName;
        _cityWeatherDescription = cityWeatherDescription;
        _cityTemperature = cityTemperature;
    }
    return self;
}
@end

//
//  City.h
//  Weather
//
//  Created by Hyung Jip Moon on 2017-02-15.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property NSString *cityName;
@property NSString *cityWeatherDescription;

@property (nonatomic) float * cityTemperature;

- (instancetype)initWithCityName:(NSString*)cityName initWithCityWeatherDescription:(NSString*) cityWeatherDescription initWithCityTemperature:(float) cityTemperature;

@end

//
//  WavePoolConstants.m
//  Workbook
//
//  Created by Nicholas Arcolano on 2012-19-08.
//  Copyright (c) 2012 Nicholas Arcolano. All rights reserved.
//

#import "WavePoolConstants.h"

@implementation WavePoolConstants

+(float) accelerationDueToGravity
{
    return 9.80665;  // Acceleration due to gravity (m/s^2)
}

+(float) dampingCoefficient
{
    return 1;  // Damping coefficient for wave model
}

@end

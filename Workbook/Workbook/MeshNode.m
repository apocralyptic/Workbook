//
//  MeshNode.m
//  WavePool
//
//  Created by Nicholas Arcolano on 2012-10-08.
//  Copyright (c) 2012 Nicholas Arcolano. All rights reserved.
//

#import "MeshNode.h"

@interface MeshNode ()

@property(readwrite) float xPosition;  // Make writable within class implementation
@property(readwrite) float yPosition;

@end

@implementation MeshNode
@synthesize xPosition, yPosition, height, isBoundary;

-(id) initWithXPosition:(float)x yPosition:(float)y height:(float)h
{
    if (self = [super init])
    {
        [self setXPosition:x];
        [self setYPosition:y];
        [self setHeight:h];
        [self setIsBoundary:FALSE];  // Default value
    }
    return self;
}

@end
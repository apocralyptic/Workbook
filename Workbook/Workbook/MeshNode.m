//
//  MeshNode.m
//  WavePool
//
//  Created by Nicholas Arcolano on 2012-10-08.
//  Copyright (c) 2012 Nicholas Arcolano. All rights reserved.
//

#import "MeshNode.h"

@implementation MeshNode

// ============================================================
// Initializers
// ============================================================


-(id) initWithXPosition:(float)x yPosition:(float)y height:(float)h
{
    if (self = [super init])
    {
        [self setXPosition:x];
        [self setYPosition:y];
        [self setHeight:h];
        [self setBoundary:FALSE];  // Default value
    }
    return self;
}

// ============================================================
// Get methods
// ============================================================

-(float) xPosition
{
    return xPosition;
}

-(float) yPosition;
{
    return yPosition;
}

-(float) height;
{
    return height;
}

-(BOOL) isBoundary;
{
    return isBoundary;
}

// ============================================================
// Set methods
// ============================================================

-(void) setXPosition:(float)x
{
    xPosition = x;
}

-(void) setYPosition:(float)y
{
    yPosition = y;
}

-(void) setHeight:(float)h
{
    height = h;
}

-(void) setBoundary:(BOOL)flag
{
    isBoundary = flag;
}

@end
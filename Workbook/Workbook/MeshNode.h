//
//  MeshNode.h
//  WavePool
//
//  Created by Nicholas Arcolano on 2012-10-08.
//  Copyright (c) 2012 Nicholas Arcolano. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MeshNode : NSObject
{
    float xPosition;  // x-coordinate of node (meters)
    float yPosition;  // y-coordinate of node (meters)
    float height;  // height of water at node (meters)
    BOOL isBoundary;  // Whether or not node is a reflective boundary point
}

// ============================================================
// Initializer
// ============================================================

-(id) initWithXPosition:(float)x yPosition:(float)y height:(float)h;

// ============================================================
// Get methods
// ============================================================

-(float) xPosition;
-(float) yPosition;
-(float) height;
-(BOOL) isBoundary;

// ============================================================
// Set methods
// ============================================================

-(void) setXPosition:(float)x;
-(void) setYPosition:(float)y;
-(void) setHeight:(float)h;
-(void) setBoundary:(BOOL)flag;

@end
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
    CGFloat xPosition;  // x-coordinate of node (meters)
    CGFloat yPosition;  // y-coordinate of node (meters)
    CGFloat height;  // height of water at node (meters)
    BOOL isBoundary;  // Whether or not node is a reflective boundary point
}

@property(readonly) CGFloat xPosition;
@property(readonly) CGFloat yPosition;
@property CGFloat height;
@property BOOL isBoundary;

-(id) initWithXPosition:(CGFloat)x yPosition:(CGFloat)y height:(CGFloat)h;

@end
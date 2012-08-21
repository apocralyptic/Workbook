//
//  WavePoolModel.m
//  Workbook
//
//  Created by Nicholas Arcolano on 2012-12-08.
//  Copyright (c) 2012 Nicholas Arcolano. All rights reserved.
//

#import "WavePoolModel.h"
#import "MeshNode.h"
#import "WavePoolConstants.h"

@interface WavePoolModel ()

@property(readwrite) int rows;  // Make writeable within class implementation
@property(readwrite) int columns;
@property(readwrite) CGFloat width;
@property(readwrite) CGFloat length;

@end

@implementation WavePoolModel
@synthesize rows, columns, meshGrid;

-(id) initWithRows:(int)m columns:(int)n width:(CGFloat)w length:(CGFloat)l
{
    if (self = [super init])
    {
        [self setRows:m];
        [self setColumns:n];
        [self setWidth:w];
        [self setLength:l];
        
        CGFloat xStep = self.length/(self.columns - 1);
        CGFloat yStep = self.width/(self.rows - 1);
        
        // Initialize arrary
        NSMutableArray* newMeshGrid = [[NSMutableArray alloc] initWithCapacity:self.rows];
        
        for (int i=0; i<self.rows; i++) {
            NSMutableArray* currentRow = [[NSMutableArray alloc] initWithCapacity:self.columns];
            CGFloat currentYPosition = i*yStep;
            for (int ii=0; ii<self.columns; ii++) {
                MeshNode* currentNode;
                CGFloat currentXPosition = ii*xStep;
                currentNode = [[MeshNode alloc] initWithXPosition:currentXPosition yPosition:currentYPosition height:0];
                [currentRow insertObject:currentNode atIndex:ii];
            }
            [newMeshGrid insertObject:currentRow atIndex:i];
        }
        [self setMeshGrid:newMeshGrid];
    }
    return self;
}

-(id) getMeshNodeAtRow:(int)rowIndex andColumn:(int)columnIndex
{
    MeshNode* theNode = [[self.meshGrid objectAtIndex:rowIndex] objectAtIndex:columnIndex];
    return theNode;
}

-(void) addDropletWithXPosition:(CGFloat)x yPosition:(CGFloat)y
{
    // Find closest node point
    CGFloat minDistance = self.length;
    int minRowIndex = 0;
    int minColumnIndex = 0;
     for (int i=0; i<self.rows; i++) {
        for (int ii=0; ii<self.columns; ii++) {
            MeshNode* currentNode = [[self.meshGrid objectAtIndex:i] objectAtIndex:ii];
            CGFloat distanceSquared = pow(currentNode.xPosition - x,2) + pow(currentNode.yPosition - y,2);
            if (distanceSquared < minDistance) {
                minDistance = distanceSquared;
                minRowIndex = i;
                minColumnIndex = ii;
                NSLog(@"MIN DIST %f i = %d, ii = %d x = %f, y = %f",minDistance, minRowIndex, minColumnIndex,currentNode.xPosition,currentNode.yPosition);
            }
        }
    }
    // Add droplet
    MeshNode* theNode = [[self.meshGrid objectAtIndex:minRowIndex] objectAtIndex:minColumnIndex];
    CGFloat newHeight = theNode.height + WavePoolConstants.defaultDropletHeight;
    [theNode setHeight:newHeight];
}

-(void) advancePoolByTimeStep:(float)t
{
    
}

-(void) pngFromHeightProfile;
{
    
}

-(void) displayMeshState  // Display mesh state for debugging (uses fast enumeration)
{
    for (NSArray* currentRow in self.meshGrid) {
        for (MeshNode* currentNode in currentRow) {
            NSLog(@"x = %6.2f, y = %6.2f, h = %6.2f", currentNode.xPosition, currentNode.yPosition, currentNode.height);
        }
    }
}

@end
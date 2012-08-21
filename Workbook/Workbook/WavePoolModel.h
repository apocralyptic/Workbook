//
//  WavePoolModel.h
//  Workbook
//
//  Created by Nicholas Arcolano on 2012-12-08.
//  Copyright (c) 2012 Nicholas Arcolano. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WavePoolModel : NSObject

{
    int rows;  // Number of vertical (y-axis) points in mesh
    int columns;  // Number of horizontal (x-axis) points in mesh
    NSMutableArray* meshGrid;  // Matrix of MeshNode objects
}

@property(readonly) int rows;  // Number of rows (y-axis points)
@property(readonly) int columns;  // Number of columns (x-axis points)
@property(readonly) CGFloat width;  // Width of pool (y-axis extent)
@property(readonly) CGFloat length;  // Length of pool (x-axis extent)
@property NSMutableArray* meshGrid;

-(id) initWithRows:(int)m columns:(int)n width:(CGFloat)w length:(CGFloat)l;
-(id) getMeshNodeAtRow:(int)rowIndex andColumn:(int)columnIndex;
-(void) addDropletWithXPosition:(CGFloat)x yPosition:(CGFloat)y;
-(void) advancePoolByTimeStep:(float)t;
-(void) pngFromHeightProfile;
-(void) displayMeshState;

@end
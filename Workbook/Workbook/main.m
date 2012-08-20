//
//  main.m
//  Workbook
//
//  Created by Nicholas Arcolano on 2012-11-08.
//  Copyright (c) 2012 Nicholas Arcolano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MeshNode.h"

int main(int argc, const char * argv[])
{
    // Create MeshNodeModel 1
    MeshNode* node1;
    node1 = [[MeshNode alloc] initWithXPosition:3.0 yPosition:4.0 height:5.0];
    
    // Create MeshNodeModel 2
    MeshNode* node2;
    node2 = [[MeshNode alloc] initWithXPosition:3.0 yPosition:5.0 height:8.0];
    
    // Create MeshNodeModel 3
    MeshNode* node3;
    node3 = [[MeshNode alloc] initWithXPosition:3.0 yPosition:6.0 height:4.0];
    
    // Show variables
    
    NSLog(@"The x position is %f",[node3 xPosition]);
    NSLog(@"The y position is %f",[node3 yPosition]);
    NSLog(@"The height is %f",[node3 height]);
    NSLog(@"It is a boundary: %@", ([node3 isBoundary] ? @"YES" : @"NO"));
    
    // Add heights
    
    float newHeight = [node1 height] + [node2 height];
    [node3 setHeight:newHeight];
 
    // Show variables
    
    NSLog(@"The x position is %f",[node3 xPosition]);
    NSLog(@"The y position is %f",[node3 yPosition]);
    NSLog(@"The height is %f",[node3 height]);
    NSLog(@"It is a boundary: %@", ([node3 isBoundary] ? @"YES" : @"NO"));
    
    // Playing with matrices
    
    int n = 2;
    int m = 3;
    
    float xPosition[n][m];
    
    for (int i = 0; i < n; i++) {
        for (int ii = 0; ii < m; ii++) {
            xPosition[i][ii] = i;
            NSLog(@"i = %d, ii = %d",i,ii);
        }
    }

    
    for (int i = 0; i < n; i++) {
        for (int ii = 0; ii < m; ii++) {
            NSLog(@"xPosition = %f",xPosition[i][ii]);
        }
    }

    // PLAYING WITH NSARRAY MATRICES
    
    // Allocate matrix and fill with MeshNodeModel objects
    
    NSMutableArray* meshGrid = [[NSMutableArray alloc] initWithCapacity:m];
    
    for (int i=0; i<m; i++) {
        NSMutableArray* currentColumn = [[NSMutableArray alloc] initWithCapacity:n];
        for (int ii=0; ii<n; ii++) {
            MeshNode* currentNode;
            currentNode = [[MeshNode alloc] initWithXPosition:i yPosition:ii height:0];
            [currentColumn insertObject:currentNode atIndex:ii];
        }
        [meshGrid insertObject:currentColumn atIndex:i];
    }
    
    // Change heights
    
     for (int i=0; i<m; i++) {
        NSMutableArray* currentColumn = [meshGrid objectAtIndex:i];
        for (int ii=0; ii<n; ii++) {
            MeshNode* currentNode = [currentColumn objectAtIndex:ii];
            [currentNode setHeight:rand() % 10];  // Change value
            [currentColumn replaceObjectAtIndex:ii withObject:currentNode];  // Store
        }
        [meshGrid replaceObjectAtIndex:i withObject:currentColumn];
    }


    // Display heights
    
    for (int i=0; i<m; i++) {
        NSArray* currentColumn = [meshGrid objectAtIndex:i];
        for (int ii=0; ii<n; ii++) {
            MeshNode* currentNode = [currentColumn objectAtIndex:ii];
            float x = [currentNode xPosition];
            float y = [currentNode yPosition];
            float h = [currentNode height];
            NSLog(@"MESHGRID X = %f, Y = %f, H = %f",x,y,h);
        }
    }
    
     return 0;
}


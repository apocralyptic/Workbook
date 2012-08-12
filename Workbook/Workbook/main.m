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
    
    // Create MeshNode 1
    MeshNode* node1;
    node1 = [[MeshNode alloc] initWithXPosition:3.0 yPosition:4.0 height:5.0];
    
    // Create MeshNode 2
    MeshNode* node2;
    node2 = [[MeshNode alloc] initWithXPosition:3.0 yPosition:5.0 height:8.0];
    
    // Create MeshNode 3
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
    
    return 0;
}


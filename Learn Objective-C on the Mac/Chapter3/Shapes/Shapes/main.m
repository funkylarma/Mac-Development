//
//  main.m
//  Shapes
//
//  Created by Adam Chamberlin on 13/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma Structures

typedef enum {
    kRedColour,
    kGreenColour,
    kBlueColour
} ShapeColour;

typedef struct {
    int x, y, width, height;
} ShapeRect;


#pragma Function Prototypes

NSString *colourName(ShapeColour colourName);
void drawShapes(id shapes[], int count);

NSString *colourName(ShapeColour colourName) {
    switch (colourName) {
        case kRedColour:
            return @"red";
            break;
        case kBlueColour:
            return @"blue";
            break;
        case kGreenColour:
            return @"green";
    }
    
    return @"no clue";
}


#pragma Mark Circle class

@interface Circle : NSObject {
@private
    ShapeColour fillColour;
    ShapeRect bounds;
}

-(void) setFillColour: (ShapeColour) fillColour;
-(void) setBounds: (ShapeRect) bounds;
-(void) draw; 
@end

@implementation Circle

-(void) setFillColour:(ShapeColour) c
{
    fillColour = c;
}

-(void) setBounds:(ShapeRect) b
{
    bounds = b;
}

-(void) draw
{
    NSLog(@"drawing a circle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.height, bounds.width, colourName(fillColour));
}

@end


#pragma Rectangle Class

@interface Rectangle : NSObject {
@private
    ShapeColour fillColour;
    ShapeRect bounds;
}
-(void) setFillColour: (ShapeColour) fillColour;
-(void) setBounds: (ShapeRect) bounds;
-(void) draw;
@end

@implementation Rectangle

-(void) setFillColour:(ShapeColour) c
{
    fillColour = c;
}

-(void) setBounds:(ShapeRect) b
{
    bounds = b;
}

-(void) draw
{
    NSLog(@"drawing a rectangle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.height, bounds.width, colourName(fillColour));
}

@end


#pragma OblateSphereoid Class

@interface OblateSphereoid : NSObject {
@private
    ShapeColour fillColour;
    ShapeRect bounds;
}
-(void) setFillColour: (ShapeColour) fillColour;
-(void) setBounds: (ShapeRect) bounds;
-(void) draw;
@end

@implementation OblateSphereoid

-(void) setFillColour:(ShapeColour) c
{
    fillColour = c;
}

-(void) setBounds:(ShapeRect) b
{
    bounds = b;
}

-(void) draw
{
    NSLog(@"drawing an egg at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.height, bounds.width, colourName(fillColour));
}

@end

void drawShapes(id shapes[], int count) {
    int i;
    
    for (i = 0; i < count; i++) {
        id shape = shapes[i];
        [shape draw];
    }
}

int main (int argc, const char * argv[])
{
    id shapes[3];
    
    ShapeRect rect0 = { 0, 0, 10, 30 };
	shapes[0] = [Circle new];
	[shapes[0] setBounds: rect0];
	[shapes[0] setFillColour: kRedColour];
	
	ShapeRect rect1 = { 30, 40, 50, 60 };
	shapes[1] = [Rectangle new];
	[shapes[1] setBounds: rect1];
	[shapes[1] setFillColour: kGreenColour];
	
	ShapeRect rect2 = { 15, 19, 37, 29 };
	shapes[2] = [OblateSphereoid new];
	[shapes[2] setBounds: rect2];
	[shapes[2] setFillColour: kBlueColour];
	
	drawShapes (shapes, 3);
    
    return 0;
}
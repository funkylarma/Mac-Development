//
//  main.m
//  Shapes-Inheritance
//
//  Created by Adam Chamberlin on 13/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma Mark TypeDef Declarations

typedef enum {
    kRedColour,
    kGreenColour,
    kBlueColour
} ShapeColour;

typedef struct {
    int x, y, width, height;
} ShapeRect;


#pragma Mark Method Declarations

NSString *colourName (ShapeColour colour);
void drawShapes (id shapes[], int count);


#pragma Mark Shape class

@interface Shape : NSObject {
    ShapeColour fillColour;
    ShapeRect bounds;
}
-(void) setFillColour: (ShapeColour) fillColour;
-(void) setBounds: (ShapeRect) bounds;
-(void) draw;
@end

@implementation Shape

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
    
}

@end


#pragma Mark Triangle class

@interface Triangle : Shape {
@private
    
}
@end

@implementation Triangle

-(void) draw
{
    NSLog(@"drawing a triangle at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colourName(fillColour));
}

@end


#pragma Mark Circle class

@interface Circle : Shape {
@private
    
}
@end

@implementation Circle

-(void) draw
{
    NSLog(@"drawing a circle at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colourName(fillColour));
}

@end


#pragma Mark Rectangle class

@interface Rectangle : Shape {
@private
    
}
@end

@implementation Rectangle

-(void) draw
{
    NSLog(@"drawing a rectangle at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colourName(fillColour));
}

@end


#pragma Mark OblateSphereoids

@interface OblateSphereoid : Shape {
@private
    
}
@end

@implementation OblateSphereoid

-(void) draw
{
    NSLog(@"drawing an egg at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colourName(fillColour));
}

@end


#pragma Mark Methods

NSString *colourName (ShapeColour colour)
{
    NSString *colourName;
    
    switch (colour) {
        case kRedColour:
            colourName = @"red";
            break;
        case kGreenColour:
            colourName = @"green";
        case kBlueColour:
            colourName = @"blue";
        default:
            colourName = @"oops! Unexpected colour";
            break;
    }
    
    return colourName;
}

void drawShapes (id shapes[], int count)
{
    int i;
    
    for (i = 0; i < count; i++) {
        id shape = shapes[i];
        [shape draw];
    }
}

int main (int argc, const char * argv[])
{
    id shapes[4];
	
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
	
	ShapeRect rect3 = { 47, 32, 80, 50 };
	shapes[3] = [Triangle new];
	[shapes[3] setBounds: rect3];
	[shapes[3] setFillColour: kRedColour];
	
	drawShapes (shapes, 4);
	
    return 0;
}


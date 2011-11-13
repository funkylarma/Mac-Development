//
//  main.m
//  Shapes
//
//  Created by Adam Chamberlin on 13/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kCircle,
    kRectangle,
    kOblateSpheroid
} ShapeType;

typedef enum {
    kRedColour,
    kGreenColour,
    kBlueColour
} ShapeColour;

typedef struct {
    int x, y, width, height;
} ShapeRect;

typedef struct {
    ShapeType type;
    ShapeColour fillColour;
    ShapeRect bounds;
} Shape;

NSString *colourName(ShapeColour colourName);
void drawCircle(ShapeRect bounds, ShapeColour fillColour);
void drawRectangle(ShapeRect bounds, ShapeColour fillColour);
void drawEgg(ShapeRect bounds, ShapeColour fillColour);
void drawShapes(Shape shapes[], int count);

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

void drawCircle(ShapeRect bounds, ShapeColour fillColour) {
    NSLog(@"drawing a circle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.height, bounds.width, colourName(fillColour));
}

void drawRectangle(ShapeRect bounds, ShapeColour fillColour) {
    NSLog(@"drawing a rectangle at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.height, bounds.width, colourName(fillColour));
}

void drawEgg(ShapeRect bounds, ShapeColour fillColour) {
    NSLog(@"drawing an egg at (%d %d %d %d) in %@", bounds.x, bounds.y, bounds.height, bounds.width, colourName(fillColour));
}

void drawShapes(Shape shapes[], int count) {
    int i;
    
    for (i = 0; i < count; i++) {
        switch (shapes[i].type) {
            case kCircle:
                drawCircle(shapes[i].bounds, shapes[i].fillColour);
                break;
            case kRectangle:
                drawRectangle(shapes[i].bounds, shapes[i].fillColour);
                break;
            case kOblateSpheroid:
                drawEgg(shapes[i].bounds, shapes[i].fillColour);
                break;
        }
    }
}

int main (int argc, const char * argv[])
{
    Shape shapes[3];
    
    ShapeRect rect0 = { 0, 0, 10, 30 };
	shapes[0].type = kCircle;
	shapes[0].fillColour = kRedColour;
	shapes[0].bounds = rect0;
	
	ShapeRect rect1 = { 30, 40, 50, 60 };
	shapes[1].type = kRectangle;
	shapes[1].fillColour = kGreenColour;
	shapes[1].bounds = rect1;
	
	ShapeRect rect2 = { 15, 18, 37, 29 };
	shapes[2].type = kOblateSpheroid;
	shapes[2].fillColour = kBlueColour;
	shapes[2].bounds = rect2;
	
	drawShapes (shapes, 3);
    
    return 0;
}
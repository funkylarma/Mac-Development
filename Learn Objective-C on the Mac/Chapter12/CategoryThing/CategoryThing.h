//
//  CategoryThing.h
//  CategoryThing
//
//  Created by Adam Chamberlin on 19/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CategoryThing : NSObject {
    int thing1;
    int thing2;
    int thing3;
}

@end


@interface CategoryThing (Thing1)

- (void) setThing1: (int) thing1;
- (int) thing1;

@end


@interface CategoryThing (Thing2)

- (void) setThing2: (int) thing2;
- (int) thing2;

@end


@interface CategoryThing (Thing3)

- (void) setThing3: (int) thing3;
- (int) thing3;

@end
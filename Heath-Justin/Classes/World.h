//
//  World.h
//  Heath-Justin
//
//  Created by Heath Borders on 9/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"

@interface World : NSObject {

}

@property (nonatomic, retain, readonly) NSSet *cells;

- (void) addCell: (Cell *) cell;

- (void) iterate;

@end

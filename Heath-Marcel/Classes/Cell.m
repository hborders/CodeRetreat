//
//  Cell.m
//  Heath-Marcel
//
//  Created by Heath Borders on 9/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Cell.h"


@implementation Cell

@synthesize x = _x;
@synthesize y = _y;

- (BOOL) isEqual:(id)object {
	if ([object isKindOfClass:[Cell class]]) {
		Cell *cell = (Cell *) object;
		
		return cell.x == self.x && cell.y == self.y;
	} else {
		return NO;	
	}
}

@end

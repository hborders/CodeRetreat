//
//  World.m
//  Heath-Justin
//
//  Created by Heath Borders on 9/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "World.h"

@interface World()

@property (nonatomic, retain) NSMutableSet *mutableCells;

@end


@implementation World

@synthesize mutableCells = _mutableCells;

- (id) init {
	if (self = [super init]) {
		self.mutableCells = [NSMutableSet set];
	}
	
	return self;
}

- (void) dealloc {
	self.mutableCells = nil;
	
	[super dealloc];
}

#pragma mark -
#pragma mark public api

- (void) addCell:(Cell *)cell {
	NSUInteger count = [self.mutableCells count];
	[self.mutableCells addObject:cell];
	
	if (count == [self.mutableCells count]) {
		[NSException raise:@"Added duplicate" format:@"Cell: %@", cell];
	}
}

- (void) iterate {
	NSMutableSet *newMutableCells = [NSMutableSet setWithCapacity:[self.mutableCells count]];
	for (Cell *cell in self.mutableCells) {
		
	}
}

#pragma mark -
#pragma mark properties

- (NSSet *) cells {
	return self.mutableCells;
}

@end

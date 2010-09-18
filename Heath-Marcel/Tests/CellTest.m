//
//  CellTest.m
//  Heath-Marcel
//
//  Created by Heath Borders on 9/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "GTMSenTestCase.h"
#import "Cell.h"

@interface CellTest : GTMTestCase {
	Cell *testObject;
}

@end

@implementation CellTest

- (void) setUp {
	testObject = [[[Cell alloc] init] autorelease];
}

- (void) testXProperty {
	testObject.x = 2;
	
	STAssertEquals((NSUInteger)2, testObject.x, @"");
}

- (void) testYProperty {
	testObject.y = 3;
	
	STAssertEquals((NSUInteger)3, testObject.y, @"");
}

- (void) testCellsWithEqualXsAndYsAreEqual {
	testObject.x = 4;
	testObject.y = 5;
	
	Cell * cell = [[[Cell alloc] init] autorelease];
	cell.x = 4;
	cell.y = 5;
	
	STAssertEqualObjects (testObject,cell,@"");
}

@end

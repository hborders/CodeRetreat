#import <Foundation/Foundation.h>
#import "GTMSenTestCase.h"
#import "World.h"
#import "Cell.h"

@interface WorldTest : GTMTestCase {
	World *testObject;
	
	Cell *testCell;
}

@end

@implementation WorldTest

- (void) setUp {
	testObject = [[[World alloc] init] autorelease];
	testCell = [[[Cell alloc] init] autorelease];
	testCell.x = 1;
	testCell.y = 2;
}

- (void) testAddCellThrowsExceptionWhenCellAlreadyExists {
	[testObject addCell:testCell];
	BOOL threwException = NO;
	@try {
		[testObject addCell:testCell];
	} @catch (NSException *exception) {
		threwException = YES;
	}
	
	STAssertTrue(threwException, @"");
}

- (void) testAddCellAddsCellToCells {
	[testObject addCell:testCell];
	
	STAssertEqualObjects([NSSet setWithObject:testCell], testObject.cells, @"");
}

- (void) testIterateRemovesCellWhenItHasNoNeighbors {
	[testObject addCell:testCell];
	
	[testObject iterate];
	
	STAssertEqualObjects([NSSet set], testObject.cells, @"");
}

- (void) testIterateRemovesCellWhenItHasOneNeighbor {
	[testObject addCell:testCell];

	Cell *neighborCell = [[[Cell alloc] init] autorelease];
	neighborCell.x = 1;
	neighborCell.y = 3;
	[testObject addCell:neighborCell];
	
	[testObject iterate];
	
	STAssertEqualObjects([NSSet set], testObject.cells, @"");
}

- (void) testIterateKeepsCellWhenItHasTwoNeighbors {
	[testObject addCell:testCell];
	
	Cell *neighborCell1 = [[[Cell alloc] init] autorelease];
	neighborCell1.x = 1;
	neighborCell1.y = 3;
	[testObject addCell:neighborCell1];
	
	Cell *neighborCell2 = [[[Cell alloc] init] autorelease];
	neighborCell2.x = 2;
	neighborCell2.y = 3;
	[testObject addCell:neighborCell2];
	
	[testObject iterate];
	
	STAssertEqualObjects([NSSet setWithObject:testCell], testObject.cells, @"");
}

- (void) testIterateKeepsCellWhenItHasThreeNeighbors {
	
}

- (void) testIterateRemovesCellWhenItHasFourOrMoreNeighbors {
	
}

@end

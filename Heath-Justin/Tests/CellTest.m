#import <Foundation/Foundation.h>
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
	
	STAssertEquals((NSUInteger) 2, testObject.x, @"");
}

- (void) testYProperty {
	testObject.y = 3;
	
	STAssertEquals((NSUInteger) 3, testObject.y, @"");
}

- (void) testCellsWithEqualXsAndYsAreEqual {
	Cell *cell = [[[Cell alloc] init] autorelease];
	cell.x = 2;
	cell.y = 3;
	
	testObject.x = 2;
	testObject.y = 3;
	
	STAssertEqualObjects(cell, testObject, @"");
}

- (void) testCellIsNotEqualToNonCellClass {
	STAssertFalse([testObject isEqual:@""], @"");
}

- (void) testCellsWithoutEqualXsAreNotEqual {
	Cell *cell = [[[Cell alloc] init] autorelease];
	cell.x = 4;
	cell.y = 3;
	
	testObject.x = 2;
	testObject.y = 3;
	
	STAssertFalse([testObject isEqual:cell], @"");
}

- (void) testCellsWithoutEqualYsAreNotEqual {
	Cell *cell = [[[Cell alloc] init] autorelease];
	cell.x = 2;
	cell.y = 4;
	
	testObject.x = 2;
	testObject.y = 3;
	
	STAssertFalse([testObject isEqual:cell], @"");
}

- (void) testEqualCellsHaveEqualHashCodes {
	Cell *cell = [[[Cell alloc] init] autorelease];
	cell.x = 2;
	cell.y = 3;
	
	testObject.x = 2;
	testObject.y = 3;
	
	STAssertEquals([cell hash], [testObject hash], @"");
}

- (void) testNeighborCellsReturnsSetWithEightBorderingCells {
	testObject.x = 10;
	testObject.y = 20;
	
	NSSet *expectedNeighborCells = [NSSet setWithObjects:<#(id)firstObj#>
}

@end

//
//  GameBoard.h
//  Heath-Marcel
//
//  Created by Heath Borders on 9/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"

@interface GameBoard : NSObject {

}

- (void) addCell: (Cell *) cell;

- (NSArray *) getCells;

- (void) iterate;

@end

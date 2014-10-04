//
//  ToDoItem.h
//  ToDoList2
//
//  Created by Martin Engelcke on 04/10/2014.
//
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end

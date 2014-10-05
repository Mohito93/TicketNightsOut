//
//  SellTicket.h
//  ToDoList2
//
//  Created by Martin Engelcke on 04/10/2014.
//
//

#import <Foundation/Foundation.h>

@interface SellTicket : NSObject

@property NSString *eventName;
@property NSString *eventData;
@property NSString *eventCity;
@property NSString *eventPrice;

@property NSString *sellerName;
@property NSString *sellerPhone;
@property NSString *sellerEmail;

@property NSString *bankAccount;
@property NSString *bankBankCode;

@property BOOL ticketSold;

@end

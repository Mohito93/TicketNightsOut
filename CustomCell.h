//
//  CustomCell.h
//  ToDoList2
//
//  Created by Mohit on 5/10/14.
//
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *eventLabel;
@property (nonatomic, weak) IBOutlet UILabel *priceLabel;
@property (nonatomic, weak) IBOutlet UILabel *dateLabel;
@property (nonatomic, weak) IBOutlet UILabel *cityLabel;
@end

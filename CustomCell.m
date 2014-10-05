//
//  CustomCell.m
//  ToDoList2
//
//  Created by Mohit on 5/10/14.
//
//

#import "CustomCell.h"

@implementation CustomCell

@synthesize eventLabel = _nameLabel;
@synthesize priceLabel = _priceLabel;
@synthesize dateLabel = _dateLabel;
@synthesize cityLabel = _cityLabel;


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

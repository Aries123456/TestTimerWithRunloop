//
//  OneCell.m
//  TestTimer
//
//  Created by lk on 2019/5/10.
//  Copyright © 2019 lk. All rights reserved.
//

#import "OneCell.h"

@interface  OneCell  ()
@property (nonatomic, strong) NSTimer *timer;

@end

@implementation OneCell

- (void)setDataWithIsOK:(BOOL)isok
{
    if (isok) {
        __block int i = 0;
        self.timer = [NSTimer timerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
            i++;
            self.testLab.text = [NSString stringWithFormat:@"%d",i];
        }];
        [[NSRunLoop currentRunLoop]addTimer:self.timer forMode:NSDefaultRunLoopMode];
    }
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

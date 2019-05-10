//
//  TwoCell.h
//  TestTimer
//
//  Created by lk on 2019/5/10.
//  Copyright © 2019 lk. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TwoCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *testLab;
- (void)setDataWithIsOK:(BOOL)isok;

@end

NS_ASSUME_NONNULL_END

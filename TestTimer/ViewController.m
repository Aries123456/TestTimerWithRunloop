//
//  ViewController.m
//  TestTimer
//
//  Created by lk on 2019/5/10.
//  Copyright © 2019 lk. All rights reserved.
//

#import "ViewController.h"
#import "OneCell.h"
#import "TwoCell.h"
#import "ThreeCell.h"

@interface ViewController ()
{
    BOOL _isOK;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _isOK = NO;
    self.view.backgroundColor = [UIColor redColor];
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    _isOK = !_isOK;
    [self.tableView reloadData];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        OneCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OneCellID" forIndexPath:indexPath];
        cell.testLab.text = @"NSDefaultRunLoopMode\n没有用户交互的时候 runloop活跃,有交互的时候优先处理交互,所以计时器不会动";
        [cell setDataWithIsOK:_isOK];
        return cell;
    }else if (indexPath.row == 1)
    {
        TwoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TwoCellID" forIndexPath:indexPath];
        cell.testLab.text = @"UITrackingRunLoopMode\n有用户交互的时候 runloop活跃,所以计时器只有页面有人机交互的时候才会动";
        [cell setDataWithIsOK:_isOK];
        return cell;
    }else
    {
        ThreeCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ThreeCellID" forIndexPath:indexPath];
        cell.testLab.text = @"NSRunLoopCommonModes\nDefault+Tracking,一直会动";
        [cell setDataWithIsOK:_isOK];
        return cell;
    }
}

@end

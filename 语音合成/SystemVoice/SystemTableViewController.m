//
//  SystemTableViewController.m
//  语音合成
//
//  Created by mac on 16/8/30.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "SystemTableViewController.h"
#import "SystemExampleOneViewController.h"
static NSString *const SystemTableViewControllerCell = @"SystemTableViewControllerCell";
@interface SystemTableViewController ()

@end

@implementation SystemTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:SystemTableViewControllerCell];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SystemTableViewControllerCell];

    
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    cell.textLabel.text = @"例子1";
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {

        //将我们的storyBoard实例化，“Main”为StoryBoard的名称
        UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        //将第二个控制器实例化，这里的实例化要以storyboard为主来实例化， SystemExampleOneViewController为和storyboard相关联的代码控制器，@"123"是我们在storyboard中设置的storyboard ID
        SystemExampleOneViewController *vc = [mainStoryBoard instantiateViewControllerWithIdentifier:@"123"];
        [self.navigationController pushViewController:vc animated:YES];
        
    }
}


@end

//
//  VCHome.m
//  BookLister
//
//  Created by Flavio Akira Nakahara on 6/16/17.
//  Copyright © 2017 Flavio Akira Nakahara. All rights reserved.
//

#import "VCHome.h"

@interface VCHome ()

@end

@implementation VCHome
@synthesize lblInfo;
@synthesize arrayLivro;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self loadInfo];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadInfo{
    NSString *plistFilePath = [[NSBundle mainBundle] pathForResource:@"BookList" ofType:@"plist"];
    arrayLivro = [NSArray arrayWithContentsOfFile:plistFilePath];
    [self.lblInfo setText:[NSString stringWithFormat:@"Foram encontrados %ld registros.", arrayLivro.count]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  VCHome.h
//  BookLister
//
//  Created by Flavio Akira Nakahara on 6/16/17.
//  Copyright © 2017 Flavio Akira Nakahara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCHome : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblInfo;
@property(strong, nonatomic) NSArray *arrayLivro;

- (void)loadInfo;

@end

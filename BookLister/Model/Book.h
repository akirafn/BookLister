//
//  Book.h
//  BookLister
//
//  Created by Flavio Akira Nakahara on 6/14/17.
//  Copyright © 2017 Flavio Akira Nakahara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Book : NSObject {
    NSInteger bookId;
    NSString *bookName;
    NSString *bookGenre;
    NSString *bookSummary;
}

@property(nonatomic) NSInteger bookId;
@property(nonatomic, strong) NSString *bookName;
@property(nonatomic, strong) NSString *bookGenre;
@property(nonatomic, strong) NSString *bookSummary;

@end

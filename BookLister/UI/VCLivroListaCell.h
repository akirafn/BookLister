//
//  VCLivroListaCell.h
//  BookLister
//
//  Created by Flavio Akira Nakahara on 6/20/17.
//  Copyright © 2017 Flavio Akira Nakahara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCLivroListaCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblTitulo;
@property (weak, nonatomic) IBOutlet UILabel *lblSumario;
@property (weak, nonatomic) IBOutlet UIImageView *imgIcone;

@end

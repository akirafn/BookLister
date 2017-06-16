//
//  VCLivroDetalhe.h
//  BookLister
//
//  Created by Flavio Akira Nakahara on 6/16/17.
//  Copyright © 2017 Flavio Akira Nakahara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCLivroDetalhe : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtTitulo;
@property (weak, nonatomic) IBOutlet UITextField *txtSumario;
@property (weak, nonatomic) IBOutlet UIButton *btnSalvar;

- (IBAction)salvarDados:(id)sender;
@end

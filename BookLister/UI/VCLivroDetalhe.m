//
//  VCLivroDetalhe.m
//  BookLister
//
//  Created by Flavio Akira Nakahara on 6/16/17.
//  Copyright © 2017 Flavio Akira Nakahara. All rights reserved.
//

#import "VCLivroDetalhe.h"

@interface VCLivroDetalhe ()

@end

@implementation VCLivroDetalhe

@synthesize txtTitulo;
@synthesize txtSumario;
@synthesize btnSalvar;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController setNavigationBarHidden:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)salvarDados:(id)sender {
    NSString *plistFilePath = [[NSBundle mainBundle] pathForResource:@"BookList" ofType:@"plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSMutableDictionary *data = [[NSMutableDictionary alloc] init];
    NSMutableArray *contentArray = [[NSMutableArray alloc] init];
    
    if(![fileManager fileExistsAtPath:plistFilePath]){
        NSLog(@"Arquivo nao existe");
        
    } else{
        NSLog(@"Arquivo existe! Carregar dados existentes.");
        
        contentArray = [[NSMutableArray alloc] initWithContentsOfFile:plistFilePath];
    }
    
    NSString *strTitulo = txtTitulo.text;
    NSString *strSumario = txtSumario.text;
    
    if((strTitulo.length > 1) && (strSumario.length > 1)){
        [data setValue:strTitulo forKey:@"Titulo"];
        [data setValue:strSumario forKey:@"Sumario"];
        
        [contentArray addObject:data];
        
        if([contentArray writeToFile:plistFilePath atomically:YES]){
            NSLog(@"Dados salvos com sucesso!");
            
            UIAlertController *alerta = [UIAlertController alertControllerWithTitle:@"Sucesso" message:@"Dados salvos com sucesso!" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *botaoAlerta = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
                [self dismissViewControllerAnimated:NO completion:nil];
                [self.navigationController setNavigationBarHidden:YES];
                [self.navigationController popToRootViewControllerAnimated:YES];
            }];
            [alerta addAction:botaoAlerta];
            [self presentViewController:alerta animated:YES completion:nil];
        } else{
            NSLog(@"Erro durante a operacao!");
            
            UIAlertController *alerta = [UIAlertController alertControllerWithTitle:@"Falha" message:@"Ocorreu erro durante a operacao!\nTente novamente." preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *botaoAlerta = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
            [alerta addAction:botaoAlerta];
            [self presentViewController:alerta animated:YES completion:nil];
        }
    } else{
        UIAlertController *alerta = [UIAlertController alertControllerWithTitle:@"Alerta" message:@"Favor entrar dados devidamente!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *botaoAlerta = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alerta addAction:botaoAlerta];
        [self presentViewController:alerta animated:YES completion:nil];
    }
}

@end

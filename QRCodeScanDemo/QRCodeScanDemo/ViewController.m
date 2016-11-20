//
//  ViewController.m
//  QRCodeScanDemo
//
//  Created by yaojiaqi on 2016/11/20.
//  Copyright © 2016年 Shangji Online (Beijing) Network Technology Co., Ltd. All rights reserved.
//

#import "ViewController.h"
#import "JQqrCodeScanVC.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *scanResultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scanResultLabel.layer.borderColor = [UIColor groupTableViewBackgroundColor].CGColor;
    self.scanResultLabel.layer.borderWidth = 1.0f;
    
}

- (IBAction)scanAction:(id)sender {
    JQqrCodeScanVC *qrCodeVC =[JQqrCodeScanVC new];
    qrCodeVC.JQqrCodeScanSuncessBlock = ^(JQqrCodeScanVC *vc,NSString *result){
        [vc dismissViewControllerAnimated:YES completion:nil];
        self.scanResultLabel.text = [NSString stringWithFormat:@"扫描成功 : %@",result];
        
    };
    qrCodeVC.JQqrCodeScanFailBlock = ^(JQqrCodeScanVC *vc){
        [vc dismissViewControllerAnimated:YES completion:nil];

        self.scanResultLabel.text = [NSString stringWithFormat:@"扫描失败"];

    };
    qrCodeVC.JQqrCodeScanCancleBlock = ^(JQqrCodeScanVC *vc){
        [vc dismissViewControllerAnimated:YES completion:nil];

        self.scanResultLabel.text = [NSString stringWithFormat:@"取消扫描"];
    };
    
    [self presentViewController:qrCodeVC animated:YES completion:nil];
}


@end

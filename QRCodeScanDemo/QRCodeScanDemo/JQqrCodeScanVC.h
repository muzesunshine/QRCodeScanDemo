//
//  JQqrCodeScanVC.h
//  QRCodeScanDemo
//
//  Created by yaojiaqi on 2016/11/20.
//  Copyright © 2016年 Shangji Online (Beijing) Network Technology Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JQqrCodeScanVC : UIViewController
/**
 *  取消扫描
 *
 */
@property (nonatomic, copy) void (^JQqrCodeScanCancleBlock) (JQqrCodeScanVC *);
/**
 *  扫描成功
 *
 */
@property (nonatomic, copy) void (^JQqrCodeScanSuncessBlock) (JQqrCodeScanVC *,NSString *);
/**
 *  扫描失败
 *
 */
@property (nonatomic, copy) void (^JQqrCodeScanFailBlock) (JQqrCodeScanVC *);


@end

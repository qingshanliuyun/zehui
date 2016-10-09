//
//  ViewController.m
//  quartz2dUse
//
//  Created by 李根 on 16/6/23.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong)UIImageView *iv;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    _iv = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    [self.view addSubview:_iv];
    _iv.layer.borderWidth = 1;
    
    
    //  绘制基本图形
    
    //  加载图片
    //  0.. 创建一个Bitmap上下文
    //  c语言的方法
//    CGBitmapContextCreate(<#void * _Nullable data#>, <#size_t width#>, <#size_t height#>, <#size_t bitsPerComponent#>, <#size_t bytesPerRow#>, <#CGColorSpaceRef  _Nullable space#>, <#uint32_t bitmapInfo#>)
    //  OC中封装的方法
    //  方法1
//    UIGraphicsBeginImageContext(<#CGSize size#>);
    //  方法2
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(200, 200), NO, 0);
    //  1. 获取bitmap上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //  2. 绘图, 画一个圆
    CGContextAddEllipseInRect(ctx, CGRectMake(0, 0, 100, 100));
    //  3. 渲染
    CGContextStrokePath(ctx);
    //  4. 获取生成的图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //  5. 显示生成的图片到imageview
    _iv.image = image;
    //  6. 保存绘制好的图片到文件中
    //  先将图片转换为二进制数据, 然后再将图片写到文件中
//    UIImageJPEGRepresentation(image, 1);    //  第二个参数为保存的图片的效果
    NSData *data = UIImagePNGRepresentation(image);
    [data writeToFile:@"/users/ligen/desktop/aaa.png" atomically:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}











@end

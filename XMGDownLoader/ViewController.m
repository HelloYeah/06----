//
//  ViewController.m
//  XMGDownLoader
//
//  Created by 小码哥 on 2017/1/8.
//  Copyright © 2017年 xmg. All rights reserved.
//

#import "ViewController.h"
//#import "XMGDownLoader.h"
#import "XMGDownLoaderManager.h"

@interface ViewController ()

//@property (nonatomic, strong) XMGDownLoader *downLoader;

@property (nonatomic, weak) NSTimer *timer;

@end

@implementation ViewController

- (NSTimer *)timer {
    if (!_timer) {
        NSTimer *timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(update) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
        _timer = timer;
    }
    return _timer;
}




- (void)update {
//    NSLog(@"----%zd", self.downLoader.state);
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
//    [self timer];
  
}

- (IBAction)download:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://free2.macx.cn:8281/tools/photo/SnapNDragPro418.dmg"];
    
    NSURL *url2 = [NSURL URLWithString:@"http://free2.macx.cn:8281/tools/photo/Sip44.dmg"];
    
    
    [[XMGDownLoaderManager shareInstance] downLoader:url2 downLoadInfo:^(long long totalSize) {
        NSLog(@"下载信息--%lld", totalSize);
    } progress:^(float progress) {
        NSLog(@"下载进度--%f", progress);
    } success:^(NSString *filePath) {
        NSLog(@"下载成功--路径:%@", filePath);
    } failed:^{
        NSLog(@"下载失败了");
    }];
    
    [[XMGDownLoaderManager shareInstance] downLoader:url downLoadInfo:^(long long totalSize) {
        NSLog(@"下载信息--%lld", totalSize);
    } progress:^(float progress) {
        NSLog(@"下载进度--%f", progress);
    } success:^(NSString *filePath) {
        NSLog(@"下载成功--路径:%@", filePath);
    } failed:^{
        NSLog(@"下载失败了");
    }];
    
//    [self.downLoader downLoader:url];
//    [self.downLoader downLoader:url downLoadInfo:^(long long totalSize) {
//        NSLog(@"下载信息--%lld", totalSize);
//    } progress:^(float progress) {
//        NSLog(@"下载进度--%f", progress);
//    } success:^(NSString *filePath) {
//        NSLog(@"下载成功--路径:%@", filePath);
//    } failed:^{
//        NSLog(@"下载失败了");
//    }];
    
//    [self.downLoader setStateChange:^(XMGDownLoadState state){
//        NSLog(@"---%zd", state);
//    }];
}
- (IBAction)pause:(id)sender {
//    [self.downLoader pauseCurrentTask];
}
- (IBAction)cancel:(id)sender {
//    [self.downLoader cacelCurrentTask];
}
- (IBAction)cancelClean:(id)sender {
//    [self.downLoader cacelAndClean];
}
    


@end

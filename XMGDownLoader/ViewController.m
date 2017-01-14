//
//  ViewController.m
//  XMGDownLoader
//
//  Created by 小码哥 on 2017/1/8.
//  Copyright © 2017年 xmg. All rights reserved.
//

#import "ViewController.h"
#import "XMGDownLoader.h"

@interface ViewController ()

@property (nonatomic, strong) XMGDownLoader *downLoader;

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



- (XMGDownLoader *)downLoader {
    if (!_downLoader) {
        _downLoader = [XMGDownLoader new];
    }
    return _downLoader;
}



- (void)update {
    NSLog(@"----%zd", self.downLoader.state);
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self timer];
  
}

- (IBAction)download:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://free2.macx.cn:8281/tools/photo/SnapNDragPro418.dmg"];
    [self.downLoader downLoader:url];
}
- (IBAction)pause:(id)sender {
    [self.downLoader pauseCurrentTask];
}
- (IBAction)cancel:(id)sender {
    [self.downLoader cacelCurrentTask];
}
- (IBAction)cancelClean:(id)sender {
    [self.downLoader cacelAndClean];
}
    


@end

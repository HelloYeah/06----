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
    
@end

@implementation ViewController

    - (XMGDownLoader *)downLoader {
        if (!_downLoader) {
            _downLoader = [XMGDownLoader new];
        }
        return _downLoader;
    }
    
    
- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    
    
    
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

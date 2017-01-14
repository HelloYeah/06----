//
//  XMGDownLoader.h
//  XMGDownLoader
//
//  Created by 小码哥 on 2017/1/8.
//  Copyright © 2017年 xmg. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSUInteger, XMGDownLoadState) {
    XMGDownLoadStatePause,
    XMGDownLoadStateDownLoading,
    XMGDownLoadStatePauseSuccess,
    XMGDownLoadStatePauseFailed
};


// 一个下载器, 对应一个下载任务
// XMGDownLoader -> url
@interface XMGDownLoader : NSObject

/**
 根据URL地址下载资源, 如果任务已经存在, 则执行继续动作
 @param url 资源路径
 */
- (void)downLoader:(NSURL *)url;

/**
 暂停任务
 注意:
 - 如果调用了几次继续
 - 调用几次暂停, 才可以暂停
 - 解决方案: 引入状态
 */
- (void)pauseCurrentTask;

/**
 取消任务
 */
- (void)cacelCurrentTask;

/**
 取消任务, 并清理资源
 */
- (void)cacelAndClean;



/// 数据

@property (nonatomic, assign) XMGDownLoadState state;





@end

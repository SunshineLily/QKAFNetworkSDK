//
//  QKHttpRequestManager+MBExtend.h
//  QKPublic
//
//  Created by wangxiaoli on 2018/5/30.
//  Copyright © 2018年 qk365. All rights reserved.
//

#import "QKHttpRequestManager.h"

typedef void(^ProgressCallback)(float progress);

@interface QKHttpRequestManager (MBExtend)
- (void)netLoading;

- (void)startLoading;

- (ProgressCallback)startFileLoading;

- (void)stopLoading;

- (void)showErrorMsg:(NSString *)msg;
@end

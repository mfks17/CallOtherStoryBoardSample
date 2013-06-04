//
//  UIViewController+UIViewController_iOS4Compatible.m
//  CallOtherStoryBoardSample
//
//  Created by Motohiko FUKASE on 6/5/13.
//  Copyright (c) 2013 mfks17 <mfks17@gmail.com>. All rights reserved.
//

#import "UIViewController+UIViewController_iOS4Compatible.h"
#import <objc/runtime.h>

@implementation UIViewController (UIViewController_iOS4Compatible)

- (void)iOS4_presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag  completion:(void (^)(void))completion {
    
    if ([self respondsToSelector:@selector(presentViewController:animated:completion:)]){
        [self presentViewController:viewControllerToPresent animated:YES completion:nil];
    } else {
        [self presentModalViewController:viewControllerToPresent animated:YES];
    }
}

- (void)callBlock:(void (^)(void))block {
    if(block)
        block();
}

@end

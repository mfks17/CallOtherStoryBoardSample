//
//  UIViewController+UIViewController_iOS4Compatible.h
//  CallOtherStoryBoardSample
//
//  Created by Motohiko FUKASE on 6/5/13.
//  Copyright (c) 2013 mfks17 <mfks17@gmail.com>. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (UIViewController_iOS4Compatible)

- (void)iOS4_presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag  completion:(void (^)(void))completion;

@end

// This guard prevent this file to be compiled in the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#import <UIKit/UIKit.h>

#ifndef AwesomeModuleViewNativeComponent_h
#define AwesomeModuleViewNativeComponent_h

NS_ASSUME_NONNULL_BEGIN

@interface AwesomeModuleView : RCTViewComponentView
@end

NS_ASSUME_NONNULL_END

#endif /* AwesomeModuleViewNativeComponent_h */
#endif /* RCT_NEW_ARCH_ENABLED */

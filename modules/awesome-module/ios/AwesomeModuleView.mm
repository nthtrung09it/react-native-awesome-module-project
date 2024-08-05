#import "AwesomeModuleView.h"


#import "AwesomeModuleComponentDescriptors.h"
#import "AwesomeModuleEventEmitters.h"
#import "AwesomeModuleProps.h"
#import "AwesomeModuleRCTComponentViewHelpers.h"

#import "RCTFabricComponentsPlugins.h"
#import <react_native_awesome_module-Swift.h>
#import <yoga/Yoga.h>

using namespace facebook::react;

@interface AwesomeModuleView () <RCTAwesomeModuleViewViewProtocol>

@end

@implementation AwesomeModuleView {
    UIView *_contentView;
    AwesomeModuleViewShadowNode::ConcreteState::Shared _state;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<AwesomeModuleViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
      self.translatesAutoresizingMaskIntoConstraints = NO;

    static const auto defaultProps = std::make_shared<const AwesomeModuleViewProps>();
    _props = defaultProps;

    _contentView = [[UIView alloc] init];
    [_contentView setBackgroundColor:[UIColor yellowColor]];

    
    self.contentView = _contentView;
  }
    
  return self;
}

Class<RCTComponentViewProtocol> AwesomeModuleViewCls(void)
{
    return AwesomeModuleView.class;
}

- (void)updateLayoutMetrics:(const LayoutMetrics &)layoutMetrics
           oldLayoutMetrics:(const LayoutMetrics &)oldLayoutMetrics
{
    [super updateLayoutMetrics:layoutMetrics oldLayoutMetrics:oldLayoutMetrics];

//
//    const auto newLayoutMetrics = [self _modifiedLayoutMetrics:layoutMetrics];
//    [super updateLayoutMetrics:newLayoutMetrics oldLayoutMetrics:oldLayoutMetrics];
//    
//    _contentView.frame = self.bounds;
//    
//    // Inform the parent that our layout has changed
//    [self invalidateIntrinsicContentSize];
//    [self.superview setNeedsLayout];
//    [self.superview layoutIfNeeded];
}
//
//- (LayoutMetrics)_modifiedLayoutMetrics:(const LayoutMetrics &)layoutMetrics
//{
//    auto newLayoutMetrics = layoutMetrics;
//    newLayoutMetrics.frame.size.height = 400;
//    return newLayoutMetrics;
//}

//- (CGSize)intrinsicContentSize
//{
//    return CGSizeMake(UIViewNoIntrinsicMetric, 400);
//}
//
//- (facebook::react::Size)sizeThatFitsMinimumSize:(facebook::react::Size)minimumSize
//                                    maximumSize:(facebook::react::Size)maximumSize
//{
//    return {maximumSize.width, 400};
//}

- (CGSize)intrinsicContentSize {
  return CGSizeMake(UIViewNoIntrinsicMetric, 400); // Set fixed height
}

- (void)layoutSubviews {
  [super layoutSubviews];

  // Set the fixed height to 400
  CGRect frame = self.frame;
  frame.size.height = 400;
  self.frame = frame;

  // Update the height on the Fabric node
  [self updateFabricLayout];
}

- (void)setFrame:(CGRect)frame {
  frame.size.height = 400; // Ensure height is set to 400
  [super setFrame:frame];
  [self updateFabricLayout];
}

- (void)updateFabricLayout {
//    [self ensureBoundingBox];

//  if (self.reactSuperview) {
//    facebook::react::LayoutContext layoutContext = {};
//    auto yogaNode = self.yogaNode;
//    if (yogaNode) {
//      yogaNode->setStyle({.height = 400});
//    }
//  }
}


@end

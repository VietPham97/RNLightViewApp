//
//  Bulb.m
//  RNLightViewApp
//
//  Created by Viet Pham on 2020-08-24.
//

#import "React/RCTViewManager.h"

@interface RCT_EXTERN_MODULE(Bulb, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(isOn, BOOL)

RCT_EXPORT_VIEW_PROPERTY(onStatusChange, RCTDirectEventBlock)

@end

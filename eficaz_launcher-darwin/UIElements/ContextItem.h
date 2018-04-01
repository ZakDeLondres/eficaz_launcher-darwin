//
//  ContextItem.h
//  eficaz_launcher-darwin
//
//  Created by Zakariyah Abdel-Illah on 1/4/18.
//  Copyright © 2018 AbsVFX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <env/context.h>

@interface ContextItem : NSObject
- (eficaz_context *) eficazLibContextItem;
- (NSString *) eficazContextName;
@end

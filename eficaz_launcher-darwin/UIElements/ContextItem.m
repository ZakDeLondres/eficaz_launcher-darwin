//
//  ContextItem.m
//  eficaz_launcher-darwin
//
//  Created by Zakariyah Abdel-Illah on 1/4/18.
//  Copyright © 2018 AbsVFX. All rights reserved.
//

#import "ContextItem.h"

@implementation ContextItem
static eficaz_context *eficazLibContextItem;
static NSString *eficazContextName;

- (eficaz_context **)eficazLibContextItem {
    return &eficazLibContextItem;
}

- (NSString *)eficazContextName {
    return eficazContextName;
}

- (id)init {
    self = [super init];
    
    eficaz_context *testContext = (eficaz_context *) *create_test_context();
    eficaz_project *project = testContext->project;
    
    eficazContextName = [NSString stringWithCString:project->name];
    
    return self;
}
@end

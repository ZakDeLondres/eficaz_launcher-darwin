//
//  ContextOutlineViewDataSource.m
//  eficaz_launcher-darwin
//
//  Created by Zakariyah Abdel-Illah on 1/4/18.
//  Copyright © 2018 AbsVFX. All rights reserved.
//

#import "ContextOutlineViewDataSource.h"
#import "ContextItem.h"

@implementation ContextOutlineViewDataSource
static NSMutableArray *datasource;

- (id)init {
    self = [super init];
    
    ContextItem *fakeContextItem = [[ContextItem alloc] init];
    datasource = [[NSMutableArray alloc] init];
    [datasource addObject:fakeContextItem];
    NSLog(@"ADD OBJECT");
    
    //datasource = [NSArray arrayWithObjects:@"Test", @"workable?", @"iDontThinkSo", nil];
    return self;
}

- (id)outlineView:(NSOutlineView *)outlineView child:(NSInteger)index ofItem:(id)item
{
    NSLog(@"LOG REQ");
    return [datasource objectAtIndex:index];
}

- (BOOL)outlineView:(NSOutlineView *)outlineView isItemExpandable:(id)item
{
    return NO;
}

- (NSInteger)outlineView:(NSOutlineView *)outlineView numberOfChildrenOfItem:(id)item
{
    return [datasource count];
}

- (id)outlineView:(NSOutlineView *)outlineView objectValueForTableColumn:(NSTableColumn *)tableColumn byItem:(ContextItem *)item
{
    return [item eficazContextName];
}
@end

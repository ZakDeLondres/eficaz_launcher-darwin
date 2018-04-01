//
//  ContextListOutlineView.m
//  eficaz_launcher-darwin
//
//  Created by Zakariyah Abdel-Illah on 1/4/18.
//  Copyright © 2018 AbsVFX. All rights reserved.
//

#import "ContextListOutlineView.h"
#import "ContextOutlineViewDataSource.h"

@implementation ContextListOutlineView

static ContextOutlineViewDataSource *dataSource;

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    // Drawing code here.
}

- (void)awakeFromNib {
    dataSource = [[ContextOutlineViewDataSource alloc] init];
    [self setDelegate:dataSource];
    [self setDataSource:dataSource];
    NSLog(@"Datasource SET");
}

@end

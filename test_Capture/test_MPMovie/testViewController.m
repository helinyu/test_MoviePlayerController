//
//  testViewController.m
//  test_Capture
//
//  Created by felix on 2016/10/26.
//  Copyright © 2016年 felix. All rights reserved.
//

#import "testViewController.h"

@interface testViewController ()

- (instancetype)initWithContentURL:(NSURL *)url NS_DESIGNATED_INITIALIZER;

@property (nonatomic, copy) NSURL *contentURL;

// Indicates if a movie should automatically start playback when it is likely to finish uninterrupted based on e.g. network conditions. Defaults to YES.
@property (nonatomic) BOOL shouldAutoplay;

// Determines if the movie is presented in the entire screen (obscuring all other application content). Default is NO.
// Setting this property to YES before the movie player's view is visible will have no effect.
@property (nonatomic, getter=isFullscreen) BOOL fullscreen;
- (void)setFullscreen:(BOOL)fullscreen animated:(BOOL)animated;





@end

@implementation testViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

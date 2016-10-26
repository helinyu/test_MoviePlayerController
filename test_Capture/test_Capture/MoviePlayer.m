//
//  MoviePlayer.m
//  test_Capture
//
//  Created by felix on 2016/10/26.
//  Copyright © 2016年 felix. All rights reserved.
//

#import "MoviePlayer.h"
#import <MediaPlayer/MediaPlayer.h>

//MPMoviePlayerViewController
//MPMoviePlayerController

@interface MoviePlayer ()

@property (nonatomic) MPMoviePlayerController *moviePlayer;
@property (weak, nonatomic) IBOutlet UIView *moviePlayerSuperView;


@end

@implementation MoviePlayer
- (void)initVariables {
    if (self.navigationController) {
        self.navigationItem.title = @"视频播放";
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initVariables];
    [self initUI];
}

- (void)initUI{
    
    [self.view layoutIfNeeded]; //加载视图的时候就执行这一句先，否则就是（1000.1000）的大小，
    
    if (self.navigationController) {
        UIBarButtonItem *rightFirstItem = [[UIBarButtonItem alloc] initWithTitle:@"获取信息" style:UIBarButtonItemStylePlain target:self action:@selector(getInfoAtNowtime:)];
        UIBarButtonItem *rightPlayerSecondItem = [[UIBarButtonItem alloc] initWithTitle:@"播放" style:UIBarButtonItemStylePlain target:self action:@selector(onPlayer:)];
        UIBarButtonItem *rightPauseItem = [[UIBarButtonItem alloc] initWithTitle:@"暂停" style:UIBarButtonItemStylePlain target:self action:@selector(onPause:)];

        self.navigationItem.rightBarButtonItems = @[rightFirstItem,rightPlayerSecondItem,rightPauseItem];
    }
    self.moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL URLWithString:@"http://localhost:8000/movie/test.mp4"]];
//    self.moviePlayer = [MPMoviePlayerController new];
//    self.moviePlayer.contentURL = [NSURL URLWithString:@"http://localhost:8000/movie/test.mp4"];
    [self.moviePlayer.view setFrame:self.moviePlayerSuperView.bounds];
    [self.moviePlayerSuperView addSubview:self.moviePlayer.view];
    
    _moviePlayer.shouldAutoplay = false;
    _moviePlayer.repeatMode = MPMovieRepeatModeNone;
    _moviePlayer.controlStyle = MPMovieControlStyleNone;

    [self.moviePlayer prepareToPlay];
    //如果没有是这个方法，play方法执行的时候就会自动调用
}

#pragma mark -- UIBarbuttonItem

- (void)onPause:(UIBarButtonItem *) item {
    [self.moviePlayer pause];
}

- (void)onPlayer:(UIBarButtonItem *)item {
    [self.moviePlayer play];
}

- (void)getInfoAtNowtime:(UIBarButtonItem *)item {
    _moviePlayer.allowsAirPlay = true;
    BOOL airPlayFlag = [_moviePlayer isAirPlayVideoActive];
    NSTimeInterval endTime = _moviePlayer.endPlaybackTime;
    NSTimeInterval PlaybackTime = _moviePlayer.initialPlaybackTime;
    CGSize nataulSize = _moviePlayer.naturalSize;
    NSTimeInterval playabletime = _moviePlayer.playableDuration;
    NSTimeInterval duration = _moviePlayer.duration;
    MPMovieSourceType  sourceType = _moviePlayer.movieSourceType;
    MPMovieMediaTypeMask typeMask = _moviePlayer.movieMediaTypes;
    BOOL readForDisplay = _moviePlayer.readyForDisplay;
    MPMovieScalingMode scalingMode = _moviePlayer.scalingMode;
    //    @property (nonatomic, getter=isFullscreen) BOOL fullscreen;
    //    - (void)setFullscreen:(BOOL)fullscreen animated:(BOOL)animated;
    BOOL isFullScreen = [_moviePlayer isFullscreen];
    _moviePlayer.shouldAutoplay = true;
    _moviePlayer.repeatMode = MPMovieRepeatModeNone;
    _moviePlayer.controlStyle = MPMovieControlStyleNone;
    MPMovieLoadState loadState = _moviePlayer.loadState;
    MPMoviePlaybackState *playBackState = _moviePlayer.playbackState;
    UIView *backgroudView = _moviePlayer.backgroundView;
    UIView *playView = _moviePlayer.view;
    NSURL *contentNSURL = _moviePlayer.contentURL;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

//
//  ViewController.m
//  test_Capture
//
//  Created by felix on 2016/10/26.
//  Copyright © 2016年 felix. All rights reserved.
//

#import "ViewController.h"
#import "MoviePlayer.h"
#import <AVKit/AVKit.h>

#import <MediaPlayer/MediaPlayer.h>

@interface ViewController ()

@end


#define vedioStoryboard [UIStoryboard storyboardWithName:@"Video" bundle:nil]
#define vedioInstance(Class) [vedioStoryboard instantiateViewControllerWithIdentifier:NSStringFromClass([Class class])]

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)onMoviePlayerClicked:(id)sender {
    MoviePlayer *mp = vedioInstance(MoviePlayer);
    [self.navigationController pushViewController:mp animated:true];
}

- (IBAction)onMoviePlayerViewControllerClicked:(id)sender {
    MPMoviePlayerViewController *mpVC = [[MPMoviePlayerViewController alloc] initWithContentURL:[NSURL URLWithString:@"http://localhost:8000/movie/test.mp4" ]];
//    mpVC.moviePlayer =  read only
//    [self.navigationController pushViewController:mpVC animated:true];
//    尽可能的使用present的方式进行显示出来
    mpVC.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:nil];
//    [self presentViewController:mpVC animated:true completion:^{}];
    [self.navigationController pushViewController:mpVC animated:true];
}

//
//- (void)presentMoviePlayerViewControllerAnimated:(MPMoviePlayerViewController *)moviePlayerViewController NS_DEPRECATED_IOS(3_2, 9_0, "Use AVPlayerViewController in AVKit.") __TVOS_PROHIBITED;
//- (void)dismissMoviePlayerViewControllerAnimated NS_DEPRECATED_IOS(3_2, 9_0, "Use AVPlayerViewController in AVKit.") __TVOS_PROHIBITED;

@end

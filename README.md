# test_MoviePlayerController
test ios MPMoviewPlayer
这个项目用于测试 MPMoviePlayerController 以及 MoviePlayerViewController 的相关使用，这个库里面的内容基本上是2.0 ~9.0,
在ios 9以上的 有了一个AVKit的库进行实现这个内容，AVKit如何使用，还有待测试。

注意：
1、里面的视频的链接地址改为自己获取视频的链接地址:
 MPMoviePlayerViewController *mpVC = [[MPMoviePlayerViewController alloc] initWithContentURL:[NSURL URLWithString:@"http://localhost:8000/movie/test.mp4" ]];

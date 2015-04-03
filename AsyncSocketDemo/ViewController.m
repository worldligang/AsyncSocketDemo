//
//  ViewController.m
//  AsyncSocketDemo
//
//  Created by ligang on 15/4/3.
//  Copyright (c) 2015年 ligang. All rights reserved.
//

#import "ViewController.h"
#import "LGSocketServe.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    LGSocketServe *socketServe = [LGSocketServe sharedSocketServe];
    //socket连接前先断开连接以免之前socket连接没有断开导致闪退
    [socketServe cutOffSocket];
    socketServe.socket.userData = SocketOfflineByServer;
    [socketServe startConnectSocket];
    
    //发送消息 @"hello world"只是举个列子，具体根据服务端的消息格式
    [socketServe sendMessage:@"hello world"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

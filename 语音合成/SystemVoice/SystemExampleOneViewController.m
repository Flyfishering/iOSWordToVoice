//
//  SystemExampleOneViewController.m
//  语音合成
//
//  Created by mac on 16/8/30.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "SystemExampleOneViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface SystemExampleOneViewController ()
{
    // 合成器 控制播放，暂停
    AVSpeechSynthesizer *_synthesizer;
    // 实例化说话的语言，说中文、英文
    AVSpeechSynthesisVoice *_voice;
}
@property (weak, nonatomic) IBOutlet UILabel *speechText;
@property (weak, nonatomic) IBOutlet UIButton *playButton;


@end

@implementation SystemExampleOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    _voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"zh_CN"];
    _synthesizer = [[AVSpeechSynthesizer alloc] init];

}
- (IBAction)stop:(id)sender {
    //停止说话
    [_synthesizer stopSpeakingAtBoundary:AVSpeechBoundaryWord];
}

- (IBAction)play:(id)sender {
    // 朗诵文本框中的内容
    // 实例化发声的对象，及朗读的内容
    //合成器的说话内容 可以控制说话的语速 等
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:_speechText.text];
    utterance.voice = _voice;
    [_synthesizer speakUtterance:utterance];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  EnterBodyPartViewController.m
//  WordPlay
//
//  Created by Wade Sellers on 9/30/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import "EnterBodyPartViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterBodyPartViewController ()
@property (weak, nonatomic) IBOutlet UITextField *enterBodyPartTextField;

@end

@implementation EnterBodyPartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

- (BOOL) shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([identifier isEqualToString:@"bodyPartSegue"]) {
        if ([self.enterBodyPartTextField.text isEqualToString:@" "] || self.enterBodyPartTextField.text.length <= 0){
            return NO;
        }
        else
        {
            return YES;
        }
    }
    return NO;
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterAdjectiveViewController *adjectiveViewController = segue.destinationViewController;
    adjectiveViewController.verb = self.verb;
    adjectiveViewController.name = self.name;
    adjectiveViewController.curseWord = self.curseWord;
    adjectiveViewController.bodyPart = self.enterBodyPartTextField.text;

    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end

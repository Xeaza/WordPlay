//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by Wade Sellers on 9/30/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterCurseWordViewController.h"

@interface EnterVerbViewController ()

@property (weak, nonatomic) IBOutlet UITextField *enterVerbTextField;

@end

@implementation EnterVerbViewController

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
    if ([identifier isEqualToString:@"verbSegue"]) {
        if ([self.enterVerbTextField.text isEqualToString:@" "] || self.enterVerbTextField.text.length <= 0){
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
    EnterCurseWordViewController *curseWordViewController = segue.destinationViewController;
    curseWordViewController.verb = self.enterVerbTextField.text;
    curseWordViewController.name = self.name;

    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end

//
//  EnterCurseWordViewController.m
//  WordPlay
//
//  Created by Wade Sellers on 9/30/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import "EnterCurseWordViewController.h"
#import "EnterBodyPartViewController.h"

@interface EnterCurseWordViewController ()

@property (weak, nonatomic) IBOutlet UITextField *enterCurseWordTextField;

@end

@implementation EnterCurseWordViewController

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
    if ([identifier isEqualToString:@"curseSegue"]) {
        if ([self.enterCurseWordTextField.text isEqualToString:@" "] || self.enterCurseWordTextField.text.length <= 0){
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
    EnterBodyPartViewController *bodyPartViewController = segue.destinationViewController;
    bodyPartViewController.verb = self.verb;
    bodyPartViewController.name = self.name;
    bodyPartViewController.curseWord = self.enterCurseWordTextField.text;

    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end

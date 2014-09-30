//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Taylor Wright-Sanson on 9/30/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"

@interface EnterAdjectiveViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

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
    if ([identifier isEqualToString:@"adjectiveSegue"]) {
        if ([self.adjectiveTextField.text isEqualToString:@" "] || self.adjectiveTextField.text.length <= 0){
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
    ResultsViewController *resultsViewController = segue.destinationViewController;
    resultsViewController.adjective = self.adjectiveTextField.text;
    resultsViewController.name = self.name;

    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end

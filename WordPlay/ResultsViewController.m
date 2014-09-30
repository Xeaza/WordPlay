//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Taylor Wright-Sanson on 9/30/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *story = [NSString stringWithFormat:@"One day, %@ was %@ into Mobile Makers when he noticed how %@ %@ his %@ looked.  He looked around at everyone else and just figured, they've got it worse.", self.name, self.verb, self.curseWord, self.adjective, self.bodyPart];

    self.resultsTextView.text = story;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

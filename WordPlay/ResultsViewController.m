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
    // Appending 'ing' to verb user entered
    NSString *verbING = [self.verb stringByAppendingString:@"-ing"];

    // This is our Mad Lib story including user input
    NSString *story = [NSString stringWithFormat:@"One day, %@ was %@ into Mobile Makers when he/she noticed how %@ %@ his %@ looked. He looked around at everyone else and just figured, they've got it worse.", self.name, verbING, self.curseWord, self.adjective, self.bodyPart];

    // This is a regex string the holds the patterns, in this case words we would like to find
    NSString *regexString = [NSString stringWithFormat:@"(%@|%@|%@|%@|%@)", self.name, verbING, self.curseWord, self.adjective, self.bodyPart];

    // Convert our story which is an NSString into an NSMutableAttributedString
    NSMutableAttributedString *mutableAttributedString = [[NSMutableAttributedString alloc] initWithString:story];

    // Create a NSRegularExpression using the regex string [read pattern] we created above
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regexString options:kNilOptions error:nil];

    // The range we would like to look through is the length of the whole story
    NSRange range = NSMakeRange(0,story.length);

    // enumerate through the story to find any matches that are in our regex pattern
    [regex enumerateMatchesInString:story options:kNilOptions range:range usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {

        NSRange subStringRange = [result rangeAtIndex:1];

        UIFont *font = [UIFont fontWithName:@"Helvetica-Bold" size:13.0f];

        [mutableAttributedString addAttribute:NSFontAttributeName value:font range:subStringRange];
    }];

    self.resultsTextView.attributedText = mutableAttributedString;
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

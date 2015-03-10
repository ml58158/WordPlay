//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Matt Larkin on 3/10/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//


#import "ResultsViewController.h"


@interface ResultsViewController ()

@property (strong, nonatomic) IBOutlet UITextView *resultsTextView;



@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];


self.resultsTextView.text = [NSString stringWithFormat:@"%@ got ate by %@ zombies!", self.name, self.adjective];
    NSLog(self.resultsTextView.text);
}




@end

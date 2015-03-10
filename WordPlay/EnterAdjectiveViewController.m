//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Matt Larkin on 3/10/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"

@interface EnterAdjectiveViewController ()

@property (strong, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}




//Segue to next view controller
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ResultsViewController *resultsViewController = segue.destinationViewController;
    resultsViewController.name = self.name;
    resultsViewController.adjective = self.adjectiveTextField.text;

}

 //Checks to see if the name text field is blank.
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if (self.adjectiveTextField.text.length == 0) {
        return NO; }
    else {
        return YES;
        }
}
@end

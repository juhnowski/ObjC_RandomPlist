//
//  ViewController.m
//  RandomPlist
//
//  Created by SBT on 01/05/2018.
//  Copyright © 2018 SBT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)RandomPlist:(id)sender {
    NSString *fileContents = [[NSBundle mainBundle] pathForResource:@"Lists" ofType:@"plist"];
    NSDictionary *wordDIC = [[NSDictionary alloc] initWithContentsOfFile:fileContents];
    
    NSMutableArray *items = [wordDIC valueForKey:@"List"];
    int RandomGen = arc4random() % [items count];
    NSString *word = [ items objectAtIndex:RandomGen];
    [self.Label setText:[[NSString alloc] initWithFormat:@"%@", word]];
}
@end

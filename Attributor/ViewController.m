//
//  ViewController.m
//  Attributor
//
//  Created by Dimitar Danailov on 7/19/17.
//  Copyright © 2017 Dimitar Danailov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *body;
@property (weak, nonatomic) IBOutlet UILabel *headline;

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

- (IBAction)outlineBodySelection
{
    [self.body.textStorage addAttributes: @{NSStrokeWidthAttributeName : @-3,
                                            NSStrokeWidthAttributeName: [UIColor blackColor] }
                                   range:self.body.selectedRange];
}
- (IBAction)unoutlineBodySelection
{
    [self.body.textStorage removeAttribute:NSStrokeWidthAttributeName
                                     range:self.body.selectedRange];
}

- (IBAction)changeBodySelectionColorToMatchBackgroundOfButton:(UIButton *)sender {
    
    [self.body.textStorage addAttribute:NSForegroundColorAttributeName
                                  value:sender.backgroundColor
                                  range:self.body.selectedRange];
}


@end

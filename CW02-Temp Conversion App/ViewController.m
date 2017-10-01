//
//  ViewController.m
//  CW02-Temp Conversion App
//
//  Created by Ada  on 9/29/17.
//  Copyright © 2017 cop2654.mdc.edu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmtControl;
@property (weak, nonatomic) IBOutlet UISlider *sliderTemperature;
@property (weak, nonatomic) IBOutlet UILabel *lblFromTemperature;
@property (weak, nonatomic) IBOutlet UILabel *lblToTemperature;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sliderTemperature.value = 50;
    self.lblFromTemperature.text = @"Freeze";
    self.lblToTemperature.text = @"Boil";
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tempConverter:(id)sender {
    // variables to capture the slider. Will also be Celsius information.
    float sliderPartitionsInFloat = self.sliderTemperature.value;
    int sliderPartitionsInInt = (int)sliderPartitionsInFloat;
    int fahrenheit = (int)(((sliderPartitionsInInt * 9)/5) + 32);
    
    if (self.sgmtControl.selectedSegmentIndex == 0){
        // displaying centigrades to fahrenheit
        self.lblFromTemperature.text = [NSString stringWithFormat:@"%d C", sliderPartitionsInInt];
        self.lblToTemperature.text = [NSString stringWithFormat:@"%d F", fahrenheit];
    } else if (self.sgmtControl.selectedSegmentIndex == 1){
        // displaying centigrades to kelvin
        self.lblFromTemperature.text = [NSString stringWithFormat:@"%d C", sliderPartitionsInInt];
        self.lblToTemperature.text = [NSString stringWithFormat:@"%d K", sliderPartitionsInInt + 273];
    } else if (self.sgmtControl.selectedSegmentIndex == 2){
        // displaying fahrenheit to kelvin
        self.lblFromTemperature.text = [NSString stringWithFormat:@"%d F", fahrenheit];
        self.lblToTemperature.text = [NSString stringWithFormat:@"%d K", sliderPartitionsInInt + 273];
    }
}
@end

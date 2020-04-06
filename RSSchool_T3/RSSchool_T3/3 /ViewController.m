#import "ViewController.h"

@implementation ViewController

#pragma mark -

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.colorView = [[UIView alloc] init];
    self.resLabel = [[UILabel alloc] init];
    self.rLabel = [[UILabel alloc] init];
    self.gLabel = [[UILabel alloc] init];
    self.bLabel = [[UILabel alloc] init];
    self.rField = [[UITextField alloc] init];
    self.gField = [[UITextField alloc] init];
    self.bField = [[UITextField alloc] init];
    self.button = [[UIButton alloc] init];

    self.view.accessibilityIdentifier = @"mainView";
    
    self.rLabel.text = @"RED";
    self.rLabel.accessibilityIdentifier = @"labelRed";
  
    self.rField.placeholder = @"0..255";
    self.rField.accessibilityIdentifier = @"textFieldRed";
    self.rField.borderStyle = UITextBorderStyleRoundedRect;
    [self.rField addTarget:self action:@selector(textFieldBeginEditing:) forControlEvents:UIControlEventEditingDidBegin];
    [self.view addSubview:self.rField];

    self.gLabel.text = @"GREEN";
    self.gLabel.accessibilityIdentifier = @"labelGreen";
    
    self.gField.accessibilityIdentifier = @"textFieldGreen";
    self.gField.placeholder = @"0..255";
    self.gField.borderStyle = UITextBorderStyleRoundedRect;
    [self.gField addTarget:self action:@selector(textFieldBeginEditing:) forControlEvents:UIControlEventEditingDidBegin];
    [self.view addSubview:self.gField];
    
    self.bLabel.text = @"BLUE";
    self.bLabel.accessibilityIdentifier = @"labelBlue";
    
    self.bField.placeholder = @"0..255";
    self.bField.accessibilityIdentifier = @"textFieldBlue";
    self.bField.borderStyle = UITextBorderStyleRoundedRect;
    [self.bField addTarget:self action:@selector(textFieldBeginEditing:) forControlEvents:UIControlEventEditingDidBegin];
    [self.view addSubview:self.bField];
    
    [self.button setTitle:@"Process" forState: UIControlStateNormal];
    [self.button setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    self.button.accessibilityIdentifier = @"buttonProcess";
    
    self.resLabel.text = [NSString stringWithFormat:@"Color"];
    self.resLabel.accessibilityIdentifier = @"labelResultColor";
    
    self.colorView.translatesAutoresizingMaskIntoConstraints = NO;
    self.resLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.rLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.gLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.bLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.rField.translatesAutoresizingMaskIntoConstraints = NO;
    self.gField.translatesAutoresizingMaskIntoConstraints = NO;
    self.bField.translatesAutoresizingMaskIntoConstraints = NO;
    self.button.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:self.colorView];
    [self.view addSubview:self.resLabel];
    [self.view addSubview:self.rLabel];
    [self.view addSubview:self.gLabel];
    [self.view addSubview:self.bLabel];
    [self.view addSubview:self.rField];
    [self.view addSubview:self.gField];
    [self.view addSubview:self.bField];
    [self.view addSubview:self.button];
    
    self.colorView.backgroundColor = [UIColor clearColor];
    self.colorView.accessibilityIdentifier = @"viewResultColor";
    [self.colorView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:0].active = YES;
    [self.colorView.leadingAnchor constraintEqualToAnchor:_resLabel.trailingAnchor constant:0].active = YES;
    [self.colorView.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor constant:-36].active = YES;
    [self.colorView.heightAnchor constraintEqualToConstant:40].active = YES;
    
    
    [self.resLabel.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:5].active = YES;
    [self.resLabel.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor constant:18].active = YES;
    [self.resLabel.widthAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.widthAnchor multiplier:0.25].active = YES;
    [self.resLabel.heightAnchor constraintEqualToConstant:30].active = YES;
    
    [self.rLabel.topAnchor constraintEqualToAnchor:self.colorView.bottomAnchor constant:30].active = YES;
    [self.rLabel.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor constant:18].active = YES;
    [self.rLabel.widthAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.widthAnchor multiplier:0.15].active = YES;
    [self.rLabel.heightAnchor constraintEqualToConstant:30].active = YES;
    
    [self.rField.topAnchor constraintEqualToAnchor:self.colorView.bottomAnchor constant:30].active = YES;
    [self.rField.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor constant:-36].active = YES;
    [self.rField.leadingAnchor constraintEqualToAnchor:self.rLabel.trailingAnchor].active = YES;
    [self.rField.heightAnchor constraintEqualToConstant:30].active = YES;
    
    [self.gLabel.topAnchor constraintEqualToAnchor:self.rLabel.bottomAnchor constant:30].active = YES;
    [self.gLabel.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor constant:18].active = YES;
    [self.gLabel.widthAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.widthAnchor multiplier:0.15].active = YES;
    [self.gLabel.heightAnchor constraintEqualToConstant:30].active = YES;
    
    [self.gField.topAnchor constraintEqualToAnchor:self.rField.bottomAnchor constant:30].active = YES;
    [self.gField.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor constant:-36].active = YES;
    [self.gField.leadingAnchor constraintEqualToAnchor:self.gLabel.trailingAnchor].active = YES;
    [self.gField.heightAnchor constraintEqualToConstant:30].active = YES;
    
    [self.bLabel.topAnchor constraintEqualToAnchor:self.gLabel.bottomAnchor constant:30].active = YES;
    [self.bLabel.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor constant:18].active = YES;
    [self.bLabel.widthAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.widthAnchor multiplier:0.15].active = YES;
    [self.bLabel.heightAnchor constraintEqualToConstant:30].active = YES;
    
    [self.bField.topAnchor constraintEqualToAnchor:self.gField.bottomAnchor constant:30].active = YES;
    [self.bField.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor constant:-36].active = YES;
    [self.bField.leadingAnchor constraintEqualToAnchor:self.bLabel.trailingAnchor].active = YES;
    [self.bField.heightAnchor constraintEqualToConstant:30].active = YES;
    
    [self.button.topAnchor constraintEqualToAnchor:self.bField.bottomAnchor constant:30].active = YES;
    [self.button.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor constant:0].active = YES;
    [self.button.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor].active = YES;
    [self.button.heightAnchor constraintEqualToConstant:30].active = YES;
    
}

- (void)buttonTapped:(UIButton *)sender {
    int red = self.rField.text.intValue;
    int green = self.gField.text.intValue;
    int blue = self.bField.text.intValue;
    
    NSCharacterSet *notDecimalDigitSet = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    
    if (self.bField.text.length != 0 && self.rField.text.length != 0 && self.gField.text.length != 0 && [self.rField.text rangeOfCharacterFromSet:notDecimalDigitSet].location == NSNotFound && [self.gField.text rangeOfCharacterFromSet:notDecimalDigitSet].location == NSNotFound && [self.bField.text rangeOfCharacterFromSet:notDecimalDigitSet].location == NSNotFound) {
           
           if (red >= 0 && red <256 && green >= 0 && green < 256 && blue >= 0 && blue < 256) {
               self.colorView.backgroundColor = [UIColor colorWithRed:((float)red/255) green:((float)green/255) blue:  ((float)blue/255) alpha:1];
               NSString *hex = [[NSString alloc] initWithFormat:@"0x%02X%02X%02X", red, green, blue];
               self.resLabel.text = hex;
           } else {
               self.resLabel.text = @"Error";
               self.colorView.backgroundColor = [UIColor clearColor];
           }
       }  else {
           self.resLabel.text = @"Error";
           self.colorView.backgroundColor = [UIColor clearColor];
       }
       [self.view endEditing:YES];
       self.rField.text = @"";
       self.gField.text = @"";
       self.bField.text = @"";
}

- (void)textFieldBeginEditing:(UIButton *)sender {
    if (![self.resLabel.text isEqualToString:@"Color"]) {
         self.resLabel.text = @"Color";
         self.colorView.backgroundColor = [UIColor clearColor];
    }
}

@end

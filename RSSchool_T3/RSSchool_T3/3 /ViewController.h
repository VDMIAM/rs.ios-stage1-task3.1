#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (void)buttonTapped:(UIButton *)sender;
- (void)textFieldBeginEditing:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIView *colorView;
@property (strong, nonatomic) IBOutlet UILabel *resLabel;
@property (strong, nonatomic) IBOutlet UILabel *rLabel;
@property (strong, nonatomic) IBOutlet UILabel *gLabel;
@property (strong, nonatomic) IBOutlet UILabel *bLabel;
@property (strong, nonatomic) IBOutlet UITextField *rField;
@property (strong, nonatomic) IBOutlet UITextField *gField;
@property (strong, nonatomic) IBOutlet UITextField *bField;
@property (strong, nonatomic) IBOutlet UIButton *button;
@end


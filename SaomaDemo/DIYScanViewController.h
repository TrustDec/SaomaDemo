#import <LBXScanViewController.h>

@interface DIYScanViewController : LBXScanViewController

@property (nonatomic,copy) void (^SendBlock)(NSString *code);

@end

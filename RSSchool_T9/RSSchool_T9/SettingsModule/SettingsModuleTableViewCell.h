
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SettingsModuleTableViewCell : UITableViewCell

@property (nonatomic, strong) UIView *content;
@property (nonatomic) NSInteger number;
@property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UILabel *drawLabel;
@property (nonatomic, strong) UILabel *strokeLabel;
@property (nonatomic, strong) UILabel *colorSubLabel;
@property (nonatomic, strong) UISwitch *switcher;
@property (nonatomic, strong) NSString *string;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic) BOOL state;
@end

NS_ASSUME_NONNULL_END

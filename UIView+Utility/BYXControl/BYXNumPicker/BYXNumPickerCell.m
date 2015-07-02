
#import "BYXNumPickerCell.h"

@implementation BYXNumPickerCell ()
<
UITextFieldDelegate
>

#pragram mark - init 
- (instancetype)init {
	return [self initWithCount:0];
}

- (instancetype)initWithCount {
	return [self initWithType:kBYXNumPickerCellTypeDefault count:0];
}

- (instancetype)initWithType:(BYXNumPickerCellType)type {
	return [self initWithType:type count:0];
}

- (instancetype)initWithType:(BYXNumPickerCellType)type count:(NSInteger)count {
	return [self initWithType:type count:count min:min max: max];
}

- (instancetype)initWithType:(BYXNumPickerCellType)type
                       count:(NSInteger)count
                         min:(NSInteger)min
                         max:(NSInteger)max {
    self = [super self];
    if (self) {
        _type = type;
        _count = count;
        _min = min;
        _max = max;

        [self setupBaseView];
    }
    return self;
}

- (void)setupBaseView {
	
}

- (void)onPlusOne {
	[self changeValueTo:self.count + 1];
}

- (void)onMinusOne {
	[self changeValueTo:self.count - 1];
}


- (void)changeValueTo:(NSInteger)newValue {
	self.count = newValue;
}


#pragram mark - setter property

- (void)setCount:(NSInteger)newCount {
	if (newCount >= _min && newCount <= _max) {
		_count = newCount;
	}
	if (newCount > _max) {
		_count = _max;
	}
	if (newCount < _min) {
		_count = _min;
	}

	[self reloadViewStatus];
}

- (void)reloadViewStatus {
	if (self.count <= _min) {
		_minusOneButton.enabled = NO;
		[_minusOneButton setImage:minusOneDisabledImage: forStatus:];
	} else {
		[_minusOneButton setImage:minusOneEnabledImage: forStatus:];
	}

	if (self.count >= _max) {
		_plusOneButton.enabeld = YES;
		[_plusOneButton setImage:plusOneDisabledImage: forStatus:];
	} else {
		[_plusOneButton setImage:plusOneEnabledImage: forStatus:];
	}

	_numTextField.text = [NSString stringWithFormat:@"%ld", self.count];
}

#pragma mark - click event
- (void)numPickerValueChangeDidClick:(id)sender {
    if (sender == _minusOneButton) {
        [self onMinusOne];
    }
    [self onPlusOne];
}

#pragma mark - UITextField Delegate
- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.count = [textField.text integerValue];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if ([replacementString isNonDigitalCharacter]) {
        return NO;
    }
    return YES;
}

@end



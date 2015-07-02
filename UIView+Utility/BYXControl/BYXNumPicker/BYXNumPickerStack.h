enum BYXNumPickerCellType : NSInteger {
	kBYXNumPickerCellTypeDefault,
	kBYXNumPickerCellTypeImage,
} BYXNumPickerCellType;


@interface BYXNumPickerCell {
	
}
// Property
@property(nonatomic, assign) NSInteger count;
@property(nonatomic, assign) NSInteger min;
@property(nonatomic, assign) NSInteger max;
@property(nonatomic, readonly, assign) BYXNumPickerCellType type;


// Method
- (instancetype)init;
- (instancetype)initWithCount;
- (initWithType:(BYXNumPickerCellType);
- (initWithType:(BYXNumPickerCellType) count:(NSInteger)count;

- (void)onPlusOne;
- (void)onMinusOne;

@end
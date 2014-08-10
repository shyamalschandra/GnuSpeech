//  Copyright 1991-2012 David R. Hill, Leonard Manzara, Craig Schock

#import "GSSuffix.h"

@implementation GSSuffix
{
    NSString *_suffix;
    NSString *_replacementString;
    NSString *_appendedPronunciation;
}

- (id)initWithSuffix:(NSString *)suffix replacementString:(NSString *)replacementString appendedPronunciation:(NSString *)appendedPronunciation;
{
    if ((self = [super init])) {
        _suffix = suffix;
        _replacementString = replacementString;
        _appendedPronunciation = appendedPronunciation;
    }

    return self;
}

#pragma mark - Debugging

- (NSString *)description;
{
    return [NSString stringWithFormat:@"<%@: %p> suffix: %@, replacementString: %@, appendedPronunciation: %@",
            NSStringFromClass([self class]), self, _suffix, _replacementString, _appendedPronunciation];
}

#pragma mark -

- (NSString *)suffix;
{
    return _suffix;
}

- (NSString *)replacementString;
{
    return _replacementString;
}

- (NSString *)appendedPronunciation;
{
    return _appendedPronunciation;
}

@end

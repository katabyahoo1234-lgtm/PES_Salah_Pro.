#import <UIKit/UIKit.h>

// 1. تسديد ذكي للمرمى
%hook BallPhysics
- (float)shotAccuracy { return 1.0f; } 
- (float)autoAimStrength { return 0.98f; } 
%end

// 2. لون ملعب أخضر داكن ملكي
%hook PitchRenderer
- (void)setTurfColor:(id)color {
    %orig([UIColor colorWithRed:0.0 green:0.25 blue:0.05 alpha:1.0]);
}
%end

// 3. اللاعبين (شورت فقط)
%hook PlayerModel
- (void)setJerseyVisible:(BOOL)visible { %orig(NO); } 
- (void)setShortsVisible:(BOOL)visible { %orig(YES); }
%end

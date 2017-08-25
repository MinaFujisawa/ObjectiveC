//
//  NSString+PigaLatin.m
//  PigLatin
//
//  Created by MINA FUJISAWA on 2017/08/25.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "NSString+PigaLatin.h"

@implementation NSString (PigaLatin)
-(NSString *)stringByPigLatinization {
    NSString* result;
    NSCharacterSet* vowelset = [NSCharacterSet characterSetWithCharactersInString:@"aiueo"];
    NSArray* consonantClusters =[NSArray arrayWithObjects: @"bl", @"br", @"ch", @"ck", @"cl", @"cr", @"dr", @"fl", @"fr", @"gh", @"gl", @"gr", @"ng", @"ph", @"pl", @"pr", @"qu", @"sc", @"sh", @"sk", @"sl", @"sm", @"sn", @"sp", @"st", @"sw", @"th", @"tr", @"tw", @"wh", @"wr", nil];
    
    NSString *oneLetter = [self.lowercaseString substringToIndex:1];
    NSString *twoLetters = [self.lowercaseString substringToIndex:2];
    
    NSLog(@"input: %@", self);
    
    if([consonantClusters containsObject: twoLetters]){
        result = [NSString stringWithFormat:@"%@%@%@",self,twoLetters, @"ay"];
        result = [result substringFromIndex:2];
    } else if([oneLetter rangeOfCharacterFromSet:vowelset].length){
        result = [self stringByAppendingFormat:@"ay"];
    } else{
        result = [NSString stringWithFormat:@"%@%@%@",self,oneLetter, @"a"];
        result = [result substringFromIndex:1];
    }
    return result;
}
@end

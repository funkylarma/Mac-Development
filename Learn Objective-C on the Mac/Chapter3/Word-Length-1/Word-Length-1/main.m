//
//  main.m
//  Word-Length-1
//
//  Created by Adam Chamberlin on 13/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    FILE *wordFile = fopen("/Users/adam/Development/MacDevelopment/Learn Objective-C on the Mac/words.txt", "r");
    char word[100];
    
    while (fgets(word, 100, wordFile)) {
        //Stripe off the trailing \n
        word[strlen(word) - 1] = '\0';
        
        NSLog(@"%s is %d characters long", word, (int)strlen(word));
    }
}


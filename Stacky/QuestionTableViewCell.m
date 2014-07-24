//
//  QuestionTableViewCell.m
//  Stacky
//
//  Created by Ravi Prakash on 10/06/14.
//  Copyright (c) 2014 helpshift. All rights reserved.
//

#import "QuestionTableViewCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation QuestionTableViewCell {
    UILabel *_questionString;
    UILabel *_answerCountValue;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        // Style for "Question Title" Text Label
        CGRect questionLabelRectangle = CGRectMake(120, -15, [UIScreen mainScreen].bounds.size.width-100, 50);
        UILabel *questionLabel = [[UILabel alloc] initWithFrame:questionLabelRectangle];
        questionLabel.textAlignment = NSTextAlignmentLeft;
        questionLabel.text = @"Question Title";
        questionLabel.font = [UIFont boldSystemFontOfSize:12];
//        [self.contentView addSubview:questionLabel];
        
        // Style for Question Title
        CGRect questionStringRectangle = CGRectMake(75, 5, [UIScreen mainScreen].bounds.size.width-85,90);
        UIView *testing=[[UIView alloc] initWithFrame:questionStringRectangle];
        CGRect questionStringRectangle1 = CGRectMake(10, 5, [UIScreen mainScreen].bounds.size.width-90,90);
        testing.backgroundColor=[UIColor whiteColor];
        _questionString = [[UILabel alloc] initWithFrame:questionStringRectangle1];
        _questionString.backgroundColor = [UIColor clearColor];
        _questionString.numberOfLines = 0; // for multiple lines it will automatically handle
        [testing addSubview:_questionString];
        [self.contentView addSubview:testing];
        
        //Style for "Ans Count" Text Label
        CGRect ansCountLabelRectangle = CGRectMake(5,-15,90,50);
        UILabel *ansCountLabel = [[UILabel alloc] initWithFrame:ansCountLabelRectangle];
        ansCountLabel.textAlignment = NSTextAlignmentLeft;
        ansCountLabel.text = @"Ans Count";
        ansCountLabel.font = [UIFont boldSystemFontOfSize : 12];
//        [self.contentView addSubview:ansCountLabel];
        
        // Style for Ans count value
        
        CGRect ansCountValueRectangle = CGRectMake(15,30,40,40);
        _answerCountValue = [[UILabel alloc] initWithFrame:ansCountValueRectangle];
        _answerCountValue.clipsToBounds=YES;
        _answerCountValue.layer.cornerRadius=20.0;
        _answerCountValue.backgroundColor = [UIColor orangeColor];
        _answerCountValue.textAlignment = NSTextAlignmentCenter;
        _answerCountValue.textColor=[UIColor whiteColor];
        _answerCountValue.font = [UIFont boldSystemFontOfSize:20];
        [self.contentView addSubview : _answerCountValue];
        
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) setAnswerCount : (NSString *) ans {
    if(![ans isEqualToString:_answerCount]) {
        _answerCount = [ans copy];
        _answerCountValue.text = _answerCount;
    }

}

-(void) setQuestion : (NSString *) que {
    if(![que isEqualToString:_question]) {
        _question = [que copy];
        _questionString.text = _question;
    }
}

@end

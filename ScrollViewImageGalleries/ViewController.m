//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Susan Justice on 2016-05-16.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic) UIImageView* imageView1;
@property (nonatomic) UIImageView* imageView2;
@property (nonatomic) UIImageView* imageView3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //initalizing imageView
    
    self.imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse.jpg"]];
    self.imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-in-Field.jpg"]];
    self.imageView3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-night.jpg"]];
    
    //add imageView to scrollView
    
    [self.scrollView addSubview:self.imageView1];
    [self.scrollView addSubview:self.imageView2];
    [self.scrollView addSubview:self.imageView3];
    
    //imageView translatesAutoresizingMaskIntoConstraints
    
    self.imageView1.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageView2.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageView3.translatesAutoresizingMaskIntoConstraints = NO;
    
    //ImageView 1 Constraints
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView1 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView1 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView1 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:self.view.frame.size.width]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeHeight multiplier:1 constant:0]];

    
    //ImageView 2 Constraints
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView2 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.imageView1 attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView2 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
  
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView2 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeWidth multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView2 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeHeight multiplier:1 constant:0]];
    
    
   //ImageView 3 Constraints
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView3 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.imageView2 attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView3 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView3 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:self.view.frame.size.width]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView3 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeHeight multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView3 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeRight multiplier:1 constant:0]];

    
    
}

-(void)viewDidAppear:(BOOL)animated {
    NSLog(@"%f, %f", self.scrollView.contentSize.height, self.scrollView.contentSize.width);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

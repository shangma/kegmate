//
//  KBSimulatorViewController.m
//  KegPad
//
//  Created by Gabe on 9/26/10.
//  Copyright 2010 rel.me. All rights reserved.
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

#import "KBSimulatorViewController.h"

#import "KBApplication.h"

@implementation KBSimulatorViewController

- (id)init {
  if ((self = [super initWithStyle:UITableViewStyleGrouped])) {
    kegProcessorSimulator_ = [[KBKegProcessorSimulator alloc] initWithKegProcessor:[KBApplication kegProcessor]];
    [self addForm:[KBUIForm actionWithTitle:@"Simulate temperature and pour" text:@"" target:kegProcessorSimulator_ action:@selector(temperatureAndPour) showDisclosure:NO]];
    [self addForm:[KBUIForm actionWithTitle:@"Simulate login" text:@"" target:kegProcessorSimulator_ action:@selector(login) showDisclosure:NO]];
    [self addForm:[KBUIForm actionWithTitle:@"Simulate unknown tag" text:@"" target:kegProcessorSimulator_ action:@selector(unknownTag) showDisclosure:NO]];
  }
  return self;
}

- (void)dealloc {
  [kegProcessorSimulator_ release];
  [super dealloc];
}

@end

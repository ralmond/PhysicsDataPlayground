library(readr)
colPrePost <- cols(
  StudyID = col_character(),
  ID1 = col_character(),
  ID2 = col_character(),
  Midtest = col_factor(levels = c("ECT", "POT"), ordered = FALSE, include_na = FALSE),
  Posttest = col_factor(levels = c("ECT", "POT"), ordered = FALSE, include_na = FALSE),
  Condition = col_factor(levels = c("A", "B", "C", "D", "E", "F"), ordered = FALSE, include_na = FALSE),
  CognitiveSupports = col_logical(),
  AffectiveECD = col_logical(),
  AffectivePOT = col_logical(),
  Progress = col_number(),
  `Duration (in seconds)` = col_number(),
  Finished = col_number(),
  RecordedDate = col_datetime(format = ""),
  Age = col_number(),
  Sex = col_factor(levels = c("Male", "Female", "Other", "Prefer not to say", "Nonbinary"
    ), ordered = FALSE, include_na = FALSE),
  `American Indian or Alaska Native` = col_logical(),
  Asian = col_logical(),
  `Black or African American` = col_logical(),
  Hispanic = col_logical(),
  `Native Hawaiian or Pacific Islander` = col_logical(),
  White = col_logical(),
  `Other (enter)` = col_logical(),
  `Prefer not to say` = col_logical(),
  Other_TEXT = col_character(),
  Gaming = col_factor(levels = c("Never", "Once a month or less", "Once a week", "3-4 times a week", 
    "Every day"), ordered = FALSE, include_na = FALSE),
  Physics = col_factor(levels = c("Yes", "No"), ordered = FALSE, include_na = FALSE),
  `A-NQ1` = col_factor(levels = c("Draw an object with a larger mass", "Draw an object with a smaller mass", 
    "Draw the object closer to the center of the lever", "None of the above would help"
    ), ordered = FALSE, include_na = FALSE),
  `A-NQ2` = col_factor(levels = c("The same as before", "More than before", "Less than before", 
    "Not enough information"), ordered = FALSE, include_na = FALSE),
  `A-NQ3` = col_factor(levels = c("A", "B", "No difference", "Not enough information"), ordered = FALSE, include_na = FALSE),
  `A-NQ4` = col_factor(levels = c("A", "B", "Both", "Neither of them"), ordered = FALSE, include_na = FALSE),
  `A-NQ5` = col_factor(levels = c("Dropped from point A", "Dropped from point B", "Dropped from point C", 
    "No difference"), ordered = FALSE, include_na = FALSE),
  `A-NQ6` = col_factor(levels = c("The red box ", "The blue box ", "No difference", "Not enough information"
    ), ordered = FALSE, include_na = FALSE),
  `A-NQ7` = col_factor(levels = c("Attach a weight to the springboard ", "Attach a weight to the springboard and then release", 
    "Increase the mass of the ball", "None of the above"), ordered = FALSE, include_na = FALSE),
  `A-NQ8` = col_factor(levels = c("A", "B", "C", "All points will have the same effect on the ball"
    ), ordered = FALSE, include_na = FALSE),
  `A-NQ9` = col_factor(levels = c("A ", "B", "No difference", "Not enough information"), ordered = FALSE, include_na = FALSE),
  `A-NQ10` = col_factor(levels = c("A", "B", "C", "All would work"), ordered = FALSE, include_na = FALSE),
  `A-NQ11` = col_factor(levels = c("Increase green ball's mass", "Decrease green ball's mass", 
    "Make the blue stick shorter", "Make the blue stick longer"), ordered = FALSE, include_na = FALSE),
  `A-NQ12` = col_factor(levels = c("A", "B", "Both will reach the same height", "Not enough information"
    ), ordered = FALSE, include_na = FALSE),
  `A-NQ13` = col_factor(levels = c("A", "B", "C", "All would work"), ordered = FALSE, include_na = FALSE),
  `A-NQ14` = col_factor(levels = c("Attach a light weight on point B", "Attach a heavy weight on point B", 
    "Attach a light weight on point A", "Attach a heavy weight on point A"
    ), ordered = FALSE, include_na = FALSE),
  `A-FQ1` = col_factor(levels = c("The ball in picture A", "The ball in picture B", "The balls will move at the same speed", 
    "More information is needed to answer the question"), ordered = FALSE, include_na = FALSE),
  `A-FQ2` = col_factor(levels = c("A will be launched higher than B", "B will be launched higher than A", 
    "A and B will be launched the same height because both masses start at the same height", 
    "More information is needed to answer the question"), ordered = FALSE, include_na = FALSE),
  `A-FQ3` = col_factor(levels = c("A and B will move at the same speed", "B will be faster than A", 
    "A will be faster than B", "More information is needed to answer the question"
    ), ordered = FALSE, include_na = FALSE),
  `A-FQ4` = col_factor(levels = c("Position 2", "Position 3", "Somewhere between Position 2 and Position 3", 
    "Somewhere above Position 3"), ordered = FALSE, include_na = FALSE),
  `A-FQ5` = col_factor(levels = c("The red cart", "The blue cart", "Both will have the same speed", 
    "More information is needed"), ordered = FALSE, include_na = FALSE),
  `A-FQ6` = col_factor(levels = c("the least at A", "the least at B", "the least at C", "always constant"
    ), ordered = FALSE, include_na = FALSE),
  `A-FQ7` = col_factor(levels = c("Increase the mass of the ball", "Decrease the mass of the ball", 
    "Increase the mass of weight B", "More information is needed to answer the question"
    ), ordered = FALSE, include_na = FALSE),
  `A-FQ8` = col_factor(levels = c("Both dives bent the board the same amount", "The first dive bent the board less than the second dive", 
    "The second dive bent the board less than the first dive", "We don’t know because she already jumped"
    ), ordered = FALSE, include_na = FALSE),
  `A-FQ9` = col_factor(levels = c("Replace 4 kg with 8 kg and move it to point A", " Replace 4 kg with 8 kg and move it to point B", 
    " Both", "Neither"), ordered = FALSE, include_na = FALSE),
  `A-FQ10` = col_factor(levels = c("Tom", "Lynn", "They both have an equal effect on the door’s movement", 
    "Not enough information"), ordered = FALSE, include_na = FALSE),
  `A-FQ11` = col_factor(levels = c("Less than 1 m", " Greater than 1 m", " Equal to 1 m", "More information is needed to answer the question"
    ), ordered = FALSE, include_na = FALSE),
  `A-FQ12` = col_factor(levels = c("A", "B", "Both will have the same effect on the acrobat", 
    "Not enough information"), ordered = FALSE, include_na = FALSE),
  `A-FQ13` = col_factor(levels = c("By making the object heavier", "By moving the object farther from the tree trunk", 
    "By moving the object closer to the tree trunk", "Moving the object won't make a difference"
    ), ordered = FALSE, include_na = FALSE),
  `A-FQ14` = col_factor(levels = c(" more", " less", "  the same", "more information is needed"
    ), ordered = FALSE, include_na = FALSE),
  SC0 = col_number(),
  Gender = col_factor(levels = c("Male", "Female", "Other"), ordered = FALSE, include_na = FALSE),
  Ethnicity = col_factor(levels = c("Asian", "Black or African American", "Hispanic", "Mixed", 
    "White"), ordered = FALSE, include_na = FALSE),
  `A-NQ1_scored` = col_integer(),
  `A-NQ2_scored` = col_integer(),
  `A-NQ3_scored` = col_integer(),
  `A-NQ4_scored` = col_integer(),
  `A-NQ5_scored` = col_integer(),
  `A-NQ6_scored` = col_integer(),
  `A-NQ7_scored` = col_integer(),
  `A-NQ8_scored` = col_integer(),
  `A-NQ9_scored` = col_integer(),
  `A-NQ10_scored` = col_integer(),
  `A-NQ11_scored` = col_integer(),
  `A-NQ12_scored` = col_integer(),
  `A-NQ13_scored` = col_integer(),
  `A-NQ14_scored` = col_integer(),
  `A-FQ1_scored` = col_integer(),
  `A-FQ2_scored` = col_integer(),
  `A-FQ3_scored` = col_integer(),
  `A-FQ4_scored` = col_integer(),
  `A-FQ5_scored` = col_integer(),
  `A-FQ6_scored` = col_integer(),
  `A-FQ7_scored` = col_integer(),
  `A-FQ8_scored` = col_integer(),
  `A-FQ9_scored` = col_integer(),
  `A-FQ10_scored` = col_integer(),
  `A-FQ11_scored` = col_integer(),
  `A-FQ12_scored` = col_integer(),
  `A-FQ13_scored` = col_integer(),
  `A-FQ14_scored` = col_integer(),
  NearECT = col_integer(),
  FarECT = col_integer(),
  NearPOT = col_integer(),
  FarPOT = col_integer(),
  Near = col_integer(),
  Far = col_integer(),
  ECT = col_integer(),
  POT = col_integer(),
  PhysicsScore = col_integer(),
  Progress.ect = col_number(),
  `Duration (in seconds).ect` = col_number(),
  Finished.ect = col_number(),
  RecordedDate.ect = col_datetime(format = ""),
  IMI_1 = col_integer(),
  IMI_2 = col_integer(),
  IMI_3 = col_integer(),
  IMI_4 = col_integer(),
  IMI_5 = col_integer(),
  IMI_6 = col_integer(),
  IMI_7 = col_integer(),
  IMI_8 = col_integer(),
  IMI_9 = col_integer(),
  IMI_10 = col_integer(),
  IMI_11 = col_integer(),
  IMI_12 = col_integer(),
  IMI_13 = col_integer(),
  IMI_14 = col_integer(),
  IMI_15 = col_integer(),
  IMI_16 = col_integer(),
  IMI_17 = col_integer(),
  IMI_18 = col_integer(),
  `A-NQ1.ect` = col_factor(levels = c("Draw an object with a larger mass", "Draw an object with a smaller mass", 
    "Draw the object closer to the center of the lever", "None of the above would help"
    ), ordered = FALSE, include_na = FALSE),
  `A-NQ2.ect` = col_factor(levels = c("The same as before", "More than before", "Less than before", 
    "Not enough information"), ordered = FALSE, include_na = FALSE),
  `A-NQ3.ect` = col_factor(levels = c("A", "B", "No difference", "Not enough information"), ordered = FALSE, include_na = FALSE),
  `A-NQ4.ect` = col_factor(levels = c("A", "B", "Both", "Neither of them"), ordered = FALSE, include_na = FALSE),
  `A-NQ5.ect` = col_factor(levels = c("Dropped from point A", "Dropped from point B", "Dropped from point C", 
    "No difference"), ordered = FALSE, include_na = FALSE),
  `A-NQ6.ect` = col_factor(levels = c("The red box ", "The blue box ", "No difference", "Not enough information"
    ), ordered = FALSE, include_na = FALSE),
  `A-NQ7.ect` = col_factor(levels = c("Attach a weight to the springboard ", "Attach a weight to the springboard and then release", 
    "Increase the mass of the ball", "None of the above"), ordered = FALSE, include_na = FALSE),
  `A-NQ8.ect` = col_factor(levels = c("A", "B", "C", "All points will have the same effect on the ball"
    ), ordered = FALSE, include_na = FALSE),
  `A-NQ12.ect` = col_factor(levels = c("A", "B", "Both will reach the same height", "Not enough information"
    ), ordered = FALSE, include_na = FALSE),
  `A-NQ13.ect` = col_factor(levels = c("A", "B", "C", "All would work"), ordered = FALSE, include_na = FALSE),
  `A-NQ14.ect` = col_factor(levels = c("Attach a light weight on point B", "Attach a heavy weight on point B", 
    "Attach a light weight on point A", "Attach a heavy weight on point A"
    ), ordered = FALSE, include_na = FALSE),
  `A-FQ1.ect` = col_factor(levels = c("The ball in picture A", "The ball in picture B", "The balls will move at the same speed", 
    "More information is needed to answer the question"), ordered = FALSE, include_na = FALSE),
  `A-FQ2.ect` = col_factor(levels = c("A will be launched higher than B", "B will be launched higher than A", 
    "A and B will be launched the same height because both masses start at the same height", 
    "More information is needed to answer the question"), ordered = FALSE, include_na = FALSE),
  `A-FQ3.ect` = col_factor(levels = c("A and B will move at the same speed", "B will be faster than A", 
    "A will be faster than B", "More information is needed to answer the question"
    ), ordered = FALSE, include_na = FALSE),
  `A-FQ4.ect` = col_factor(levels = c("Position 2", "Position 3", "Somewhere between Position 2 and Position 3", 
    "Somewhere above Position 3"), ordered = FALSE, include_na = FALSE),
  `A-FQ5.ect` = col_factor(levels = c("The red cart", "The blue cart", "Both will have the same speed", 
    "More information is needed"), ordered = FALSE, include_na = FALSE),
  `A-FQ6.ect` = col_factor(levels = c("the least at A", "the least at B", "the least at C", "always constant"
    ), ordered = FALSE, include_na = FALSE),
  `A-FQ7.ect` = col_factor(levels = c("Increase the mass of the ball", "Decrease the mass of the ball", 
    "Increase the mass of weight B", "More information is needed to answer the question"
    ), ordered = FALSE, include_na = FALSE),
  `A-FQ8.ect` = col_factor(levels = c("Both dives bent the board the same amount", "The first dive bent the board less than the second dive", 
    "The second dive bent the board less than the first dive", "We don’t know because she already jumped"
    ), ordered = FALSE, include_na = FALSE),
  Q90 = col_character(),
  Q74 = col_number(),
  PA1 = col_integer(),
  PA2 = col_integer(),
  PA3 = col_integer(),
  PA4 = col_integer(),
  PA5 = col_integer(),
  PA6 = col_integer(),
  PA7 = col_integer(),
  SC0.ect = col_number(),
  `A-NQ1_scored.ect` = col_integer(),
  `A-NQ2_scored.ect` = col_integer(),
  `A-NQ3_scored.ect` = col_integer(),
  `A-NQ4_scored.ect` = col_integer(),
  `A-NQ5_scored.ect` = col_integer(),
  `A-NQ6_scored.ect` = col_integer(),
  `A-NQ7_scored.ect` = col_integer(),
  `A-NQ8_scored.ect` = col_integer(),
  `A-NQ12_scored.ect` = col_integer(),
  `A-NQ13_scored.ect` = col_integer(),
  `A-NQ14_scored.ect` = col_integer(),
  `A-FQ1_scored.ect` = col_integer(),
  `A-FQ2_scored.ect` = col_integer(),
  `A-FQ3_scored.ect` = col_integer(),
  `A-FQ4_scored.ect` = col_integer(),
  `A-FQ5_scored.ect` = col_integer(),
  `A-FQ6_scored.ect` = col_integer(),
  `A-FQ7_scored.ect` = col_integer(),
  `A-FQ8_scored.ect` = col_integer(),
  NearECTpost = col_integer(),
  FarECTpost = col_integer(),
  ECTpost = col_integer(),
  IMI = col_integer(),
  IMI_Enj = col_integer(),
  IMI_Eng = col_integer(),
  IMI_PC = col_integer(),
  IMI_Effort = col_integer(),
  IMI_Frust = col_integer(),
  IMI_Value = col_integer(),
  PA = col_integer(),
  Progress.pot = col_number(),
  `Duration (in seconds).pot` = col_number(),
  Finished.pot = col_number(),
  RecordedDate.pot = col_datetime(format = ""),
  IMI_1.pot = col_integer(),
  IMI_2.pot = col_integer(),
  IMI_3.pot = col_integer(),
  IMI_4.pot = col_integer(),
  IMI_5.pot = col_integer(),
  IMI_6.pot = col_integer(),
  IMI_7.pot = col_integer(),
  IMI_8.pot = col_integer(),
  IMI_9.pot = col_integer(),
  IMI_10.pot = col_integer(),
  IMI_11.pot = col_integer(),
  IMI_12.pot = col_integer(),
  IMI_13.pot = col_integer(),
  IMI_14.pot = col_integer(),
  IMI_15.pot = col_integer(),
  IMI_16.pot = col_integer(),
  IMI_17.pot = col_integer(),
  IMI_18.pot = col_integer(),
  `A-NQ9.pot` = col_factor(levels = c("A ", "B", "No difference", "Not enough information"), ordered = FALSE, include_na = FALSE),
  `A-NQ10.pot` = col_factor(levels = c("A", "B", "C", "All would work"), ordered = FALSE, include_na = FALSE),
  `A-NQ11.pot` = col_factor(levels = c("Increase green ball's mass", "Decrease green ball's mass", 
    "Make the blue stick shorter", "Make the blue stick longer"), ordered = FALSE, include_na = FALSE),
  `A-NQ12.pot` = col_factor(levels = c("A", "B", "Both will reach the same height", "Not enough information"
    ), ordered = FALSE, include_na = FALSE),
  `A-NQ13.pot` = col_factor(levels = c("A", "B", "C", "All would work"), ordered = FALSE, include_na = FALSE),
  `A-NQ14.pot` = col_factor(levels = c("Attach a light weight on point B", "Attach a heavy weight on point B", 
    "Attach a light weight on point A", "Attach a heavy weight on point A"
    ), ordered = FALSE, include_na = FALSE),
  `A-FQ9.pot` = col_factor(levels = c("Replace 4 kg with 8 kg and move it to point A", " Replace 4 kg with 8 kg and move it to point B", 
    " Both", "Neither"), ordered = FALSE, include_na = FALSE),
  `A-FQ10.pot` = col_factor(levels = c("Tom", "Lynn", "They both have an equal effect on the door’s movement", 
    "Not enough information"), ordered = FALSE, include_na = FALSE),
  `A-FQ11.pot` = col_factor(levels = c("Less than 1 m", " Greater than 1 m", " Equal to 1 m", "More information is needed to answer the question"
    ), ordered = FALSE, include_na = FALSE),
  `A-FQ12.pot` = col_factor(levels = c("A", "B", "Both will have the same effect on the acrobat", 
    "Not enough information"), ordered = FALSE, include_na = FALSE),
  `A-FQ13.pot` = col_factor(levels = c("By making the object heavier", "By moving the object farther from the tree trunk", 
    "By moving the object closer to the tree trunk", "Moving the object won't make a difference"
    ), ordered = FALSE, include_na = FALSE),
  `A-FQ14.pot` = col_factor(levels = c(" more", " less", "  the same", "more information is needed"
    ), ordered = FALSE, include_na = FALSE),
  Q90.pot = col_character(),
  Q74.pot = col_number(),
  PA1.pot = col_integer(),
  PA2.pot = col_integer(),
  PA3.pot = col_integer(),
  PA4.pot = col_integer(),
  PA5.pot = col_integer(),
  PA6.pot = col_integer(),
  PA7.pot = col_integer(),
  SC0.pot = col_number(),
  `A-NQ9_scored.pot` = col_integer(),
  `A-NQ10_scored.pot` = col_integer(),
  `A-NQ11_scored.pot` = col_integer(),
  `A-NQ12_scored.pot` = col_integer(),
  `A-NQ13_scored.pot` = col_integer(),
  `A-NQ14_scored.pot` = col_integer(),
  `A-FQ9_scored.pot` = col_integer(),
  `A-FQ10_scored.pot` = col_integer(),
  `A-FQ11_scored.pot` = col_integer(),
  `A-FQ12_scored.pot` = col_integer(),
  `A-FQ13_scored.pot` = col_integer(),
  `A-FQ14_scored.pot` = col_integer(),
  NearPOTpost = col_integer(),
  FarPOTpost = col_integer(),
  POTpost = col_integer(),
  IMI.pot = col_integer(),
  IMI_Enj.pot = col_integer(),
  IMI_Eng.pot = col_integer(),
  IMI_PC.pot = col_integer(),
  IMI_Effort.pot = col_integer(),
  IMI_Frust.pot = col_integer(),
  IMI_Value.pot = col_integer(),
  PA.pot = col_integer()
)

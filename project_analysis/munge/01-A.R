# Example preprocessing script.

library(dplyr)



## The pre processing for the dataframe for question 1.8.1

## Question7
question7 = data.frame(cyber.security.7_question.response)

question7

question7=question7[!(!is.na(question7$learner_id) & question7$learner_id==""), ]


question7 = question7 %>% filter(quiz_question == "1.8.1")

question7true = question7 %>% filter(correct == "true")

question7size = nrow(question7true)
question7size

## Question6
question6 = data.frame(cyber.security.6_question.response)


question6=question6[!(!is.na(question6$learner_id) & question6$learner_id==""), ]


question6 = question6 %>% filter(quiz_question == "1.8.1")

question6true = question6 %>% filter(correct == "true")

question6size = nrow(question6true)
question6size

## Question5
question5 = data.frame(cyber.security.5_question.response)


question5=question5[!(!is.na(question5$learner_id) & question5$learner_id==""), ]


question5 = question5 %>% filter(quiz_question == "1.8.1")

question5true = question5 %>% filter(correct == "true")

question5size = nrow(question5true)
question5size

## Question4
question4 = data.frame(cyber.security.4_question.response)


question4=question4[!(!is.na(question4$learner_id) & question4$learner_id==""), ]


question4 = question4 %>% filter(quiz_question == "1.8.1")

question4true = question4 %>% filter(correct == "true")

question4size = nrow(question4true)
question4size



## People that found the quiz correct
question4size
question5size
question6size
question7size


##Size for enrollments

enrollment7 = data.frame(cyber.security.7_enrolments)

size7 = nrow(enrollment7)


enrollment6 = data.frame(cyber.security.6_enrolments)

size6 = nrow(enrollment6)
 
enrollment5 = data.frame(cyber.security.5_enrolments)

size5 = nrow(enrollment5)


enrollment4 = data.frame(cyber.security.4_enrolments)

size4 = nrow(enrollment4)



## Video Stats

video7=data.frame(cyber.security.7_video.stats)

video7 = video7 %>% filter(  step_position < 1.6)

meanvideo7 = mean(video7$total_views)

video6=data.frame(cyber.security.6_video.stats)

video6 = video6 %>% filter(  step_position < 1.6)

meanvideo6 = mean(video6$total_views)

video5=data.frame(cyber.security.5_video.stats)

video5 = video5 %>% filter(  step_position < 1.6)

meanvideo5 = mean(video5$total_views)

video4=data.frame(cyber.security.4_video.stats)

video4 = video4 %>% filter(  step_position < 1.6)

meanvideo4 = mean(video4$total_views)

## Mean video for total views for 5 videos
meanvideo4
meanvideo5
meanvideo6
meanvideo7





## Size of the enrollments for each year
size4
size5
size6
size7

## How many got the 1st question correct
question4size
question5size
question6size
question7size

## Make a Dataframe with all these

questions= c(question4size,question5size,question6size,question7size)
size = c(size4
         ,size5
         ,size6
         ,size7)
averageVideos= c(meanvideo4
                 ,meanvideo5
                 ,meanvideo6
                 ,meanvideo7)

dataframe = data.frame(questions,size,averageVideos)

dataframe


## Make a second Dataframe for plot

question_size = questions/size

question_size

averagevideos_size = averageVideos/size

year= c(4,5,6,7)

dataframe2 = data.frame(question_size,averagevideos_size,year)




#########################################
video1=cyber.security.4_video.stats

video2=cyber.security.5_video.stats

video3=cyber.security.6_video.stats

video4=cyber.security.7_video.stats



desktopdataset1 = video1[,c("desktop_device_percentage")]
desktopdataset2 = video2[,c("desktop_device_percentage")]
desktopdataset3 = video3[,c("desktop_device_percentage")]
desktopdataset4 = video4[,c("desktop_device_percentage")]



mobiledataset1 = video1[,c("mobile_device_percentage")]
mobiledataset2 = video2[,c("mobile_device_percentage")]
mobiledataset3 = video3[,c("mobile_device_percentage")]
mobiledataset4 = video4[,c("mobile_device_percentage")]



tabletdataset1 = data.frame(video1[,c("tablet_device_percentage")])
tabletdataset2 = data.frame(video2[,c("tablet_device_percentage")])
tabletdataset3 = data.frame(video3[,c("tablet_device_percentage")])
tabletdataset4 = data.frame(video4[,c("tablet_device_percentage")])


europedataset1 = data.frame(video1[,c("europe_views_percentage")])
europedataset2 = data.frame(video2[,c("europe_views_percentage")])
europedataset3 = data.frame(video3[,c("europe_views_percentage")])
europedataset4 = data.frame(video4[,c("europe_views_percentage")])


asiadataset1 = data.frame(video1[,c("asia_views_percentage")])
asiadataset2 = data.frame(video2[,c("asia_views_percentage")])
asiadataset3 = data.frame(video3[,c("asia_views_percentage")])
asiadataset4 = data.frame(video4[,c("asia_views_percentage")])


northamericadataset1 = data.frame(video1[,c("north_america_views_percentage")])
northamericadataset2 = data.frame(video2[,c("north_america_views_percentage")])
northamericadataset3 = data.frame(video3[,c("north_america_views_percentage")])
northamericadataset4 = data.frame(video4[,c("north_america_views_percentage")])



## Question7.1
question7.1 = data.frame(cyber.security.7_question.response)

question7.1

question7.1=question7.1[!(!is.na(question7$learner_id) & question7$learner_id==""), ]


question7.1 = question7.1 %>% filter(quiz_question %in% c("3.11.1" , "3.11.2","3.11.3") )

question7true.1 = question7.1 %>% filter(correct == "true")

question7true.1=data.frame(question7true.1)

question7size.1 = nrow(question7true.1)
question7size.1


## Question6.1
question6.1 = data.frame(cyber.security.6_question.response)

question6.1

question6.1=question6.1[!(!is.na(question6$learner_id) & question6$learner_id==""), ]


question6.1 = question6.1 %>% filter(quiz_question %in% c("3.11.1" , "3.11.2","3.11.3") )

question6true.1 = question6.1 %>% filter(correct == "true")

question6true.1=data.frame(question6true.1)

question6size.1 = nrow(question6true.1)
question6size.1

## Question7.1
question5.1 = data.frame(cyber.security.5_question.response)

question5.1

question5.1=question5.1[!(!is.na(question5$learner_id) & question5$learner_id==""), ]


question5.1 = question5.1 %>% filter(quiz_question %in% c("3.11.1" , "3.11.2","3.11.3") )

question5true.1 = question5.1 %>% filter(correct == "true")

question5true.1=data.frame(question5true.1)

question5size.1 = nrow(question5true.1)
question5size.1

## Question7.1
question4.1 = data.frame(cyber.security.4_question.response)

question4.1

question4.1=question4.1[!(!is.na(question4$learner_id) & question4$learner_id==""), ]

question4.1 = question4.1 %>% filter(quiz_question %in% c("3.11.1" , "3.11.2","3.11.3") )

question4true.1 = question4.1 %>% filter(correct == "true")

question4true.1=data.frame(question4true.1)

question4size.1 = nrow(question4true.1)
question4size.1


## Size of Questions.1

question7size.1
question6size.1
question5size.1
question4size.1



## Size of Mobiles 



video1.1 = video1 %>% filter(step_position %in% c("2.4" , "3.1") )
video2.1 = video2 %>% filter(step_position %in% c("2.4" , "3.1") )
video3.1 = video3 %>% filter(step_position %in% c("2.4" , "3.1") )
video4.1 = video4 %>% filter(step_position %in% c("2.4" , "3.1") )

desktopdataset1.1 = mean(as.matrix(video1.1[,c("desktop_device_percentage")]))
desktopdataset2.1 = mean(as.matrix(video2.1[,c("desktop_device_percentage")]))
desktopdataset3.1 = mean(as.matrix(video3.1[,c("desktop_device_percentage")]))
desktopdataset4.1 = mean(as.matrix(video4.1[,c("desktop_device_percentage")]))


mobiledataset1.1 = mean(as.matrix(video1.1[,c("mobile_device_percentage")]))
mobiledataset2.1 = mean(as.matrix(video2.1[,c("mobile_device_percentage")]))
mobiledataset3.1 = mean(as.matrix(video3.1[,c("mobile_device_percentage")]))
mobiledataset4.1 = mean(as.matrix(video4.1[,c("mobile_device_percentage")]))

tabletdataset1.1 = mean(as.matrix(video1.1[,c("tablet_device_percentage")]))
tabletdataset2.1 = mean(as.matrix(video2.1[,c("tablet_device_percentage")]))
tabletdataset3.1 = mean(as.matrix(video3.1[,c("tablet_device_percentage")]))
tabletdataset4.1 = mean(as.matrix(video4.1[,c("tablet_device_percentage")]))

mobiledatasets = c(mobiledataset1.1,mobiledataset2.1,mobiledataset3.1,mobiledataset4.1)

tabletdatasets = c(tabletdataset1.1,tabletdataset2.1,tabletdataset3.1,tabletdataset4.1)

desktopdatasets =c(desktopdataset1.1 ,desktopdataset2.1 ,desktopdataset3.1 ,desktopdataset4.1 )

questions2.0= c(question7size.1/size7,question6size.1/size6,question5size.1/size5,question4size.1/size4)

## Last Data frame

dataframe3 = data.frame(mobiledatasets,tabletdatasets,desktopdatasets,questions2.0,year)


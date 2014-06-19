read_dataset <- function (list_filenames, listfeaturenames, listactivitynames) {
 
        # list_filenames - array of strings where 
        #    1st name is subdirectory
        #    2nd name is data file
        #    3rd name is label file
        #    4th name is subject file
        #

        #read the data, the labels, and the subject IDs
        # data
        
        # use full path
        lead = paste(getwd(),"/",sep="")
        lead = paste(lead,list_filenames[1],sep="")
        
        # features
        fname = paste(lead,list_filenames[2],sep="")
        rawdata <- read.table(fname,header=FALSE)[,listfeaturenames$index]
        names(rawdata) <- listfeaturenames$name
        
        # labels
        fname = paste(lead,list_filenames[3],sep="")
        labeldataset <- read.table(fname)[, 1]
        rawdata$label <- factor(labeldataset, levels=listactivitynames$level, labels=listactivitynames$label)
        
        # subject IDs
        fname = paste(lead,list_filenames[4],sep="")
        subjectdataset <- read.table(fname)[, 1]
        rawdata$subject <- factor(subjectdataset)
        
        # make it a data table
        data.table(rawdata)
}

run_analysis <- function () {
        
        setwd('C:/Users/mjaffe/Documents/CourseraandOpenEDx/DataScience(Hopkins)/GettingCleaningData/UCI HAR Dataset')
        library(data.table)
        
        # assign filenames to array of strings - don't make assumptions about naming convention   
        testdatafilenames  = c("test/", "X_test.txt", "y_test.txt", "subject_test.txt")
        traindatafilenames = c("train/","X_train.txt","y_train.txt","subject_train.txt")
        accessoryfilenames = c("features.txt","activity_labels.txt")

        # Get the features
        featureall <- read.table(accessoryfilenames[1], col.names = c('index', 'name'))
     
        # Get the labels
        labelsset <- read.table(accessoryfilenames[2], col.names = c('level', 'label'))
  
        # extract only those features with mean or std in name 
        featuressub <- subset(feature.all, grepl('-(mean|std)[(]', featureall$name))
        
        # read training and test data
        trainingdataset <- read_dataset(traindatafilenames, featuressub, labelsset)
        testdataset     <- read_dataset(testdatafilenames,  featuressub, labelsset)
        
        # the merged "raw" data
        datamerged <- rbind(trainingdataset, testdataset)

        # write out the merged data
        write.csv(datamerged, file = 'rawdata.csv', row.names = FALSE)
 
        
        # Create "tidy" data
        tidydata <- datamerged[, lapply(.SD, mean), by=list(label, subject)]

        # Cleanup some of the variable names
        varnames <- names(tidydata)
        varnames <- gsub('[()]', '',        varnames)    #  parens and dashes delete
        varnames <- gsub('-mean', 'Mean',    varnames)    # `-mean' to `Mean'
        varnames <- gsub('-std',  'Stndev',  varnames)    # `-std'  to 'Stndev'
        varnames <- gsub('BodyBody', 'Body', varnames)    #  `BodyBody' by `Body'
        setnames(tidydata, varnames)
        
        # Write out the tidy data
        write.csv(tidydata,   file = 'tidydata.csv',row.names = FALSE, quote = FALSE)
        
}

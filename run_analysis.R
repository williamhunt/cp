# a detailed description can be found in README.md
# STEP 0: read in all tables needed: features, data, subs, acts
f    <- read.table("UCI HAR Dataset\\features.txt")
al   <- read.table("UCI HAR Dataset\\activity_labels.txt")
s_te <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
X_te <- read.table("UCI HAR Dataset\\test\\X_test.txt")
y_te <- read.table("UCI HAR Dataset\\test\\y_test.txt")
s_tr <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
X_tr <- read.table("UCI HAR Dataset\\train\\X_train.txt")
y_tr <- read.table("UCI HAR Dataset\\train\\y_train.txt")
# STEP 1: create data table merging subjects, activites, & data
train <- cbind(s_tr, y_tr, X_tr)
test  <- cbind(s_te, y_te, X_te)
full  <- rbind(train, test)
# STEP 2: extract only data with means & stds
fn     <- c("subject", "activity", as.character(f$V2))
namel  <- grepl("subject|activity|mean|std", fn)
datMS <- full[,which(namel)]
# STEP 3: name activities descriptively
datMS$V1.1 <- sapply(datMS$V1.1,function(x) al[x,2])
# STEP 4: create descriptive variable names
tn <- fn[which(namel)]
tn <- gsub("\\()","",tn)
tn <- gsub("\\-","\\_",tn)
names(datMS) <- tn
# STEP 5: create averages for each activity and each subject
library(reshape2)
library(plyr)
melted <- melt(datMS, id.vars=c("subject", "activity"))
longM <- ddply(melted, c("subject", "activity", "variable"), summarize, mean = mean(value))
tidy <- dcast(longM, subject + activity ~ variable, value.var = "mean")
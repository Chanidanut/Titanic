library(ggplot2)
#sex and survival bar graph
ggplot(data=train, aes(Sex, fill = factor(Survived))) + geom_bar(stat = "count", position = "dodge") + xlab("Sex") + scale_fill_discrete(name = "Survived") + ggtitle("Survivors by Sex")
#Pclass and survival bar graph
ggplot(data=train, aes(Pclass, fill = factor(Survived))) + geom_bar(stat = "count", position = "dodge") + xlab("Pclass") + scale_fill_discrete(name = "Survived") + ggtitle("Survivors by Passenger class")
#embarked and survival bar graph
ggplot(data=train, aes(Embarked, fill = factor(Survived))) + geom_bar(stat = "count", position = "dodge") + xlab("Embarked") + scale_fill_discrete(name = "Survived") + ggtitle("Survivors by Port of Embarkation")
#number of siblings or sprouses and survival bar graph
ggplot(data=train, aes(SibSp, fill = factor(Survived))) + geom_bar(stat = "count", position = "dodge") + xlab("Siblings") + scale_fill_discrete(name = "Survived") + ggtitle("Survivors by Number of siblings")
#number of parents or children and survival bar graph
ggplot(data=train, aes(Parch, fill = factor(Survived))) + geom_bar(stat = "count", position = "dodge") + xlab("Parents and Children") + scale_fill_discrete(name = "Survived") + ggtitle("Survivors by Number of Parents or Children")
#number of family members and survival bar graph
ggplot(data=train, aes(Parch+SibSp, fill = factor(Survived))) + geom_bar(stat = "count", position = "dodge") + xlab("Family members") + scale_fill_discrete(name = "Survived") + ggtitle("Survivors by Number of Family members")
#age and survivors count
ggplot(data=train, aes(Age, fill = factor(Survived))) + geom_histogram(bins = 30) + xlab("Age") + scale_fill_discrete(name = "Survived") + ggtitle("Survivors by Age")
#fare and survivors count
ggplot(data=train, aes(Fare, fill = factor(Survived))) + geom_histogram(bins = 5) + xlab("Fare") + scale_fill_discrete(name = "Survived") + ggtitle("Survivors by Ticket Fare")
#table
library(gtsummary)
train2 <- train %>% select(Survived, Sex, Pclass, SibSp, Parch, Embarked)
train2 %>% tbl_summary(by = Survived)

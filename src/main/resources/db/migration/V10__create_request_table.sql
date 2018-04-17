CREATE TABLE request (
  requestID                     INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (requestID),
  requestCreatedDate            TIMESTAMP,
  createdByID                   INT,
  FOREIGN KEY (createdByID) REFERENCES user (userId),
  caseID                        INT,
  caseType                      VARCHAR(256) CHECK (
    casetype = 'FELONY' OR caseType = 'MISDEMEANOR'
  ),
  profileLink                   VARCHAR(256),
  suspectUserName               VARCHAR(256),
  suspectLastName               VARCHAR(256),
  suspectFirstName              VARCHAR(256),
  suspectMiddleName             VARCHAR(256),
  suspectRegisteredEmailAddress VARCHAR(256),
  suspectRegisteredPhoneNumber  VARCHAR(256),
  requestedDataStartDate        DATE,
  requestedDataEndDate          DATE,
  isContactInformationRequested BIT(1),
  isMiniFeedRequested           BIT(1),
  isStatusHistoryRequested      BIT(1),
  isSharesRequested             BIT(1),
  isNotesRequested              BIT(1),
  isWallPostingsRequested       BIT(1),
  isFriendListRequested         BIT(1),
  isGroupsRequested             BIT(1),
  isVideosRequested             BIT(1),
  isPastEventsRquested          BIT(1),
  isFutureEventsRequested       BIT(1),
  isPhotosRequested             BIT(1),
  isPrivateMessagesRequested    BIT(1),
  isGroupInfoRequested          BIT(1),
  isIPLogRequested              BIT(1),
  filterStartTime               TIME,
  filterEndTime                 TIME,
  filterCommunicantsUserName    VARCHAR(256),
  filterKeywords                VARCHAR(256),
  filterKeywordsCategory        INT,
  FOREIGN KEY (filterKeywordsCategory) REFERENCES keywordcategory (categoryId),
  filterLocation                VARCHAR(256),
  status                        VARCHAR(256) CHECK (
    status = 'PENDING' OR status = 'REJECTED' OR status = 'ANSWERED' OR status = 'CLOSED'
  ),
  resultID                      INT,
  FOREIGN KEY (resultID) REFERENCES result (resultID),
  warrant                       LONGBLOB
);
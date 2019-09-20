.class public Lorg/acra/ACRAConfiguration;
.super Ljava/lang/Object;
.source "ACRAConfiguration.java"

# interfaces
.implements Lorg/acra/annotation/ReportsCrashes;


# instance fields
.field private mAdditionalDropboxTags:[Ljava/lang/String;

.field private mAdditionalSharedPreferences:[Ljava/lang/String;

.field private mApplicationLogFile:Ljava/lang/String;

.field private mApplicationLogFileLines:Ljava/lang/Integer;

.field private mBuildConfigClass:Ljava/lang/Class;

.field private mConnectionTimeout:Ljava/lang/Integer;

.field private mCustomReportContent:[Lorg/acra/ReportField;

.field private mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

.field private mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

.field private mDisableSSLCertValidation:Ljava/lang/Boolean;

.field private mDropboxCollectionMinutes:Ljava/lang/Integer;

.field private mExcludeMatchingSettingsKeys:[Ljava/lang/String;

.field private mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

.field private mForceCloseDialogAfterToast:Ljava/lang/Boolean;

.field private mFormUri:Ljava/lang/String;

.field private mFormUriBasicAuthLogin:Ljava/lang/String;

.field private mFormUriBasicAuthPassword:Ljava/lang/String;

.field private mHttpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpMethod:Lorg/acra/sender/HttpSender$Method;

.field private mHttpsSocketFactoryFactory:Lorg/acra/util/HttpsSocketFactoryFactory;

.field private mHttpsSocketFactoryFactoryClass:Ljava/lang/String;

.field private mIncludeDropboxSystemTags:Ljava/lang/Boolean;

.field private mKeyStore:Ljava/security/KeyStore;

.field private mLogcatArguments:[Ljava/lang/String;

.field private mLogcatFilterByPid:Ljava/lang/Boolean;

.field private mMailTo:Ljava/lang/String;

.field private mMaxNumberOfRequestRetries:Ljava/lang/Integer;

.field private mMode:Lorg/acra/ReportingInteractionMode;

.field private mReportDialogClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/BaseCrashReportDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mReportType:Lorg/acra/sender/HttpSender$Type;

.field private mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

.field private mResDialogCommentPrompt:Ljava/lang/Integer;

.field private mResDialogEmailPrompt:Ljava/lang/Integer;

.field private mResDialogIcon:Ljava/lang/Integer;

.field private mResDialogNegativeButtonText:Ljava/lang/Integer;

.field private mResDialogOkToast:Ljava/lang/Integer;

.field private mResDialogPositiveButtonText:Ljava/lang/Integer;

.field private mResDialogText:Ljava/lang/Integer;

.field private mResDialogTitle:Ljava/lang/Integer;

.field private mResNotifIcon:Ljava/lang/Integer;

.field private mResNotifText:Ljava/lang/Integer;

.field private mResNotifTickerText:Ljava/lang/Integer;

.field private mResNotifTitle:Ljava/lang/Integer;

.field private mResToastText:Ljava/lang/Integer;

.field private mSendReportsAtShutdown:Ljava/lang/Boolean;

.field private mSendReportsInDevMode:Ljava/lang/Boolean;

.field private mSharedPreferenceMode:Ljava/lang/Integer;

.field private mSharedPreferenceName:Ljava/lang/String;

.field private mSocketTimeout:Ljava/lang/Integer;

.field private final reflectionHelper:Lorg/acra/util/ReflectionHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 691
    invoke-direct {p0, v0}, Lorg/acra/ACRAConfiguration;-><init>(Lorg/acra/annotation/ReportsCrashes;)V

    return-void
.end method

.method public constructor <init>(Lorg/acra/annotation/ReportsCrashes;)V
    .registers 3

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/acra/util/ReflectionHelper;

    invoke-direct {v0}, Lorg/acra/util/ReflectionHelper;-><init>()V

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->reflectionHelper:Lorg/acra/util/ReflectionHelper;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalDropboxTags:[Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalSharedPreferences:[Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mConnectionTimeout:Ljava/lang/Integer;

    .line 47
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mCustomReportContent:[Lorg/acra/ReportField;

    .line 48
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    .line 49
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    .line 50
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mDropboxCollectionMinutes:Ljava/lang/Integer;

    .line 51
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mForceCloseDialogAfterToast:Ljava/lang/Boolean;

    .line 52
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUri:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthLogin:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthPassword:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mIncludeDropboxSystemTags:Ljava/lang/Boolean;

    .line 57
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatArguments:[Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mMailTo:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mMaxNumberOfRequestRetries:Ljava/lang/Integer;

    .line 60
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mMode:Lorg/acra/ReportingInteractionMode;

    .line 61
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    .line 62
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportDialogClass:Ljava/lang/Class;

    .line 64
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogPositiveButtonText:Ljava/lang/Integer;

    .line 65
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogNegativeButtonText:Ljava/lang/Integer;

    .line 66
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogCommentPrompt:Ljava/lang/Integer;

    .line 67
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogEmailPrompt:Ljava/lang/Integer;

    .line 68
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogIcon:Ljava/lang/Integer;

    .line 69
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogOkToast:Ljava/lang/Integer;

    .line 70
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogText:Ljava/lang/Integer;

    .line 71
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogTitle:Ljava/lang/Integer;

    .line 72
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifIcon:Ljava/lang/Integer;

    .line 73
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifText:Ljava/lang/Integer;

    .line 74
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTickerText:Ljava/lang/Integer;

    .line 75
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTitle:Ljava/lang/Integer;

    .line 76
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResToastText:Ljava/lang/Integer;

    .line 77
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceMode:Ljava/lang/Integer;

    .line 78
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceName:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mSocketTimeout:Ljava/lang/Integer;

    .line 80
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatFilterByPid:Ljava/lang/Boolean;

    .line 81
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsInDevMode:Ljava/lang/Boolean;

    .line 82
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsAtShutdown:Ljava/lang/Boolean;

    .line 84
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSettingsKeys:[Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFile:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFileLines:Ljava/lang/Integer;

    .line 90
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mDisableSSLCertValidation:Ljava/lang/Boolean;

    .line 91
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpsSocketFactoryFactoryClass:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpMethod:Lorg/acra/sender/HttpSender$Method;

    .line 94
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportType:Lorg/acra/sender/HttpSender$Type;

    .line 683
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    return-void
.end method

.method public static isNull(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_d

    const-string v0, "ACRA-NULL-STRING"

    .line 1334
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method


# virtual methods
.method public additionalDropBoxTags()[Ljava/lang/String;
    .registers 2

    .line 696
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalDropboxTags:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 697
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalDropboxTags:[Ljava/lang/String;

    return-object v0

    .line 700
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 701
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    .line 704
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public additionalSharedPreferences()[Ljava/lang/String;
    .registers 2

    .line 709
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalSharedPreferences:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 710
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalSharedPreferences:[Ljava/lang/String;

    return-object v0

    .line 713
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 714
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->additionalSharedPreferences()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    .line 717
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public annotationType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->annotationType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public applicationLogFile()Ljava/lang/String;
    .registers 2

    .line 1199
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFile:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1200
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFile:Ljava/lang/String;

    return-object v0

    .line 1203
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 1204
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->applicationLogFile()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v0, ""

    return-object v0
.end method

.method public applicationLogFileLines()I
    .registers 2

    .line 1212
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFileLines:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1213
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFileLines:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1216
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 1217
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->applicationLogFileLines()I

    move-result v0

    return v0

    :cond_16
    const/16 v0, 0x64

    return v0
.end method

.method public buildConfigClass()Ljava/lang/Class;
    .registers 2

    .line 1186
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mBuildConfigClass:Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 1187
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mBuildConfigClass:Ljava/lang/Class;

    return-object v0

    .line 1190
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->buildConfigClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1191
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->buildConfigClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public connectionTimeout()I
    .registers 2

    .line 727
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mConnectionTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 728
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mConnectionTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 731
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 732
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->connectionTimeout()I

    move-result v0

    return v0

    :cond_16
    const/16 v0, 0xbb8

    return v0
.end method

.method public customReportContent()[Lorg/acra/ReportField;
    .registers 2

    .line 740
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mCustomReportContent:[Lorg/acra/ReportField;

    if-eqz v0, :cond_7

    .line 741
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mCustomReportContent:[Lorg/acra/ReportField;

    return-object v0

    .line 744
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 745
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    .line 748
    new-array v0, v0, [Lorg/acra/ReportField;

    return-object v0
.end method

.method public deleteOldUnsentReportsOnApplicationStart()Z
    .registers 2

    .line 766
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 767
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 770
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 771
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public deleteUnapprovedReportsOnApplicationStart()Z
    .registers 2

    .line 753
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 754
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 757
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 758
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public disableSSLCertValidation()Z
    .registers 2

    .line 1225
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDisableSSLCertValidation:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 1226
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDisableSSLCertValidation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1229
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 1230
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->disableSSLCertValidation()Z

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public dropboxCollectionMinutes()I
    .registers 2

    .line 779
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDropboxCollectionMinutes:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 780
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDropboxCollectionMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 783
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 784
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->dropboxCollectionMinutes()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x5

    return v0
.end method

.method public excludeMatchingSettingsKeys()[Ljava/lang/String;
    .registers 2

    .line 1169
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSettingsKeys:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1170
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSettingsKeys:[Ljava/lang/String;

    return-object v0

    .line 1173
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 1174
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->excludeMatchingSettingsKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    .line 1177
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public excludeMatchingSharedPreferencesKeys()[Ljava/lang/String;
    .registers 2

    .line 1156
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1157
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    return-object v0

    .line 1160
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 1161
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->excludeMatchingSharedPreferencesKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    .line 1164
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public forceCloseDialogAfterToast()Z
    .registers 2

    .line 792
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mForceCloseDialogAfterToast:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 793
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mForceCloseDialogAfterToast:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 796
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 797
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->forceCloseDialogAfterToast()Z

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public formUri()Ljava/lang/String;
    .registers 2

    .line 805
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUri:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 806
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUri:Ljava/lang/String;

    return-object v0

    .line 809
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 810
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v0, ""

    return-object v0
.end method

.method public formUriBasicAuthLogin()Ljava/lang/String;
    .registers 2

    .line 818
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthLogin:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 819
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthLogin:Ljava/lang/String;

    return-object v0

    .line 822
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 823
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUriBasicAuthLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v0, "ACRA-NULL-STRING"

    return-object v0
.end method

.method public formUriBasicAuthPassword()Ljava/lang/String;
    .registers 2

    .line 831
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthPassword:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 832
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthPassword:Ljava/lang/String;

    return-object v0

    .line 835
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 836
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUriBasicAuthPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v0, "ACRA-NULL-STRING"

    return-object v0
.end method

.method public getHttpHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpSocketFactoryFactory()Lorg/acra/util/HttpsSocketFactoryFactory;
    .registers 6

    .line 1272
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpsSocketFactoryFactory:Lorg/acra/util/HttpsSocketFactoryFactory;

    if-eqz v0, :cond_7

    .line 1273
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpsSocketFactoryFactory:Lorg/acra/util/HttpsSocketFactoryFactory;

    return-object v0

    .line 1276
    :cond_7
    invoke-virtual {p0}, Lorg/acra/ACRAConfiguration;->httpsSocketFactoryFactoryClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 1279
    :try_start_d
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->reflectionHelper:Lorg/acra/util/ReflectionHelper;

    iget-object v2, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v2}, Lorg/acra/annotation/ReportsCrashes;->httpsSocketFactoryFactoryClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/acra/util/ReflectionHelper;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1280
    instance-of v2, v1, Lorg/acra/util/HttpsSocketFactoryFactory;

    if-eqz v2, :cond_22

    .line 1281
    check-cast v1, Lorg/acra/util/HttpsSocketFactoryFactory;

    iput-object v1, p0, Lorg/acra/ACRAConfiguration;->mHttpsSocketFactoryFactory:Lorg/acra/util/HttpsSocketFactoryFactory;

    goto :goto_53

    .line 1283
    :cond_22
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using default httpsSocketFactoryFactory - not a HttpSocketFactoryFactory : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Lorg/acra/util/ReflectionException; {:try_start_d .. :try_end_3a} :catch_3b

    goto :goto_53

    .line 1286
    :catch_3b
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using default httpsSocketFactoryFactory - Could not construct : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_53
    :goto_53
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpsSocketFactoryFactoryClass:Ljava/lang/String;

    if-nez v0, :cond_5b

    .line 1292
    sget-object v0, Lorg/acra/util/DefaultHttpsSocketFactoryFactory;->INSTANCE:Lorg/acra/util/HttpsSocketFactoryFactory;

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpsSocketFactoryFactory:Lorg/acra/util/HttpsSocketFactoryFactory;

    .line 1295
    :cond_5b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpsSocketFactoryFactory:Lorg/acra/util/HttpsSocketFactoryFactory;

    return-object v0
.end method

.method public httpMethod()Lorg/acra/sender/HttpSender$Method;
    .registers 2

    .line 1301
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpMethod:Lorg/acra/sender/HttpSender$Method;

    if-eqz v0, :cond_7

    .line 1302
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpMethod:Lorg/acra/sender/HttpSender$Method;

    return-object v0

    .line 1305
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 1306
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->httpMethod()Lorg/acra/sender/HttpSender$Method;

    move-result-object v0

    return-object v0

    .line 1309
    :cond_12
    sget-object v0, Lorg/acra/sender/HttpSender$Method;->POST:Lorg/acra/sender/HttpSender$Method;

    return-object v0
.end method

.method public httpsSocketFactoryFactoryClass()Ljava/lang/String;
    .registers 2

    .line 1238
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpsSocketFactoryFactoryClass:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1239
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpsSocketFactoryFactoryClass:Ljava/lang/String;

    return-object v0

    .line 1242
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 1243
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->httpsSocketFactoryFactoryClass()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public includeDropBoxSystemTags()Z
    .registers 2

    .line 844
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mIncludeDropboxSystemTags:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 845
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mIncludeDropboxSystemTags:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 848
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 849
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->includeDropBoxSystemTags()Z

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public keyStore()Ljava/security/KeyStore;
    .registers 2

    .line 1326
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mKeyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_7

    .line 1327
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mKeyStore:Ljava/security/KeyStore;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public logcatArguments()[Ljava/lang/String;
    .registers 4

    .line 857
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatArguments:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 858
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatArguments:[Ljava/lang/String;

    return-object v0

    .line 861
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 862
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->logcatArguments()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x4

    .line 865
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-t"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-v"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public logcatFilterByPid()Z
    .registers 2

    .line 1117
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatFilterByPid:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 1118
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatFilterByPid:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1121
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 1122
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->logcatFilterByPid()Z

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public mailTo()Ljava/lang/String;
    .registers 2

    .line 870
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMailTo:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 871
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMailTo:Ljava/lang/String;

    return-object v0

    .line 874
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 875
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v0, ""

    return-object v0
.end method

.method public maxNumberOfRequestRetries()I
    .registers 2

    .line 883
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMaxNumberOfRequestRetries:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 884
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMaxNumberOfRequestRetries:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 887
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 888
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->maxNumberOfRequestRetries()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x3

    return v0
.end method

.method public mode()Lorg/acra/ReportingInteractionMode;
    .registers 2

    .line 896
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMode:Lorg/acra/ReportingInteractionMode;

    if-eqz v0, :cond_7

    .line 897
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMode:Lorg/acra/ReportingInteractionMode;

    return-object v0

    .line 900
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 901
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    return-object v0

    .line 904
    :cond_12
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    return-object v0
.end method

.method public reportDialogClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/BaseCrashReportDialog;",
            ">;"
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportDialogClass:Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 1253
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportDialogClass:Ljava/lang/Class;

    return-object v0

    .line 1256
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 1257
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->reportDialogClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 1260
    :cond_12
    const-class v0, Lorg/acra/CrashReportDialog;

    return-object v0
.end method

.method public reportType()Lorg/acra/sender/HttpSender$Type;
    .registers 2

    .line 1314
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportType:Lorg/acra/sender/HttpSender$Type;

    if-eqz v0, :cond_7

    .line 1315
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportType:Lorg/acra/sender/HttpSender$Type;

    return-object v0

    .line 1318
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 1319
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v0

    return-object v0

    .line 1322
    :cond_12
    sget-object v0, Lorg/acra/sender/HttpSender$Type;->FORM:Lorg/acra/sender/HttpSender$Type;

    return-object v0
.end method

.method public resDialogCommentPrompt()I
    .registers 2

    .line 935
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogCommentPrompt:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 936
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogCommentPrompt:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 939
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 940
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogCommentPrompt()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public resDialogEmailPrompt()I
    .registers 2

    .line 948
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogEmailPrompt:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 949
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogEmailPrompt:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 952
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 953
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogEmailPrompt()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public resDialogIcon()I
    .registers 2

    .line 961
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogIcon:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 962
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogIcon:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 965
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 966
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogIcon()I

    move-result v0

    return v0

    :cond_16
    const v0, 0x1080027

    return v0
.end method

.method public resDialogNegativeButtonText()I
    .registers 2

    .line 922
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogNegativeButtonText:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 923
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogNegativeButtonText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 926
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 927
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogNegativeButtonText()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public resDialogOkToast()I
    .registers 2

    .line 974
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogOkToast:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 975
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogOkToast:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 978
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 979
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogOkToast()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public resDialogPositiveButtonText()I
    .registers 2

    .line 909
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogPositiveButtonText:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 910
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogPositiveButtonText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 913
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 914
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogPositiveButtonText()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public resDialogText()I
    .registers 2

    .line 987
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogText:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 988
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 991
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 992
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public resDialogTitle()I
    .registers 2

    .line 1000
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogTitle:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1001
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogTitle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1004
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 1005
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogTitle()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public resNotifIcon()I
    .registers 2

    .line 1013
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifIcon:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1014
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifIcon:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1017
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 1018
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifIcon()I

    move-result v0

    return v0

    :cond_16
    const v0, 0x1080078

    return v0
.end method

.method public resNotifText()I
    .registers 2

    .line 1026
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifText:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1027
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1030
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 1031
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public resNotifTickerText()I
    .registers 2

    .line 1039
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTickerText:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1040
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTickerText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1043
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 1044
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public resNotifTitle()I
    .registers 2

    .line 1052
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTitle:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1053
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTitle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1056
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 1057
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public resToastText()I
    .registers 2

    .line 1065
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResToastText:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1066
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResToastText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1069
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 1070
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public sendReportsAtShutdown()Z
    .registers 2

    .line 1143
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsAtShutdown:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 1144
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsAtShutdown:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1147
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 1148
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sendReportsAtShutdown()Z

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public sendReportsInDevMode()Z
    .registers 2

    .line 1130
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsInDevMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 1131
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsInDevMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1134
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 1135
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sendReportsInDevMode()Z

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public setAdditionalDropboxTags([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 129
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mAdditionalDropboxTags:[Ljava/lang/String;

    return-object p0
.end method

.method public setAdditionalSharedPreferences([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 140
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mAdditionalSharedPreferences:[Ljava/lang/String;

    return-object p0
.end method

.method public setApplicationLogFile(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 614
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFile:Ljava/lang/String;

    return-object p0
.end method

.method public setApplicationLogFileLines(I)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 628
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFileLines:Ljava/lang/Integer;

    return-object p0
.end method

.method public setBuildConfigClass(Ljava/lang/Class;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 602
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mBuildConfigClass:Ljava/lang/Class;

    return-object p0
.end method

.method public setConnectionTimeout(Ljava/lang/Integer;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 151
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mConnectionTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public setCustomReportContent([Lorg/acra/ReportField;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 162
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mCustomReportContent:[Lorg/acra/ReportField;

    return-object p0
.end method

.method public setDeleteOldUnsentReportsOnApplicationStart(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 183
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDeleteUnapprovedReportsOnApplicationStart(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 173
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDisableSSLCertValidation(Z)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 640
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mDisableSSLCertValidation:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDropboxCollectionMinutes(Ljava/lang/Integer;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 194
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mDropboxCollectionMinutes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setExcludeMatchingSettingsKeys([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 596
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSettingsKeys:[Ljava/lang/String;

    return-object p0
.end method

.method public setExcludeMatchingSharedPreferencesKeys([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 582
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    return-object p0
.end method

.method public setForceCloseDialogAfterToast(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 205
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mForceCloseDialogAfterToast:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setFormUri(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 221
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mFormUri:Ljava/lang/String;

    return-object p0
.end method

.method public setFormUriBasicAuthLogin(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 232
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthLogin:Ljava/lang/String;

    return-object p0
.end method

.method public setFormUriBasicAuthPassword(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 243
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthPassword:Ljava/lang/String;

    return-object p0
.end method

.method public setHttpHeaders(Ljava/util/Map;)Lorg/acra/ACRAConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/acra/ACRAConfiguration;"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mHttpHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public setHttpMethod(Lorg/acra/sender/HttpSender$Method;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 652
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mHttpMethod:Lorg/acra/sender/HttpSender$Method;

    return-object p0
.end method

.method public setHttpsSocketFactoryFactory(Lorg/acra/util/HttpsSocketFactoryFactory;)V
    .registers 2

    .line 1268
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mHttpsSocketFactoryFactory:Lorg/acra/util/HttpsSocketFactoryFactory;

    return-void
.end method

.method public setIncludeDropboxSystemTags(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 254
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mIncludeDropboxSystemTags:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setKeyStore(Ljava/security/KeyStore;)V
    .registers 2

    .line 676
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mKeyStore:Ljava/security/KeyStore;

    return-void
.end method

.method public setLogcatArguments([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 265
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mLogcatArguments:[Ljava/lang/String;

    return-object p0
.end method

.method public setLogcatFilterByPid(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 541
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mLogcatFilterByPid:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setMailTo(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 281
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mMailTo:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxNumberOfRequestRetries(Ljava/lang/Integer;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 292
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mMaxNumberOfRequestRetries:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMode(Lorg/acra/ReportingInteractionMode;)Lorg/acra/ACRAConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/ACRAConfigurationException;
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mMode:Lorg/acra/ReportingInteractionMode;

    .line 309
    invoke-static {p0}, Lorg/acra/ACRA;->checkCrashResources(Lorg/acra/annotation/ReportsCrashes;)V

    return-object p0
.end method

.method public setReportDialogClass(Ljava/lang/Class;)Lorg/acra/ACRAConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/BaseCrashReportDialog;",
            ">;)",
            "Lorg/acra/ACRAConfiguration;"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mReportDialogClass:Ljava/lang/Class;

    return-object p0
.end method

.method public setReportType(Lorg/acra/sender/HttpSender$Type;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 665
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mReportType:Lorg/acra/sender/HttpSender$Type;

    return-object p0
.end method

.method public setResDialogCommentPrompt(I)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mResDialogCommentPrompt:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogEmailPrompt(I)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 359
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mResDialogEmailPrompt:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogIcon(I)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mResDialogIcon:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogNegativeButtonText(I)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mResDialogNegativeButtonText:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogOkToast(I)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 389
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mResDialogOkToast:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogPositiveButtonText(I)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 315
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mResDialogPositiveButtonText:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogText(I)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 404
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mResDialogText:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogTitle(I)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 419
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mResDialogTitle:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResNotifIcon(I)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mResNotifIcon:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResNotifText(I)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mResNotifText:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResNotifTickerText(I)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 465
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mResNotifTickerText:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResNotifTitle(I)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 480
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mResNotifTitle:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResToastText(I)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mResToastText:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSendReportsAtShutdown(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 568
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mSendReportsAtShutdown:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSendReportsInDevMode(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 554
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mSendReportsInDevMode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSharedPreferenceMode(Ljava/lang/Integer;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 506
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSharedPreferenceName(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 517
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceName:Ljava/lang/String;

    return-object p0
.end method

.method public setSocketTimeout(Ljava/lang/Integer;)Lorg/acra/ACRAConfiguration;
    .registers 2

    .line 528
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mSocketTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public sharedPreferencesMode()I
    .registers 2

    .line 1078
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceMode:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1079
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1082
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 1083
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesMode()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public sharedPreferencesName()Ljava/lang/String;
    .registers 2

    .line 1091
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1092
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceName:Ljava/lang/String;

    return-object v0

    .line 1095
    :cond_7
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_12

    .line 1096
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v0, ""

    return-object v0
.end method

.method public socketTimeout()I
    .registers 2

    .line 1104
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSocketTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 1105
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSocketTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1108
    :cond_b
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_16

    .line 1109
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->socketTimeout()I

    move-result v0

    return v0

    :cond_16
    const/16 v0, 0x1388

    return v0
.end method

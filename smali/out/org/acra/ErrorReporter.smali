.class public Lorg/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/ErrorReporter$ReportBuilder;,
        Lorg/acra/ErrorReporter$TimeHelper;
    }
.end annotation


# static fields
.field private static final NULL_EXCEPTION_HANDLER_INITIALIZER:Lorg/acra/ExceptionHandlerInitializer;

.field private static mNotificationCounter:I = 0x0

.field private static toastWaitEnded:Z = true


# instance fields
.field private final crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

.field private enabled:Z

.field private volatile exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

.field private final fileNameParser:Lorg/acra/CrashReportFileNameParser;

.field private lastActivityCreated:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/app/Application;

.field private final mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mReportSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 111
    new-instance v0, Lorg/acra/ErrorReporter$1;

    invoke-direct {v0}, Lorg/acra/ErrorReporter$1;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->NULL_EXCEPTION_HANDLER_INITIALIZER:Lorg/acra/ExceptionHandlerInitializer;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Landroid/content/SharedPreferences;Z)V
    .registers 7

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lorg/acra/ErrorReporter;->enabled:Z

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    .line 96
    new-instance v0, Lorg/acra/CrashReportFileNameParser;

    invoke-direct {v0}, Lorg/acra/CrashReportFileNameParser;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    .line 117
    sget-object v0, Lorg/acra/ErrorReporter;->NULL_EXCEPTION_HANDLER_INITIALIZER:Lorg/acra/ExceptionHandlerInitializer;

    iput-object v0, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    .line 137
    iput-object p1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    .line 138
    iput-object p2, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    .line 139
    iput-boolean p3, p0, Lorg/acra/ErrorReporter;->enabled:Z

    .line 142
    iget-object p3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-static {p3}, Lorg/acra/collector/ConfigurationCollector;->collectConfiguration(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 147
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 148
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 150
    invoke-static {}, Lorg/acra/collector/Compatibility;->getAPILevel()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_44

    .line 152
    new-instance v1, Lorg/acra/ErrorReporter$2;

    invoke-direct {v1, p0}, Lorg/acra/ErrorReporter$2;-><init>(Lorg/acra/ErrorReporter;)V

    invoke-static {p1, v1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ApplicationHelper;->registerActivityLifecycleCallbacks(Landroid/app/Application;Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V

    .line 203
    :cond_44
    new-instance p1, Lorg/acra/collector/CrashReportDataFactory;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {p1, v1, p2, v0, p3}, Lorg/acra/collector/CrashReportDataFactory;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/text/format/Time;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    .line 207
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 208
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static synthetic access$002(Lorg/acra/ErrorReporter;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    .line 82
    iput-object p1, p0, Lorg/acra/ErrorReporter;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 82
    sget-boolean v0, Lorg/acra/ErrorReporter;->toastWaitEnded:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .registers 1

    .line 82
    sput-boolean p0, Lorg/acra/ErrorReporter;->toastWaitEnded:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/acra/ErrorReporter;Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;
    .registers 3

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/acra/ErrorReporter;->createCrashReportDialogIntent(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lorg/acra/ErrorReporter;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 3

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/acra/ErrorReporter;->endApplication(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$ReportBuilder;)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter;->report(Lorg/acra/ErrorReporter$ReportBuilder;)V

    return-void
.end method

.method static synthetic access$400(Lorg/acra/ErrorReporter;)Landroid/app/Application;
    .registers 1

    .line 82
    iget-object p0, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    return-object p0
.end method

.method private containsOnlySilentOrApprovedReports([Ljava/lang/String;)Z
    .registers 7

    .line 977
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_13

    aget-object v3, p1, v2

    .line 978
    iget-object v4, p0, Lorg/acra/ErrorReporter;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    invoke-virtual {v4, v3}, Lorg/acra/CrashReportFileNameParser;->isApproved(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    return v1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_13
    const/4 p1, 0x1

    return p1
.end method

.method private createCrashReportDialogIntent(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;
    .registers 6

    .line 853
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating DialogIntent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->reportDialogClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "REPORT_FILE_NAME"

    .line 855
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REPORT_EXCEPTION"

    .line 856
    invoke-static {p2}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method private createNotification(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V
    .registers 11

    .line 871
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 873
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    .line 876
    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->resNotifIcon()I

    move-result v2

    .line 878
    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 879
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 880
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 882
    iget-object v2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 883
    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 885
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating Notification for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-direct {p0, p1, p2}, Lorg/acra/ErrorReporter;->createCrashReportDialogIntent(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object v3

    .line 887
    iget-object v4, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    sget v5, Lorg/acra/ErrorReporter;->mNotificationCounter:I

    add-int/lit8 v7, v5, 0x1

    sput v7, Lorg/acra/ErrorReporter;->mNotificationCounter:I

    const/high16 v7, 0x8000000

    invoke-static {v4, v5, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 889
    iget-object v4, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v6, v4, v2, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 890
    iget v1, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v6, Landroid/app/Notification;->flags:I

    .line 895
    invoke-direct {p0, p1, p2}, Lorg/acra/ErrorReporter;->createCrashReportDialogIntent(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "FORCE_CANCEL"

    const/4 v1, 0x1

    .line 896
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 897
    iget-object p2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p2, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/16 p1, 0x29a

    .line 900
    invoke-virtual {v0, p1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private deletePendingReports(ZZI)V
    .registers 12

    .line 951
    new-instance v0, Lorg/acra/CrashReportFinder;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v0, v1}, Lorg/acra/CrashReportFinder;-><init>(Landroid/content/Context;)V

    .line 952
    invoke-virtual {v0}, Lorg/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v0

    .line 953
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 954
    :goto_f
    array-length v2, v0

    sub-int/2addr v2, p3

    if-ge v1, v2, :cond_65

    .line 955
    aget-object v2, v0, v1

    .line 956
    iget-object v3, p0, Lorg/acra/ErrorReporter;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    invoke-virtual {v3, v2}, Lorg/acra/CrashReportFileNameParser;->isApproved(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    if-nez p1, :cond_23

    :cond_1f
    if-nez v3, :cond_62

    if-eqz p2, :cond_62

    .line 958
    :cond_23
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 959
    sget-object v4, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_62

    .line 961
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete report : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_65
    return-void
.end method

.method private endApplication(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    .line 443
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    sget-object v1, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_27

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    sget-object v1, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v1, :cond_25

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->forceCloseDialogAfterToast()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    if-eqz v2, :cond_41

    if-eqz v0, :cond_41

    .line 449
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_41

    .line 451
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Handing Exception on to default ExceptionHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_a3

    .line 457
    :cond_41
    sget-object p1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fatal error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    iget-object p1, p0, Lorg/acra/ErrorReporter;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_97

    .line 465
    sget-object p2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Finishing the last Activity prior to killing the Process"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 467
    sget-object p2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object p1, p0, Lorg/acra/ErrorReporter;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 471
    :cond_97
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/16 p1, 0xa

    .line 472
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :goto_a3
    return-void
.end method

.method public static getInstance()Lorg/acra/ErrorReporter;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    return-object v0
.end method

.method private getReportFileName(Lorg/acra/collector/CrashReportData;)Ljava/lang/String;
    .registers 6

    .line 904
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 905
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    const/4 v1, 0x0

    .line 906
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 907
    sget-object v2, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {p1, v2}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object p1

    .line 908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_25

    sget-object p1, Lorg/acra/ACRAConstants;->SILENT_SUFFIX:Ljava/lang/String;

    goto :goto_27

    :cond_25
    const-string p1, ""

    :goto_27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".stacktrace"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private report(Lorg/acra/ErrorReporter$ReportBuilder;)V
    .registers 16

    .line 687
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->enabled:Z

    if-nez v0, :cond_5

    return-void

    .line 692
    :cond_5
    :try_start_5
    iget-object v0, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    invoke-interface {v0, p0}, Lorg/acra/ExceptionHandlerInitializer;->initializeExceptionHandler(Lorg/acra/ErrorReporter;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_28

    .line 694
    :catch_b
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initlize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from #handleException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :goto_28
    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$200(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3a

    .line 702
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    :cond_38
    const/4 v3, 0x0

    goto :goto_49

    .line 704
    :cond_3a
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    .line 710
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v3

    sget-object v4, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v3, v4, :cond_38

    const/4 v3, 0x1

    .line 715
    :goto_49
    sget-object v4, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v4, :cond_62

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/acra/ACRAConfiguration;->resToastText()I

    move-result v4

    if-eqz v4, :cond_60

    sget-object v4, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v4, :cond_62

    sget-object v4, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v4, :cond_60

    goto :goto_62

    :cond_60
    const/4 v4, 0x0

    goto :goto_63

    :cond_62
    :goto_62
    const/4 v4, 0x1

    .line 718
    :goto_63
    new-instance v5, Lorg/acra/ErrorReporter$TimeHelper;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/acra/ErrorReporter$TimeHelper;-><init>(Lorg/acra/ErrorReporter$1;)V

    if-eqz v4, :cond_73

    .line 720
    new-instance v7, Lorg/acra/ErrorReporter$3;

    invoke-direct {v7, p0, v5}, Lorg/acra/ErrorReporter$3;-><init>(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$TimeHelper;)V

    invoke-virtual {v7}, Lorg/acra/ErrorReporter$3;->start()V

    .line 741
    :cond_73
    iget-object v8, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$500(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v10

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$700(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/util/Map;

    move-result-object v11

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$200(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v12

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$800(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual/range {v8 .. v13}, Lorg/acra/collector/CrashReportDataFactory;->createCrashData(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;ZLjava/lang/Thread;)Lorg/acra/collector/CrashReportData;

    move-result-object v7

    .line 747
    invoke-direct {p0, v7}, Lorg/acra/ErrorReporter;->getReportFileName(Lorg/acra/collector/CrashReportData;)Ljava/lang/String;

    move-result-object v12

    .line 748
    invoke-direct {p0, v12, v7}, Lorg/acra/ErrorReporter;->saveCrashReportFile(Ljava/lang/String;Lorg/acra/collector/CrashReportData;)V

    .line 750
    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v7

    if-eqz v7, :cond_af

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/acra/ACRAConfiguration;->sendReportsAtShutdown()Z

    move-result v7

    if-nez v7, :cond_af

    .line 751
    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$800(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;

    move-result-object v7

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lorg/acra/ErrorReporter;->endApplication(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 756
    :cond_af
    sget-object v7, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v7, :cond_d1

    sget-object v7, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v7, :cond_d1

    iget-object v7, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "acra.alwaysaccept"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_c2

    goto :goto_d1

    .line 769
    :cond_c2
    sget-object v3, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v3, :cond_e7

    .line 770
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Creating Notification."

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-direct {p0, v12, p1}, Lorg/acra/ErrorReporter;->createNotification(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V

    goto :goto_e7

    .line 761
    :cond_d1
    :goto_d1
    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "About to start ReportSenderWorker from #handleException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {p0, v3, v1}, Lorg/acra/ErrorReporter;->startSendingReports(ZZ)Lorg/acra/SendWorker;

    move-result-object v6

    .line 763
    sget-object v3, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v3, :cond_e7

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v3

    if-nez v3, :cond_e7

    return-void

    :cond_e7
    :goto_e7
    move-object v10, v6

    if-eqz v4, :cond_f4

    .line 779
    sput-boolean v2, Lorg/acra/ErrorReporter;->toastWaitEnded:Z

    .line 780
    new-instance v3, Lorg/acra/ErrorReporter$4;

    invoke-direct {v3, p0, v5}, Lorg/acra/ErrorReporter$4;-><init>(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$TimeHelper;)V

    invoke-virtual {v3}, Lorg/acra/ErrorReporter$4;->start()V

    .line 803
    :cond_f4
    sget-object v3, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v3, :cond_104

    iget-object v0, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "acra.alwaysaccept"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_104

    const/4 v11, 0x1

    goto :goto_105

    :cond_104
    const/4 v11, 0x0

    .line 806
    :goto_105
    new-instance v0, Lorg/acra/ErrorReporter$5;

    move-object v8, v0

    move-object v9, p0

    move-object v13, p1

    invoke-direct/range {v8 .. v13}, Lorg/acra/ErrorReporter$5;-><init>(Lorg/acra/ErrorReporter;Lorg/acra/SendWorker;ZLjava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$5;->start()V

    return-void
.end method

.method private saveCrashReportFile(Ljava/lang/String;Lorg/acra/collector/CrashReportData;)V
    .registers 6

    .line 929
    :try_start_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing crash report file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-instance v0, Lorg/acra/CrashReportPersister;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v0, v1}, Lorg/acra/CrashReportPersister;-><init>(Landroid/content/Context;)V

    .line 931
    invoke-virtual {v0, p2, p1}, Lorg/acra/CrashReportPersister;->store(Lorg/acra/collector/CrashReportData;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception p1

    .line 933
    sget-object p2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v0, "An error occurred while writing the report file..."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    return-void
.end method


# virtual methods
.method public addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1, p2}, Lorg/acra/collector/CrashReportDataFactory;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public addReportSender(Lorg/acra/sender/ReportSender;)V
    .registers 3

    .line 339
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkReportsOnApplicationStart()V
    .registers 9

    .line 539
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_41

    .line 542
    iget-object v0, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "acra.lastVersionNr"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v3, v0

    .line 543
    new-instance v0, Lorg/acra/util/PackageManagerWrapper;

    iget-object v5, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v0, v5}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 544
    invoke-virtual {v0}, Lorg/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 546
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v5, v5

    cmp-long v7, v5, v3

    if-lez v7, :cond_2b

    const/4 v3, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x0

    :goto_2c
    if-eqz v3, :cond_31

    .line 548
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->deletePendingReports()V

    .line 550
    :cond_31
    iget-object v3, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "acra.lastVersionNr"

    .line 551
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 556
    :cond_41
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    .line 558
    sget-object v3, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v3, :cond_51

    sget-object v3, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v3, :cond_5e

    :cond_51
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 566
    invoke-virtual {p0, v1}, Lorg/acra/ErrorReporter;->deletePendingNonApprovedReports(Z)V

    .line 569
    :cond_5e
    new-instance v3, Lorg/acra/CrashReportFinder;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v3, v4}, Lorg/acra/CrashReportFinder;-><init>(Landroid/content/Context;)V

    .line 570
    invoke-virtual {v3}, Lorg/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a1

    .line 572
    array-length v4, v3

    if-lez v4, :cond_a1

    .line 581
    invoke-direct {p0, v3}, Lorg/acra/ErrorReporter;->containsOnlySilentOrApprovedReports([Ljava/lang/String;)Z

    move-result v3

    .line 583
    sget-object v4, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v4, :cond_84

    sget-object v4, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v4, :cond_84

    if-eqz v3, :cond_a1

    sget-object v4, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v4, :cond_84

    sget-object v4, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v4, :cond_a1

    .line 587
    :cond_84
    sget-object v4, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v4, :cond_97

    if-nez v3, :cond_97

    .line 590
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->resToastText()I

    move-result v3

    invoke-static {v0, v3, v1}, Lorg/acra/util/ToastSender;->sendToast(Landroid/content/Context;II)V

    .line 593
    :cond_97
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "About to start ReportSenderWorker from #checkReportOnApplicationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {p0, v2, v2}, Lorg/acra/ErrorReporter;->startSendingReports(ZZ)Lorg/acra/SendWorker;

    :cond_a1
    return-void
.end method

.method public clearCustomData()V
    .registers 2

    .line 315
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0}, Lorg/acra/collector/CrashReportDataFactory;->clearCustomData()V

    return-void
.end method

.method deletePendingNonApprovedReports(Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 611
    invoke-direct {p0, v0, v1, p1}, Lorg/acra/ErrorReporter;->deletePendingReports(ZZI)V

    return-void
.end method

.method deletePendingReports()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 530
    invoke-direct {p0, v0, v0, v1}, Lorg/acra/ErrorReporter;->deletePendingReports(ZZI)V

    return-void
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 329
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1}, Lorg/acra/collector/CrashReportDataFactory;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .registers 3

    .line 646
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->send()V

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;Z)V
    .registers 4

    .line 627
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object p1

    if-eqz p2, :cond_d

    .line 630
    invoke-virtual {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->endsApplication()Lorg/acra/ErrorReporter$ReportBuilder;

    .line 632
    :cond_d
    invoke-virtual {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->send()V

    return-void
.end method

.method public handleSilentException(Ljava/lang/Throwable;)V
    .registers 3

    .line 487
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->enabled:Z

    if-eqz v0, :cond_1b

    .line 488
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->forceSilent()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->send()V

    .line 492
    sget-object p1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v0, "ACRA sent Silent report."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 496
    :cond_1b
    sget-object p1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v0, "ACRA is disabled. Silent report not sent."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 261
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1, p2}, Lorg/acra/collector/CrashReportDataFactory;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeAllReportSenders()V
    .registers 2

    .line 377
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 307
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1}, Lorg/acra/collector/CrashReportDataFactory;->removeCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeReportSender(Lorg/acra/sender/ReportSender;)V
    .registers 3

    .line 351
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeReportSenders(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 362
    const-class v0, Lorg/acra/sender/ReportSender;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 363
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/sender/ReportSender;

    .line 364
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 365
    iget-object v2, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_26
    return-void
.end method

.method public reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;
    .registers 2

    .line 657
    new-instance v0, Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-direct {v0, p0}, Lorg/acra/ErrorReporter$ReportBuilder;-><init>(Lorg/acra/ErrorReporter;)V

    return-object v0
.end method

.method public setDefaultReportSenders()V
    .registers 5

    .line 990
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    .line 991
    invoke-static {}, Lorg/acra/ACRA;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 992
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->removeAllReportSenders()V

    const-string v2, ""

    .line 996
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 997
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reports will be sent by email (if accepted by user)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v0, Lorg/acra/sender/EmailIntentSender;

    invoke-direct {v0, v1}, Lorg/acra/sender/EmailIntentSender;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lorg/acra/ErrorReporter;->setReportSender(Lorg/acra/sender/ReportSender;)V

    return-void

    .line 1002
    :cond_3a
    new-instance v2, Lorg/acra/util/PackageManagerWrapper;

    invoke-direct {v2, v1}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    const-string v3, "android.permission.INTERNET"

    .line 1003
    invoke-virtual {v2, v3}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 1009
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " should be granted permission "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " if you want your crash reports to be sent. If you don\'t want to add this permission to your application you can also enable sending reports by email. If this is your will then provide your email address in @ReportsCrashes(mailTo=\"your.account@domain.com\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1019
    :cond_6c
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_97

    const-string v1, ""

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 1020
    new-instance v0, Lorg/acra/sender/HttpSender;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->httpMethod()Lorg/acra/sender/HttpSender$Method;

    move-result-object v1

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/acra/sender/HttpSender;-><init>(Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/acra/ErrorReporter;->setReportSender(Lorg/acra/sender/ReportSender;)V

    :cond_97
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5

    .line 507
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_11

    const-string v2, "enabled"

    goto :goto_13

    :cond_11
    const-string v2, "disabled"

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iput-boolean p1, p0, Lorg/acra/ErrorReporter;->enabled:Z

    return-void
.end method

.method public setExceptionHandlerInitializer(Lorg/acra/ExceptionHandlerInitializer;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    .line 293
    :cond_3
    sget-object p1, Lorg/acra/ErrorReporter;->NULL_EXCEPTION_HANDLER_INITIALIZER:Lorg/acra/ExceptionHandlerInitializer;

    :goto_5
    iput-object p1, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    return-void
.end method

.method public setReportSender(Lorg/acra/sender/ReportSender;)V
    .registers 2

    .line 388
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->removeAllReportSenders()V

    .line 389
    invoke-virtual {p0, p1}, Lorg/acra/ErrorReporter;->addReportSender(Lorg/acra/sender/ReportSender;)V

    return-void
.end method

.method startSendingReports(ZZ)Lorg/acra/SendWorker;
    .registers 6

    .line 521
    new-instance v0, Lorg/acra/SendWorker;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/acra/SendWorker;-><init>(Landroid/content/Context;Ljava/util/List;ZZ)V

    .line 522
    invoke-virtual {v0}, Lorg/acra/SendWorker;->start()V

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .line 404
    :try_start_0
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->enabled:Z

    if-nez v0, :cond_7d

    .line 405
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2f

    .line 406
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA is disabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - forwarding uncaught Exception on to default ExceptionHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_7c

    .line 410
    :cond_2f
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA is disabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - no default ExceptionHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA caught a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7c
    return-void

    .line 418
    :cond_7d
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA caught a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Building report"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$100(Lorg/acra/ErrorReporter$ReportBuilder;Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/acra/ErrorReporter$ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->endsApplication()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->send()V
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c3} :catch_c4

    goto :goto_cd

    .line 431
    :catch_c4
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_cd

    .line 432
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_cd
    :goto_cd
    return-void
.end method

.class final Lorg/acra/SendWorker;
.super Ljava/lang/Thread;
.source "SendWorker.java"


# instance fields
.field private final approvePendingReports:Z

.field private final context:Landroid/content/Context;

.field private final fileNameParser:Lorg/acra/CrashReportFileNameParser;

.field private final reportSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation
.end field

.field private final sendOnlySilentReports:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/acra/sender/ReportSender;",
            ">;ZZ)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 42
    new-instance v0, Lorg/acra/CrashReportFileNameParser;

    invoke-direct {v0}, Lorg/acra/CrashReportFileNameParser;-><init>()V

    iput-object v0, p0, Lorg/acra/SendWorker;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    .line 61
    iput-object p1, p0, Lorg/acra/SendWorker;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lorg/acra/SendWorker;->reportSenders:Ljava/util/List;

    .line 63
    iput-boolean p3, p0, Lorg/acra/SendWorker;->sendOnlySilentReports:Z

    .line 64
    iput-boolean p4, p0, Lorg/acra/SendWorker;->approvePendingReports:Z

    return-void
.end method

.method private approvePendingReports()V
    .registers 9

    .line 85
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Mark all pending reports as approved."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Lorg/acra/CrashReportFinder;

    iget-object v1, p0, Lorg/acra/SendWorker;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/acra/CrashReportFinder;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v0}, Lorg/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v0

    .line 90
    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_65

    aget-object v3, v0, v2

    .line 91
    iget-object v4, p0, Lorg/acra/SendWorker;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    invoke-virtual {v4, v3}, Lorg/acra/CrashReportFileNameParser;->isApproved(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 92
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/acra/SendWorker;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, ".stacktrace"

    const-string v6, "-approved.stacktrace"

    .line 96
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 101
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lorg/acra/SendWorker;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 103
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not rename approved report from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_65
    return-void
.end method

.method private checkAndSendReports(Landroid/content/Context;Z)V
    .registers 12

    .line 120
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#checkAndSendReports - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Lorg/acra/CrashReportFinder;

    invoke-direct {v0, p1}, Lorg/acra/CrashReportFinder;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v0}, Lorg/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 127
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v2, v1, :cond_a1

    aget-object v4, v0, v2

    if-eqz p2, :cond_25

    .line 128
    iget-object v5, p0, Lorg/acra/SendWorker;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    invoke-virtual {v5, v4}, Lorg/acra/CrashReportFileNameParser;->isSilent(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_69

    :cond_25
    const/4 v5, 0x5

    if-lt v3, v5, :cond_2a

    goto/16 :goto_a1

    .line 137
    :cond_2a
    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_40
    new-instance v5, Lorg/acra/CrashReportPersister;

    invoke-direct {v5, p1}, Lorg/acra/CrashReportPersister;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v5, v4}, Lorg/acra/CrashReportPersister;->load(Ljava/lang/String;)Lorg/acra/collector/CrashReportData;

    move-result-object v5

    .line 141
    invoke-direct {p0, v5}, Lorg/acra/SendWorker;->sendCrashReport(Lorg/acra/collector/CrashReportData;)V

    .line 142
    invoke-direct {p0, p1, v4}, Lorg/acra/SendWorker;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_4f} :catch_87
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4f} :catch_6c
    .catch Lorg/acra/sender/ReportSenderException; {:try_start_40 .. :try_end_4f} :catch_50

    goto :goto_67

    :catch_50
    move-exception v5

    .line 154
    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send crash report for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_67
    add-int/lit8 v3, v3, 0x1

    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :catch_6c
    move-exception p2

    .line 149
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load crash report for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    invoke-direct {p0, p1, v4}, Lorg/acra/SendWorker;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a1

    :catch_87
    move-exception p2

    .line 144
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send crash reports for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    invoke-direct {p0, p1, v4}, Lorg/acra/SendWorker;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    :cond_a1
    :goto_a1
    sget-object p1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string p2, "#checkAndSendReports - finish"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 199
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 201
    sget-object p1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not delete error report : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method

.method private sendCrashReport(Lorg/acra/collector/CrashReportData;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/sender/ReportSenderException;
        }
    .end annotation

    .line 175
    invoke-static {}, Lorg/acra/ACRA;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->sendReportsInDevMode()Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_10
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lorg/acra/SendWorker;->reportSenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/acra/sender/ReportSender;

    .line 179
    :try_start_23
    iget-object v3, p0, Lorg/acra/SendWorker;->context:Landroid/content/Context;

    invoke-interface {v2, v3, p1}, Lorg/acra/sender/ReportSender;->send(Landroid/content/Context;Lorg/acra/collector/CrashReportData;)V
    :try_end_28
    .catch Lorg/acra/sender/ReportSenderException; {:try_start_23 .. :try_end_28} :catch_2a

    const/4 v0, 0x1

    goto :goto_17

    :catch_2a
    move-exception v3

    if-nez v0, :cond_2e

    .line 185
    throw v3

    .line 188
    :cond_2e
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReportSender of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed but other senders completed their task. ACRA will not send this report again."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_52
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 74
    iget-boolean v0, p0, Lorg/acra/SendWorker;->approvePendingReports:Z

    if-eqz v0, :cond_7

    .line 75
    invoke-direct {p0}, Lorg/acra/SendWorker;->approvePendingReports()V

    .line 77
    :cond_7
    iget-object v0, p0, Lorg/acra/SendWorker;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lorg/acra/SendWorker;->sendOnlySilentReports:Z

    invoke-direct {p0, v0, v1}, Lorg/acra/SendWorker;->checkAndSendReports(Landroid/content/Context;Z)V

    return-void
.end method

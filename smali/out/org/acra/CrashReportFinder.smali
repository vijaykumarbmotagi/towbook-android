.class final Lorg/acra/CrashReportFinder;
.super Ljava/lang/Object;
.source "CrashReportFinder.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/acra/CrashReportFinder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCrashReportFiles()[Ljava/lang/String;
    .registers 6

    .line 46
    iget-object v0, p0, Lorg/acra/CrashReportFinder;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 47
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 51
    :cond_f
    iget-object v0, p0, Lorg/acra/CrashReportFinder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_21

    .line 53
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 57
    :cond_21
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Looking for error files in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v2, Lorg/acra/CrashReportFinder$1;

    invoke-direct {v2, p0}, Lorg/acra/CrashReportFinder$1;-><init>(Lorg/acra/CrashReportFinder;)V

    .line 65
    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_48

    .line 66
    new-array v0, v1, [Ljava/lang/String;

    :cond_48
    return-object v0
.end method

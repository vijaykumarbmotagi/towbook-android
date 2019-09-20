.class Lorg/acra/CrashReportFinder$1;
.super Ljava/lang/Object;
.source "CrashReportFinder.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/CrashReportFinder;


# direct methods
.method constructor <init>(Lorg/acra/CrashReportFinder;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lorg/acra/CrashReportFinder$1;->this$0:Lorg/acra/CrashReportFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    const-string p1, ".stacktrace"

    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

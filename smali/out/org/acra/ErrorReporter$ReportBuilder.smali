.class public final Lorg/acra/ErrorReporter$ReportBuilder;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReportBuilder"
.end annotation


# instance fields
.field private mCustomData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEndsApplication:Z

.field private mException:Ljava/lang/Throwable;

.field private mForceSilent:Z

.field private mMessage:Ljava/lang/String;

.field private mUncaughtExceptionThread:Ljava/lang/Thread;

.field final synthetic this$0:Lorg/acra/ErrorReporter;


# direct methods
.method public constructor <init>(Lorg/acra/ErrorReporter;)V
    .registers 2

    .line 1027
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->this$0:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1034
    iput-boolean p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mForceSilent:Z

    .line 1035
    iput-boolean p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mEndsApplication:Z

    return-void
.end method

.method static synthetic access$100(Lorg/acra/ErrorReporter$ReportBuilder;Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;
    .registers 2

    .line 1027
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->uncaughtExceptionThread(Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/acra/ErrorReporter$ReportBuilder;)Z
    .registers 1

    .line 1027
    iget-boolean p0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mForceSilent:Z

    return p0
.end method

.method static synthetic access$500(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/String;
    .registers 1

    .line 1027
    iget-object p0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;
    .registers 1

    .line 1027
    iget-object p0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mException:Ljava/lang/Throwable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/util/Map;
    .registers 1

    .line 1027
    iget-object p0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mCustomData:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;
    .registers 1

    .line 1027
    iget-object p0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mUncaughtExceptionThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z
    .registers 1

    .line 1027
    iget-boolean p0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mEndsApplication:Z

    return p0
.end method

.method private initCustomData()V
    .registers 2

    .line 1071
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mCustomData:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 1072
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mCustomData:Ljava/util/Map;

    :cond_b
    return-void
.end method

.method private uncaughtExceptionThread(Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;
    .registers 2

    .line 1055
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mUncaughtExceptionThread:Ljava/lang/Thread;

    return-object p0
.end method


# virtual methods
.method public customData(Ljava/lang/String;Ljava/lang/String;)Lorg/acra/ErrorReporter$ReportBuilder;
    .registers 4

    .line 1099
    invoke-direct {p0}, Lorg/acra/ErrorReporter$ReportBuilder;->initCustomData()V

    .line 1100
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mCustomData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public customData(Ljava/util/Map;)Lorg/acra/ErrorReporter$ReportBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/acra/ErrorReporter$ReportBuilder;"
        }
    .end annotation

    .line 1084
    invoke-direct {p0}, Lorg/acra/ErrorReporter$ReportBuilder;->initCustomData()V

    .line 1085
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mCustomData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public endsApplication()Lorg/acra/ErrorReporter$ReportBuilder;
    .registers 2

    const/4 v0, 0x1

    .line 1120
    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mEndsApplication:Z

    return-object p0
.end method

.method public exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;
    .registers 2

    .line 1066
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mException:Ljava/lang/Throwable;

    return-object p0
.end method

.method public forceSilent()Lorg/acra/ErrorReporter$ReportBuilder;
    .registers 2

    const/4 v0, 0x1

    .line 1110
    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mForceSilent:Z

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lorg/acra/ErrorReporter$ReportBuilder;
    .registers 2

    .line 1044
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public send()V
    .registers 2

    .line 1128
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mMessage:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mException:Ljava/lang/Throwable;

    if-nez v0, :cond_c

    const-string v0, "Report requested by developer"

    .line 1129
    iput-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mMessage:Ljava/lang/String;

    .line 1131
    :cond_c
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->this$0:Lorg/acra/ErrorReporter;

    invoke-static {v0, p0}, Lorg/acra/ErrorReporter;->access$1400(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$ReportBuilder;)V

    return-void
.end method

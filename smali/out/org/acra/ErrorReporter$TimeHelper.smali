.class Lorg/acra/ErrorReporter$TimeHelper;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeHelper"
.end annotation


# instance fields
.field private initialTimeMillis:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/acra/ErrorReporter$1;)V
    .registers 2

    .line 663
    invoke-direct {p0}, Lorg/acra/ErrorReporter$TimeHelper;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lorg/acra/ErrorReporter$TimeHelper;)Ljava/lang/Long;
    .registers 1

    .line 663
    iget-object p0, p0, Lorg/acra/ErrorReporter$TimeHelper;->initialTimeMillis:Ljava/lang/Long;

    return-object p0
.end method


# virtual methods
.method public getElapsedTime()J
    .registers 7

    .line 675
    iget-object v0, p0, Lorg/acra/ErrorReporter$TimeHelper;->initialTimeMillis:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_14

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/acra/ErrorReporter$TimeHelper;->initialTimeMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v4, v0, v2

    move-wide v0, v4

    :goto_14
    return-wide v0
.end method

.method public setInitialTimeMillis(J)V
    .registers 3

    .line 668
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/ErrorReporter$TimeHelper;->initialTimeMillis:Ljava/lang/Long;

    return-void
.end method

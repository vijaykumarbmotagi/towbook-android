.class public Lcom/facebook/rebound/SteppingLooper;
.super Lcom/facebook/rebound/SpringLooper;
.source "SteppingLooper.java"


# instance fields
.field private mLastTime:J

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/facebook/rebound/SpringLooper;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .registers 3

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/facebook/rebound/SteppingLooper;->mStarted:Z

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/facebook/rebound/SteppingLooper;->mLastTime:J

    return-void
.end method

.method public step(J)Z
    .registers 7

    .line 24
    iget-object v0, p0, Lcom/facebook/rebound/SteppingLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/facebook/rebound/SteppingLooper;->mStarted:Z

    if-nez v0, :cond_9

    goto :goto_1c

    .line 27
    :cond_9
    iget-wide v0, p0, Lcom/facebook/rebound/SteppingLooper;->mLastTime:J

    add-long v2, v0, p1

    .line 28
    iget-object p1, p0, Lcom/facebook/rebound/SteppingLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    long-to-double v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/BaseSpringSystem;->loop(D)V

    .line 29
    iput-wide v2, p0, Lcom/facebook/rebound/SteppingLooper;->mLastTime:J

    .line 30
    iget-object p1, p0, Lcom/facebook/rebound/SteppingLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {p1}, Lcom/facebook/rebound/BaseSpringSystem;->getIsIdle()Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/facebook/rebound/SteppingLooper;->mStarted:Z

    return-void
.end method

.class public Lcom/facebook/rebound/SynchronousLooper;
.super Lcom/facebook/rebound/SpringLooper;
.source "SynchronousLooper.java"


# static fields
.field public static SIXTY_FPS:D = 16.6667


# instance fields
.field private mRunning:Z

.field private mTimeStep:D


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Lcom/facebook/rebound/SpringLooper;-><init>()V

    .line 19
    sget-wide v0, Lcom/facebook/rebound/SynchronousLooper;->SIXTY_FPS:D

    iput-wide v0, p0, Lcom/facebook/rebound/SynchronousLooper;->mTimeStep:D

    return-void
.end method


# virtual methods
.method public getTimeStep()D
    .registers 3

    .line 23
    iget-wide v0, p0, Lcom/facebook/rebound/SynchronousLooper;->mTimeStep:D

    return-wide v0
.end method

.method public setTimeStep(D)V
    .registers 3

    .line 27
    iput-wide p1, p0, Lcom/facebook/rebound/SynchronousLooper;->mTimeStep:D

    return-void
.end method

.method public start()V
    .registers 4

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/facebook/rebound/SynchronousLooper;->mRunning:Z

    .line 33
    :goto_3
    iget-object v0, p0, Lcom/facebook/rebound/SynchronousLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->getIsIdle()Z

    move-result v0

    if-nez v0, :cond_18

    .line 34
    iget-boolean v0, p0, Lcom/facebook/rebound/SynchronousLooper;->mRunning:Z

    if-nez v0, :cond_10

    goto :goto_18

    .line 37
    :cond_10
    iget-object v0, p0, Lcom/facebook/rebound/SynchronousLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    iget-wide v1, p0, Lcom/facebook/rebound/SynchronousLooper;->mTimeStep:D

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/BaseSpringSystem;->loop(D)V

    goto :goto_3

    :cond_18
    :goto_18
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/facebook/rebound/SynchronousLooper;->mRunning:Z

    return-void
.end method

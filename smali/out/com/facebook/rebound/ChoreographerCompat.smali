.class public Lcom/facebook/rebound/ChoreographerCompat;
.super Ljava/lang/Object;
.source "ChoreographerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;
    }
.end annotation


# static fields
.field private static final IS_JELLYBEAN_OR_HIGHER:Z

.field private static final ONE_FRAME_MILLIS:J = 0x11L

.field private static __instance:Lcom/facebook/rebound/ChoreographerCompat;


# instance fields
.field private mChoreographer:Landroid/view/Choreographer;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Lcom/facebook/rebound/ChoreographerCompat;->IS_JELLYBEAN_OR_HIGHER:Z

    .line 28
    new-instance v0, Lcom/facebook/rebound/ChoreographerCompat;

    invoke-direct {v0}, Lcom/facebook/rebound/ChoreographerCompat;-><init>()V

    sput-object v0, Lcom/facebook/rebound/ChoreographerCompat;->__instance:Lcom/facebook/rebound/ChoreographerCompat;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-boolean v0, Lcom/facebook/rebound/ChoreographerCompat;->IS_JELLYBEAN_OR_HIGHER:Z

    if-eqz v0, :cond_e

    .line 39
    invoke-direct {p0}, Lcom/facebook/rebound/ChoreographerCompat;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat;->mChoreographer:Landroid/view/Choreographer;

    goto :goto_19

    .line 41
    :cond_e
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat;->mHandler:Landroid/os/Handler;

    :goto_19
    return-void
.end method

.method private choreographerPostFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private choreographerPostFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method private choreographerRemoveFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private getChoreographer()Landroid/view/Choreographer;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 71
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/facebook/rebound/ChoreographerCompat;
    .registers 1

    .line 34
    sget-object v0, Lcom/facebook/rebound/ChoreographerCompat;->__instance:Lcom/facebook/rebound/ChoreographerCompat;

    return-object v0
.end method


# virtual methods
.method public postFrameCallback(Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;)V
    .registers 5

    .line 46
    sget-boolean v0, Lcom/facebook/rebound/ChoreographerCompat;->IS_JELLYBEAN_OR_HIGHER:Z

    if-eqz v0, :cond_c

    .line 47
    invoke-virtual {p1}, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->getFrameCallback()Landroid/view/Choreographer$FrameCallback;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/rebound/ChoreographerCompat;->choreographerPostFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_17

    .line 49
    :cond_c
    iget-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->getRunnable()Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_17
    return-void
.end method

.method public postFrameCallbackDelayed(Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;J)V
    .registers 9

    .line 54
    sget-boolean v0, Lcom/facebook/rebound/ChoreographerCompat;->IS_JELLYBEAN_OR_HIGHER:Z

    if-eqz v0, :cond_c

    .line 55
    invoke-virtual {p1}, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->getFrameCallback()Landroid/view/Choreographer$FrameCallback;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/rebound/ChoreographerCompat;->choreographerPostFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    goto :goto_19

    .line 57
    :cond_c
    iget-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->getRunnable()Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x11

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_19
    return-void
.end method

.method public removeFrameCallback(Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;)V
    .registers 3

    .line 62
    sget-boolean v0, Lcom/facebook/rebound/ChoreographerCompat;->IS_JELLYBEAN_OR_HIGHER:Z

    if-eqz v0, :cond_c

    .line 63
    invoke-virtual {p1}, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->getFrameCallback()Landroid/view/Choreographer$FrameCallback;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/rebound/ChoreographerCompat;->choreographerRemoveFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_15

    .line 65
    :cond_c
    iget-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->getRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_15
    return-void
.end method

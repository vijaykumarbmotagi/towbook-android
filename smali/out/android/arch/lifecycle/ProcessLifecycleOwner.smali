.class public Landroid/arch/lifecycle/ProcessLifecycleOwner;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleOwner;


# static fields
.field static final TIMEOUT_MS:J = 0x2bcL
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final sInstance:Landroid/arch/lifecycle/ProcessLifecycleOwner;


# instance fields
.field private mDelayedPauseRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInitializationListener:Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;

.field private mPauseSent:Z

.field private final mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

.field private mResumedCounter:I

.field private mStartedCounter:I

.field private mStopSent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-direct {v0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->sInstance:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 55
    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 58
    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 61
    new-instance v0, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    .line 63
    new-instance v0, Landroid/arch/lifecycle/ProcessLifecycleOwner$1;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner$1;-><init>(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;-><init>(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mInitializationListener:Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;

    return-void
.end method

.method static synthetic access$000(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->dispatchPauseIfNeeded()V

    return-void
.end method

.method static synthetic access$100(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->dispatchStopIfNeeded()V

    return-void
.end method

.method static synthetic access$200(Landroid/arch/lifecycle/ProcessLifecycleOwner;)Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;
    .registers 1

    .line 48
    iget-object p0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mInitializationListener:Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;

    return-object p0
.end method

.method private dispatchPauseIfNeeded()V
    .registers 3

    .line 137
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 139
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    :cond_e
    return-void
.end method

.method private dispatchStopIfNeeded()V
    .registers 3

    .line 144
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    if-eqz v0, :cond_12

    .line 145
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    :cond_12
    return-void
.end method

.method public static get()Landroid/arch/lifecycle/LifecycleOwner;
    .registers 1

    .line 97
    sget-object v0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->sInstance:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .registers 2

    .line 101
    sget-object v0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->sInstance:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->attach(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method activityPaused()V
    .registers 5

    .line 125
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 126
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-nez v0, :cond_13

    .line 127
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    return-void
.end method

.method activityResumed()V
    .registers 3

    .line 113
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 114
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-ne v0, v1, :cond_20

    .line 115
    iget-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    if-eqz v0, :cond_19

    .line 116
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    goto :goto_20

    .line 119
    :cond_19
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_20
    :goto_20
    return-void
.end method

.method activityStarted()V
    .registers 3

    .line 105
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 106
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    if-ne v0, v1, :cond_18

    iget-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    if-eqz v0, :cond_18

    .line 107
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    :cond_18
    return-void
.end method

.method activityStopped()V
    .registers 2

    .line 132
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 133
    invoke-direct {p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->dispatchStopIfNeeded()V

    return-void
.end method

.method attach(Landroid/content/Context;)V
    .registers 4

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    .line 155
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 157
    new-instance v0, Landroid/arch/lifecycle/ProcessLifecycleOwner$3;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner$3;-><init>(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 178
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-object v0
.end method

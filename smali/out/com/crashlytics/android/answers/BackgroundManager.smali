.class Lcom/crashlytics/android/answers/BackgroundManager;
.super Ljava/lang/Object;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/answers/BackgroundManager$Listener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_DELAY:I = 0x1388


# instance fields
.field final backgroundFutureRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile flushOnBackground:Z

.field inBackground:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/crashlytics/android/answers/BackgroundManager$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/answers/BackgroundManager;->listeners:Ljava/util/List;

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/crashlytics/android/answers/BackgroundManager;->flushOnBackground:Z

    .line 26
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/crashlytics/android/answers/BackgroundManager;->backgroundFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    iput-boolean v0, p0, Lcom/crashlytics/android/answers/BackgroundManager;->inBackground:Z

    .line 31
    iput-object p1, p0, Lcom/crashlytics/android/answers/BackgroundManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/crashlytics/android/answers/BackgroundManager;)V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/crashlytics/android/answers/BackgroundManager;->notifyBackground()V

    return-void
.end method

.method private notifyBackground()V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/crashlytics/android/answers/BackgroundManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/BackgroundManager$Listener;

    .line 44
    invoke-interface {v1}, Lcom/crashlytics/android/answers/BackgroundManager$Listener;->onBackground()V

    goto :goto_6

    :cond_16
    return-void
.end method


# virtual methods
.method public onActivityPaused()V
    .registers 8

    .line 62
    iget-boolean v0, p0, Lcom/crashlytics/android/answers/BackgroundManager;->flushOnBackground:Z

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/crashlytics/android/answers/BackgroundManager;->inBackground:Z

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/crashlytics/android/answers/BackgroundManager;->inBackground:Z

    .line 65
    :try_start_b
    iget-object v0, p0, Lcom/crashlytics/android/answers/BackgroundManager;->backgroundFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/crashlytics/android/answers/BackgroundManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/crashlytics/android/answers/BackgroundManager$1;

    invoke-direct {v3, p0}, Lcom/crashlytics/android/answers/BackgroundManager$1;-><init>(Lcom/crashlytics/android/answers/BackgroundManager;)V

    const-wide/16 v4, 0x1388

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_b .. :try_end_20} :catch_21

    goto :goto_2d

    :catch_21
    move-exception v0

    .line 73
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to schedule background detector"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onActivityResumed()V
    .registers 4

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/crashlytics/android/answers/BackgroundManager;->inBackground:Z

    .line 55
    iget-object v1, p0, Lcom/crashlytics/android/answers/BackgroundManager;->backgroundFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_11

    .line 57
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_11
    return-void
.end method

.method public registerListener(Lcom/crashlytics/android/answers/BackgroundManager$Listener;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/crashlytics/android/answers/BackgroundManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFlushOnBackground(Z)V
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/crashlytics/android/answers/BackgroundManager;->flushOnBackground:Z

    return-void
.end method
.class public Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;
.super Ljava/lang/Object;
.source "MainLifecycleDispatcher.java"

# interfaces
.implements Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;


# static fields
.field private static final INSTANCE:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;


# instance fields
.field private mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;

    invoke-direct {v0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;-><init>()V

    sput-object v0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->INSTANCE:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method private collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .registers 3

    .line 65
    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 66
    :try_start_3
    iget-object v1, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 67
    iget-object v1, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 69
    :goto_13
    monitor-exit v0

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public static get()Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;
    .registers 1

    .line 44
    sget-object v0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->INSTANCE:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7

    .line 75
    invoke-direct {p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 77
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 78
    check-cast v3, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-interface {v3, p1, p2}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 6

    .line 135
    invoke-direct {p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 137
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 138
    check-cast v3, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-interface {v3, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityDestroyed(Landroid/app/Activity;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 6

    .line 105
    invoke-direct {p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 107
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 108
    check-cast v3, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-interface {v3, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityPaused(Landroid/app/Activity;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    .line 95
    invoke-direct {p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 97
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 98
    check-cast v3, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-interface {v3, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityResumed(Landroid/app/Activity;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7

    .line 125
    invoke-direct {p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 127
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 128
    check-cast v3, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-interface {v3, p1, p2}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 6

    .line 85
    invoke-direct {p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 87
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 88
    check-cast v3, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-interface {v3, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityStarted(Landroid/app/Activity;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 6

    .line 115
    invoke-direct {p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 117
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 118
    check-cast v3, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-interface {v3, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityStopped(Landroid/app/Activity;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method registerActivityLifecycleCallbacks(Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V
    .registers 4

    .line 52
    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 53
    :try_start_3
    iget-object v1, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method unregisterActivityLifecycleCallbacks(Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V
    .registers 4

    .line 58
    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 59
    :try_start_3
    iget-object v1, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

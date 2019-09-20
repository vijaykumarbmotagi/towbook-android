.class public abstract Landroidx/work/impl/constraints/trackers/ConstraintTracker;
.super Ljava/lang/Object;
.source "ConstraintTracker.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mAppContext:Landroid/content/Context;

.field private mCurrentState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/work/impl/constraints/ConstraintListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ConstraintTracker"

    .line 38
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mListeners:Ljava/util/Set;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addListener(Landroidx/work/impl/constraints/ConstraintListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/constraints/ConstraintListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_3
    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 59
    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 60
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->getInitialState()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mCurrentState:Ljava/lang/Object;

    .line 61
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v3, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->TAG:Ljava/lang/String;

    const-string v4, "%s: initial state = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mCurrentState:Ljava/lang/Object;

    aput-object v6, v5, v2

    .line 61
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v2, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 64
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->startTracking()V

    .line 66
    :cond_40
    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mCurrentState:Ljava/lang/Object;

    invoke-interface {p1, v1}, Landroidx/work/impl/constraints/ConstraintListener;->onConstraintChanged(Ljava/lang/Object;)V

    .line 68
    :cond_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public abstract getInitialState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public removeListener(Landroidx/work/impl/constraints/ConstraintListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/constraints/ConstraintListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 79
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->stopTracking()V

    .line 81
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public setState(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_3
    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mCurrentState:Ljava/lang/Object;

    if-eq v1, p1, :cond_35

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mCurrentState:Ljava/lang/Object;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mCurrentState:Ljava/lang/Object;

    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_35

    .line 96
    :cond_14
    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mCurrentState:Ljava/lang/Object;

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mListeners:Ljava/util/Set;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/constraints/ConstraintListener;

    .line 103
    iget-object v2, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->mCurrentState:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroidx/work/impl/constraints/ConstraintListener;->onConstraintChanged(Ljava/lang/Object;)V

    goto :goto_21

    .line 105
    :cond_33
    monitor-exit v0

    return-void

    .line 94
    :cond_35
    :goto_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p1

    .line 105
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public abstract startTracking()V
.end method

.method public abstract stopTracking()V
.end method

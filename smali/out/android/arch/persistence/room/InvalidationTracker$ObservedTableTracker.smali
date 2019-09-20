.class Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObservedTableTracker"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final NO_OP:I = 0x0

.field static final REMOVE:I = 0x2


# instance fields
.field mNeedsSync:Z

.field mPendingSync:Z

.field final mTableObservers:[J

.field final mTriggerStateChanges:[I

.field final mTriggerStates:[Z


# direct methods
.method constructor <init>(I)V
    .registers 4

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    .line 585
    new-array v0, p1, [Z

    iput-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    .line 586
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    .line 587
    iget-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 588
    iget-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method


# virtual methods
.method getTablesToSync()[I
    .registers 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 635
    monitor-enter p0

    .line 636
    :try_start_1
    iget-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    if-eqz v0, :cond_a

    goto :goto_41

    .line 639
    :cond_a
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x1

    if-ge v2, v0, :cond_39

    .line 641
    iget-object v4, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v5, v4, v2

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    .line 642
    :goto_1f
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    aget-boolean v5, v5, v2

    if-eq v4, v5, :cond_2e

    .line 643
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    if-eqz v4, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x2

    :goto_2b
    aput v3, v5, v2

    goto :goto_32

    .line 645
    :cond_2e
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    aput v1, v3, v2

    .line 647
    :goto_32
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 649
    :cond_39
    iput-boolean v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    .line 650
    iput-boolean v1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 651
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    monitor-exit p0

    return-object v0

    :cond_41
    :goto_41
    const/4 v0, 0x0

    .line 637
    monitor-exit p0

    return-object v0

    :catchall_44
    move-exception v0

    .line 652
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_44

    throw v0
.end method

.method varargs onAdded([I)Z
    .registers 13

    .line 596
    monitor-enter p0

    .line 597
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v1, v0, :cond_21

    aget v3, p1, v1

    .line 598
    iget-object v4, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v5, v4, v3

    .line 599
    iget-object v4, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v7, 0x1

    add-long v9, v5, v7

    aput-wide v9, v4, v3

    const-wide/16 v3, 0x0

    cmp-long v7, v5, v3

    const/4 v3, 0x1

    if-nez v7, :cond_1e

    .line 601
    iput-boolean v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    const/4 v2, 0x1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 605
    :cond_21
    monitor-exit p0

    return v2

    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw p1
.end method

.method varargs onRemoved([I)Z
    .registers 13

    .line 614
    monitor-enter p0

    .line 615
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v1, v0, :cond_1f

    aget v3, p1, v1

    .line 616
    iget-object v4, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v5, v4, v3

    .line 617
    iget-object v4, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v7, 0x1

    sub-long v9, v5, v7

    aput-wide v9, v4, v3

    cmp-long v3, v5, v7

    const/4 v4, 0x1

    if-nez v3, :cond_1c

    .line 619
    iput-boolean v4, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    const/4 v2, 0x1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 623
    :cond_1f
    monitor-exit p0

    return v2

    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw p1
.end method

.method onSyncCompleted()V
    .registers 2

    .line 660
    monitor-enter p0

    const/4 v0, 0x0

    .line 661
    :try_start_2
    iput-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    .line 662
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

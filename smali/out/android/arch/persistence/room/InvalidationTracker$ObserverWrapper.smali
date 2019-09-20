.class Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObserverWrapper"
.end annotation


# instance fields
.field final mObserver:Landroid/arch/persistence/room/InvalidationTracker$Observer;

.field private final mSingleTableSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTableIds:[I

.field private final mTableNames:[Ljava/lang/String;

.field private final mVersions:[J


# direct methods
.method constructor <init>(Landroid/arch/persistence/room/InvalidationTracker$Observer;[I[Ljava/lang/String;[J)V
    .registers 5

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mObserver:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    .line 479
    iput-object p2, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    .line 480
    iput-object p3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    .line 481
    iput-object p4, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mVersions:[J

    .line 482
    array-length p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_23

    .line 483
    new-instance p1, Landroid/support/v4/util/ArraySet;

    invoke-direct {p1}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 484
    iget-object p2, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    const/4 p3, 0x0

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    goto :goto_26

    :cond_23
    const/4 p1, 0x0

    .line 487
    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    :goto_26
    return-void
.end method


# virtual methods
.method checkForInvalidation([J)V
    .registers 10

    .line 493
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_30

    .line 495
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    aget v3, v3, v2

    .line 496
    aget-wide v3, p1, v3

    .line 497
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mVersions:[J

    aget-wide v6, v5, v2

    cmp-long v5, v6, v3

    if-gez v5, :cond_2d

    .line 499
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mVersions:[J

    aput-wide v3, v5, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1f

    .line 502
    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    goto :goto_2d

    :cond_1f
    if-nez v1, :cond_26

    .line 505
    new-instance v1, Landroid/support/v4/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/support/v4/util/ArraySet;-><init>(I)V

    .line 507
    :cond_26
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_30
    if-eqz v1, :cond_37

    .line 512
    iget-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mObserver:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    invoke-virtual {p1, v1}, Landroid/arch/persistence/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    :cond_37
    return-void
.end method

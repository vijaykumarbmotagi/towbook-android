.class Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;
.super Landroid/arch/persistence/room/InvalidationTracker$Observer;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakObserver"
.end annotation


# instance fields
.field final mDelegateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/arch/persistence/room/InvalidationTracker$Observer;",
            ">;"
        }
    .end annotation
.end field

.field final mTracker:Landroid/arch/persistence/room/InvalidationTracker;


# direct methods
.method constructor <init>(Landroid/arch/persistence/room/InvalidationTracker;Landroid/arch/persistence/room/InvalidationTracker$Observer;)V
    .registers 4

    .line 676
    iget-object v0, p2, Landroid/arch/persistence/room/InvalidationTracker$Observer;->mTables:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/arch/persistence/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    .line 677
    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;->mTracker:Landroid/arch/persistence/room/InvalidationTracker;

    .line 678
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;->mDelegateRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .registers 3
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;->mDelegateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/persistence/room/InvalidationTracker$Observer;

    if-nez v0, :cond_10

    .line 685
    iget-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;->mTracker:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-virtual {p1, p0}, Landroid/arch/persistence/room/InvalidationTracker;->removeObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    goto :goto_13

    .line 687
    :cond_10
    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    :goto_13
    return-void
.end method

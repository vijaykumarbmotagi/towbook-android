.class public Lcom/bumptech/glide/provider/ModelToResourceClassCache;
.super Ljava/lang/Object;
.source "ModelToResourceClassCache.java"


# instance fields
.field private final registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Lcom/bumptech/glide/util/MultiClassKey;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final resourceClassKeyRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/bumptech/glide/util/MultiClassKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->resourceClassKeyRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    .line 45
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 46
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public get(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->resourceClassKeyRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/util/MultiClassKey;

    if-nez v0, :cond_11

    .line 23
    new-instance v0, Lcom/bumptech/glide/util/MultiClassKey;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/util/MultiClassKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_14

    .line 25
    :cond_11
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/util/MultiClassKey;->set(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 28
    :goto_14
    iget-object p1, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;

    monitor-enter p1

    .line 29
    :try_start_17
    iget-object p2, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 30
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_26

    .line 31
    iget-object p1, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->resourceClassKeyRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p2

    :catchall_26
    move-exception p2

    .line 30
    :try_start_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p2
.end method

.method public put(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V
    .registers 7
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    .line 38
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;

    new-instance v2, Lcom/bumptech/glide/util/MultiClassKey;

    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/util/MultiClassKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 39
    invoke-virtual {v1, v2, p3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

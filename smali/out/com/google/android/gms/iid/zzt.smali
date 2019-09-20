.class final Lcom/google/android/gms/iid/zzt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field state:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final zzcc:Landroid/os/Messenger;

.field zzcd:Lcom/google/android/gms/iid/zzy;

.field final zzce:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/iid/zzz<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final zzcf:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/iid/zzz<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final synthetic zzcg:Lcom/google/android/gms/iid/zzr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/iid/zzr;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/iid/zzt;->zzcg:Lcom/google/android/gms/iid/zzr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/iid/zzt;->state:I

    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/iid/zzu;

    invoke-direct {v2, p0}, Lcom/google/android/gms/iid/zzu;-><init>(Lcom/google/android/gms/iid/zzt;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/gms/iid/zzt;->zzcc:Landroid/os/Messenger;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/iid/zzt;->zzce:Ljava/util/Queue;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/iid/zzt;->zzcf:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/iid/zzr;Lcom/google/android/gms/iid/zzs;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/iid/zzt;-><init>(Lcom/google/android/gms/iid/zzr;)V

    return-void
.end method

.method private final zzr()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/iid/zzt;->zzcg:Lcom/google/android/gms/iid/zzr;

    invoke-static {v0}, Lcom/google/android/gms/iid/zzr;->zze(Lcom/google/android/gms/iid/zzr;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/iid/zzw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/iid/zzw;-><init>(Lcom/google/android/gms/iid/zzt;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "MessengerIpcClient"

    const-string v1, "Service connected"

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 p1, 0x0

    if-nez p2, :cond_1b

    const-string p2, "Null service connection"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/iid/zzt;->zzd(ILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_33

    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    new-instance v1, Lcom/google/android/gms/iid/zzy;

    invoke-direct {v1, p2}, Lcom/google/android/gms/iid/zzy;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/google/android/gms/iid/zzt;->zzcd:Lcom/google/android/gms/iid/zzy;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_29
    .catchall {:try_start_1b .. :try_end_22} :catchall_33

    :try_start_22
    iput v0, p0, Lcom/google/android/gms/iid/zzt;->state:I

    invoke-direct {p0}, Lcom/google/android/gms/iid/zzt;->zzr()V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_33

    monitor-exit p0

    return-void

    :catch_29
    move-exception p2

    :try_start_2a
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/iid/zzt;->zzd(ILjava/lang/String;)V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_33

    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "MessengerIpcClient"

    const-string v1, "Service disconnected"

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string p1, "Service disconnected"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/iid/zzt;->zzd(ILjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zzd(ILjava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "MessengerIpcClient"

    const-string v1, "Disconnected: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_1d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget v0, p0, Lcom/google/android/gms/iid/zzt;->state:I

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_b4

    new-instance p1, Ljava/lang/IllegalStateException;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_b1

    goto :goto_98

    :pswitch_2f
    monitor-exit p0

    return-void

    :pswitch_31
    :try_start_31
    iput v1, p0, Lcom/google/android/gms/iid/zzt;->state:I
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_b1

    monitor-exit p0

    return-void

    :pswitch_35
    :try_start_35
    const-string v0, "MessengerIpcClient"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "MessengerIpcClient"

    const-string v2, "Unbinding service"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    iput v1, p0, Lcom/google/android/gms/iid/zzt;->state:I

    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/iid/zzt;->zzcg:Lcom/google/android/gms/iid/zzr;

    invoke-static {v1}, Lcom/google/android/gms/iid/zzr;->zzd(Lcom/google/android/gms/iid/zzr;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    new-instance v0, Lcom/google/android/gms/iid/zzaa;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/iid/zzaa;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/iid/zzt;->zzce:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/iid/zzz;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/iid/zzz;->zzd(Lcom/google/android/gms/iid/zzaa;)V

    goto :goto_5f

    :cond_6f
    iget-object p1, p0, Lcom/google/android/gms/iid/zzt;->zzce:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    const/4 p1, 0x0

    :goto_75
    iget-object p2, p0, Lcom/google/android/gms/iid/zzt;->zzcf:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_8b

    iget-object p2, p0, Lcom/google/android/gms/iid/zzt;->zzcf:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/iid/zzz;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/iid/zzz;->zzd(Lcom/google/android/gms/iid/zzaa;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_75

    :cond_8b
    iget-object p1, p0, Lcom/google/android/gms/iid/zzt;->zzcf:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_90
    .catchall {:try_start_35 .. :try_end_90} :catchall_b1

    monitor-exit p0

    return-void

    :pswitch_92
    :try_start_92
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_98
    iget p2, p0, Lcom/google/android/gms/iid/zzt;->state:I

    const/16 v0, 0x1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown state: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b1
    .catchall {:try_start_92 .. :try_end_b1} :catchall_b1

    :catchall_b1
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_92
        :pswitch_35
        :pswitch_35
        :pswitch_31
        :pswitch_2f
    .end packed-switch
.end method

.method final zzd(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "MessengerIpcClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "MessengerIpcClient"

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received response to request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    monitor-enter p0

    :try_start_24
    iget-object v1, p0, Lcom/google/android/gms/iid/zzt;->zzcf:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/iid/zzz;

    const/4 v2, 0x1

    if-nez v1, :cond_49

    const-string p1, "MessengerIpcClient"

    const/16 v1, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Received response for unknown request: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v2

    :cond_49
    iget-object v3, p0, Lcom/google/android/gms/iid/zzt;->zzcf:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/iid/zzt;->zzs()V

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_24 .. :try_end_52} :catchall_6f

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "unsupported"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6b

    new-instance p1, Lcom/google/android/gms/iid/zzaa;

    const/4 v0, 0x4

    const-string v3, "Not supported by GmsCore"

    invoke-direct {p1, v0, v3}, Lcom/google/android/gms/iid/zzaa;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/iid/zzz;->zzd(Lcom/google/android/gms/iid/zzaa;)V

    return v2

    :cond_6b
    invoke-virtual {v1, p1}, Lcom/google/android/gms/iid/zzz;->zzh(Landroid/os/Bundle;)V

    return v2

    :catchall_6f
    move-exception p1

    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p1
.end method

.method final declared-synchronized zze(Lcom/google/android/gms/iid/zzz;)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/iid/zzt;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_92

    new-instance p1, Ljava/lang/IllegalStateException;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8e

    goto :goto_75

    :pswitch_b
    monitor-exit p0

    return v1

    :pswitch_d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/iid/zzt;->zzce:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/iid/zzt;->zzr()V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_8e

    monitor-exit p0

    return v2

    :pswitch_17
    :try_start_17
    iget-object v0, p0, Lcom/google/android/gms/iid/zzt;->zzce:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_8e

    monitor-exit p0

    return v2

    :pswitch_1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/android/gms/iid/zzt;->zzce:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/google/android/gms/iid/zzt;->state:I

    if-nez p1, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3d

    const-string p1, "MessengerIpcClient"

    const-string v0, "Starting bind to GmsCore"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    iput v2, p0, Lcom/google/android/gms/iid/zzt;->state:I

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/iid/zzt;->zzcg:Lcom/google/android/gms/iid/zzr;

    invoke-static {v3}, Lcom/google/android/gms/iid/zzr;->zzd(Lcom/google/android/gms/iid/zzr;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p0, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_61

    const-string p1, "Unable to bind to service"

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/iid/zzt;->zzd(ILjava/lang/String;)V

    goto :goto_73

    :cond_61
    iget-object p1, p0, Lcom/google/android/gms/iid/zzt;->zzcg:Lcom/google/android/gms/iid/zzr;

    invoke-static {p1}, Lcom/google/android/gms/iid/zzr;->zze(Lcom/google/android/gms/iid/zzr;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/iid/zzv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/iid/zzv;-><init>(Lcom/google/android/gms/iid/zzt;)V

    const-wide/16 v3, 0x1e

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_73
    .catchall {:try_start_1e .. :try_end_73} :catchall_8e

    :goto_73
    monitor-exit p0

    return v2

    :goto_75
    :try_start_75
    iget v0, p0, Lcom/google/android/gms/iid/zzt;->state:I

    const/16 v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown state: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8e
    .catchall {:try_start_75 .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_17
        :pswitch_d
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method final declared-synchronized zzg(I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/iid/zzt;->zzcf:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/iid/zzz;

    if-eqz v0, :cond_36

    const-string v1, "MessengerIpcClient"

    const/16 v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Timing out request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/iid/zzt;->zzcf:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    new-instance p1, Lcom/google/android/gms/iid/zzaa;

    const/4 v1, 0x3

    const-string v2, "Timed out waiting for response"

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/iid/zzaa;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/iid/zzz;->zzd(Lcom/google/android/gms/iid/zzaa;)V

    invoke-virtual {p0}, Lcom/google/android/gms/iid/zzt;->zzs()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zzs()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/iid/zzt;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/iid/zzt;->zzce:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/iid/zzt;->zzcf:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "MessengerIpcClient"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "MessengerIpcClient"

    const-string v1, "Finished handling requests, unbinding"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/iid/zzt;->state:I

    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/iid/zzt;->zzcg:Lcom/google/android/gms/iid/zzr;

    invoke-static {v1}, Lcom/google/android/gms/iid/zzr;->zzd(Lcom/google/android/gms/iid/zzr;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzt()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/iid/zzt;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const-string v0, "Timed out while binding"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/iid/zzt;->zzd(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
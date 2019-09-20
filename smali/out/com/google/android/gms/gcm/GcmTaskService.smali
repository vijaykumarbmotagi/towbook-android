.class public abstract Lcom/google/android/gms/gcm/GcmTaskService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/gcm/GcmTaskService$zze;,
        Lcom/google/android/gms/gcm/GcmTaskService$zzd;
    }
.end annotation


# static fields
.field public static final SERVICE_ACTION_EXECUTE_TASK:Ljava/lang/String; = "com.google.android.gms.gcm.ACTION_TASK_READY"

.field public static final SERVICE_ACTION_INITIALIZE:Ljava/lang/String; = "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE"

.field public static final SERVICE_PERMISSION:Ljava/lang/String; = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE"


# instance fields
.field private componentName:Landroid/content/ComponentName;

.field private final lock:Ljava/lang/Object;

.field private zzt:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzu:Ljava/util/concurrent/ExecutorService;

.field private zzv:Landroid/os/Messenger;

.field private zzw:Lcom/google/android/gms/gcm/GcmNetworkManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->lock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/gcm/GcmTaskService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method private final zzd(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzt:I

    iget-object p1, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzw:Lcom/google/android/gms/gcm/GcmNetworkManager;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzf(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    iget p1, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzt:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/GcmTaskService;->stopSelf(I)V

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private final zzd(Lcom/google/android/gms/gcm/GcmTaskService$zze;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzu:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, "GcmTaskService"

    const-string v2, "Executor is shutdown. onDestroy was called but main looper had an unprocessed start task message. The task will be retried with backoff delay."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/gcm/GcmTaskService$zze;->zzd(Lcom/google/android/gms/gcm/GcmTaskService$zze;I)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/gcm/GcmTaskService;Lcom/google/android/gms/gcm/GcmTaskService$zze;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmTaskService;->zzd(Lcom/google/android/gms/gcm/GcmTaskService$zze;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmTaskService;->zzg(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/gcm/GcmTaskService;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/gcm/GcmTaskService;)Lcom/google/android/gms/gcm/GcmNetworkManager;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzw:Lcom/google/android/gms/gcm/GcmNetworkManager;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/gcm/GcmTaskService;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzt:I

    return p0
.end method

.method private final zzg(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzw:Lcom/google/android/gms/gcm/GcmNetworkManager;

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmTaskService;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/gcm/GcmNetworkManager;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_48

    const-string v2, "GcmTaskService"

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmTaskService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Task already running, won\'t start another"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    monitor-exit v0

    return v1

    :catchall_4a
    move-exception p1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    if-eqz p1, :cond_1c

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_1c

    :cond_15
    iget-object p1, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzv:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzw:Lcom/google/android/gms/gcm/GcmNetworkManager;

    new-instance v0, Lcom/google/android/gms/gcm/zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/gcm/zze;-><init>(Lcom/google/android/gms/gcm/GcmTaskService;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzu:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/gms/gcm/GcmTaskService$zzd;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/gcm/GcmTaskService$zzd;-><init>(Lcom/google/android/gms/gcm/GcmTaskService;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzv:Landroid/os/Messenger;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method public onDestroy()V
    .registers 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService;->zzu:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "GcmTaskService"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x4f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Shutting down, but not all tasks are finished executing. Remaining: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public onInitializeTasks()V
    .registers 1

    return-void
.end method

.method public abstract onRunTask(Lcom/google/android/gms/gcm/TaskParams;)I
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 p2, 0x2

    if-nez p1, :cond_7

    invoke-direct {p0, p3}, Lcom/google/android/gms/gcm/GcmTaskService;->zzd(I)V

    return p2

    :cond_7
    :try_start_7
    const-class v0, Lcom/google/android/gms/gcm/PendingCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "callback"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "extras"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    const-string v1, "triggered_uris"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    instance-of p1, v0, Lcom/google/android/gms/gcm/PendingCallback;

    if-nez p1, :cond_71

    const-string p1, "GcmTaskService"

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmTaskService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2f

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Could not process request, invalid callback."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_7 .. :try_end_6d} :catchall_bf

    invoke-direct {p0, p3}, Lcom/google/android/gms/gcm/GcmTaskService;->zzd(I)V

    return p2

    :cond_71
    :try_start_71
    invoke-direct {p0, v3}, Lcom/google/android/gms/gcm/GcmTaskService;->zzg(Ljava/lang/String;)Z

    move-result p1
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_bf

    if-eqz p1, :cond_7b

    invoke-direct {p0, p3}, Lcom/google/android/gms/gcm/GcmTaskService;->zzd(I)V

    return p2

    :cond_7b
    :try_start_7b
    check-cast v0, Lcom/google/android/gms/gcm/PendingCallback;

    iget-object v4, v0, Lcom/google/android/gms/gcm/PendingCallback;->zzal:Landroid/os/IBinder;

    new-instance p1, Lcom/google/android/gms/gcm/GcmTaskService$zze;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/gcm/GcmTaskService$zze;-><init>(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmTaskService;->zzd(Lcom/google/android/gms/gcm/GcmTaskService$zze;)V

    goto :goto_bb

    :cond_8a
    const-string p1, "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_96

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmTaskService;->onInitializeTasks()V

    goto :goto_bb

    :cond_96
    const-string p1, "GcmTaskService"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown action received "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", terminating"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_7b .. :try_end_bb} :catchall_bf

    :goto_bb
    invoke-direct {p0, p3}, Lcom/google/android/gms/gcm/GcmTaskService;->zzd(I)V

    return p2

    :catchall_bf
    move-exception p1

    invoke-direct {p0, p3}, Lcom/google/android/gms/gcm/GcmTaskService;->zzd(I)V

    throw p1
.end method

.class public Lcom/google/android/gms/common/api/internal/GoogleApiManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;,
        Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;,
        Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;
    }
.end annotation


# static fields
.field private static final lock:Ljava/lang/Object;

.field public static final zzjj:Lcom/google/android/gms/common/api/Status;

.field private static final zzjk:Lcom/google/android/gms/common/api/Status;

.field private static zzjo:Lcom/google/android/gms/common/api/internal/GoogleApiManager;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# instance fields
.field private final handler:Landroid/os/Handler;

.field private zzjl:J

.field private zzjm:J

.field private zzjn:J

.field private final zzjp:Landroid/content/Context;

.field private final zzjq:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final zzjr:Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;

.field private final zzjs:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzjt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzju:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza<",
            "*>;>;"
        }
    .end annotation
.end field

.field private zzjv:Lcom/google/android/gms/common/api/internal/zzad;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzjw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzjx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjj:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjk:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .registers 8
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjl:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjm:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjn:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjs:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjt:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x5

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjv:Lcom/google/android/gms/common/api/internal/zzad;

    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjw:Ljava/util/Set;

    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjx:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjp:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjq:Lcom/google/android/gms/common/GoogleApiAvailability;

    new-instance p1, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;

    invoke-direct {p1, p3}, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;-><init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjr:Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static reportSignOut()V
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjo:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjo:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjp:Landroid/content/Context;

    return-object p0
.end method

.method public static zzb(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;
    .registers 5

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjo:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    if-nez v1, :cond_26

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    sput-object v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjo:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    :cond_26
    sget-object p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjo:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    monitor-exit v0

    return-object p0

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method private final zzb(Lcom/google/android/gms/common/api/GoogleApi;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApi;->zzm()Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    if-nez v1, :cond_18

    new-instance v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/GoogleApi;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->requiresSignIn()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjx:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_23
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->connect()V

    return-void
.end method

.method public static zzbf()Lcom/google/android/gms/common/api/internal/GoogleApiManager;
    .registers 3

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjo:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    const-string v2, "Must guarantee manager is non-null before using getInstance"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjo:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method static synthetic zzbh()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzbi()Lcom/google/android/gms/common/api/Status;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjk:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjl:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjm:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjr:Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/api/internal/zzad;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjv:Lcom/google/android/gms/common/api/internal/zzad;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjw:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Lcom/google/android/gms/common/GoogleApiAvailability;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjq:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjn:J

    return-wide v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x493e0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_2c0

    const-string v0, "GoogleApiManager"

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :pswitch_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzc(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;)Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2be

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzc(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;)Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzb(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;)V

    return v3

    :pswitch_46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzc(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;)Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2be

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzc(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;)Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zza(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;)V

    return v3

    :pswitch_66
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zzae;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzae;->zzm()Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzae;->zzao()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_7e
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return v3

    :cond_82
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    invoke-static {v0, v5}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zza(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;Z)Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzae;->zzao()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7e

    :pswitch_97
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2be

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzbs()Z

    return v3

    :pswitch_af
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2be

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzay()V

    return v3

    :pswitch_c7
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjx:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_cd
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzh;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzbm()V

    goto :goto_cd

    :cond_e5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjx:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return v3

    :pswitch_eb
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2be

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->resume()V

    return v3

    :pswitch_103
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/GoogleApi;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzb(Lcom/google/android/gms/common/api/GoogleApi;)V

    return v3

    :pswitch_10b
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastIceCreamSandwich()Z

    move-result p1

    if-eqz p1, :cond_2be

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjp:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_2be

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjp:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->initialize(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzbh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zzbh;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->addListener(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->readCurrentStateIfPossible(Z)Z

    move-result p1

    if-nez p1, :cond_2be

    iput-wide v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjn:J

    return v3

    :pswitch_13f
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_162

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->getInstanceId()I

    move-result v5

    if-ne v5, v0, :cond_14f

    goto :goto_163

    :cond_162
    move-object v2, v4

    :goto_163
    if-eqz v2, :cond_1aa

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjq:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x45

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzc(Lcom/google/android/gms/common/api/Status;)V

    return v3

    :cond_1aa
    const-string p1, "GoogleApiManager"

    const/16 v1, 0x4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not find API instance "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :pswitch_1cd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zzbu;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/zzbu;->zzlr:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApi;->zzm()Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    if-nez v0, :cond_1f4

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zzbu;->zzlr:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzb(Lcom/google/android/gms/common/api/GoogleApi;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/zzbu;->zzlr:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApi;->zzm()Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    :cond_1f4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_20f

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lcom/google/android/gms/common/api/internal/zzbu;->zzlq:I

    if-eq v1, v2, :cond_20f

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zzbu;->zzlp:Lcom/google/android/gms/common/api/internal/zzb;

    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjj:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/zzb;->zza(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzbm()V

    return v3

    :cond_20f
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zzbu;->zzlp:Lcom/google/android/gms/common/api/internal/zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zza(Lcom/google/android/gms/common/api/internal/zzb;)V

    return v3

    :pswitch_215
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2be

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzbo()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->connect()V

    goto :goto_21f

    :pswitch_232
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzj;->zzs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zzh;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    if-nez v2, :cond_25f

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p1, v1, v0, v4}, Lcom/google/android/gms/common/api/internal/zzj;->zza(Lcom/google/android/gms/common/api/internal/zzh;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    return v3

    :cond_25f
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_273

    sget-object v5, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzae()Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->getEndpointPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/google/android/gms/common/api/internal/zzj;->zza(Lcom/google/android/gms/common/api/internal/zzh;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_23e

    :cond_273
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzbp()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v5

    if-eqz v5, :cond_281

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzbp()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v4}, Lcom/google/android/gms/common/api/internal/zzj;->zza(Lcom/google/android/gms/common/api/internal/zzh;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_23e

    :cond_281
    invoke-virtual {v2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zza(Lcom/google/android/gms/common/api/internal/zzj;)V

    goto :goto_23e

    :pswitch_285
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_291

    const-wide/16 v1, 0x2710

    :cond_291
    iput-wide v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjn:J

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2be

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zzh;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v4, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjn:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2a4

    :cond_2be
    return v3

    nop

    :pswitch_data_2c0
    .packed-switch 0x1
        :pswitch_285
        :pswitch_232
        :pswitch_215
        :pswitch_1cd
        :pswitch_13f
        :pswitch_10b
        :pswitch_103
        :pswitch_1cd
        :pswitch_eb
        :pswitch_c7
        :pswitch_af
        :pswitch_97
        :pswitch_1cd
        :pswitch_66
        :pswitch_46
        :pswitch_26
    .end packed-switch
.end method

.method final maybeSignOut()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final zza(Lcom/google/android/gms/common/api/internal/zzh;I)Landroid/app/PendingIntent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "*>;I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzju:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzbt()Lcom/google/android/gms/signin/SignInClient;

    move-result-object p1

    if-nez p1, :cond_13

    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjp:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/signin/SignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x8000000

    invoke-static {v0, p2, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)Lcom/google/android/gms/tasks/Task;
    .registers 8
    .param p1    # Lcom/google/android/gms/common/api/GoogleApi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey<",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzg;

    invoke-direct {v1, p2, v0}, Lcom/google/android/gms/common/api/internal/zzg;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zzbu;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {v3, v1, v4, p1}, Lcom/google/android/gms/common/api/internal/zzbu;-><init>(Lcom/google/android/gms/common/api/internal/zzb;ILcom/google/android/gms/common/api/GoogleApi;)V

    const/16 p1, 0xd

    invoke-virtual {v2, p1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;)Lcom/google/android/gms/tasks/Task;
    .registers 8
    .param p1    # Lcom/google/android/gms/common/api/GoogleApi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;",
            "Lcom/google/android/gms/common/api/internal/RegisterListenerMethod<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/common/api/internal/zze;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzbv;

    invoke-direct {v2, p2, p3}, Lcom/google/android/gms/common/api/internal/zzbv;-><init>(Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/internal/zze;-><init>(Lcom/google/android/gms/common/api/internal/zzbv;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzbu;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, v1, v3, p1}, Lcom/google/android/gms/common/api/internal/zzbu;-><init>(Lcom/google/android/gms/common/api/internal/zzb;ILcom/google/android/gms/common/api/GoogleApi;)V

    const/16 p1, 0x8

    invoke-virtual {p3, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/zzj;-><init>(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzj;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 7

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/GoogleApi;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/GoogleApi;ILcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;I",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzd;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/common/api/internal/zzd;-><init>(ILcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzbu;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/common/api/internal/zzbu;-><init>(Lcom/google/android/gms/common/api/internal/zzb;ILcom/google/android/gms/common/api/GoogleApi;)V

    const/4 p1, 0x4

    invoke-virtual {p3, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/GoogleApi;ILcom/google/android/gms/common/api/internal/TaskApiCall;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            "ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;I",
            "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "TResultT;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TResultT;>;",
            "Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzf;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/google/android/gms/common/api/internal/zzf;-><init>(ILcom/google/android/gms/common/api/internal/TaskApiCall;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    new-instance p4, Lcom/google/android/gms/common/api/internal/zzbu;

    iget-object p5, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p5

    invoke-direct {p4, v0, p5, p1}, Lcom/google/android/gms/common/api/internal/zzbu;-><init>(Lcom/google/android/gms/common/api/internal/zzb;ILcom/google/android/gms/common/api/GoogleApi;)V

    const/4 p1, 0x4

    invoke-virtual {p3, p1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzad;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/internal/zzad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjv:Lcom/google/android/gms/common/api/internal/zzad;

    if-eq v1, p1, :cond_e

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjv:Lcom/google/android/gms/common/api/internal/zzad;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjw:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjw:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzad;->zzam()Landroid/support/v4/util/ArraySet;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method final zzb(Lcom/google/android/gms/common/api/internal/zzad;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/internal/zzad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjv:Lcom/google/android/gms/common/api/internal/zzad;

    if-ne v1, p1, :cond_f

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjv:Lcom/google/android/gms/common/api/internal/zzad;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjw:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final zzbg()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzae;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApi;->zzm()Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/zzae;-><init>(Lcom/google/android/gms/common/api/internal/zzh;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzae;->zzao()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjq:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzjp:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->showWrappedErrorNotification(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result p1

    return p1
.end method

.method public final zzr()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
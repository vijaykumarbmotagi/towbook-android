.class public final Lcom/google/android/gms/phenotype/zza;
.super Ljava/lang/Object;


# static fields
.field private static final zzg:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/phenotype/zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzl:[Ljava/lang/String;


# instance fields
.field private final uri:Landroid/net/Uri;

.field private final zzh:Landroid/content/ContentResolver;

.field private final zzi:Landroid/database/ContentObserver;

.field private final zzj:Ljava/lang/Object;

.field private volatile zzk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/zza;->zzg:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "key"

    const-string v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/phenotype/zza;->zzl:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/phenotype/zza;->zzj:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/phenotype/zza;->zzh:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/gms/phenotype/zza;->uri:Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/phenotype/zzb;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/phenotype/zzb;-><init>(Lcom/google/android/gms/phenotype/zza;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/gms/phenotype/zza;->zzi:Landroid/database/ContentObserver;

    return-void
.end method

.method public static zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/phenotype/zza;
    .registers 5

    sget-object v0, Lcom/google/android/gms/phenotype/zza;->zzg:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/phenotype/zza;

    if-nez v0, :cond_25

    new-instance v0, Lcom/google/android/gms/phenotype/zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/phenotype/zza;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    sget-object p0, Lcom/google/android/gms/phenotype/zza;->zzg:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/phenotype/zza;

    if-nez p0, :cond_24

    iget-object p0, v0, Lcom/google/android/gms/phenotype/zza;->zzh:Landroid/content/ContentResolver;

    iget-object p1, v0, Lcom/google/android/gms/phenotype/zza;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/google/android/gms/phenotype/zza;->zzi:Landroid/database/ContentObserver;

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-object v0

    :cond_24
    move-object v0, p0

    :cond_25
    return-object v0
.end method

.method private final zzc()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/phenotype/zza;->zzh:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/google/android/gms/phenotype/zza;->uri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/gms/phenotype/zza;->zzl:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_31

    :goto_14
    :try_start_14
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_2c

    goto :goto_14

    :cond_28
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_2c
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_31
    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "gms:phenotype:phenotype_flag:debug_disable_caching"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/phenotype/PhenotypeFlag;->zza(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/phenotype/zza;->zzc()Ljava/util/Map;

    move-result-object v0

    goto :goto_10

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/phenotype/zza;->zzk:Ljava/util/Map;

    :goto_10
    if-nez v0, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/phenotype/zza;->zzj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/phenotype/zza;->zzk:Ljava/util/Map;

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/google/android/gms/phenotype/zza;->zzc()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/phenotype/zza;->zzk:Ljava/util/Map;

    :cond_1f
    monitor-exit v1

    return-object v0

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    return-object v0
.end method

.method public final zzb()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/phenotype/zza;->zzj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/google/android/gms/phenotype/zza;->zzk:Ljava/util/Map;

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

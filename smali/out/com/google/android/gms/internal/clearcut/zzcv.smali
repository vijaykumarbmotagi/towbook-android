.class public Lcom/google/android/gms/internal/clearcut/zzcv;
.super Ljava/lang/Object;


# static fields
.field private static final zzez:Lcom/google/android/gms/internal/clearcut/zzbt;


# instance fields
.field private zzln:Lcom/google/android/gms/internal/clearcut/zzbb;

.field private volatile zzlo:Lcom/google/android/gms/internal/clearcut/zzdo;

.field private volatile zzlp:Lcom/google/android/gms/internal/clearcut/zzbb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzbt;->zzan()Lcom/google/android/gms/internal/clearcut/zzbt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzez:Lcom/google/android/gms/internal/clearcut/zzbt;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/clearcut/zzdo;)Lcom/google/android/gms/internal/clearcut/zzdo;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlo:Lcom/google/android/gms/internal/clearcut/zzdo;

    if-nez v0, :cond_1c

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlo:Lcom/google/android/gms/internal/clearcut/zzdo;

    if-eqz v0, :cond_b

    :goto_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_19

    goto :goto_1c

    :cond_b
    :try_start_b
    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlo:Lcom/google/android/gms/internal/clearcut/zzdo;

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzbb;->zzfi:Lcom/google/android/gms/internal/clearcut/zzbb;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlp:Lcom/google/android/gms/internal/clearcut/zzbb;
    :try_end_11
    .catch Lcom/google/android/gms/internal/clearcut/zzco; {:try_start_b .. :try_end_11} :catch_12
    .catchall {:try_start_b .. :try_end_11} :catchall_19

    goto :goto_9

    :catch_12
    :try_start_12
    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlo:Lcom/google/android/gms/internal/clearcut/zzdo;

    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzbb;->zzfi:Lcom/google/android/gms/internal/clearcut/zzbb;

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlp:Lcom/google/android/gms/internal/clearcut/zzbb;

    goto :goto_9

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw p1

    :cond_1c
    :goto_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlo:Lcom/google/android/gms/internal/clearcut/zzdo;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/clearcut/zzcv;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzcv;

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlo:Lcom/google/android/gms/internal/clearcut/zzdo;

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlo:Lcom/google/android/gms/internal/clearcut/zzdo;

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzcv;->zzr()Lcom/google/android/gms/internal/clearcut/zzbb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzcv;->zzr()Lcom/google/android/gms/internal/clearcut/zzbb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzbb;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2a
    if-eqz v0, :cond_39

    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/zzdo;->zzbe()Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/clearcut/zzcv;->zzh(Lcom/google/android/gms/internal/clearcut/zzdo;)Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_39
    invoke-interface {v1}, Lcom/google/android/gms/internal/clearcut/zzdo;->zzbe()Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzcv;->zzh(Lcom/google/android/gms/internal/clearcut/zzdo;)Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zzas()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlp:Lcom/google/android/gms/internal/clearcut/zzbb;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlp:Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzbb;->size()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlo:Lcom/google/android/gms/internal/clearcut/zzdo;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlo:Lcom/google/android/gms/internal/clearcut/zzdo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/zzdo;->zzas()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/clearcut/zzdo;)Lcom/google/android/gms/internal/clearcut/zzdo;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlo:Lcom/google/android/gms/internal/clearcut/zzdo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzln:Lcom/google/android/gms/internal/clearcut/zzbb;

    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlp:Lcom/google/android/gms/internal/clearcut/zzbb;

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlo:Lcom/google/android/gms/internal/clearcut/zzdo;

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/internal/clearcut/zzbb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlp:Lcom/google/android/gms/internal/clearcut/zzbb;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlp:Lcom/google/android/gms/internal/clearcut/zzbb;

    return-object v0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlp:Lcom/google/android/gms/internal/clearcut/zzbb;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlp:Lcom/google/android/gms/internal/clearcut/zzbb;

    monitor-exit p0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlo:Lcom/google/android/gms/internal/clearcut/zzdo;

    if-nez v0, :cond_19

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzbb;->zzfi:Lcom/google/android/gms/internal/clearcut/zzbb;

    :goto_16
    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlp:Lcom/google/android/gms/internal/clearcut/zzbb;

    goto :goto_20

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlo:Lcom/google/android/gms/internal/clearcut/zzdo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/zzdo;->zzr()Lcom/google/android/gms/internal/clearcut/zzbb;

    move-result-object v0

    goto :goto_16

    :goto_20
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcv;->zzlp:Lcom/google/android/gms/internal/clearcut/zzbb;

    monitor-exit p0

    return-object v0

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw v0
.end method

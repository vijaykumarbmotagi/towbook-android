.class public final Lcom/google/android/gms/internal/clearcut/zzhb;
.super Lcom/google/android/gms/internal/clearcut/zzfu;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/zzfu<",
        "Lcom/google/android/gms/internal/clearcut/zzhb;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile zzbkd:[Lcom/google/android/gms/internal/clearcut/zzhb;


# instance fields
.field private value:Ljava/lang/String;

.field private zzbke:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbke:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->value:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzrs:I

    return-void
.end method

.method public static zzge()[Lcom/google/android/gms/internal/clearcut/zzhb;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbkd:[Lcom/google/android/gms/internal/clearcut/zzhb;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzfy;->zzrr:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbkd:[Lcom/google/android/gms/internal/clearcut/zzhb;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/clearcut/zzhb;

    sput-object v1, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbkd:[Lcom/google/android/gms/internal/clearcut/zzhb;

    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbkd:[Lcom/google/android/gms/internal/clearcut/zzhb;

    return-object v0
.end method

.method private final zzgf()Lcom/google/android/gms/internal/clearcut/zzhb;
    .registers 3

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;->zzeo()Lcom/google/android/gms/internal/clearcut/zzfu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzhb;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzhb;->zzgf()Lcom/google/android/gms/internal/clearcut/zzhb;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/zzhb;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzhb;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbke:Ljava/lang/String;

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbke:Ljava/lang/String;

    if-eqz v1, :cond_20

    return v2

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbke:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbke:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->value:Ljava/lang/String;

    if-nez v1, :cond_29

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzhb;->value:Ljava/lang/String;

    if-eqz v1, :cond_34

    return v2

    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzhb;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzfw;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_4a

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/zzhb;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzfw;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4a
    :goto_4a
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzhb;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    if-eqz v1, :cond_58

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/zzhb;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzfw;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_57

    return v0

    :cond_57
    return v2

    :cond_58
    return v0
.end method

.method public final hashCode()I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbke:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbke:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->value:Ljava/lang/String;

    if-nez v1, :cond_26

    const/4 v1, 0x0

    goto :goto_2c

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzfw;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_42

    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzfw;->hashCode()I

    move-result v2

    :cond_42
    :goto_42
    add-int/2addr v0, v2

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/clearcut/zzfs;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbke:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbke:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbke:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(ILjava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->value:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->value:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(ILjava/lang/String;)V

    :cond_28
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzfu;->zza(Lcom/google/android/gms/internal/clearcut/zzfs;)V

    return-void
.end method

.method protected final zzen()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;->zzen()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbke:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbke:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->zzbke:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->value:Ljava/lang/String;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->value:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzhb;->value:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_30
    return v0
.end method

.method public final synthetic zzeo()Lcom/google/android/gms/internal/clearcut/zzfu;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzfz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzhb;

    return-object v0
.end method

.method public final synthetic zzep()Lcom/google/android/gms/internal/clearcut/zzfz;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzfz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzhb;

    return-object v0
.end method

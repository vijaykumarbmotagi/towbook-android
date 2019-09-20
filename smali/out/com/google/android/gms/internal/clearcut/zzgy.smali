.class public final Lcom/google/android/gms/internal/clearcut/zzgy;
.super Lcom/google/android/gms/internal/clearcut/zzfu;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/zzfu<",
        "Lcom/google/android/gms/internal/clearcut/zzgy;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private zzbiw:[Ljava/lang/String;

.field private zzbix:[Ljava/lang/String;

.field private zzbiy:[I

.field private zzbiz:[J

.field private zzbja:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgb;->zzsc:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgb;->zzsc:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgb;->zzrx:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgb;->zzry:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgb;->zzry:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzrs:I

    return-void
.end method

.method private final zzgb()Lcom/google/android/gms/internal/clearcut/zzgy;
    .registers 3

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;->zzeo()Lcom/google/android/gms/internal/clearcut/zzfu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzgy;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_66

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    array-length v1, v1

    if-lez v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    array-length v1, v1

    if-lez v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    :cond_52
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    array-length v1, v1

    if-lez v1, :cond_65

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    :cond_65
    return-object v0

    :catch_66
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

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzgy;->zzgb()Lcom/google/android/gms/internal/clearcut/zzgy;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/zzgy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzfy;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzfy;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzfy;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzfy;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzfy;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzfw;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_50

    goto :goto_59

    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/zzgy;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzfw;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_59
    :goto_59
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzgy;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    if-eqz v1, :cond_67

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/zzgy;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzfw;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_66

    return v0

    :cond_66
    return v2

    :cond_67
    return v0
.end method

.method public final hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/zzfy;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/zzfy;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/zzfy;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/zzfy;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/zzfy;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzfw;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_51

    :cond_4a
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzrj:Lcom/google/android/gms/internal/clearcut/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzfw;->hashCode()I

    move-result v1

    goto :goto_52

    :cond_51
    :goto_51
    const/4 v1, 0x0

    :goto_52
    add-int/2addr v0, v1

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/clearcut/zzfs;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1d

    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1a

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(ILjava/lang/String;)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_39

    const/4 v0, 0x0

    :goto_27
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_36

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->zza(ILjava/lang/String;)V

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    array-length v0, v0

    if-lez v0, :cond_53

    const/4 v0, 0x0

    :goto_43
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    array-length v2, v2

    if-ge v0, v2, :cond_53

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzc(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    array-length v0, v0

    if-lez v0, :cond_6d

    const/4 v0, 0x0

    :goto_5d
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    array-length v2, v2

    if-ge v0, v2, :cond_6d

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    aget-wide v4, v3, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzi(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_6d
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    array-length v0, v0

    if-lez v0, :cond_86

    :goto_76
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    array-length v0, v0

    if-ge v1, v0, :cond_86

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    aget-wide v3, v2, v1

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzi(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    :cond_86
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzfu;->zza(Lcom/google/android/gms/internal/clearcut/zzfs;)V

    return-void
.end method

.method protected final zzen()I
    .registers 8

    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;->zzen()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2a

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_11
    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_26

    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiw:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_23

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzh(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_26
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4f

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_36
    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_4b

    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbix:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_48

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzh(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_4b
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_4f
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    array-length v1, v1

    if-lez v1, :cond_72

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_5a
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    array-length v4, v4

    if-ge v1, v4, :cond_6b

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzs(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_6b
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiy:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_72
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    array-length v1, v1

    if-lez v1, :cond_95

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_7d
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    array-length v4, v4

    if-ge v1, v4, :cond_8e

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    aget-wide v5, v4, v1

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzo(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    :cond_8e
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbiz:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_95
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    array-length v1, v1

    if-lez v1, :cond_b7

    const/4 v1, 0x0

    :goto_9f
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    array-length v3, v3

    if-ge v2, v3, :cond_b0

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    aget-wide v4, v3, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->zzo(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    :cond_b0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->zzbja:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_b7
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

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzgy;

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

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzgy;

    return-object v0
.end method

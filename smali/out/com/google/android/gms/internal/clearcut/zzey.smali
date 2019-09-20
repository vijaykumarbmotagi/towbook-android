.class public final Lcom/google/android/gms/internal/clearcut/zzey;
.super Ljava/lang/Object;


# static fields
.field private static final zzoz:Lcom/google/android/gms/internal/clearcut/zzey;


# instance fields
.field private count:I

.field private zzfa:Z

.field private zzjq:I

.field private zzmj:[Ljava/lang/Object;

.field private zzpa:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzey;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/clearcut/zzey;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzey;->zzoz:Lcom/google/android/gms/internal/clearcut/zzey;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/gms/internal/clearcut/zzey;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzjq:I

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzfa:Z

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/clearcut/zzey;Lcom/google/android/gms/internal/clearcut/zzey;)Lcom/google/android/gms/internal/clearcut/zzey;
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    iget v1, p1, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    iget v3, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    iget v4, p1, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    iget p1, p1, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/android/gms/internal/clearcut/zzey;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzey;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private static zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    and-int/lit8 p0, p0, 0x7

    const/4 v1, 0x5

    if-eq p0, v1, :cond_4e

    packed-switch p0, :pswitch_data_58

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbn()Lcom/google/android/gms/internal/clearcut/zzcp;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :pswitch_14
    invoke-interface {p2}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzaj()I

    move-result p0

    sget v1, Lcom/google/android/gms/internal/clearcut/zzcg$zzg;->zzko:I

    if-ne p0, v1, :cond_28

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzaa(I)V

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzey;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzey;->zzb(Lcom/google/android/gms/internal/clearcut/zzfr;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzab(I)V

    return-void

    :cond_28
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzab(I)V

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzey;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzey;->zzb(Lcom/google/android/gms/internal/clearcut/zzfr;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzaa(I)V

    return-void

    :pswitch_34
    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ILcom/google/android/gms/internal/clearcut/zzbb;)V

    return-void

    :pswitch_3a
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzc(IJ)V

    return-void

    :pswitch_44
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzi(IJ)V

    return-void

    :cond_4e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzf(II)V

    return-void

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_44
        :pswitch_3a
        :pswitch_34
        :pswitch_14
    .end packed-switch
.end method

.method public static zzea()Lcom/google/android/gms/internal/clearcut/zzey;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzey;->zzoz:Lcom/google/android/gms/internal/clearcut/zzey;

    return-object v0
.end method

.method static zzeb()Lcom/google/android/gms/internal/clearcut/zzey;
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzey;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/zzey;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Lcom/google/android/gms/internal/clearcut/zzey;

    if-nez v2, :cond_d

    return v1

    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzey;

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    iget v3, p1, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    if-ne v2, v3, :cond_49

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    iget v4, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v4, :cond_29

    aget v6, v2, v5

    aget v7, v3, v5

    if-eq v6, v7, :cond_26

    const/4 v2, 0x0

    goto :goto_2a

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_29
    const/4 v2, 0x1

    :goto_2a
    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v3, :cond_44

    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    const/4 p1, 0x0

    goto :goto_45

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_44
    const/4 p1, 0x1

    :goto_45
    if-nez p1, :cond_48

    return v1

    :cond_48
    return v0

    :cond_49
    return v1
.end method

.method public final hashCode()I
    .registers 9

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x11

    :goto_10
    if-ge v5, v2, :cond_1a

    mul-int/lit8 v6, v6, 0x1f

    aget v7, v1, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1a
    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    :goto_21
    if-ge v3, v2, :cond_2f

    mul-int/lit8 v4, v4, 0x1f

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_2f
    add-int/2addr v0, v4

    return v0
.end method

.method final zza(Lcom/google/android/gms/internal/clearcut/zzfr;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzaj()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/clearcut/zzcg$zzg;->zzkp:I

    if-ne v0, v1, :cond_1f

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    if-ge v0, v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_34
    return-void
.end method

.method final zza(Ljava/lang/StringBuilder;I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/clearcut/zzdr;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public final zzas()I
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzjq:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    if-ge v0, v2, :cond_72

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    const/4 v4, 0x5

    if-eq v2, v4, :cond_60

    packed-switch v2, :pswitch_data_76

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbn()Lcom/google/android/gms/internal/clearcut/zzcp;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_24
    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzr(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/clearcut/zzey;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/zzey;->zzas()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_5e

    :pswitch_36
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzc(ILcom/google/android/gms/internal/clearcut/zzbb;)I

    move-result v2

    goto :goto_5e

    :pswitch_41
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzg(IJ)I

    move-result v2

    goto :goto_5e

    :pswitch_50
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzbn;->zze(IJ)I

    move-result v2

    :goto_5e
    add-int/2addr v1, v2

    goto :goto_6f

    :cond_60
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzj(II)I

    move-result v2

    goto :goto_5e

    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_72
    iput v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzjq:I

    return v1

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_50
        :pswitch_41
        :pswitch_36
        :pswitch_24
    .end packed-switch
.end method

.method final zzb(ILjava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzfa:Z

    if-nez v0, :cond_a

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    array-length v1, v1

    if-ne v0, v1, :cond_30

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_19

    const/16 v0, 0x8

    goto :goto_1d

    :cond_19
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    shr-int/lit8 v0, v0, 0x1

    :goto_1d
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    aput-object p2, p1, v0

    iget p1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/clearcut/zzfr;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzaj()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/clearcut/zzcg$zzg;->zzko:I

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    :goto_e
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    if-ge v0, v1, :cond_20

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzey;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_20
    return-void

    :cond_21
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_35

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzey;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_35
    return-void
.end method

.method public final zzec()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzjq:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->count:I

    if-ge v0, v2, :cond_20

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzpa:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzmj:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzd(ILcom/google/android/gms/internal/clearcut/zzbb;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_20
    iput v1, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzjq:I

    return v1
.end method

.method public final zzv()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzey;->zzfa:Z

    return-void
.end method

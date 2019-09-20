.class final Lcom/google/android/gms/internal/clearcut/zzax;
.super Ljava/lang/Object;


# direct methods
.method static zza(I[BIILcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/clearcut/zzco;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbm()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p0

    throw p0

    :cond_9
    and-int/lit8 v0, p0, 0x7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_45

    packed-switch v0, :pswitch_data_48

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbm()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p0

    throw p0

    :pswitch_16
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_1b
    if-ge p2, p3, :cond_2a

    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p2

    iget v0, p4, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-eq v0, p0, :cond_2a

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/clearcut/zzax;->zza(I[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p2

    goto :goto_1b

    :cond_2a
    if-gt p2, p3, :cond_30

    if-eq v0, p0, :cond_2f

    goto :goto_30

    :cond_2f
    return p2

    :cond_30
    :goto_30
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbo()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p0

    throw p0

    :pswitch_35
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    iget p1, p4, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    add-int/2addr p0, p1

    return p0

    :pswitch_3d
    add-int/lit8 p2, p2, 0x8

    return p2

    :pswitch_40
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    return p0

    :cond_45
    add-int/lit8 p2, p2, 0x4

    return p2

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3d
        :pswitch_35
        :pswitch_16
    .end packed-switch
.end method

.method static zza(I[BIILcom/google/android/gms/internal/clearcut/zzcn;Lcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/android/gms/internal/clearcut/zzcn<",
            "*>;",
            "Lcom/google/android/gms/internal/clearcut/zzay;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/android/gms/internal/clearcut/zzch;

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p2

    :goto_6
    iget v0, p5, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/clearcut/zzch;->zzac(I)V

    if-ge p2, p3, :cond_1a

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ne p0, v1, :cond_1a

    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p2

    goto :goto_6

    :cond_1a
    return p2
.end method

.method static zza(I[BIILcom/google/android/gms/internal/clearcut/zzey;Lcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbm()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p0

    throw p0

    :cond_9
    and-int/lit8 v0, p0, 0x7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_77

    packed-switch v0, :pswitch_data_86

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbm()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p0

    throw p0

    :pswitch_16
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzey;->zzeb()Lcom/google/android/gms/internal/clearcut/zzey;

    move-result-object v6

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v7, v0, 0x4

    const/4 v0, 0x0

    :goto_1f
    if-ge p2, p3, :cond_38

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget p2, p5, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-eq p2, v7, :cond_36

    move v0, p2

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/zzax;->zza(I[BIILcom/google/android/gms/internal/clearcut/zzey;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    move v8, v0

    move v0, p2

    move p2, v8

    goto :goto_1f

    :cond_36
    move v0, p2

    move p2, v2

    :cond_38
    if-gt p2, p3, :cond_41

    if-eq v0, v7, :cond_3d

    goto :goto_41

    :cond_3d
    invoke-virtual {p4, p0, v6}, Lcom/google/android/gms/internal/clearcut/zzey;->zzb(ILjava/lang/Object;)V

    return p2

    :cond_41
    :goto_41
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbo()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p0

    throw p0

    :pswitch_46
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p2

    iget p3, p5, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-nez p3, :cond_54

    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzbb;->zzfi:Lcom/google/android/gms/internal/clearcut/zzbb;

    :goto_50
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/clearcut/zzey;->zzb(ILjava/lang/Object;)V

    goto :goto_59

    :cond_54
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/zzbb;->zzb([BII)Lcom/google/android/gms/internal/clearcut/zzbb;

    move-result-object p1

    goto :goto_50

    :goto_59
    add-int/2addr p2, p3

    return p2

    :pswitch_5b
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzax;->zzd([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/clearcut/zzey;->zzb(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :pswitch_69
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p1

    iget-wide p2, p5, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/clearcut/zzey;->zzb(ILjava/lang/Object;)V

    return p1

    :cond_77
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzax;->zzc([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/clearcut/zzey;->zzb(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_69
        :pswitch_5b
        :pswitch_46
        :pswitch_16
    .end packed-switch
.end method

.method static zza(I[BILcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 5

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_e

    shl-int/lit8 p1, p2, 0x7

    :goto_a
    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    return v0

    :cond_e
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_1f

    shl-int/lit8 p1, v0, 0xe

    :goto_1b
    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    return p2

    :cond_1f
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_2d

    shl-int/lit8 p1, p2, 0x15

    goto :goto_a

    :cond_2d
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_3b

    shl-int/lit8 p1, v0, 0x1c

    goto :goto_1b

    :cond_3b
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_40
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_49

    iput p0, p3, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    return v0

    :cond_49
    move p2, v0

    goto :goto_40
.end method

.method static zza([BILcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_9

    iput p1, p2, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    return v0

    :cond_9
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzax;->zza(I[BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    return p0
.end method

.method static zza([BILcom/google/android/gms/internal/clearcut/zzcn;Lcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/clearcut/zzcn<",
            "*>;",
            "Lcom/google/android/gms/internal/clearcut/zzay;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/clearcut/zzch;

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p1

    iget v0, p3, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    add-int/2addr v0, p1

    :goto_9
    if-ge p1, v0, :cond_15

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p1

    iget v1, p3, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/clearcut/zzch;->zzac(I)V

    goto :goto_9

    :cond_15
    if-eq p1, v0, :cond_1c

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbl()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p0

    throw p0

    :cond_1c
    return p1
.end method

.method static zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 15

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_e

    iput-wide v1, p2, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    return v0

    :cond_e
    const-wide/16 v3, 0x7f

    and-long v5, v1, v3

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit8 v1, v0, 0x7f

    int-to-long v1, v1

    const/4 v3, 0x7

    shl-long/2addr v1, v3

    or-long v7, v5, v1

    const/4 v1, 0x7

    :goto_1e
    if-gez v0, :cond_30

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    add-int/2addr v1, v3

    and-int/lit8 v2, p1, 0x7f

    int-to-long v4, v2

    shl-long/2addr v4, v1

    or-long v9, v7, v4

    move-wide v7, v9

    move v11, v0

    move v0, p1

    move p1, v11

    goto :goto_1e

    :cond_30
    iput-wide v7, p2, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    return p1
.end method

.method static zzc([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static zzc([BILcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-nez v0, :cond_d

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    return p1

    :cond_d
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzci;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1
.end method

.method static zzd([BILcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-nez v0, :cond_d

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    return p1

    :cond_d
    add-int v1, p1, v0

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzff;->zze([BII)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbp()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p0

    throw p0

    :cond_1a
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzci;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, p1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, p2, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    return v1
.end method

.method static zzd([BI)J
    .registers 10

    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long v4, v0, v2

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v6, v0, v2

    const/16 v0, 0x8

    shl-long v0, v6, v0

    or-long v6, v4, v0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v4, v0, v2

    const/16 v0, 0x10

    shl-long v0, v4, v0

    or-long v4, v6, v0

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v6, v0, v2

    const/16 v0, 0x18

    shl-long v0, v6, v0

    or-long v6, v4, v0

    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v4, v0, v2

    const/16 v0, 0x20

    shl-long v0, v4, v0

    or-long v4, v6, v0

    add-int/lit8 v0, p1, 0x5

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v6, v0, v2

    const/16 v0, 0x28

    shl-long v0, v6, v0

    or-long v6, v4, v0

    add-int/lit8 v0, p1, 0x6

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long v4, v0, v2

    const/16 v0, 0x30

    shl-long v0, v4, v0

    or-long v4, v6, v0

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long v0, p0, v2

    const/16 p0, 0x38

    shl-long p0, v0, p0

    or-long v0, v4, p0

    return-wide v0
.end method

.method static zze([BI)D
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzax;->zzd([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method static zze([BILcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-nez v0, :cond_d

    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzbb;->zzfi:Lcom/google/android/gms/internal/clearcut/zzbb;

    iput-object p0, p2, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    return p1

    :cond_d
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/zzbb;->zzb([BII)Lcom/google/android/gms/internal/clearcut/zzbb;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1
.end method

.method static zzf([BI)F
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzax;->zzc([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

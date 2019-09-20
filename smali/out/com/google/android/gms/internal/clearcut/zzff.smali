.class final Lcom/google/android/gms/internal/clearcut/zzff;
.super Ljava/lang/Object;


# static fields
.field private static final zzqb:Lcom/google/android/gms/internal/clearcut/zzfg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzed()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzee()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_17

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzfj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/zzfj;-><init>()V

    goto :goto_1c

    :cond_17
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzfh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/zzfh;-><init>()V

    :goto_1c
    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzff;->zzqb:Lcom/google/android/gms/internal/clearcut/zzfg;

    return-void
.end method

.method static zza(Ljava/lang/CharSequence;)I
    .registers 9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_13

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_13

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    move v3, v0

    :goto_14
    if-ge v2, v0, :cond_58

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_26

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_26
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2a
    if-ge v2, v4, :cond_57

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_38

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_54

    :cond_38
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-gt v7, v6, :cond_54

    const v7, 0xdfff

    if-gt v6, v7, :cond_54

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_52

    new-instance p0, Lcom/google/android/gms/internal/clearcut/zzfi;

    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/internal/clearcut/zzfi;-><init>(II)V

    throw p0

    :cond_52
    add-int/lit8 v2, v2, 0x1

    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_57
    add-int/2addr v3, v1

    :cond_58
    if-ge v3, v0, :cond_7b

    new-instance p0, Ljava/lang/IllegalArgumentException;

    int-to-long v0, v3

    const-wide v2, 0x100000000L

    add-long v4, v0, v2

    const/16 v0, 0x36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "UTF-8 length does not fit in int: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    return v3
.end method

.method static zza(Ljava/lang/CharSequence;[BII)I
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzff;->zzqb:Lcom/google/android/gms/internal/clearcut/zzfg;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/zzfg;->zzb(Ljava/lang/CharSequence;[BII)I

    move-result p0

    return p0
.end method

.method static zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzff;->zzqb:Lcom/google/android/gms/internal/clearcut/zzfg;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzff;->zza(Ljava/lang/CharSequence;[BII)I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/clearcut/zzfg;->zzb(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void

    :cond_2c
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzfg;->zzc(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static zzam(I)I
    .registers 2

    const/16 v0, -0xc

    if-le p0, v0, :cond_5

    const/4 p0, -0x1

    :cond_5
    return p0
.end method

.method static synthetic zzan(I)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzff;->zzam(I)I

    move-result p0

    return p0
.end method

.method private static zzd(III)I
    .registers 4

    const/16 v0, -0xc

    if-gt p0, v0, :cond_12

    const/16 v0, -0x41

    if-gt p1, v0, :cond_12

    if-le p2, v0, :cond_b

    goto :goto_12

    :cond_b
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_12
    :goto_12
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic zze(III)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzff;->zzd(III)I

    move-result p0

    return p0
.end method

.method public static zze([B)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzff;->zzqb:Lcom/google/android/gms/internal/clearcut/zzfg;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/gms/internal/clearcut/zzfg;->zze([BII)Z

    move-result p0

    return p0
.end method

.method public static zze([BII)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzff;->zzqb:Lcom/google/android/gms/internal/clearcut/zzfg;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzfg;->zze([BII)Z

    move-result p0

    return p0
.end method

.method private static zzf([BII)I
    .registers 4

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    packed-switch p2, :pswitch_data_26

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_e
    aget-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Lcom/google/android/gms/internal/clearcut/zzff;->zzd(III)I

    move-result p0

    return p0

    :pswitch_19
    aget-byte p0, p0, p1

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/clearcut/zzff;->zzp(II)I

    move-result p0

    return p0

    :pswitch_20
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/zzff;->zzam(I)I

    move-result p0

    return p0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_20
        :pswitch_19
        :pswitch_e
    .end packed-switch
.end method

.method static synthetic zzg([BII)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzff;->zzf([BII)I

    move-result p0

    return p0
.end method

.method private static zzp(II)I
    .registers 3

    const/16 v0, -0xc

    if-gt p0, v0, :cond_d

    const/16 v0, -0x41

    if-le p1, v0, :cond_9

    goto :goto_d

    :cond_9
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    return p0

    :cond_d
    :goto_d
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic zzq(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzff;->zzp(II)I

    move-result p0

    return p0
.end method

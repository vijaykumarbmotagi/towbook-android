.class final Lcom/google/android/gms/internal/clearcut/zzfj;
.super Lcom/google/android/gms/internal/clearcut/zzfg;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzfg;-><init>()V

    return-void
.end method

.method private static zza([BIJI)I
    .registers 9

    packed-switch p4, :pswitch_data_28

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_9
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long v2, p2, v0

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result p0

    invoke-static {p1, p4, p0}, Lcom/google/android/gms/internal/clearcut/zzff;->zze(III)I

    move-result p0

    return p0

    :pswitch_1a
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/clearcut/zzff;->zzq(II)I

    move-result p0

    return p0

    :pswitch_23
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zzff;->zzan(I)I

    move-result p0

    return p0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1a
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method final zzb(I[BII)I
    .registers 16

    or-int p1, p3, p4

    array-length v0, p2

    sub-int/2addr v0, p4

    or-int/2addr p1, v0

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-gez p1, :cond_2c

    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v3, "Array length=%d, index=%d, limit=%d"

    new-array v1, v1, [Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    int-to-long v3, p3

    int-to-long p3, p4

    sub-long v5, p3, v3

    long-to-int p1, v5

    const/16 p3, 0x10

    const-wide/16 v5, 0x1

    if-ge p1, p3, :cond_39

    const/4 p3, 0x0

    goto :goto_4b

    :cond_39
    move-wide v7, v3

    const/4 p3, 0x0

    :goto_3b
    if-ge p3, p1, :cond_4a

    add-long v9, v7, v5

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result p4

    if-gez p4, :cond_46

    goto :goto_4b

    :cond_46
    add-int/lit8 p3, p3, 0x1

    move-wide v7, v9

    goto :goto_3b

    :cond_4a
    move p3, p1

    :goto_4b
    sub-int/2addr p1, p3

    int-to-long p3, p3

    add-long v7, v3, p3

    :cond_4f
    :goto_4f
    const/4 p3, 0x0

    :goto_50
    if-lez p1, :cond_61

    add-long p3, v7, v5

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result v3

    if-ltz v3, :cond_5f

    add-int/lit8 p1, p1, -0x1

    move-wide v7, p3

    move p3, v3

    goto :goto_50

    :cond_5f
    move-wide v7, p3

    move p3, v3

    :cond_61
    if-nez p1, :cond_64

    return v2

    :cond_64
    add-int/lit8 p1, p1, -0x1

    const/16 p4, -0x20

    const/16 v3, -0x41

    const/4 v4, -0x1

    if-ge p3, p4, :cond_82

    if-nez p1, :cond_70

    return p3

    :cond_70
    add-int/lit8 p1, p1, -0x1

    const/16 p4, -0x3e

    if-lt p3, p4, :cond_81

    add-long p3, v7, v5

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result v7

    if-le v7, v3, :cond_7f

    return v4

    :cond_7f
    move-wide v7, p3

    goto :goto_4f

    :cond_81
    return v4

    :cond_82
    const/16 v9, -0x10

    if-ge p3, v9, :cond_ad

    if-ge p1, v0, :cond_8d

    invoke-static {p2, p3, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfj;->zza([BIJI)I

    move-result p1

    return p1

    :cond_8d
    add-int/lit8 p1, p1, -0x2

    add-long v9, v7, v5

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result v7

    if-gt v7, v3, :cond_ac

    const/16 v8, -0x60

    if-ne p3, p4, :cond_9d

    if-lt v7, v8, :cond_ac

    :cond_9d
    const/16 p4, -0x13

    if-ne p3, p4, :cond_a3

    if-ge v7, v8, :cond_ac

    :cond_a3
    const/4 p3, 0x0

    add-long v7, v9, v5

    invoke-static {p2, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result p3

    if-le p3, v3, :cond_4f

    :cond_ac
    return v4

    :cond_ad
    if-ge p1, v1, :cond_b4

    invoke-static {p2, p3, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfj;->zza([BIJI)I

    move-result p1

    return p1

    :cond_b4
    add-int/lit8 p1, p1, -0x3

    add-long v9, v7, v5

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result p4

    if-gt p4, v3, :cond_d7

    shl-int/lit8 p3, p3, 0x1c

    add-int/lit8 p4, p4, 0x70

    add-int/2addr p3, p4

    shr-int/lit8 p3, p3, 0x1e

    if-nez p3, :cond_d7

    add-long p3, v9, v5

    invoke-static {p2, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result v7

    if-gt v7, v3, :cond_d7

    add-long v7, p3, v5

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJ)B

    move-result p3

    if-le p3, v3, :cond_4f

    :cond_d7
    return v4
.end method

.method final zzb(Ljava/lang/CharSequence;[BII)I
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long v8, v4, v6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gt v6, v3, :cond_123

    array-length v7, v1

    sub-int/2addr v7, v3

    if-ge v7, v2, :cond_18

    goto/16 :goto_123

    :cond_18
    const/4 v2, 0x0

    :goto_19
    const/16 v3, 0x80

    const-wide/16 v10, 0x1

    if-ge v2, v6, :cond_2f

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ge v7, v3, :cond_2f

    add-long v12, v4, v10

    int-to-byte v3, v7

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v12

    goto :goto_19

    :cond_2f
    if-ne v2, v6, :cond_33

    long-to-int v0, v4

    return v0

    :cond_33
    :goto_33
    if-ge v2, v6, :cond_121

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ge v7, v3, :cond_48

    cmp-long v12, v4, v8

    if-gez v12, :cond_48

    add-long v12, v4, v10

    :goto_41
    int-to-byte v7, v7

    invoke-static {v1, v4, v5, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    move-wide v4, v12

    goto/16 :goto_db

    :cond_48
    const/16 v12, 0x800

    if-ge v7, v12, :cond_69

    const-wide/16 v12, 0x2

    sub-long v14, v8, v12

    cmp-long v12, v4, v14

    if-gtz v12, :cond_69

    add-long v12, v4, v10

    ushr-int/lit8 v14, v7, 0x6

    or-int/lit16 v14, v14, 0x3c0

    int-to-byte v14, v14

    invoke-static {v1, v4, v5, v14}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    add-long v4, v12, v10

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v3

    int-to-byte v7, v7

    invoke-static {v1, v12, v13, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    goto/16 :goto_db

    :cond_69
    const v12, 0xdfff

    const v13, 0xd800

    if-lt v7, v13, :cond_73

    if-ge v12, v7, :cond_96

    :cond_73
    const-wide/16 v14, 0x3

    sub-long v16, v8, v14

    cmp-long v14, v4, v16

    if-gtz v14, :cond_96

    add-long v12, v4, v10

    ushr-int/lit8 v14, v7, 0xc

    or-int/lit16 v14, v14, 0x1e0

    int-to-byte v14, v14

    invoke-static {v1, v4, v5, v14}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    add-long v4, v12, v10

    ushr-int/lit8 v14, v7, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v3

    int-to-byte v14, v14

    invoke-static {v1, v12, v13, v14}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    add-long v12, v4, v10

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v3

    goto :goto_41

    :cond_96
    const-wide/16 v14, 0x4

    sub-long v16, v8, v14

    cmp-long v14, v4, v16

    if-gtz v14, :cond_e8

    add-int/lit8 v12, v2, 0x1

    if-eq v12, v6, :cond_df

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v13

    if-nez v13, :cond_ad

    goto :goto_e0

    :cond_ad
    invoke-static {v7, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    add-long v13, v4, v10

    ushr-int/lit8 v7, v2, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    invoke-static {v1, v4, v5, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    add-long v4, v13, v10

    ushr-int/lit8 v7, v2, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v3

    int-to-byte v7, v7

    invoke-static {v1, v13, v14, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    add-long v13, v4, v10

    ushr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v3

    int-to-byte v7, v7

    invoke-static {v1, v4, v5, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    add-long v4, v13, v10

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-static {v1, v13, v14, v2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza([BJB)V

    move v2, v12

    :goto_db
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_33

    :cond_df
    move v12, v2

    :goto_e0
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzfi;

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v0, v12, v6}, Lcom/google/android/gms/internal/clearcut/zzfi;-><init>(II)V

    throw v0

    :cond_e8
    if-gt v13, v7, :cond_100

    if-gt v7, v12, :cond_100

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v6, :cond_fa

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_100

    :cond_fa
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzfi;

    invoke-direct {v0, v2, v6}, Lcom/google/android/gms/internal/clearcut/zzfi;-><init>(II)V

    throw v0

    :cond_100
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed writing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_121
    long-to-int v0, v4

    return v0

    :cond_123
    :goto_123
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/2addr v2, v3

    const/16 v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed writing "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " at index "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final zzb(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzb(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long v6, v2, v4

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    int-to-long v4, v4

    add-long v8, v2, v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    int-to-long v10, v4

    sub-long v12, v8, v6

    cmp-long v5, v10, v12

    if-lez v5, :cond_4c

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/16 v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed writing "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " at index "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4c
    const/4 v5, 0x0

    :goto_4d
    const/16 v10, 0x80

    const-wide/16 v11, 0x1

    if-ge v5, v4, :cond_63

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v10, :cond_63

    add-long v14, v6, v11

    int-to-byte v10, v13

    invoke-static {v6, v7, v10}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    add-int/lit8 v5, v5, 0x1

    move-wide v6, v14

    goto :goto_4d

    :cond_63
    if-ne v5, v4, :cond_6c

    :goto_65
    sub-long v4, v6, v2

    long-to-int v0, v4

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_6c
    :goto_6c
    if-ge v5, v4, :cond_182

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v10, :cond_84

    cmp-long v14, v6, v8

    if-gez v14, :cond_84

    add-long v14, v6, v11

    int-to-byte v13, v13

    invoke-static {v6, v7, v13}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    move-wide v6, v11

    move-wide v12, v14

    :goto_80
    const/16 v11, 0x80

    goto/16 :goto_136

    :cond_84
    const/16 v14, 0x800

    if-ge v13, v14, :cond_ae

    const-wide/16 v14, 0x2

    sub-long v16, v8, v14

    cmp-long v14, v6, v16

    if-gtz v14, :cond_ae

    add-long v14, v6, v11

    ushr-int/lit8 v10, v13, 0x6

    or-int/lit16 v10, v10, 0x3c0

    int-to-byte v10, v10

    invoke-static {v6, v7, v10}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    add-long v6, v14, v11

    and-int/lit8 v10, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v10, v13

    int-to-byte v10, v10

    invoke-static {v14, v15, v10}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    move-wide/from16 v20, v11

    const/16 v11, 0x80

    move-wide v12, v6

    move-wide/from16 v6, v20

    goto/16 :goto_136

    :cond_ae
    const v10, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_b8

    if-ge v10, v13, :cond_e7

    :cond_b8
    const-wide/16 v15, 0x3

    sub-long v18, v8, v15

    cmp-long v15, v6, v18

    if-gtz v15, :cond_e7

    add-long v14, v6, v11

    ushr-int/lit8 v10, v13, 0xc

    or-int/lit16 v10, v10, 0x1e0

    int-to-byte v10, v10

    invoke-static {v6, v7, v10}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    add-long v6, v14, v11

    ushr-int/lit8 v10, v13, 0x6

    and-int/lit8 v10, v10, 0x3f

    const/16 v11, 0x80

    or-int/2addr v10, v11

    int-to-byte v10, v10

    invoke-static {v14, v15, v10}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    const-wide/16 v14, 0x1

    add-long v16, v6, v14

    and-int/lit8 v10, v13, 0x3f

    or-int/2addr v10, v11

    int-to-byte v10, v10

    invoke-static {v6, v7, v10}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    move-wide/from16 v12, v16

    const-wide/16 v6, 0x1

    goto :goto_80

    :cond_e7
    const-wide/16 v11, 0x4

    sub-long v15, v8, v11

    cmp-long v11, v6, v15

    if-gtz v11, :cond_149

    add-int/lit8 v10, v5, 0x1

    if-eq v10, v4, :cond_141

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-nez v11, :cond_ff

    move v5, v10

    goto :goto_141

    :cond_ff
    invoke-static {v13, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    const-wide/16 v11, 0x1

    add-long v13, v6, v11

    ushr-int/lit8 v15, v5, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    invoke-static {v6, v7, v15}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    add-long v6, v13, v11

    ushr-int/lit8 v15, v5, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    invoke-static {v13, v14, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    const-wide/16 v12, 0x1

    add-long v14, v6, v12

    ushr-int/lit8 v16, v5, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    invoke-static {v6, v7, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    const-wide/16 v6, 0x1

    add-long v12, v14, v6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v14, v15, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(JB)V

    move v5, v10

    :goto_136
    add-int/lit8 v5, v5, 0x1

    const/16 v10, 0x80

    move-wide/from16 v20, v6

    move-wide v6, v12

    move-wide/from16 v11, v20

    goto/16 :goto_6c

    :cond_141
    :goto_141
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzfi;

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v0, v5, v4}, Lcom/google/android/gms/internal/clearcut/zzfi;-><init>(II)V

    throw v0

    :cond_149
    if-gt v14, v13, :cond_161

    if-gt v13, v10, :cond_161

    add-int/lit8 v1, v5, 0x1

    if-eq v1, v4, :cond_15b

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_161

    :cond_15b
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzfi;

    invoke-direct {v0, v5, v4}, Lcom/google/android/gms/internal/clearcut/zzfi;-><init>(II)V

    throw v0

    :cond_161
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed writing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_182
    const/4 v0, 0x0

    goto/16 :goto_65
.end method

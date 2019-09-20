.class final Lcom/google/android/gms/internal/clearcut/zzds;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/zzef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/clearcut/zzef<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zzmh:Lsun/misc/Unsafe;


# instance fields
.field private final zzmi:[I

.field private final zzmj:[Ljava/lang/Object;

.field private final zzmk:I

.field private final zzml:I

.field private final zzmm:I

.field private final zzmn:Lcom/google/android/gms/internal/clearcut/zzdo;

.field private final zzmo:Z

.field private final zzmp:Z

.field private final zzmq:Z

.field private final zzmr:Z

.field private final zzms:[I

.field private final zzmt:[I

.field private final zzmu:[I

.field private final zzmv:Lcom/google/android/gms/internal/clearcut/zzdw;

.field private final zzmw:Lcom/google/android/gms/internal/clearcut/zzcy;

.field private final zzmx:Lcom/google/android/gms/internal/clearcut/zzex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/zzex<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/zzbu<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzef()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmh:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IIILcom/google/android/gms/internal/clearcut/zzdo;ZZ[I[I[ILcom/google/android/gms/internal/clearcut/zzdw;Lcom/google/android/gms/internal/clearcut/zzcy;Lcom/google/android/gms/internal/clearcut/zzex;Lcom/google/android/gms/internal/clearcut/zzbu;Lcom/google/android/gms/internal/clearcut/zzdj;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "III",
            "Lcom/google/android/gms/internal/clearcut/zzdo;",
            "ZZ[I[I[I",
            "Lcom/google/android/gms/internal/clearcut/zzdw;",
            "Lcom/google/android/gms/internal/clearcut/zzcy;",
            "Lcom/google/android/gms/internal/clearcut/zzex<",
            "**>;",
            "Lcom/google/android/gms/internal/clearcut/zzbu<",
            "*>;",
            "Lcom/google/android/gms/internal/clearcut/zzdj;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p6

    move-object/from16 v2, p15

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    move-object v3, p2

    iput-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmj:[Ljava/lang/Object;

    move v3, p3

    iput v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmk:I

    move v3, p4

    iput v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzml:I

    move v3, p5

    iput v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmm:I

    instance-of v3, v1, Lcom/google/android/gms/internal/clearcut/zzcg;

    iput-boolean v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmp:Z

    move v3, p7

    iput-boolean v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmq:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/clearcut/zzbu;->zze(Lcom/google/android/gms/internal/clearcut/zzdo;)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :goto_29
    iput-boolean v4, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmo:Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    move-object v3, p9

    iput-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzms:[I

    move-object v3, p10

    iput-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmt:[I

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmu:[I

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmv:Lcom/google/android/gms/internal/clearcut/zzdw;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmw:Lcom/google/android/gms/internal/clearcut/zzcy;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmx:Lcom/google/android/gms/internal/clearcut/zzex;

    iput-object v2, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmn:Lcom/google/android/gms/internal/clearcut/zzdo;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    return-void
.end method

.method private static zza(I[BIILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4}, Lcom/google/android/gms/internal/clearcut/zzds;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzey;

    move-result-object v4

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/zzax;->zza(I[BIILcom/google/android/gms/internal/clearcut/zzey;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    return p0
.end method

.method private static zza(Lcom/google/android/gms/internal/clearcut/zzef;I[BIILcom/google/android/gms/internal/clearcut/zzcn;Lcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/clearcut/zzef<",
            "*>;I[BII",
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

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzef;[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p3

    :goto_4
    iget-object v0, p6, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/clearcut/zzcn;->add(Ljava/lang/Object;)Z

    if-ge p3, p4, :cond_18

    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget v1, p6, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ne p1, v1, :cond_18

    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzef;[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p3

    goto :goto_4

    :cond_18
    return p3
.end method

.method private static zza(Lcom/google/android/gms/internal/clearcut/zzef;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzds;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzds;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p1

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    return p1
.end method

.method private static zza(Lcom/google/android/gms/internal/clearcut/zzef;[BIILcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_c

    invoke-static {p2, p1, v0, p4}, Lcom/google/android/gms/internal/clearcut/zzax;->zza(I[BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget p2, p4, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    :cond_c
    move v3, v0

    if-ltz p2, :cond_26

    sub-int/2addr p3, v3

    if-le p2, p3, :cond_13

    goto :goto_26

    :cond_13
    invoke-interface {p0}, Lcom/google/android/gms/internal/clearcut/zzef;->newInstance()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/zzef;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/clearcut/zzay;)V

    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/clearcut/zzef;->zzc(Ljava/lang/Object;)V

    iput-object p3, p4, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    return p2

    :cond_26
    :goto_26
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbl()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p0

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/clearcut/zzex;Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/clearcut/zzex<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzex;->zzq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzex;->zzm(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/clearcut/zzay;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/google/android/gms/internal/clearcut/zzds;->zzmh:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_178

    goto/16 :goto_175

    :pswitch_28
    const/4 v7, 0x3

    if-ne v5, v7, :cond_175

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v2

    move/from16 v5, p4

    move v6, v7

    move-object v7, v11

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzef;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_46

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_47

    :cond_46
    const/4 v15, 0x0

    :goto_47
    if-nez v15, :cond_4d

    iget-object v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    goto/16 :goto_14d

    :cond_4d
    iget-object v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    invoke-static {v15, v3}, Lcom/google/android/gms/internal/clearcut/zzci;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_14d

    :pswitch_55
    if-nez v5, :cond_175

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzbk;->zza(J)J

    move-result-wide v3

    goto/16 :goto_149

    :pswitch_63
    if-nez v5, :cond_175

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/zzbk;->zzm(I)I

    move-result v3

    goto/16 :goto_13c

    :pswitch_71
    if-nez v5, :cond_175

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zzaf(I)Lcom/google/android/gms/internal/clearcut/zzck;

    move-result-object v5

    if-eqz v5, :cond_94

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/clearcut/zzck;->zzb(I)Lcom/google/android/gms/internal/clearcut/zzcj;

    move-result-object v5

    if-eqz v5, :cond_86

    goto :goto_94

    :cond_86
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzey;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/clearcut/zzey;->zzb(ILjava/lang/Object;)V

    move v2, v3

    return v2

    :cond_94
    :goto_94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_171

    :pswitch_9e
    if-ne v5, v15, :cond_175

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-nez v4, :cond_ac

    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzbb;->zzfi:Lcom/google/android/gms/internal/clearcut/zzbb;

    goto/16 :goto_14d

    :cond_ac
    invoke-static {v3, v2, v4}, Lcom/google/android/gms/internal/clearcut/zzbb;->zzb([BII)Lcom/google/android/gms/internal/clearcut/zzbb;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_b3
    add-int/2addr v2, v4

    goto/16 :goto_171

    :pswitch_b6
    if-ne v5, v15, :cond_175

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v2

    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzef;[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_cd

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_ce

    :cond_cd
    const/4 v15, 0x0

    :goto_ce
    if-nez v15, :cond_d4

    iget-object v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    goto/16 :goto_14d

    :cond_d4
    iget-object v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    invoke-static {v15, v3}, Lcom/google/android/gms/internal/clearcut/zzci;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_14d

    :pswitch_dc
    if-ne v5, v15, :cond_175

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-nez v4, :cond_e9

    const-string v3, ""

    goto :goto_14d

    :cond_e9
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_fc

    add-int v5, v2, v4

    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/clearcut/zzff;->zze([BII)Z

    move-result v5

    if-nez v5, :cond_fc

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbp()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v1

    throw v1

    :cond_fc
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/clearcut/zzci;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b3

    :pswitch_107
    if-nez v5, :cond_175

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_117

    const/4 v15, 0x1

    goto :goto_118

    :cond_117
    const/4 v15, 0x0

    :goto_118
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_14d

    :pswitch_11d
    if-ne v5, v7, :cond_175

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/clearcut/zzax;->zzc([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_15b

    :pswitch_128
    const/4 v2, 0x1

    if-ne v5, v2, :cond_175

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/clearcut/zzax;->zzd([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_16c

    :pswitch_134
    if-nez v5, :cond_175

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    :goto_13c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_14d

    :pswitch_141
    if-nez v5, :cond_175

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    :goto_149
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_14d
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_171

    :pswitch_151
    if-ne v5, v7, :cond_175

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/clearcut/zzax;->zzf([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_15b
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    goto :goto_171

    :pswitch_161
    const/4 v2, 0x1

    if-ne v5, v2, :cond_175

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/clearcut/zzax;->zze([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_16c
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    :goto_171
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :cond_175
    :goto_175
    move v2, v4

    return v2

    nop

    :pswitch_data_178
    .packed-switch 0x33
        :pswitch_161
        :pswitch_151
        :pswitch_141
        :pswitch_141
        :pswitch_134
        :pswitch_128
        :pswitch_11d
        :pswitch_107
        :pswitch_dc
        :pswitch_b6
        :pswitch_9e
        :pswitch_134
        :pswitch_71
        :pswitch_11d
        :pswitch_128
        :pswitch_63
        :pswitch_55
        :pswitch_28
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/clearcut/zzay;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v4, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v2, p7

    move/from16 v10, p8

    move-wide/from16 v5, p12

    move-object/from16 v11, p14

    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzds;->zzmh:Lsun/misc/Unsafe;

    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/clearcut/zzcn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/clearcut/zzcn;->zzu()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_36

    invoke-interface {v3}, Lcom/google/android/gms/internal/clearcut/zzcn;->size()I

    move-result v12

    if-nez v12, :cond_2c

    const/16 v12, 0xa

    goto :goto_2d

    :cond_2c
    shl-int/2addr v12, v13

    :goto_2d
    invoke-interface {v3, v12}, Lcom/google/android/gms/internal/clearcut/zzcn;->zzi(I)Lcom/google/android/gms/internal/clearcut/zzcn;

    move-result-object v3

    sget-object v12, Lcom/google/android/gms/internal/clearcut/zzds;->zzmh:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_36
    move-object v12, v3

    const/4 v3, 0x5

    const-wide/16 v5, 0x0

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_380

    goto/16 :goto_37d

    :pswitch_40
    const/4 v1, 0x3

    if-ne v2, v1, :cond_37d

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v10

    and-int/lit8 v1, v9, -0x8

    or-int/lit8 v13, v1, 0x4

    move-object v1, v10

    move-object v2, v7

    move v3, v4

    :goto_4e
    move v4, v8

    move v5, v13

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzef;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget-object v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/clearcut/zzcn;->add(Ljava/lang/Object;)Z

    if-ge v1, v8, :cond_37e

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v3

    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ne v9, v2, :cond_37e

    move-object v1, v10

    move-object v2, v7

    goto :goto_4e

    :pswitch_67
    if-ne v2, v14, :cond_89

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzdc;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    add-int/2addr v2, v1

    :goto_72
    if-ge v1, v2, :cond_82

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget-wide v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzbk;->zza(J)J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/google/android/gms/internal/clearcut/zzdc;->zzm(J)V

    goto :goto_72

    :cond_82
    if-eq v1, v2, :cond_37e

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbl()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v1

    throw v1

    :cond_89
    if-nez v2, :cond_37d

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzdc;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    :goto_91
    iget-wide v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/clearcut/zzbk;->zza(J)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzdc;->zzm(J)V

    if-ge v1, v8, :cond_37e

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ne v9, v3, :cond_37e

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    goto :goto_91

    :pswitch_a9
    if-ne v2, v14, :cond_cb

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzch;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    add-int/2addr v2, v1

    :goto_b4
    if-ge v1, v2, :cond_c4

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/zzbk;->zzm(I)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/clearcut/zzch;->zzac(I)V

    goto :goto_b4

    :cond_c4
    if-eq v1, v2, :cond_37e

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbl()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v1

    throw v1

    :cond_cb
    if-nez v2, :cond_37d

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzch;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    :goto_d3
    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/zzbk;->zzm(I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/clearcut/zzch;->zzac(I)V

    if-ge v1, v8, :cond_37e

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ne v9, v3, :cond_37e

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    goto :goto_d3

    :pswitch_eb
    if-ne v2, v14, :cond_f2

    invoke-static {v7, v4, v12, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzcn;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    goto :goto_fd

    :cond_f2
    if-nez v2, :cond_37d

    move v2, v9

    move-object v3, v7

    move v5, v8

    move-object v6, v12

    move-object v7, v11

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/clearcut/zzax;->zza(I[BIILcom/google/android/gms/internal/clearcut/zzcn;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    :goto_fd
    check-cast v1, Lcom/google/android/gms/internal/clearcut/zzcg;

    iget-object v3, v1, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzey;->zzea()Lcom/google/android/gms/internal/clearcut/zzey;

    move-result-object v4

    if-ne v3, v4, :cond_108

    const/4 v3, 0x0

    :cond_108
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzaf(I)Lcom/google/android/gms/internal/clearcut/zzck;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmx:Lcom/google/android/gms/internal/clearcut/zzex;

    move/from16 v6, p6

    invoke-static {v6, v12, v4, v3, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzck;Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzex;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/clearcut/zzey;

    if-eqz v3, :cond_11a

    iput-object v3, v1, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    :cond_11a
    move v1, v2

    return v1

    :pswitch_11c
    if-ne v2, v14, :cond_37d

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-nez v2, :cond_12c

    :goto_126
    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzbb;->zzfi:Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/clearcut/zzcn;->add(Ljava/lang/Object;)Z

    goto :goto_134

    :cond_12c
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/clearcut/zzbb;->zzb([BII)Lcom/google/android/gms/internal/clearcut/zzbb;

    move-result-object v3

    invoke-interface {v12, v3}, Lcom/google/android/gms/internal/clearcut/zzcn;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    :goto_134
    if-ge v1, v8, :cond_37e

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ne v9, v3, :cond_37e

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-nez v2, :cond_12c

    goto :goto_126

    :pswitch_147
    if-ne v2, v14, :cond_37d

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v1

    move v2, v9

    move-object v3, v7

    move v5, v8

    move-object v6, v12

    move-object v7, v11

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzef;I[BIILcom/google/android/gms/internal/clearcut/zzcn;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    return v1

    :pswitch_157
    if-ne v2, v14, :cond_37d

    const-wide/32 v1, 0x20000000

    and-long v15, p9, v1

    cmp-long v1, v15, v5

    if-nez v1, :cond_196

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-nez v2, :cond_170

    :goto_16a
    const-string v2, ""

    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/clearcut/zzcn;->add(Ljava/lang/Object;)Z

    goto :goto_17b

    :cond_170
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzci;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v7, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_177
    invoke-interface {v12, v3}, Lcom/google/android/gms/internal/clearcut/zzcn;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    :goto_17b
    if-ge v1, v8, :cond_37e

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ne v9, v3, :cond_37e

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-nez v2, :cond_18e

    goto :goto_16a

    :cond_18e
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzci;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v7, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_177

    :cond_196
    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-nez v2, :cond_1a4

    :goto_19e
    const-string v2, ""

    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/clearcut/zzcn;->add(Ljava/lang/Object;)Z

    goto :goto_1bc

    :cond_1a4
    add-int v3, v1, v2

    invoke-static {v7, v1, v3}, Lcom/google/android/gms/internal/clearcut/zzff;->zze([BII)Z

    move-result v4

    if-nez v4, :cond_1b1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbp()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v1

    throw v1

    :cond_1b1
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzci;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_1b8
    invoke-interface {v12, v4}, Lcom/google/android/gms/internal/clearcut/zzcn;->add(Ljava/lang/Object;)Z

    move v1, v3

    :goto_1bc
    if-ge v1, v8, :cond_37e

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ne v9, v3, :cond_37e

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-nez v2, :cond_1cf

    goto :goto_19e

    :cond_1cf
    add-int v3, v1, v2

    invoke-static {v7, v1, v3}, Lcom/google/android/gms/internal/clearcut/zzff;->zze([BII)Z

    move-result v4

    if-nez v4, :cond_1dc

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbp()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v1

    throw v1

    :cond_1dc
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzci;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_1b8

    :pswitch_1e4
    const/4 v1, 0x0

    if-ne v2, v14, :cond_20a

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzaz;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    add-int/2addr v3, v2

    :goto_1f0
    if-ge v2, v3, :cond_203

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget-wide v8, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    cmp-long v4, v8, v5

    if-eqz v4, :cond_1fe

    const/4 v4, 0x1

    goto :goto_1ff

    :cond_1fe
    const/4 v4, 0x0

    :goto_1ff
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/clearcut/zzaz;->addBoolean(Z)V

    goto :goto_1f0

    :cond_203
    if-eq v2, v3, :cond_11a

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbl()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v1

    throw v1

    :cond_20a
    if-nez v2, :cond_37d

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzaz;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    cmp-long v10, v3, v5

    if-eqz v10, :cond_21a

    :goto_218
    const/4 v3, 0x1

    goto :goto_21b

    :cond_21a
    const/4 v3, 0x0

    :goto_21b
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/clearcut/zzaz;->addBoolean(Z)V

    if-ge v2, v8, :cond_11a

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ne v9, v4, :cond_11a

    invoke-static {v7, v3, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    cmp-long v10, v3, v5

    if-eqz v10, :cond_21a

    goto :goto_218

    :pswitch_233
    if-ne v2, v14, :cond_251

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzch;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    add-int/2addr v2, v1

    :goto_23e
    if-ge v1, v2, :cond_24a

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/clearcut/zzax;->zzc([BI)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/clearcut/zzch;->zzac(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_23e

    :cond_24a
    if-eq v1, v2, :cond_37e

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbl()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v1

    throw v1

    :cond_251
    if-ne v2, v3, :cond_37d

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzch;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/clearcut/zzax;->zzc([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/clearcut/zzch;->zzac(I)V

    add-int/lit8 v1, v4, 0x4

    :goto_25e
    if-ge v1, v8, :cond_37e

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ne v9, v3, :cond_37e

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/clearcut/zzax;->zzc([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/clearcut/zzch;->zzac(I)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_25e

    :pswitch_272
    if-ne v2, v14, :cond_290

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzdc;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    add-int/2addr v2, v1

    :goto_27d
    if-ge v1, v2, :cond_289

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/clearcut/zzax;->zzd([BI)J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/google/android/gms/internal/clearcut/zzdc;->zzm(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_27d

    :cond_289
    if-eq v1, v2, :cond_37e

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbl()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v1

    throw v1

    :cond_290
    if-ne v2, v13, :cond_37d

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzdc;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/clearcut/zzax;->zzd([BI)J

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Lcom/google/android/gms/internal/clearcut/zzdc;->zzm(J)V

    add-int/lit8 v1, v4, 0x8

    :goto_29d
    if-ge v1, v8, :cond_37e

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ne v9, v3, :cond_37e

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/clearcut/zzax;->zzd([BI)J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/google/android/gms/internal/clearcut/zzdc;->zzm(J)V

    add-int/lit8 v1, v2, 0x8

    goto :goto_29d

    :pswitch_2b1
    if-ne v2, v14, :cond_2b8

    invoke-static {v7, v4, v12, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzcn;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    return v1

    :cond_2b8
    if-nez v2, :cond_37d

    move v1, v9

    move-object v2, v7

    move v3, v4

    move v4, v8

    move-object v5, v12

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/clearcut/zzax;->zza(I[BIILcom/google/android/gms/internal/clearcut/zzcn;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    return v1

    :pswitch_2c5
    if-ne v2, v14, :cond_2e3

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzdc;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    add-int/2addr v2, v1

    :goto_2d0
    if-ge v1, v2, :cond_2dc

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget-wide v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    invoke-virtual {v12, v3, v4}, Lcom/google/android/gms/internal/clearcut/zzdc;->zzm(J)V

    goto :goto_2d0

    :cond_2dc
    if-eq v1, v2, :cond_37e

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbl()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v1

    throw v1

    :cond_2e3
    if-nez v2, :cond_37d

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzdc;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    :goto_2eb
    iget-wide v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    invoke-virtual {v12, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzdc;->zzm(J)V

    if-ge v1, v8, :cond_37e

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ne v9, v3, :cond_37e

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    goto :goto_2eb

    :pswitch_2ff
    if-ne v2, v14, :cond_31d

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzce;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    add-int/2addr v2, v1

    :goto_30a
    if-ge v1, v2, :cond_316

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/clearcut/zzax;->zzf([BI)F

    move-result v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/clearcut/zzce;->zzc(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_30a

    :cond_316
    if-eq v1, v2, :cond_37e

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbl()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v1

    throw v1

    :cond_31d
    if-ne v2, v3, :cond_37d

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzce;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/clearcut/zzax;->zzf([BI)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/clearcut/zzce;->zzc(F)V

    add-int/lit8 v1, v4, 0x4

    :goto_32a
    if-ge v1, v8, :cond_37e

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ne v9, v3, :cond_37e

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/clearcut/zzax;->zzf([BI)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/clearcut/zzce;->zzc(F)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_32a

    :pswitch_33e
    if-ne v2, v14, :cond_35c

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzbq;

    invoke-static {v7, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    add-int/2addr v2, v1

    :goto_349
    if-ge v1, v2, :cond_355

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/clearcut/zzax;->zze([BI)D

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/google/android/gms/internal/clearcut/zzbq;->zzc(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_349

    :cond_355
    if-eq v1, v2, :cond_37e

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbl()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v1

    throw v1

    :cond_35c
    if-ne v2, v13, :cond_37d

    check-cast v12, Lcom/google/android/gms/internal/clearcut/zzbq;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/clearcut/zzax;->zze([BI)D

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Lcom/google/android/gms/internal/clearcut/zzbq;->zzc(D)V

    add-int/lit8 v1, v4, 0x8

    :goto_369
    if-ge v1, v8, :cond_37e

    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ne v9, v3, :cond_37e

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/clearcut/zzax;->zze([BI)D

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/google/android/gms/internal/clearcut/zzbq;->zzc(D)V

    add-int/lit8 v1, v2, 0x8

    goto :goto_369

    :cond_37d
    :goto_37d
    move v1, v4

    :cond_37e
    return v1

    nop

    :pswitch_data_380
    .packed-switch 0x12
        :pswitch_33e
        :pswitch_2ff
        :pswitch_2c5
        :pswitch_2c5
        :pswitch_2b1
        :pswitch_272
        :pswitch_233
        :pswitch_1e4
        :pswitch_157
        :pswitch_147
        :pswitch_11c
        :pswitch_2b1
        :pswitch_eb
        :pswitch_233
        :pswitch_272
        :pswitch_a9
        :pswitch_67
        :pswitch_33e
        :pswitch_2ff
        :pswitch_2c5
        :pswitch_2c5
        :pswitch_2b1
        :pswitch_272
        :pswitch_233
        :pswitch_1e4
        :pswitch_2b1
        :pswitch_eb
        :pswitch_233
        :pswitch_272
        :pswitch_a9
        :pswitch_67
        :pswitch_40
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIIJLcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIIJ",
            "Lcom/google/android/gms/internal/clearcut/zzay;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p6, Lcom/google/android/gms/internal/clearcut/zzds;->zzmh:Lsun/misc/Unsafe;

    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzae(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p6, p1, p7, p8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/clearcut/zzdj;->zzi(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-interface {v1, p5}, Lcom/google/android/gms/internal/clearcut/zzdj;->zzk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/clearcut/zzdj;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p6, p1, p7, p8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v1

    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-interface {p1, p5}, Lcom/google/android/gms/internal/clearcut/zzdj;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdh;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/clearcut/zzdj;->zzg(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    invoke-static {p2, p3, p9}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p3

    iget p6, p9, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    if-ltz p6, :cond_95

    sub-int p7, p4, p3

    if-le p6, p7, :cond_3a

    goto :goto_95

    :cond_3a
    add-int/2addr p6, p3

    iget-object p7, p1, Lcom/google/android/gms/internal/clearcut/zzdh;->zzmc:Ljava/lang/Object;

    iget-object p8, p1, Lcom/google/android/gms/internal/clearcut/zzdh;->zzdu:Ljava/lang/Object;

    :goto_3f
    if-ge p3, p6, :cond_8a

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_4d

    invoke-static {p3, p2, v0, p9}, Lcom/google/android/gms/internal/clearcut/zzax;->zza(I[BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget p3, p9, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    :cond_4d
    move v1, v0

    ushr-int/lit8 v0, p3, 0x3

    and-int/lit8 v2, p3, 0x7

    packed-switch v0, :pswitch_data_9a

    goto :goto_85

    :pswitch_56
    iget-object v0, p1, Lcom/google/android/gms/internal/clearcut/zzdh;->zzmd:Lcom/google/android/gms/internal/clearcut/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzfl;->zzel()I

    move-result v0

    if-ne v2, v0, :cond_85

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzdh;->zzmd:Lcom/google/android/gms/internal/clearcut/zzfl;

    iget-object p3, p1, Lcom/google/android/gms/internal/clearcut/zzdh;->zzdu:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v0, p2

    move v2, p4

    move-object v5, p9

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zza([BIILcom/google/android/gms/internal/clearcut/zzfl;Ljava/lang/Class;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p3

    iget-object p8, p9, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    goto :goto_3f

    :pswitch_70
    iget-object v0, p1, Lcom/google/android/gms/internal/clearcut/zzdh;->zzmb:Lcom/google/android/gms/internal/clearcut/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzfl;->zzel()I

    move-result v0

    if-ne v2, v0, :cond_85

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzdh;->zzmb:Lcom/google/android/gms/internal/clearcut/zzfl;

    const/4 v4, 0x0

    move-object v0, p2

    move v2, p4

    move-object v5, p9

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zza([BIILcom/google/android/gms/internal/clearcut/zzfl;Ljava/lang/Class;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p3

    iget-object p7, p9, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    goto :goto_3f

    :cond_85
    :goto_85
    invoke-static {p3, p2, v1, p4, p9}, Lcom/google/android/gms/internal/clearcut/zzax;->zza(I[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p3

    goto :goto_3f

    :cond_8a
    if-eq p3, p6, :cond_91

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbo()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p1

    throw p1

    :cond_91
    invoke-interface {p5, p7, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    :cond_95
    :goto_95
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbl()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p1

    throw p1

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_70
        :pswitch_56
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/clearcut/zzay;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/android/gms/internal/clearcut/zzds;->zzmh:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v8, -0x1

    move/from16 v0, p3

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_16
    const v17, 0xfffff

    if-ge v0, v13, :cond_378

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_2a

    invoke-static {v0, v12, v1, v9}, Lcom/google/android/gms/internal/clearcut/zzax;->zza(I[BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    move v4, v0

    move v5, v1

    goto :goto_2c

    :cond_2a
    move v5, v0

    move v4, v1

    :goto_2c
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v2, v5, 0x7

    invoke-direct {v15, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzai(I)I

    move-result v1

    if-eq v1, v8, :cond_340

    iget-object v0, v15, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    add-int/lit8 v18, v1, 0x1

    aget v0, v0, v18

    const/high16 v18, 0xff00000

    and-int v18, v0, v18

    ushr-int/lit8 v8, v18, 0x14

    move/from16 v20, v5

    and-int v5, v0, v17

    move/from16 v21, v4

    int-to-long v4, v5

    move-wide/from16 v22, v4

    const/16 v4, 0x11

    if-gt v8, v4, :cond_23a

    iget-object v4, v15, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    add-int/lit8 v18, v1, 0x2

    aget v4, v4, v18

    ushr-int/lit8 v18, v4, 0x14

    const/4 v5, 0x1

    shl-int v18, v5, v18

    and-int v4, v4, v17

    if-eq v4, v7, :cond_6b

    const/4 v11, -0x1

    if-eq v7, v11, :cond_65

    int-to-long v11, v7

    invoke-virtual {v10, v14, v11, v12, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_65
    int-to-long v6, v4

    invoke-virtual {v10, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v4

    :cond_6b
    const/4 v4, 0x5

    packed-switch v8, :pswitch_data_3ec

    move/from16 v24, v7

    move/from16 v11, v20

    move/from16 v0, v21

    move-object/from16 v12, p2

    goto/16 :goto_231

    :pswitch_79
    const/4 v0, 0x3

    if-ne v2, v0, :cond_a9

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v4, v0, 0x4

    invoke-direct {v15, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v0

    move-object/from16 v12, p2

    move-object v1, v12

    move/from16 v2, v21

    move v3, v13

    move/from16 v24, v7

    move-wide/from16 v7, v22

    move/from16 v11, v20

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzef;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    and-int v1, v6, v18

    if-nez v1, :cond_9d

    iget-object v1, v9, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    goto/16 :goto_129

    :cond_9d
    invoke-virtual {v10, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/clearcut/zzci;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_129

    :cond_a9
    move/from16 v24, v7

    move/from16 v11, v20

    move-object/from16 v12, p2

    goto :goto_c8

    :pswitch_b0
    move/from16 v24, v7

    move/from16 v11, v20

    move-wide/from16 v7, v22

    move-object/from16 v12, p2

    if-nez v2, :cond_c8

    move/from16 v3, v21

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v17

    iget-wide v0, v9, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzbk;->zza(J)J

    move-result-wide v4

    goto/16 :goto_1f0

    :cond_c8
    :goto_c8
    move/from16 v0, v21

    goto/16 :goto_231

    :pswitch_cc
    move/from16 v24, v7

    move/from16 v11, v20

    move/from16 v3, v21

    move-wide/from16 v7, v22

    move-object/from16 v12, p2

    if-nez v2, :cond_1c5

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/zzbk;->zzm(I)I

    move-result v1

    goto/16 :goto_1da

    :pswitch_e4
    move/from16 v24, v7

    move/from16 v11, v20

    move/from16 v3, v21

    move-wide/from16 v7, v22

    move-object/from16 v12, p2

    if-nez v2, :cond_1c5

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget v2, v9, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    invoke-direct {v15, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzaf(I)Lcom/google/android/gms/internal/clearcut/zzck;

    move-result-object v1

    if-eqz v1, :cond_111

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/clearcut/zzck;->zzb(I)Lcom/google/android/gms/internal/clearcut/zzcj;

    move-result-object v1

    if-eqz v1, :cond_103

    goto :goto_111

    :cond_103
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzey;

    move-result-object v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/clearcut/zzey;->zzb(ILjava/lang/Object;)V

    goto/16 :goto_229

    :cond_111
    :goto_111
    invoke-virtual {v10, v14, v7, v8, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_227

    :pswitch_116
    move/from16 v24, v7

    move/from16 v11, v20

    move/from16 v3, v21

    move-wide/from16 v7, v22

    const/4 v0, 0x2

    move-object/from16 v12, p2

    if-ne v2, v0, :cond_1c5

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/clearcut/zzax;->zze([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    :goto_127
    iget-object v1, v9, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    :goto_129
    invoke-virtual {v10, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_227

    :pswitch_12e
    move/from16 v24, v7

    move/from16 v11, v20

    move/from16 v3, v21

    move-wide/from16 v7, v22

    const/4 v0, 0x2

    move-object/from16 v12, p2

    if-ne v2, v0, :cond_1c5

    invoke-direct {v15, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v0

    invoke-static {v0, v12, v3, v13, v9}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzef;[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    and-int v1, v6, v18

    if-nez v1, :cond_14a

    iget-object v1, v9, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    goto :goto_129

    :cond_14a
    invoke-virtual {v10, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/clearcut/zzci;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_129

    :pswitch_155
    move/from16 v24, v7

    move/from16 v11, v20

    move/from16 v3, v21

    move-wide/from16 v7, v22

    const/4 v1, 0x2

    move-object/from16 v12, p2

    if-ne v2, v1, :cond_1c5

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_16c

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/clearcut/zzax;->zzc([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    goto :goto_127

    :cond_16c
    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/clearcut/zzax;->zzd([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    goto :goto_127

    :pswitch_171
    move/from16 v24, v7

    move/from16 v11, v20

    move/from16 v3, v21

    move-wide/from16 v7, v22

    move-object/from16 v12, p2

    if-nez v2, :cond_1c5

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    const-wide/16 v3, 0x0

    cmp-long v17, v1, v3

    if-eqz v17, :cond_18a

    goto :goto_18b

    :cond_18a
    const/4 v5, 0x0

    :goto_18b
    invoke-static {v14, v7, v8, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JZ)V

    goto/16 :goto_227

    :pswitch_190
    move/from16 v24, v7

    move/from16 v11, v20

    move/from16 v3, v21

    move-wide/from16 v7, v22

    move-object/from16 v12, p2

    if-ne v2, v4, :cond_1c5

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/clearcut/zzax;->zzc([BI)I

    move-result v0

    invoke-virtual {v10, v14, v7, v8, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v3, 0x4

    goto/16 :goto_227

    :pswitch_1a7
    move/from16 v24, v7

    move/from16 v11, v20

    move/from16 v3, v21

    move-wide/from16 v7, v22

    move-object/from16 v12, p2

    if-ne v2, v5, :cond_1c5

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/clearcut/zzax;->zzd([BI)J

    move-result-wide v4

    move-object v0, v10

    move-object v1, v14

    move/from16 v17, v3

    move-wide v2, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto/16 :goto_227

    :cond_1c5
    move v0, v3

    goto/16 :goto_231

    :pswitch_1c8
    move/from16 v24, v7

    move/from16 v11, v20

    move/from16 v0, v21

    move-wide/from16 v7, v22

    move-object/from16 v12, p2

    if-nez v2, :cond_231

    invoke-static {v12, v0, v9}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    :goto_1da
    invoke-virtual {v10, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_227

    :pswitch_1de
    move/from16 v24, v7

    move/from16 v11, v20

    move/from16 v0, v21

    move-wide/from16 v7, v22

    move-object/from16 v12, p2

    if-nez v2, :cond_231

    invoke-static {v12, v0, v9}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v17

    iget-wide v4, v9, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    :goto_1f0
    move-object v0, v10

    move-object v1, v14

    move-wide v2, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v18

    move v1, v11

    move/from16 v0, v17

    goto :goto_22a

    :pswitch_1fc
    move/from16 v24, v7

    move/from16 v11, v20

    move/from16 v0, v21

    move-wide/from16 v7, v22

    move-object/from16 v12, p2

    if-ne v2, v4, :cond_231

    invoke-static {v12, v0}, Lcom/google/android/gms/internal/clearcut/zzax;->zzf([BI)F

    move-result v1

    invoke-static {v14, v7, v8, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_227

    :pswitch_212
    move/from16 v24, v7

    move/from16 v11, v20

    move/from16 v0, v21

    move-wide/from16 v7, v22

    move-object/from16 v12, p2

    if-ne v2, v5, :cond_231

    invoke-static {v12, v0}, Lcom/google/android/gms/internal/clearcut/zzax;->zze([BI)D

    move-result-wide v1

    invoke-static {v14, v7, v8, v1, v2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v0, 0x8

    :goto_227
    or-int v6, v6, v18

    :goto_229
    move v1, v11

    :goto_22a
    move/from16 v7, v24

    const/4 v8, -0x1

    move/from16 v11, p5

    goto/16 :goto_16

    :cond_231
    :goto_231
    move v2, v0

    move/from16 v18, v6

    move-object/from16 v29, v10

    move v6, v11

    move-object v14, v15

    goto/16 :goto_34d

    :cond_23a
    move/from16 v25, v3

    move/from16 v24, v7

    move v5, v8

    move/from16 v11, v20

    move/from16 v4, v21

    move-wide/from16 v7, v22

    const/16 v3, 0x1b

    if-ne v5, v3, :cond_285

    const/4 v3, 0x2

    if-ne v2, v3, :cond_27d

    invoke-virtual {v10, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzcn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/zzcn;->zzu()Z

    move-result v2

    if-nez v2, :cond_26a

    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/zzcn;->size()I

    move-result v2

    if-nez v2, :cond_261

    const/16 v2, 0xa

    goto :goto_263

    :cond_261
    shl-int/lit8 v2, v2, 0x1

    :goto_263
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/clearcut/zzcn;->zzi(I)Lcom/google/android/gms/internal/clearcut/zzcn;

    move-result-object v0

    invoke-virtual {v10, v14, v7, v8, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_26a
    move-object v5, v0

    invoke-direct {v15, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v0

    move v1, v11

    move-object v2, v12

    move v3, v4

    move v4, v13

    move/from16 v18, v6

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzef;I[BIILcom/google/android/gms/internal/clearcut/zzcn;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    move/from16 v6, v18

    goto :goto_22a

    :cond_27d
    move/from16 v18, v6

    move-object/from16 v29, v10

    move/from16 v30, v11

    goto/16 :goto_348

    :cond_285
    move/from16 v18, v6

    const/16 v3, 0x31

    if-gt v5, v3, :cond_2d8

    move-object/from16 v26, v10

    int-to-long v9, v0

    move-object v0, v15

    move/from16 v19, v1

    move-object v1, v14

    move v6, v2

    move-object v2, v12

    move/from16 v20, v25

    move v3, v4

    move v15, v4

    move v4, v13

    move/from16 v21, v5

    move v5, v11

    move/from16 v27, v6

    move/from16 v6, v20

    move-wide/from16 v22, v7

    move/from16 v7, v27

    move/from16 v28, v21

    move/from16 v8, v19

    move-object/from16 v29, v26

    move/from16 v30, v11

    move/from16 v11, v28

    move-wide/from16 v12, v22

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    if-ne v0, v15, :cond_2c1

    move v2, v0

    move/from16 v6, v30

    move/from16 v7, p5

    move-object/from16 v14, p0

    goto/16 :goto_34f

    :cond_2c1
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v9, p6

    move/from16 v6, v18

    move/from16 v7, v24

    move-object/from16 v10, v29

    move/from16 v1, v30

    const/4 v8, -0x1

    move/from16 v11, p5

    move-object/from16 v15, p0

    goto/16 :goto_16

    :cond_2d8
    move/from16 v19, v1

    move/from16 v27, v2

    move v15, v4

    move/from16 v28, v5

    move-wide/from16 v22, v7

    move-object/from16 v29, v10

    move/from16 v30, v11

    move/from16 v20, v25

    const/16 v1, 0x32

    move/from16 v9, v28

    if-ne v9, v1, :cond_30e

    move/from16 v7, v27

    const/4 v1, 0x2

    if-ne v7, v1, :cond_30b

    move-object/from16 v14, p0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move/from16 v6, v20

    move-wide/from16 v7, v22

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;[BIIIIJLcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    if-ne v0, v15, :cond_32d

    goto :goto_32b

    :cond_30b
    move-object/from16 v14, p0

    goto :goto_34a

    :cond_30e
    move v8, v0

    move/from16 v7, v27

    move-object/from16 v14, p0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v30

    move/from16 v6, v20

    move-wide/from16 v10, v22

    move/from16 v12, v19

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    if-ne v0, v15, :cond_32d

    :goto_32b
    move v2, v0

    goto :goto_34b

    :cond_32d
    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v9, p6

    move-object v15, v14

    move/from16 v6, v18

    move/from16 v7, v24

    move-object/from16 v10, v29

    move/from16 v1, v30

    const/4 v8, -0x1

    move/from16 v11, p5

    goto :goto_374

    :cond_340
    move/from16 v30, v5

    move/from16 v18, v6

    move/from16 v24, v7

    move-object/from16 v29, v10

    :goto_348
    move-object v14, v15

    move v15, v4

    :goto_34a
    move v2, v15

    :goto_34b
    move/from16 v6, v30

    :goto_34d
    move/from16 v7, p5

    :goto_34f
    if-ne v6, v7, :cond_357

    if-nez v7, :cond_354

    goto :goto_357

    :cond_354
    move v8, v2

    move v9, v6

    goto :goto_382

    :cond_357
    :goto_357
    move v0, v6

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(I[BIILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v9, p6

    move v1, v6

    move v11, v7

    move-object v15, v14

    move/from16 v6, v18

    move/from16 v7, v24

    move-object/from16 v10, v29

    const/4 v8, -0x1

    :goto_374
    move-object/from16 v14, p1

    goto/16 :goto_16

    :cond_378
    move/from16 v18, v6

    move/from16 v24, v7

    move-object/from16 v29, v10

    move v7, v11

    move-object v14, v15

    move v8, v0

    move v9, v1

    :goto_382
    move/from16 v1, v18

    move/from16 v0, v24

    const/4 v2, -0x1

    if-eq v0, v2, :cond_392

    int-to-long v2, v0

    move-object/from16 v10, p1

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_394

    :cond_392
    move-object/from16 v10, p1

    :goto_394
    iget-object v0, v14, Lcom/google/android/gms/internal/clearcut/zzds;->zzmt:[I

    if-eqz v0, :cond_3d4

    const/4 v0, 0x0

    iget-object v11, v14, Lcom/google/android/gms/internal/clearcut/zzds;->zzmt:[I

    array-length v12, v11

    move-object v5, v0

    const/4 v13, 0x0

    :goto_39e
    if-ge v13, v12, :cond_3cd

    aget v1, v11, v13

    iget-object v6, v14, Lcom/google/android/gms/internal/clearcut/zzds;->zzmx:Lcom/google/android/gms/internal/clearcut/zzex;

    iget-object v0, v14, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v2, v0, v1

    invoke-direct {v14, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzag(I)I

    move-result v0

    and-int v0, v0, v17

    int-to-long v3, v0

    invoke-static {v10, v3, v4}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3b6

    goto :goto_3c8

    :cond_3b6
    invoke-direct {v14, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzaf(I)Lcom/google/android/gms/internal/clearcut/zzck;

    move-result-object v4

    if-nez v4, :cond_3bd

    goto :goto_3c8

    :cond_3bd
    iget-object v3, v14, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/clearcut/zzdj;->zzg(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(IILjava/util/Map;Lcom/google/android/gms/internal/clearcut/zzck;Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzex;)Ljava/lang/Object;

    move-result-object v5

    :goto_3c8
    check-cast v5, Lcom/google/android/gms/internal/clearcut/zzey;

    add-int/lit8 v13, v13, 0x1

    goto :goto_39e

    :cond_3cd
    if-eqz v5, :cond_3d4

    iget-object v0, v14, Lcom/google/android/gms/internal/clearcut/zzds;->zzmx:Lcom/google/android/gms/internal/clearcut/zzex;

    invoke-virtual {v0, v10, v5}, Lcom/google/android/gms/internal/clearcut/zzex;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d4
    if-nez v7, :cond_3df

    move/from16 v0, p4

    if-eq v8, v0, :cond_3e6

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbo()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v0

    throw v0

    :cond_3df
    move/from16 v0, p4

    if-gt v8, v0, :cond_3e7

    if-eq v9, v7, :cond_3e6

    goto :goto_3e7

    :cond_3e6
    return v8

    :cond_3e7
    :goto_3e7
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbo()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v0

    throw v0

    :pswitch_data_3ec
    .packed-switch 0x0
        :pswitch_212
        :pswitch_1fc
        :pswitch_1de
        :pswitch_1de
        :pswitch_1c8
        :pswitch_1a7
        :pswitch_190
        :pswitch_171
        :pswitch_155
        :pswitch_12e
        :pswitch_116
        :pswitch_1c8
        :pswitch_e4
        :pswitch_190
        :pswitch_1a7
        :pswitch_cc
        :pswitch_b0
        :pswitch_79
    .end packed-switch
.end method

.method private static zza([BIILcom/google/android/gms/internal/clearcut/zzfl;Ljava/lang/Class;Lcom/google/android/gms/internal/clearcut/zzay;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/clearcut/zzfl;",
            "Ljava/lang/Class<",
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

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzdt;->zzgq:[I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/clearcut/zzfl;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_9a

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_13
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/clearcut/zzax;->zzd([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    return p0

    :pswitch_18
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzbk;->zza(J)J

    move-result-wide p1

    goto :goto_41

    :pswitch_23
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/zzbk;->zzm(I)I

    move-result p1

    goto :goto_4c

    :pswitch_2e
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzea;->zzcm()Lcom/google/android/gms/internal/clearcut/zzea;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/clearcut/zzea;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzef;[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    return p0

    :pswitch_3b
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    :goto_41
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_50

    :pswitch_46
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    :goto_4c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_50
    iput-object p1, p5, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    return p0

    :pswitch_53
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzax;->zzf([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_6d

    :pswitch_5c
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzax;->zzd([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_7a

    :pswitch_65
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzax;->zzc([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_6d
    iput-object p0, p5, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x4

    return p0

    :pswitch_72
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzax;->zze([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_7a
    iput-object p0, p5, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x8

    return p0

    :pswitch_7f
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/clearcut/zzax;->zze([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    return p0

    :pswitch_84
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_92

    const/4 p1, 0x1

    goto :goto_93

    :cond_92
    const/4 p1, 0x0

    :goto_93
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_50

    return p0

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_84
        :pswitch_7f
        :pswitch_72
        :pswitch_65
        :pswitch_65
        :pswitch_5c
        :pswitch_5c
        :pswitch_53
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_3b
        :pswitch_3b
        :pswitch_2e
        :pswitch_23
        :pswitch_18
        :pswitch_13
    .end packed-switch
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/clearcut/zzdm;Lcom/google/android/gms/internal/clearcut/zzdw;Lcom/google/android/gms/internal/clearcut/zzcy;Lcom/google/android/gms/internal/clearcut/zzex;Lcom/google/android/gms/internal/clearcut/zzbu;Lcom/google/android/gms/internal/clearcut/zzdj;)Lcom/google/android/gms/internal/clearcut/zzds;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/clearcut/zzdm;",
            "Lcom/google/android/gms/internal/clearcut/zzdw;",
            "Lcom/google/android/gms/internal/clearcut/zzcy;",
            "Lcom/google/android/gms/internal/clearcut/zzex<",
            "**>;",
            "Lcom/google/android/gms/internal/clearcut/zzbu<",
            "*>;",
            "Lcom/google/android/gms/internal/clearcut/zzdj;",
            ")",
            "Lcom/google/android/gms/internal/clearcut/zzds<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/clearcut/zzec;

    if-eqz v1, :cond_18b

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->zzcf()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/clearcut/zzcg$zzg;->zzkm:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_14

    const/4 v12, 0x1

    goto :goto_15

    :cond_14
    const/4 v12, 0x0

    :goto_15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->getFieldCount()I

    move-result v1

    if-nez v1, :cond_1f

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_2d

    :cond_1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->zzcp()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->zzcq()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->zzcu()I

    move-result v5

    move v8, v1

    move v9, v2

    :goto_2d
    shl-int/lit8 v1, v5, 0x2

    new-array v6, v1, [I

    shl-int/lit8 v1, v5, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->zzcr()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_44

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->zzcr()I

    move-result v1

    new-array v1, v1, [I

    move-object v15, v1

    goto :goto_45

    :cond_44
    move-object v15, v2

    :goto_45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->zzcs()I

    move-result v1

    if-lez v1, :cond_54

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->zzcs()I

    move-result v1

    new-array v1, v1, [I

    move-object/from16 v16, v1

    goto :goto_56

    :cond_54
    move-object/from16 v16, v2

    :goto_56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->zzco()Lcom/google/android/gms/internal/clearcut/zzed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->next()Z

    move-result v2

    if-eqz v2, :cond_16d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzcx()I

    move-result v2

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->zzcv()I

    move-result v13

    if-ge v2, v13, :cond_80

    sub-int v13, v2, v8

    shl-int/lit8 v13, v13, 0x2

    if-ge v5, v13, :cond_80

    const/4 v13, 0x0

    :goto_74
    const/4 v14, 0x4

    if-ge v13, v14, :cond_169

    add-int v14, v5, v13

    const/16 v17, -0x1

    aput v17, v6, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_74

    :cond_80
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzda()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdb()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v2, v13

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdc()Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v13, v13

    :goto_98
    const/4 v14, 0x0

    goto :goto_b9

    :cond_9a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdd()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v2, v13

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzde()Z

    move-result v13

    if-eqz v13, :cond_b7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdf()Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v13, v13

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdg()I

    move-result v14

    goto :goto_b9

    :cond_b7
    const/4 v13, 0x0

    goto :goto_98

    :goto_b9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzcx()I

    move-result v17

    aput v17, v6, v5

    add-int/lit8 v17, v5, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdi()Z

    move-result v18

    if-eqz v18, :cond_ca

    const/high16 v18, 0x20000000

    goto :goto_cc

    :cond_ca
    const/16 v18, 0x0

    :goto_cc
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdh()Z

    move-result v19

    if-eqz v19, :cond_d5

    const/high16 v19, 0x10000000

    goto :goto_d7

    :cond_d5
    const/16 v19, 0x0

    :goto_d7
    or-int v18, v18, v19

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzcy()I

    move-result v19

    shl-int/lit8 v19, v19, 0x14

    or-int v18, v18, v19

    or-int v2, v18, v2

    aput v2, v6, v17

    add-int/lit8 v2, v5, 0x2

    shl-int/lit8 v14, v14, 0x14

    or-int/2addr v13, v14

    aput v13, v6, v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdl()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_119

    div-int/lit8 v2, v5, 0x4

    shl-int/2addr v2, v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdl()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdj()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_10a

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdj()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    goto :goto_13a

    :cond_10a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdk()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_13a

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdk()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    goto :goto_13a

    :cond_119
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdj()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12a

    div-int/lit8 v2, v5, 0x4

    shl-int/2addr v2, v4

    add-int/2addr v2, v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdj()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    goto :goto_13a

    :cond_12a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdk()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13a

    div-int/lit8 v2, v5, 0x4

    shl-int/2addr v2, v4

    add-int/2addr v2, v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzdk()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    :cond_13a
    :goto_13a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzcy()I

    move-result v2

    sget-object v13, Lcom/google/android/gms/internal/clearcut/zzcb;->zziw:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/clearcut/zzcb;->ordinal()I

    move-result v13

    if-ne v2, v13, :cond_14c

    add-int/lit8 v2, v10, 0x1

    aput v5, v15, v10

    move v10, v2

    goto :goto_15f

    :cond_14c
    const/16 v13, 0x12

    if-lt v2, v13, :cond_15f

    const/16 v13, 0x31

    if-gt v2, v13, :cond_15f

    add-int/lit8 v2, v11, 0x1

    aget v13, v6, v17

    const v14, 0xfffff

    and-int/2addr v13, v14

    aput v13, v16, v11

    move v11, v2

    :cond_15f
    :goto_15f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->next()Z

    move-result v2

    if-eqz v2, :cond_16d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->zzcx()I

    move-result v2

    :cond_169
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_67

    :cond_16d
    new-instance v1, Lcom/google/android/gms/internal/clearcut/zzds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->zzcv()I

    move-result v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->zzch()Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->zzct()[I

    move-result-object v14

    move-object v5, v1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    move-object/from16 v21, p6

    invoke-direct/range {v5 .. v21}, Lcom/google/android/gms/internal/clearcut/zzds;-><init>([I[Ljava/lang/Object;IIILcom/google/android/gms/internal/clearcut/zzdo;ZZ[I[I[ILcom/google/android/gms/internal/clearcut/zzdw;Lcom/google/android/gms/internal/clearcut/zzcy;Lcom/google/android/gms/internal/clearcut/zzex;Lcom/google/android/gms/internal/clearcut/zzbu;Lcom/google/android/gms/internal/clearcut/zzdj;)V

    return-object v1

    :cond_18b
    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzes;->zzcf()I

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method private final zza(IILjava/util/Map;Lcom/google/android/gms/internal/clearcut/zzck;Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzex;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/clearcut/zzck<",
            "*>;TUB;",
            "Lcom/google/android/gms/internal/clearcut/zzex<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzae(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzdj;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdh;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_12
    :goto_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/clearcut/zzck;->zzb(I)Lcom/google/android/gms/internal/clearcut/zzcj;

    move-result-object v1

    if-nez v1, :cond_12

    if-nez p5, :cond_34

    invoke-virtual {p6}, Lcom/google/android/gms/internal/clearcut/zzex;->zzdz()Ljava/lang/Object;

    move-result-object p5

    :cond_34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/clearcut/zzdg;->zza(Lcom/google/android/gms/internal/clearcut/zzdh;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/zzbb;->zzk(I)Lcom/google/android/gms/internal/clearcut/zzbg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzbg;->zzae()Lcom/google/android/gms/internal/clearcut/zzbn;

    move-result-object v2

    :try_start_48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/android/gms/internal/clearcut/zzdg;->zza(Lcom/google/android/gms/internal/clearcut/zzbn;Lcom/google/android/gms/internal/clearcut/zzdh;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_53} :catch_5e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzbg;->zzad()Lcom/google/android/gms/internal/clearcut/zzbb;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzex;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/clearcut/zzbb;)V

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :catch_5e
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_65
    return-object p5
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ILjava/lang/String;)V

    return-void

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ILcom/google/android/gms/internal/clearcut/zzbb;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/clearcut/zzex;Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/clearcut/zzex<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/clearcut/zzfr;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzex;->zzq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzex;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/clearcut/zzfr;ILjava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/clearcut/zzfr;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/clearcut/zzds;->zzae(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/clearcut/zzdj;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdh;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/clearcut/zzdj;->zzh(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ILcom/google/android/gms/internal/clearcut/zzdh;Ljava/util/Map;)V

    :cond_15
    return-void
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzag(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_27

    if-eqz p2, :cond_27

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/clearcut/zzci;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzb(Ljava/lang/Object;I)V

    return-void

    :cond_27
    if-eqz p2, :cond_2f

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzb(Ljava/lang/Object;I)V

    :cond_2f
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmq:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_e2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzag(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_f6

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_20
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_27

    return v3

    :cond_27
    return v2

    :pswitch_28
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_31

    return v3

    :cond_31
    return v2

    :pswitch_32
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_39

    return v3

    :cond_39
    return v2

    :pswitch_3a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_43

    return v3

    :cond_43
    return v2

    :pswitch_44
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4b

    return v3

    :cond_4b
    return v2

    :pswitch_4c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_53

    return v3

    :cond_53
    return v2

    :pswitch_54
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5b

    return v3

    :cond_5b
    return v2

    :pswitch_5c
    sget-object p2, Lcom/google/android/gms/internal/clearcut/zzbb;->zzfi:Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/clearcut/zzbb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    return v3

    :cond_69
    return v2

    :pswitch_6a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_71

    return v3

    :cond_71
    return v2

    :pswitch_72
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_84

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_83

    return v3

    :cond_83
    return v2

    :cond_84
    instance-of p2, p1, Lcom/google/android/gms/internal/clearcut/zzbb;

    if-eqz p2, :cond_92

    sget-object p2, Lcom/google/android/gms/internal/clearcut/zzbb;->zzfi:Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/clearcut/zzbb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    return v3

    :cond_91
    return v2

    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_98
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzl(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_9d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_a4

    return v3

    :cond_a4
    return v2

    :pswitch_a5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_ae

    return v3

    :cond_ae
    return v2

    :pswitch_af
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_b6

    return v3

    :cond_b6
    return v2

    :pswitch_b7
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_c0

    return v3

    :cond_c0
    return v2

    :pswitch_c1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_ca

    return v3

    :cond_ca
    return v2

    :pswitch_cb
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzm(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_d5

    return v3

    :cond_d5
    return v2

    :pswitch_d6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzn(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_e1

    return v3

    :cond_e1
    return v2

    :cond_e2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzah(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_f4

    return v3

    :cond_f4
    return v2

    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_cb
        :pswitch_c1
        :pswitch_b7
        :pswitch_af
        :pswitch_a5
        :pswitch_9d
        :pswitch_98
        :pswitch_72
        :pswitch_6a
        :pswitch_5c
        :pswitch_54
        :pswitch_4c
        :pswitch_44
        :pswitch_3a
        :pswitch_32
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzah(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/Object;III)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmq:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_9
    and-int p1, p3, p4

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private static zza(Ljava/lang/Object;ILcom/google/android/gms/internal/clearcut/zzef;)Z
    .registers 5

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/clearcut/zzef;->zzo(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;
    .registers 5

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmj:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzef;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzea;->zzcm()Lcom/google/android/gms/internal/clearcut/zzea;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmj:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzea;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmj:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzae(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmj:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzaf(I)Lcom/google/android/gms/internal/clearcut/zzck;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/clearcut/zzck<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmj:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzck;

    return-object p1
.end method

.method private final zzag(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzah(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final zzai(I)I
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmk:I

    const/4 v1, -0x1

    if-lt p1, v0, :cond_3e

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmm:I

    if-ge p1, v0, :cond_17

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmk:I

    sub-int v0, p1, v0

    shl-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_16

    return v0

    :cond_16
    return v1

    :cond_17
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzml:I

    if-gt p1, v0, :cond_3e

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmm:I

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmk:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x1

    :goto_27
    if-gt v0, v2, :cond_3e

    add-int v3, v2, v0

    ushr-int/lit8 v3, v3, 0x1

    shl-int/lit8 v4, v3, 0x2

    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v5, v5, v4

    if-ne p1, v5, :cond_36

    return v4

    :cond_36
    if-ge p1, v5, :cond_3b

    add-int/lit8 v2, v3, -0x1

    goto :goto_27

    :cond_3b
    add-int/lit8 v0, v3, 0x1

    goto :goto_27

    :cond_3e
    return v1
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmq:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzah(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzah(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/clearcut/zzfr;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmo:Z

    if-eqz v3, :cond_21

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzby;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/zzby;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_21

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/zzby;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_23

    :cond_21
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_23
    const/4 v6, -0x1

    iget-object v7, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    array-length v7, v7

    sget-object v8, Lcom/google/android/gms/internal/clearcut/zzds;->zzmh:Lsun/misc/Unsafe;

    move-object v10, v5

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_2c
    if-ge v5, v7, :cond_4f5

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzag(I)I

    move-result v12

    iget-object v13, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v13, v13, v5

    const/high16 v14, 0xff00000

    and-int/2addr v14, v12

    ushr-int/lit8 v14, v14, 0x14

    iget-boolean v15, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmq:Z

    const v16, 0xfffff

    if-nez v15, :cond_61

    const/16 v15, 0x11

    if-gt v14, v15, :cond_61

    iget-object v15, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    add-int/lit8 v17, v5, 0x2

    aget v15, v15, v17

    and-int v9, v15, v16

    if-eq v9, v6, :cond_59

    move/from16 v18, v5

    int-to-long v4, v9

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v6, v9

    goto :goto_5b

    :cond_59
    move/from16 v18, v5

    :goto_5b
    ushr-int/lit8 v4, v15, 0x14

    const/4 v5, 0x1

    shl-int v9, v5, v4

    goto :goto_64

    :cond_61
    move/from16 v18, v5

    const/4 v9, 0x0

    :goto_64
    if-eqz v10, :cond_83

    iget-object v4, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Ljava/util/Map$Entry;)I

    move-result v4

    if-gt v4, v13, :cond_83

    iget-object v4, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v4, v2, v10}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Lcom/google/android/gms/internal/clearcut/zzfr;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v10, v4

    goto :goto_64

    :cond_81
    const/4 v10, 0x0

    goto :goto_64

    :cond_83
    and-int v4, v12, v16

    int-to-long v4, v4

    packed-switch v14, :pswitch_data_512

    move/from16 v12, v18

    :cond_8b
    :goto_8b
    const/4 v14, 0x0

    goto/16 :goto_4f1

    :pswitch_8e
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzef;)V

    goto :goto_8b

    :pswitch_a2
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzb(IJ)V

    goto :goto_8b

    :pswitch_b2
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zze(II)V

    goto :goto_8b

    :pswitch_c2
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzj(IJ)V

    goto :goto_8b

    :pswitch_d2
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzm(II)V

    goto :goto_8b

    :pswitch_e2
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzn(II)V

    goto :goto_8b

    :pswitch_f2
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzd(II)V

    goto :goto_8b

    :pswitch_102
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ILcom/google/android/gms/internal/clearcut/zzbb;)V

    goto/16 :goto_8b

    :pswitch_115
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzef;)V

    goto/16 :goto_8b

    :pswitch_12a
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v4, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    goto/16 :goto_8b

    :pswitch_13b
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzi(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzb(IZ)V

    goto/16 :goto_8b

    :pswitch_14c
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzf(II)V

    goto/16 :goto_8b

    :pswitch_15d
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzc(IJ)V

    goto/16 :goto_8b

    :pswitch_16e
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzc(II)V

    goto/16 :goto_8b

    :pswitch_17f
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(IJ)V

    goto/16 :goto_8b

    :pswitch_190
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzi(IJ)V

    goto/16 :goto_8b

    :pswitch_1a1
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzf(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(IF)V

    goto/16 :goto_8b

    :pswitch_1b2
    move/from16 v12, v18

    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zze(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ID)V

    goto/16 :goto_8b

    :pswitch_1c3
    move/from16 v12, v18

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v13, v4, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzfr;ILjava/lang/Object;I)V

    goto/16 :goto_8b

    :pswitch_1ce
    move/from16 v12, v18

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v5

    invoke-static {v9, v4, v2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Lcom/google/android/gms/internal/clearcut/zzef;)V

    goto/16 :goto_8b

    :pswitch_1e3
    move/from16 v12, v18

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v13, 0x1

    goto/16 :goto_2bc

    :pswitch_1f2
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    goto/16 :goto_2c8

    :pswitch_1fb
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    goto/16 :goto_2da

    :pswitch_204
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    goto/16 :goto_2ec

    :pswitch_20d
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    goto/16 :goto_2fe

    :pswitch_216
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    goto/16 :goto_310

    :pswitch_21f
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_8b

    :pswitch_231
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_8b

    :pswitch_243
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_8b

    :pswitch_255
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_8b

    :pswitch_267
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_8b

    :pswitch_279
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_8b

    :pswitch_28b
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_8b

    :pswitch_29d
    move/from16 v12, v18

    const/4 v13, 0x1

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_8b

    :pswitch_2af
    move/from16 v12, v18

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v13, 0x0

    :goto_2bc
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/clearcut/zzeh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_8b

    :pswitch_2c1
    move/from16 v12, v18

    const/4 v13, 0x0

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    :goto_2c8
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_8b

    :pswitch_2d3
    move/from16 v12, v18

    const/4 v13, 0x0

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    :goto_2da
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_8b

    :pswitch_2e5
    move/from16 v12, v18

    const/4 v13, 0x0

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    :goto_2ec
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_8b

    :pswitch_2f7
    move/from16 v12, v18

    const/4 v13, 0x0

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    :goto_2fe
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_8b

    :pswitch_309
    move/from16 v12, v18

    const/4 v13, 0x0

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    :goto_310
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_8b

    :pswitch_31b
    move/from16 v12, v18

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    goto/16 :goto_8b

    :pswitch_32c
    move/from16 v12, v18

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v5

    invoke-static {v9, v4, v2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Lcom/google/android/gms/internal/clearcut/zzef;)V

    goto/16 :goto_8b

    :pswitch_341
    move/from16 v12, v18

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    goto/16 :goto_8b

    :pswitch_352
    move/from16 v12, v18

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v14, 0x0

    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4f1

    :pswitch_364
    move/from16 v12, v18

    const/4 v14, 0x0

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4f1

    :pswitch_376
    move/from16 v12, v18

    const/4 v14, 0x0

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4f1

    :pswitch_388
    move/from16 v12, v18

    const/4 v14, 0x0

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4f1

    :pswitch_39a
    move/from16 v12, v18

    const/4 v14, 0x0

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4f1

    :pswitch_3ac
    move/from16 v12, v18

    const/4 v14, 0x0

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4f1

    :pswitch_3be
    move/from16 v12, v18

    const/4 v14, 0x0

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4f1

    :pswitch_3d0
    move/from16 v12, v18

    const/4 v14, 0x0

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v12

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4f1

    :pswitch_3e2
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzef;)V

    goto/16 :goto_4f1

    :pswitch_3f5
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzb(IJ)V

    goto/16 :goto_4f1

    :pswitch_404
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zze(II)V

    goto/16 :goto_4f1

    :pswitch_413
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzj(IJ)V

    goto/16 :goto_4f1

    :pswitch_422
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzm(II)V

    goto/16 :goto_4f1

    :pswitch_431
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzn(II)V

    goto/16 :goto_4f1

    :pswitch_440
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzd(II)V

    goto/16 :goto_4f1

    :pswitch_44f
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ILcom/google/android/gms/internal/clearcut/zzbb;)V

    goto/16 :goto_4f1

    :pswitch_460
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzef;)V

    goto/16 :goto_4f1

    :pswitch_473
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v4, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    goto/16 :goto_4f1

    :pswitch_482
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzl(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzb(IZ)V

    goto :goto_4f1

    :pswitch_490
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzf(II)V

    goto :goto_4f1

    :pswitch_49e
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzc(IJ)V

    goto :goto_4f1

    :pswitch_4ac
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzc(II)V

    goto :goto_4f1

    :pswitch_4ba
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(IJ)V

    goto :goto_4f1

    :pswitch_4c8
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzi(IJ)V

    goto :goto_4f1

    :pswitch_4d6
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzm(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(IF)V

    goto :goto_4f1

    :pswitch_4e4
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_4f1

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ID)V

    :cond_4f1
    :goto_4f1
    add-int/lit8 v5, v12, 0x4

    goto/16 :goto_2c

    :cond_4f5
    :goto_4f5
    if-eqz v10, :cond_50c

    iget-object v4, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v4, v2, v10}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Lcom/google/android/gms/internal/clearcut/zzfr;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v10, v4

    goto :goto_4f5

    :cond_50a
    const/4 v10, 0x0

    goto :goto_4f5

    :cond_50c
    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmx:Lcom/google/android/gms/internal/clearcut/zzex;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzex;Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    return-void

    :pswitch_data_512
    .packed-switch 0x0
        :pswitch_4e4
        :pswitch_4d6
        :pswitch_4c8
        :pswitch_4ba
        :pswitch_4ac
        :pswitch_49e
        :pswitch_490
        :pswitch_482
        :pswitch_473
        :pswitch_460
        :pswitch_44f
        :pswitch_440
        :pswitch_431
        :pswitch_422
        :pswitch_413
        :pswitch_404
        :pswitch_3f5
        :pswitch_3e2
        :pswitch_3d0
        :pswitch_3be
        :pswitch_3ac
        :pswitch_39a
        :pswitch_388
        :pswitch_376
        :pswitch_364
        :pswitch_352
        :pswitch_341
        :pswitch_32c
        :pswitch_31b
        :pswitch_309
        :pswitch_2f7
        :pswitch_2e5
        :pswitch_2d3
        :pswitch_2c1
        :pswitch_2af
        :pswitch_29d
        :pswitch_28b
        :pswitch_279
        :pswitch_267
        :pswitch_255
        :pswitch_243
        :pswitch_231
        :pswitch_21f
        :pswitch_216
        :pswitch_20d
        :pswitch_204
        :pswitch_1fb
        :pswitch_1f2
        :pswitch_1e3
        :pswitch_1ce
        :pswitch_1c3
        :pswitch_1b2
        :pswitch_1a1
        :pswitch_190
        :pswitch_17f
        :pswitch_16e
        :pswitch_15d
        :pswitch_14c
        :pswitch_13b
        :pswitch_12a
        :pswitch_115
        :pswitch_102
        :pswitch_f2
        :pswitch_e2
        :pswitch_d2
        :pswitch_c2
        :pswitch_b2
        :pswitch_a2
        :pswitch_8e
    .end packed-switch
.end method

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzag(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2b

    if-eqz p2, :cond_2b

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/clearcut/zzci;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzb(Ljava/lang/Object;II)V

    return-void

    :cond_2b
    if-eqz p2, :cond_33

    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzb(Ljava/lang/Object;II)V

    :cond_33
    return-void
.end method

.method private final zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private static zzd(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static zze(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzf(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzg(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzh(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzi(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzey;
    .registers 3

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzcg;

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzey;->zzea()Lcom/google/android/gms/internal/clearcut/zzey;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzey;->zzeb()Lcom/google/android/gms/internal/clearcut/zzey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    :cond_10
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1aa

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzag(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_1d4

    goto/16 :goto_1a3

    :pswitch_1c
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzah(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a3

    goto/16 :goto_18f

    :pswitch_3c
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1a3

    :pswitch_4a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a3

    goto/16 :goto_1a2

    :pswitch_60
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1a3

    goto/16 :goto_18f

    :pswitch_74
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1a3

    goto/16 :goto_1a2

    :pswitch_86
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1a3

    goto/16 :goto_18f

    :pswitch_9a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1a3

    goto/16 :goto_1a2

    :pswitch_ac
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1a3

    goto/16 :goto_18f

    :pswitch_be
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1a3

    goto/16 :goto_1a2

    :pswitch_d0
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a3

    goto/16 :goto_18f

    :pswitch_e6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a3

    goto/16 :goto_1a2

    :pswitch_fc
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a3

    goto/16 :goto_18f

    :pswitch_112
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzl(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzl(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1a3

    goto/16 :goto_1a2

    :pswitch_124
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1a3

    goto :goto_18f

    :pswitch_135
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1a3

    goto :goto_1a2

    :pswitch_148
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1a3

    goto :goto_18f

    :pswitch_159
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1a3

    goto :goto_1a2

    :pswitch_16c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1a3

    goto :goto_18f

    :pswitch_17f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1a3

    :goto_18f
    goto :goto_1a2

    :pswitch_190
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1a3

    :cond_1a2
    :goto_1a2
    const/4 v3, 0x0

    :cond_1a3
    :goto_1a3
    if-nez v3, :cond_1a6

    return v1

    :cond_1a6
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_5

    :cond_1aa
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmx:Lcom/google/android/gms/internal/clearcut/zzex;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzex;->zzq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmx:Lcom/google/android/gms/internal/clearcut/zzex;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/clearcut/zzex;->zzq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bd

    return v1

    :cond_1bd
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmo:Z

    if-eqz v0, :cond_1d2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzby;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzby;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzby;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1d2
    return v3

    nop

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_190
        :pswitch_17f
        :pswitch_16c
        :pswitch_159
        :pswitch_148
        :pswitch_135
        :pswitch_124
        :pswitch_112
        :pswitch_fc
        :pswitch_e6
        :pswitch_d0
        :pswitch_be
        :pswitch_ac
        :pswitch_9a
        :pswitch_86
        :pswitch_74
        :pswitch_60
        :pswitch_4a
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_12e

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzag(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_14e

    goto/16 :goto_12a

    :pswitch_20
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_61

    :pswitch_27
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto/16 :goto_a8

    :pswitch_2f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_4b

    :pswitch_36
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto/16 :goto_a8

    :pswitch_3e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_4b

    :pswitch_45
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    :goto_4b
    goto :goto_93

    :pswitch_4c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_93

    :pswitch_53
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto/16 :goto_d1

    :pswitch_5b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    :goto_61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    goto/16 :goto_d7

    :pswitch_69
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto/16 :goto_ea

    :pswitch_71
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zzi(Ljava/lang/Object;J)Z

    move-result v3

    goto/16 :goto_fd

    :pswitch_7f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_93

    :pswitch_86
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_a8

    :pswitch_8d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    :goto_93
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_129

    :pswitch_9b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_a8

    :pswitch_a2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    :goto_a8
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v3

    goto/16 :goto_125

    :pswitch_b0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zzf(Ljava/lang/Object;J)F

    move-result v3

    goto :goto_116

    :pswitch_bd
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zze(Ljava/lang/Object;J)D

    move-result-wide v3

    goto :goto_121

    :pswitch_ca
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e6

    goto :goto_e2

    :goto_d1
    :pswitch_d1
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    :goto_d7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_129

    :pswitch_dc
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e6

    :goto_e2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_e6
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_12a

    :goto_ea
    :pswitch_ea
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_129

    :pswitch_f7
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzl(Ljava/lang/Object;J)Z

    move-result v3

    :goto_fd
    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/zzci;->zzc(Z)I

    move-result v3

    goto :goto_129

    :pswitch_102
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_129

    :pswitch_109
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v3

    goto :goto_125

    :pswitch_110
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzm(Ljava/lang/Object;J)F

    move-result v3

    :goto_116
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_129

    :pswitch_11b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v3

    :goto_121
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    :goto_125
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzci;->zzl(J)I

    move-result v3

    :goto_129
    add-int/2addr v2, v3

    :cond_12a
    :goto_12a
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_5

    :cond_12e
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmx:Lcom/google/android/gms/internal/clearcut/zzex;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzex;->zzq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmo:Z

    if-eqz v0, :cond_14c

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzby;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzby;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_14c
    return v2

    nop

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_11b
        :pswitch_110
        :pswitch_109
        :pswitch_109
        :pswitch_102
        :pswitch_109
        :pswitch_102
        :pswitch_f7
        :pswitch_ea
        :pswitch_dc
        :pswitch_d1
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_109
        :pswitch_102
        :pswitch_109
        :pswitch_ca
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_bd
        :pswitch_b0
        :pswitch_a2
        :pswitch_9b
        :pswitch_8d
        :pswitch_86
        :pswitch_7f
        :pswitch_71
        :pswitch_69
        :pswitch_5b
        :pswitch_53
        :pswitch_4c
        :pswitch_45
        :pswitch_3e
        :pswitch_36
        :pswitch_2f
        :pswitch_27
        :pswitch_20
    .end packed-switch
.end method

.method public final newInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmv:Lcom/google/android/gms/internal/clearcut/zzdw;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmn:Lcom/google/android/gms/internal/clearcut/zzdo;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzdw;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/clearcut/zzfr;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzaj()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/clearcut/zzcg$zzg;->zzkp:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_4cf

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmx:Lcom/google/android/gms/internal/clearcut/zzex;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzex;Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmo:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzby;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzby;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzby;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_32

    :cond_30
    move-object v0, v3

    move-object v1, v0

    :goto_32
    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x4

    :goto_37
    if-ltz v7, :cond_4b7

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zzag(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    :goto_41
    if-eqz v1, :cond_5f

    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_5f

    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Lcom/google/android/gms/internal/clearcut/zzfr;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_41

    :cond_5d
    move-object v1, v3

    goto :goto_41

    :cond_5f
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_996

    goto/16 :goto_4b3

    :pswitch_68
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    goto/16 :goto_385

    :pswitch_70
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_3a0

    :pswitch_7e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_3b1

    :pswitch_8c
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_3c2

    :pswitch_9a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_3d3

    :pswitch_a8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_3e4

    :pswitch_b6
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_3f5

    :pswitch_c4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    goto/16 :goto_400

    :pswitch_cc
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    goto/16 :goto_413

    :pswitch_d4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    goto/16 :goto_428

    :pswitch_dc
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zzi(Ljava/lang/Object;J)Z

    move-result v8

    goto/16 :goto_43f

    :pswitch_ea
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_450

    :pswitch_f8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_460

    :pswitch_106
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_470

    :pswitch_114
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_480

    :pswitch_122
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_490

    :pswitch_130
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zzf(Ljava/lang/Object;J)F

    move-result v8

    goto/16 :goto_4a0

    :pswitch_13e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zze(Ljava/lang/Object;J)D

    move-result-wide v10

    goto/16 :goto_4b0

    :pswitch_14c
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzfr;ILjava/lang/Object;I)V

    goto/16 :goto_4b3

    :pswitch_157
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Lcom/google/android/gms/internal/clearcut/zzef;)V

    goto/16 :goto_4b3

    :pswitch_16c
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_17d
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_18e
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_19f
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_1b0
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_1c1
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_1d2
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_1e3
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_1f4
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_205
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_216
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_227
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_238
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_249
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_25a
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_26b
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_27c
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_28d
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_29e
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_2af
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_2c0
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    goto/16 :goto_4b3

    :pswitch_2d1
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Lcom/google/android/gms/internal/clearcut/zzef;)V

    goto/16 :goto_4b3

    :pswitch_2e6
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    goto/16 :goto_4b3

    :pswitch_2f7
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_308
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_319
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_32a
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_33b
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_34c
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_35d
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_36e
    iget-object v9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_4b3

    :pswitch_37f
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    :goto_385
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzef;)V

    goto/16 :goto_4b3

    :pswitch_394
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_3a0
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzb(IJ)V

    goto/16 :goto_4b3

    :pswitch_3a5
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    :goto_3b1
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/clearcut/zzfr;->zze(II)V

    goto/16 :goto_4b3

    :pswitch_3b6
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_3c2
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzj(IJ)V

    goto/16 :goto_4b3

    :pswitch_3c7
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    :goto_3d3
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzm(II)V

    goto/16 :goto_4b3

    :pswitch_3d8
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    :goto_3e4
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzn(II)V

    goto/16 :goto_4b3

    :pswitch_3e9
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    :goto_3f5
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzd(II)V

    goto/16 :goto_4b3

    :pswitch_3fa
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    :goto_400
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ILcom/google/android/gms/internal/clearcut/zzbb;)V

    goto/16 :goto_4b3

    :pswitch_40d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    :goto_413
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzef;)V

    goto/16 :goto_4b3

    :pswitch_422
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    :goto_428
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    goto/16 :goto_4b3

    :pswitch_433
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzl(Ljava/lang/Object;J)Z

    move-result v8

    :goto_43f
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzb(IZ)V

    goto/16 :goto_4b3

    :pswitch_444
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    :goto_450
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzf(II)V

    goto :goto_4b3

    :pswitch_454
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_460
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzc(IJ)V

    goto :goto_4b3

    :pswitch_464
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v8

    :goto_470
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzc(II)V

    goto :goto_4b3

    :pswitch_474
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_480
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(IJ)V

    goto :goto_4b3

    :pswitch_484
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_490
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzi(IJ)V

    goto :goto_4b3

    :pswitch_494
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzm(Ljava/lang/Object;J)F

    move-result v8

    :goto_4a0
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(IF)V

    goto :goto_4b3

    :pswitch_4a4
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v10

    :goto_4b0
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ID)V

    :cond_4b3
    :goto_4b3
    add-int/lit8 v7, v7, -0x4

    goto/16 :goto_37

    :cond_4b7
    :goto_4b7
    if-eqz v1, :cond_4ce

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Lcom/google/android/gms/internal/clearcut/zzfr;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4cc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_4b7

    :cond_4cc
    move-object v1, v3

    goto :goto_4b7

    :cond_4ce
    return-void

    :cond_4cf
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmq:Z

    if-eqz v0, :cond_992

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmo:Z

    if-eqz v0, :cond_4ee

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzby;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzby;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4ee

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzby;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_4f0

    :cond_4ee
    move-object v0, v3

    move-object v1, v0

    :goto_4f0
    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    array-length v7, v7

    move-object v8, v1

    const/4 v1, 0x0

    :goto_4f5
    if-ge v1, v7, :cond_975

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzag(I)I

    move-result v9

    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    :goto_4ff
    if-eqz v8, :cond_51d

    iget-object v11, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_51d

    iget-object v11, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v11, p2, v8}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Lcom/google/android/gms/internal/clearcut/zzfr;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_51b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_4ff

    :cond_51b
    move-object v8, v3

    goto :goto_4ff

    :cond_51d
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_a24

    goto/16 :goto_971

    :pswitch_526
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    goto/16 :goto_843

    :pswitch_52e
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_85e

    :pswitch_53c
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_86f

    :pswitch_54a
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_880

    :pswitch_558
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_891

    :pswitch_566
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_8a2

    :pswitch_574
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_8b3

    :pswitch_582
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    goto/16 :goto_8be

    :pswitch_58a
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    goto/16 :goto_8d1

    :pswitch_592
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    goto/16 :goto_8e6

    :pswitch_59a
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzi(Ljava/lang/Object;J)Z

    move-result v9

    goto/16 :goto_8fd

    :pswitch_5a8
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_90e

    :pswitch_5b6
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_91e

    :pswitch_5c4
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_92e

    :pswitch_5d2
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_93e

    :pswitch_5e0
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_94e

    :pswitch_5ee
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzf(Ljava/lang/Object;J)F

    move-result v9

    goto/16 :goto_95e

    :pswitch_5fc
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zze(Ljava/lang/Object;J)D

    move-result-wide v11

    goto/16 :goto_96e

    :pswitch_60a
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzfr;ILjava/lang/Object;I)V

    goto/16 :goto_971

    :pswitch_615
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Lcom/google/android/gms/internal/clearcut/zzef;)V

    goto/16 :goto_971

    :pswitch_62a
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_63b
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_64c
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_65d
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_66e
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_67f
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_690
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_6a1
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_6b2
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_6c3
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_6d4
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_6e5
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_6f6
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_707
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_718
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zze(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_729
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_73a
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_74b
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_75c
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_76d
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_77e
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    goto/16 :goto_971

    :pswitch_78f
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Lcom/google/android/gms/internal/clearcut/zzef;)V

    goto/16 :goto_971

    :pswitch_7a4
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    goto/16 :goto_971

    :pswitch_7b5
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_7c6
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_7d7
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_7e8
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_7f9
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_80a
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_81b
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_82c
    iget-object v10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzfr;Z)V

    goto/16 :goto_971

    :pswitch_83d
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    :goto_843
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzef;)V

    goto/16 :goto_971

    :pswitch_852
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_85e
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzb(IJ)V

    goto/16 :goto_971

    :pswitch_863
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    :goto_86f
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/clearcut/zzfr;->zze(II)V

    goto/16 :goto_971

    :pswitch_874
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_880
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzj(IJ)V

    goto/16 :goto_971

    :pswitch_885
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    :goto_891
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzm(II)V

    goto/16 :goto_971

    :pswitch_896
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    :goto_8a2
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzn(II)V

    goto/16 :goto_971

    :pswitch_8a7
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    :goto_8b3
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzd(II)V

    goto/16 :goto_971

    :pswitch_8b8
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    :goto_8be
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ILcom/google/android/gms/internal/clearcut/zzbb;)V

    goto/16 :goto_971

    :pswitch_8cb
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    :goto_8d1
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzef;)V

    goto/16 :goto_971

    :pswitch_8e0
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    :goto_8e6
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    goto/16 :goto_971

    :pswitch_8f1
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzl(Ljava/lang/Object;J)Z

    move-result v9

    :goto_8fd
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzb(IZ)V

    goto/16 :goto_971

    :pswitch_902
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    :goto_90e
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzf(II)V

    goto :goto_971

    :pswitch_912
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_91e
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzc(IJ)V

    goto :goto_971

    :pswitch_922
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v9

    :goto_92e
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzc(II)V

    goto :goto_971

    :pswitch_932
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_93e
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(IJ)V

    goto :goto_971

    :pswitch_942
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_94e
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfr;->zzi(IJ)V

    goto :goto_971

    :pswitch_952
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzm(Ljava/lang/Object;J)F

    move-result v9

    :goto_95e
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(IF)V

    goto :goto_971

    :pswitch_962
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_971

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v11

    :goto_96e
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfr;->zza(ID)V

    :cond_971
    :goto_971
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_4f5

    :cond_975
    :goto_975
    if-eqz v8, :cond_98c

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v1, p2, v8}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Lcom/google/android/gms/internal/clearcut/zzfr;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_98a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v8, v1

    goto :goto_975

    :cond_98a
    move-object v8, v3

    goto :goto_975

    :cond_98c
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmx:Lcom/google/android/gms/internal/clearcut/zzex;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzex;Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    return-void

    :cond_992
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzfr;)V

    return-void

    :pswitch_data_996
    .packed-switch 0x0
        :pswitch_4a4
        :pswitch_494
        :pswitch_484
        :pswitch_474
        :pswitch_464
        :pswitch_454
        :pswitch_444
        :pswitch_433
        :pswitch_422
        :pswitch_40d
        :pswitch_3fa
        :pswitch_3e9
        :pswitch_3d8
        :pswitch_3c7
        :pswitch_3b6
        :pswitch_3a5
        :pswitch_394
        :pswitch_37f
        :pswitch_36e
        :pswitch_35d
        :pswitch_34c
        :pswitch_33b
        :pswitch_32a
        :pswitch_319
        :pswitch_308
        :pswitch_2f7
        :pswitch_2e6
        :pswitch_2d1
        :pswitch_2c0
        :pswitch_2af
        :pswitch_29e
        :pswitch_28d
        :pswitch_27c
        :pswitch_26b
        :pswitch_25a
        :pswitch_249
        :pswitch_238
        :pswitch_227
        :pswitch_216
        :pswitch_205
        :pswitch_1f4
        :pswitch_1e3
        :pswitch_1d2
        :pswitch_1c1
        :pswitch_1b0
        :pswitch_19f
        :pswitch_18e
        :pswitch_17d
        :pswitch_16c
        :pswitch_157
        :pswitch_14c
        :pswitch_13e
        :pswitch_130
        :pswitch_122
        :pswitch_114
        :pswitch_106
        :pswitch_f8
        :pswitch_ea
        :pswitch_dc
        :pswitch_d4
        :pswitch_cc
        :pswitch_c4
        :pswitch_b6
        :pswitch_a8
        :pswitch_9a
        :pswitch_8c
        :pswitch_7e
        :pswitch_70
        :pswitch_68
    .end packed-switch

    :pswitch_data_a24
    .packed-switch 0x0
        :pswitch_962
        :pswitch_952
        :pswitch_942
        :pswitch_932
        :pswitch_922
        :pswitch_912
        :pswitch_902
        :pswitch_8f1
        :pswitch_8e0
        :pswitch_8cb
        :pswitch_8b8
        :pswitch_8a7
        :pswitch_896
        :pswitch_885
        :pswitch_874
        :pswitch_863
        :pswitch_852
        :pswitch_83d
        :pswitch_82c
        :pswitch_81b
        :pswitch_80a
        :pswitch_7f9
        :pswitch_7e8
        :pswitch_7d7
        :pswitch_7c6
        :pswitch_7b5
        :pswitch_7a4
        :pswitch_78f
        :pswitch_77e
        :pswitch_76d
        :pswitch_75c
        :pswitch_74b
        :pswitch_73a
        :pswitch_729
        :pswitch_718
        :pswitch_707
        :pswitch_6f6
        :pswitch_6e5
        :pswitch_6d4
        :pswitch_6c3
        :pswitch_6b2
        :pswitch_6a1
        :pswitch_690
        :pswitch_67f
        :pswitch_66e
        :pswitch_65d
        :pswitch_64c
        :pswitch_63b
        :pswitch_62a
        :pswitch_615
        :pswitch_60a
        :pswitch_5fc
        :pswitch_5ee
        :pswitch_5e0
        :pswitch_5d2
        :pswitch_5c4
        :pswitch_5b6
        :pswitch_5a8
        :pswitch_59a
        :pswitch_592
        :pswitch_58a
        :pswitch_582
        :pswitch_574
        :pswitch_566
        :pswitch_558
        :pswitch_54a
        :pswitch_53c
        :pswitch_52e
        :pswitch_526
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/clearcut/zzay;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/clearcut/zzay;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lcom/google/android/gms/internal/clearcut/zzds;->zzmq:Z

    if-eqz v0, :cond_1d8

    sget-object v9, Lcom/google/android/gms/internal/clearcut/zzds;->zzmh:Lsun/misc/Unsafe;

    move/from16 v0, p3

    :goto_12
    if-ge v0, v13, :cond_1cf

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_24

    invoke-static {v0, v12, v1, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza(I[BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    move v10, v0

    move/from16 v16, v1

    goto :goto_27

    :cond_24
    move/from16 v16, v0

    move v10, v1

    :goto_27
    ushr-int/lit8 v6, v16, 0x3

    and-int/lit8 v7, v16, 0x7

    invoke-direct {v15, v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zzai(I)I

    move-result v8

    if-ltz v8, :cond_1af

    iget-object v0, v15, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    add-int/lit8 v1, v8, 0x1

    aget v5, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v4, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v2, v0

    const/16 v0, 0x11

    const/4 v1, 0x2

    if-gt v4, v0, :cond_104

    const/4 v0, 0x5

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_1e8

    goto/16 :goto_1af

    :pswitch_4d
    if-nez v7, :cond_1af

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v6

    iget-wide v0, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzbk;->zza(J)J

    move-result-wide v4

    goto/16 :goto_e2

    :pswitch_5b
    if-nez v7, :cond_1af

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/zzbk;->zzm(I)I

    move-result v1

    goto/16 :goto_d5

    :pswitch_69
    if-nez v7, :cond_1af

    goto/16 :goto_cf

    :pswitch_6d
    if-ne v7, v1, :cond_1af

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zze([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    :goto_73
    iget-object v1, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    :goto_75
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_12

    :pswitch_79
    if-ne v7, v1, :cond_1af

    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v0

    invoke-static {v0, v12, v10, v13, v11}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzef;[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8a

    goto :goto_73

    :cond_8a
    iget-object v4, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzff:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/clearcut/zzci;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_75

    :pswitch_91
    if-ne v7, v1, :cond_1af

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_9d

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzc([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    goto :goto_73

    :cond_9d
    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzd([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    goto :goto_73

    :pswitch_a2
    if-nez v7, :cond_1af

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget-wide v4, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    const-wide/16 v7, 0x0

    cmp-long v1, v4, v7

    if-eqz v1, :cond_b1

    goto :goto_b2

    :cond_b1
    const/4 v6, 0x0

    :goto_b2
    invoke-static {v14, v2, v3, v6}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JZ)V

    goto/16 :goto_12

    :pswitch_b7
    if-ne v7, v0, :cond_1af

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/clearcut/zzax;->zzc([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_f3

    :pswitch_c1
    if-ne v7, v6, :cond_1af

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/clearcut/zzax;->zzd([BI)J

    move-result-wide v4

    move-object v0, v9

    move-object v1, v14

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_100

    :pswitch_cd
    if-nez v7, :cond_1af

    :goto_cf
    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zza([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfd:I

    :goto_d5
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_12

    :pswitch_da
    if-nez v7, :cond_1af

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzax;->zzb([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v6

    iget-wide v4, v11, Lcom/google/android/gms/internal/clearcut/zzay;->zzfe:J

    :goto_e2
    move-object v0, v9

    move-object v1, v14

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v0, v6

    goto/16 :goto_12

    :pswitch_ea
    if-ne v7, v0, :cond_1af

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/clearcut/zzax;->zzf([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JF)V

    :goto_f3
    add-int/lit8 v0, v10, 0x4

    goto/16 :goto_12

    :pswitch_f7
    if-ne v7, v6, :cond_1af

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/clearcut/zzax;->zze([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JD)V

    :goto_100
    add-int/lit8 v0, v10, 0x8

    goto/16 :goto_12

    :cond_104
    const/16 v0, 0x1b

    if-ne v4, v0, :cond_139

    if-ne v7, v1, :cond_1af

    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzcn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/zzcn;->zzu()Z

    move-result v1

    if-nez v1, :cond_128

    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/zzcn;->size()I

    move-result v1

    if-nez v1, :cond_11f

    const/16 v1, 0xa

    goto :goto_121

    :cond_11f
    shl-int/lit8 v1, v1, 0x1

    :goto_121
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzcn;->zzi(I)Lcom/google/android/gms/internal/clearcut/zzcn;

    move-result-object v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_128
    move-object v5, v0

    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v0

    move/from16 v1, v16

    move-object v2, v12

    move v3, v10

    move v4, v13

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzef;I[BIILcom/google/android/gms/internal/clearcut/zzcn;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    goto/16 :goto_12

    :cond_139
    const/16 v0, 0x31

    if-gt v4, v0, :cond_16e

    int-to-long v0, v5

    move-wide/from16 v17, v0

    move-object v0, v15

    move-object v1, v14

    move-wide/from16 v19, v2

    move-object v2, v12

    move v3, v10

    move v5, v4

    move v4, v13

    move/from16 v21, v5

    move/from16 v5, v16

    move-object/from16 v22, v9

    move v15, v10

    move-wide/from16 v9, v17

    move/from16 v11, v21

    move-wide/from16 v12, v19

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    if-ne v0, v15, :cond_160

    :goto_15d
    move v2, v0

    goto/16 :goto_1b3

    :cond_160
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v22

    move-object/from16 v15, p0

    goto/16 :goto_12

    :cond_16e
    move-wide/from16 v19, v2

    move/from16 v21, v4

    move-object/from16 v22, v9

    move v15, v10

    const/16 v0, 0x32

    move/from16 v9, v21

    if-ne v9, v0, :cond_195

    if-ne v7, v1, :cond_193

    move v14, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move v5, v8

    move-wide/from16 v7, v19

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;[BIIIIJLcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    if-ne v0, v14, :cond_1c1

    goto :goto_15d

    :cond_193
    move v14, v15

    goto :goto_1b2

    :cond_195
    move v14, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move v10, v5

    move/from16 v5, v16

    move v12, v8

    move v8, v10

    move-wide/from16 v10, v19

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    if-ne v0, v14, :cond_1c1

    goto :goto_15d

    :cond_1af
    :goto_1af
    move-object/from16 v22, v9

    move v14, v10

    :goto_1b2
    move v2, v14

    :goto_1b3
    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(I[BIILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    :cond_1c1
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v22

    goto/16 :goto_12

    :cond_1cf
    move v4, v13

    if-eq v0, v4, :cond_1d7

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->zzbo()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v0

    throw v0

    :cond_1d7
    return-void

    :cond_1d8
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I

    return-void

    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_ea
        :pswitch_da
        :pswitch_da
        :pswitch_cd
        :pswitch_c1
        :pswitch_b7
        :pswitch_a2
        :pswitch_91
        :pswitch_79
        :pswitch_6d
        :pswitch_cd
        :pswitch_69
        :pswitch_b7
        :pswitch_c1
        :pswitch_5b
        :pswitch_4d
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmt:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmt:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_28

    aget v4, v0, v3

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/clearcut/zzds;->zzag(I)I

    move-result v4

    const v5, 0xfffff

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_25

    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-interface {v7, v6}, Lcom/google/android/gms/internal/clearcut/zzdj;->zzj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmu:[I

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmu:[I

    array-length v2, v0

    :goto_2f
    if-ge v1, v2, :cond_3c

    aget v3, v0, v1

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmw:Lcom/google/android/gms/internal/clearcut/zzcy;

    int-to-long v5, v3

    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzcy;->zza(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmx:Lcom/google/android/gms/internal/clearcut/zzex;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzex;->zzc(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmo:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzbu;->zzc(Ljava/lang/Object;)V

    :cond_4a
    return-void
.end method

.method public final zzc(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-nez p2, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    array-length v1, v1

    if-ge v0, v1, :cond_f8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zzag(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_10c

    goto/16 :goto_f4

    :pswitch_25
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_f4

    goto :goto_37

    :pswitch_2c
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_f4

    :pswitch_31
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_f4

    :goto_37
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_f4

    :pswitch_43
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(Lcom/google/android/gms/internal/clearcut/zzdj;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_f4

    :pswitch_4a
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmw:Lcom/google/android/gms/internal/clearcut/zzcy;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzcy;->zza(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_f4

    :pswitch_51
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    goto/16 :goto_ce

    :pswitch_59
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    goto :goto_75

    :pswitch_60
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    goto/16 :goto_ce

    :pswitch_68
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    goto :goto_75

    :pswitch_6f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    :goto_75
    goto :goto_b9

    :pswitch_76
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    goto :goto_b9

    :pswitch_7d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    goto :goto_8f

    :pswitch_84
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_f4

    :pswitch_89
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    :goto_8f
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_f1

    :pswitch_97
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzl(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JZ)V

    goto :goto_f1

    :pswitch_a5
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    goto :goto_b9

    :pswitch_ac
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    goto :goto_ce

    :pswitch_b3
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    :goto_b9
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JI)V

    goto :goto_f1

    :pswitch_c1
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    goto :goto_ce

    :pswitch_c8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    :goto_ce
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JJ)V

    goto :goto_f1

    :pswitch_d6
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzm(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JF)V

    goto :goto_f1

    :pswitch_e4
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzn(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zza(Ljava/lang/Object;JD)V

    :goto_f1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->zzb(Ljava/lang/Object;I)V

    :cond_f4
    :goto_f4
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_9

    :cond_f8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmq:Z

    if-nez v0, :cond_10a

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmx:Lcom/google/android/gms/internal/clearcut/zzex;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(Lcom/google/android/gms/internal/clearcut/zzex;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmo:Z

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(Lcom/google/android/gms/internal/clearcut/zzbu;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10a
    return-void

    nop

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_d6
        :pswitch_c8
        :pswitch_c1
        :pswitch_b3
        :pswitch_ac
        :pswitch_a5
        :pswitch_97
        :pswitch_89
        :pswitch_84
        :pswitch_7d
        :pswitch_76
        :pswitch_6f
        :pswitch_68
        :pswitch_60
        :pswitch_59
        :pswitch_51
        :pswitch_84
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_43
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_2c
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_2c
    .end packed-switch
.end method

.method public final zzm(Ljava/lang/Object;)I
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmq:Z

    const/high16 v3, 0xff00000

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0xfffff

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_3b8

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzds;->zzmh:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_16
    iget-object v14, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    array-length v14, v14

    if-ge v12, v14, :cond_3b0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzag(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v3, v3, v12

    and-int/2addr v14, v8

    int-to-long v4, v14

    sget-object v14, Lcom/google/android/gms/internal/clearcut/zzcb;->zzih:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v14

    if-lt v15, v14, :cond_41

    sget-object v14, Lcom/google/android/gms/internal/clearcut/zzcb;->zziu:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v14

    if-gt v15, v14, :cond_41

    iget-object v14, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v8

    goto :goto_42

    :cond_41
    const/4 v14, 0x0

    :goto_42
    packed-switch v15, :pswitch_data_7de

    goto/16 :goto_3aa

    :pswitch_47
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    goto/16 :goto_29f

    :pswitch_4f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v4

    goto/16 :goto_2b8

    :pswitch_5b
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_2c7

    :pswitch_67
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3aa

    goto/16 :goto_2d2

    :pswitch_6f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3aa

    goto/16 :goto_2dd

    :pswitch_77
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_2ec

    :pswitch_83
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_2fb

    :pswitch_8f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    goto/16 :goto_306

    :pswitch_97
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    goto/16 :goto_317

    :pswitch_9f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/clearcut/zzbb;

    if-eqz v5, :cond_334

    goto/16 :goto_333

    :pswitch_af
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3aa

    goto/16 :goto_342

    :pswitch_b7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3aa

    goto/16 :goto_34e

    :pswitch_bf
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3aa

    goto/16 :goto_35a

    :pswitch_c7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_36a

    :pswitch_d3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v4

    goto/16 :goto_37a

    :pswitch_df
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v4

    goto/16 :goto_38a

    :pswitch_eb
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3aa

    goto/16 :goto_396

    :pswitch_f3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3aa

    goto/16 :goto_3a2

    :pswitch_fb
    iget-object v14, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzae(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v14, v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzdj;->zzb(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_296

    :pswitch_10b
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzef;)I

    move-result v3

    goto/16 :goto_296

    :pswitch_119
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3aa

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v5, :cond_211

    goto/16 :goto_20d

    :pswitch_12b
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzg(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3aa

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v5, :cond_211

    goto/16 :goto_20d

    :pswitch_13d
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3aa

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v5, :cond_211

    goto/16 :goto_20d

    :pswitch_14f
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3aa

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v5, :cond_211

    goto/16 :goto_20d

    :pswitch_161
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3aa

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v5, :cond_211

    goto/16 :goto_20d

    :pswitch_173
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3aa

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v5, :cond_211

    goto/16 :goto_20d

    :pswitch_185
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzj(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3aa

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v5, :cond_211

    goto/16 :goto_20d

    :pswitch_197
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3aa

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v5, :cond_211

    goto :goto_20d

    :pswitch_1a8
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3aa

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v5, :cond_211

    goto :goto_20d

    :pswitch_1b9
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zze(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3aa

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v5, :cond_211

    goto :goto_20d

    :pswitch_1ca
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzb(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3aa

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v5, :cond_211

    goto :goto_20d

    :pswitch_1db
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3aa

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v5, :cond_211

    goto :goto_20d

    :pswitch_1ec
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3aa

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v5, :cond_211

    goto :goto_20d

    :pswitch_1fd
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3aa

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v5, :cond_211

    :goto_20d
    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_211
    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzr(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzt(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    goto/16 :goto_296

    :pswitch_21d
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzq(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_296

    :pswitch_227
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzu(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_230
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzr(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_239
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzt(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_242
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(ILjava/util/List;)I

    move-result v3

    goto :goto_296

    :pswitch_24b
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzef;)I

    move-result v3

    goto :goto_296

    :pswitch_258
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(ILjava/util/List;)I

    move-result v3

    goto :goto_296

    :pswitch_261
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzx(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_26a
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzs(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_273
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzp(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_27c
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzo(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_285
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_28e
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzw(ILjava/util/List;Z)I

    move-result v3

    :goto_296
    add-int/2addr v13, v3

    goto/16 :goto_3aa

    :pswitch_299
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    :goto_29f
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/clearcut/zzdo;

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzc(ILcom/google/android/gms/internal/clearcut/zzdo;Lcom/google/android/gms/internal/clearcut/zzef;)I

    move-result v3

    goto :goto_296

    :pswitch_2ae
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    :goto_2b8
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzf(IJ)I

    move-result v3

    goto :goto_296

    :pswitch_2bd
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    :goto_2c7
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzi(II)I

    move-result v3

    goto :goto_296

    :pswitch_2cc
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3aa

    :goto_2d2
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzh(IJ)I

    move-result v3

    goto :goto_296

    :pswitch_2d7
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3aa

    :goto_2dd
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzk(II)I

    move-result v3

    goto :goto_296

    :pswitch_2e2
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    :goto_2ec
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzl(II)I

    move-result v3

    goto :goto_296

    :pswitch_2f1
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    :goto_2fb
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzh(II)I

    move-result v3

    goto :goto_296

    :pswitch_300
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    :goto_306
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    :goto_30a
    check-cast v4, Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzc(ILcom/google/android/gms/internal/clearcut/zzbb;)I

    move-result v3

    goto :goto_296

    :pswitch_311
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    :goto_317
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzef;)I

    move-result v3

    goto/16 :goto_296

    :pswitch_325
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/clearcut/zzbb;

    if-eqz v5, :cond_334

    :goto_333
    goto :goto_30a

    :cond_334
    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzb(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_296

    :pswitch_33c
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3aa

    :goto_342
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzc(IZ)I

    move-result v3

    goto/16 :goto_296

    :pswitch_348
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3aa

    :goto_34e
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzj(II)I

    move-result v3

    goto/16 :goto_296

    :pswitch_354
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3aa

    :goto_35a
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzg(IJ)I

    move-result v3

    goto/16 :goto_296

    :pswitch_360
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzj(Ljava/lang/Object;J)I

    move-result v4

    :goto_36a
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzg(II)I

    move-result v3

    goto/16 :goto_296

    :pswitch_370
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    :goto_37a
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzbn;->zze(IJ)I

    move-result v3

    goto/16 :goto_296

    :pswitch_380
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzk(Ljava/lang/Object;J)J

    move-result-wide v4

    :goto_38a
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzd(IJ)I

    move-result v3

    goto/16 :goto_296

    :pswitch_390
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3aa

    :goto_396
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzb(IF)I

    move-result v3

    goto/16 :goto_296

    :pswitch_39c
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3aa

    :goto_3a2
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzb(ID)I

    move-result v3

    goto/16 :goto_296

    :cond_3aa
    :goto_3aa
    add-int/lit8 v12, v12, 0x4

    const/high16 v3, 0xff00000

    goto/16 :goto_16

    :cond_3b0
    iget-object v2, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmx:Lcom/google/android/gms/internal/clearcut/zzex;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzex;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    :cond_3b8
    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzds;->zzmh:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v12, 0x0

    :goto_3bf
    iget-object v13, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    array-length v13, v13

    if-ge v3, v13, :cond_7c7

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzag(I)I

    move-result v13

    iget-object v14, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    aget v14, v14, v3

    const/high16 v15, 0xff00000

    and-int v16, v13, v15

    ushr-int/lit8 v15, v16, 0x14

    const/16 v6, 0x11

    if-gt v15, v6, :cond_3eb

    iget-object v6, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    add-int/lit8 v16, v3, 0x2

    aget v6, v6, v16

    and-int v11, v6, v8

    ushr-int/lit8 v16, v6, 0x14

    shl-int v16, v7, v16

    if-eq v11, v5, :cond_40c

    int-to-long v9, v11

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v5, v11

    goto :goto_40c

    :cond_3eb
    iget-boolean v6, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v6, :cond_409

    sget-object v6, Lcom/google/android/gms/internal/clearcut/zzcb;->zzih:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v6

    if-lt v15, v6, :cond_409

    sget-object v6, Lcom/google/android/gms/internal/clearcut/zzcb;->zziu:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/clearcut/zzcb;->id()I

    move-result v6

    if-gt v15, v6, :cond_409

    iget-object v6, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    add-int/lit8 v9, v3, 0x2

    aget v6, v6, v9

    and-int v11, v6, v8

    move v6, v11

    goto :goto_40a

    :cond_409
    const/4 v6, 0x0

    :goto_40a
    const/16 v16, 0x0

    :cond_40c
    :goto_40c
    and-int v9, v13, v8

    int-to-long v9, v9

    packed-switch v15, :pswitch_data_86c

    goto/16 :goto_6ae

    :pswitch_414
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    goto/16 :goto_6ba

    :pswitch_41c
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v9

    goto/16 :goto_6d1

    :pswitch_428
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_6de

    :pswitch_434
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    goto/16 :goto_6e7

    :pswitch_43c
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    goto/16 :goto_6f2

    :pswitch_444
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_701

    :pswitch_450
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_70e

    :pswitch_45c
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    goto/16 :goto_717

    :pswitch_464
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    goto/16 :goto_726

    :pswitch_46c
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v9, v6, Lcom/google/android/gms/internal/clearcut/zzbb;

    if-eqz v9, :cond_741

    goto/16 :goto_740

    :pswitch_47c
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    goto/16 :goto_74d

    :pswitch_484
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    const/4 v6, 0x0

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzj(II)I

    move-result v9

    goto/16 :goto_6f7

    :pswitch_491
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    const-wide/16 v9, 0x0

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzg(IJ)I

    move-result v6

    goto/16 :goto_6ad

    :pswitch_49f
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzg(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzg(II)I

    move-result v6

    goto/16 :goto_6ad

    :pswitch_4af
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzbn;->zze(IJ)I

    move-result v6

    goto/16 :goto_6ad

    :pswitch_4bf
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzh(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzd(IJ)I

    move-result v6

    goto/16 :goto_6ad

    :pswitch_4cf
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    const/4 v6, 0x0

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzb(IF)I

    move-result v9

    goto/16 :goto_6f7

    :pswitch_4dc
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6ae

    const-wide/16 v9, 0x0

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzb(ID)I

    move-result v6

    goto/16 :goto_6ad

    :pswitch_4ea
    iget-object v6, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzae(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v14, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzdj;->zzb(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_6ad

    :pswitch_4fa
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v9

    invoke-static {v14, v6, v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzef;)I

    move-result v6

    goto/16 :goto_6ad

    :pswitch_50a
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_6ae

    iget-boolean v10, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v10, :cond_602

    goto/16 :goto_5fe

    :pswitch_51c
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzg(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_6ae

    iget-boolean v10, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v10, :cond_602

    goto/16 :goto_5fe

    :pswitch_52e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzi(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_6ae

    iget-boolean v10, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v10, :cond_602

    goto/16 :goto_5fe

    :pswitch_540
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzh(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_6ae

    iget-boolean v10, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v10, :cond_602

    goto/16 :goto_5fe

    :pswitch_552
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_6ae

    iget-boolean v10, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v10, :cond_602

    goto/16 :goto_5fe

    :pswitch_564
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzf(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_6ae

    iget-boolean v10, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v10, :cond_602

    goto/16 :goto_5fe

    :pswitch_576
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzj(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_6ae

    iget-boolean v10, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v10, :cond_602

    goto/16 :goto_5fe

    :pswitch_588
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzh(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_6ae

    iget-boolean v10, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v10, :cond_602

    goto :goto_5fe

    :pswitch_599
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzi(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_6ae

    iget-boolean v10, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v10, :cond_602

    goto :goto_5fe

    :pswitch_5aa
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zze(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_6ae

    iget-boolean v10, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v10, :cond_602

    goto :goto_5fe

    :pswitch_5bb
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzb(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_6ae

    iget-boolean v10, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v10, :cond_602

    goto :goto_5fe

    :pswitch_5cc
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zza(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_6ae

    iget-boolean v10, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v10, :cond_602

    goto :goto_5fe

    :pswitch_5dd
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzh(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_6ae

    iget-boolean v10, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v10, :cond_602

    goto :goto_5fe

    :pswitch_5ee
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzi(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_6ae

    iget-boolean v10, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmr:Z

    if-eqz v10, :cond_602

    :goto_5fe
    int-to-long v10, v6

    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_602
    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzr(I)I

    move-result v6

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzt(I)I

    move-result v10

    add-int/2addr v6, v10

    add-int/2addr v6, v9

    goto/16 :goto_6ad

    :pswitch_60e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v11, 0x0

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzq(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_6ad

    :pswitch_61b
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzu(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_6ad

    :pswitch_628
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzr(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_6ad

    :pswitch_635
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzt(ILjava/util/List;Z)I

    move-result v6

    goto :goto_6ad

    :pswitch_641
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzd(ILjava/util/List;)I

    move-result v6

    goto :goto_6ad

    :pswitch_64c
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v9

    invoke-static {v14, v6, v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/zzef;)I

    move-result v6

    goto :goto_6ad

    :pswitch_65b
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(ILjava/util/List;)I

    move-result v6

    goto :goto_6ad

    :pswitch_666
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v11, 0x0

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzx(ILjava/util/List;Z)I

    move-result v6

    goto :goto_6ad

    :pswitch_672
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzs(ILjava/util/List;Z)I

    move-result v6

    goto :goto_6ad

    :pswitch_67e
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzp(ILjava/util/List;Z)I

    move-result v6

    goto :goto_6ad

    :pswitch_68a
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzo(ILjava/util/List;Z)I

    move-result v6

    goto :goto_6ad

    :pswitch_696
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzv(ILjava/util/List;Z)I

    move-result v6

    goto :goto_6ad

    :pswitch_6a2
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6, v11}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzw(ILjava/util/List;Z)I

    move-result v6

    :goto_6ad
    add-int/2addr v4, v6

    :cond_6ae
    :goto_6ae
    const/4 v6, 0x0

    :cond_6af
    :goto_6af
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_7bf

    :pswitch_6b6
    and-int v6, v12, v16

    if-eqz v6, :cond_6ae

    :goto_6ba
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/clearcut/zzdo;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v9

    invoke-static {v14, v6, v9}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzc(ILcom/google/android/gms/internal/clearcut/zzdo;Lcom/google/android/gms/internal/clearcut/zzef;)I

    move-result v6

    goto :goto_6ad

    :pswitch_6c9
    and-int v6, v12, v16

    if-eqz v6, :cond_6ae

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    :goto_6d1
    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzf(IJ)I

    move-result v6

    goto :goto_6ad

    :pswitch_6d6
    and-int v6, v12, v16

    if-eqz v6, :cond_6ae

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :goto_6de
    invoke-static {v14, v6}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzi(II)I

    move-result v6

    goto :goto_6ad

    :pswitch_6e3
    and-int v6, v12, v16

    if-eqz v6, :cond_6ae

    :goto_6e7
    const-wide/16 v9, 0x0

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzh(IJ)I

    move-result v6

    goto :goto_6ad

    :pswitch_6ee
    and-int v6, v12, v16

    if-eqz v6, :cond_6ae

    :goto_6f2
    const/4 v6, 0x0

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzk(II)I

    move-result v9

    :goto_6f7
    add-int/2addr v4, v9

    goto :goto_6ae

    :pswitch_6f9
    and-int v6, v12, v16

    if-eqz v6, :cond_6ae

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :goto_701
    invoke-static {v14, v6}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzl(II)I

    move-result v6

    goto :goto_6ad

    :pswitch_706
    and-int v6, v12, v16

    if-eqz v6, :cond_6ae

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :goto_70e
    invoke-static {v14, v6}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzh(II)I

    move-result v6

    goto :goto_6ad

    :pswitch_713
    and-int v6, v12, v16

    if-eqz v6, :cond_6ae

    :goto_717
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    :goto_71b
    check-cast v6, Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzc(ILcom/google/android/gms/internal/clearcut/zzbb;)I

    move-result v6

    goto :goto_6ad

    :pswitch_722
    and-int v6, v12, v16

    if-eqz v6, :cond_6ae

    :goto_726
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v9

    invoke-static {v14, v6, v9}, Lcom/google/android/gms/internal/clearcut/zzeh;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/zzef;)I

    move-result v6

    goto/16 :goto_6ad

    :pswitch_734
    and-int v6, v12, v16

    if-eqz v6, :cond_6ae

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v9, v6, Lcom/google/android/gms/internal/clearcut/zzbb;

    if-eqz v9, :cond_741

    :goto_740
    goto :goto_71b

    :cond_741
    check-cast v6, Ljava/lang/String;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzb(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_6ad

    :pswitch_749
    and-int v6, v12, v16

    if-eqz v6, :cond_6ae

    :goto_74d
    invoke-static {v14, v7}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzc(IZ)I

    move-result v6

    goto/16 :goto_6ad

    :pswitch_753
    and-int v6, v12, v16

    if-eqz v6, :cond_6ae

    const/4 v6, 0x0

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzj(II)I

    move-result v9

    add-int/2addr v4, v9

    goto/16 :goto_6af

    :pswitch_75f
    const/4 v6, 0x0

    and-int v9, v12, v16

    if-eqz v9, :cond_6af

    const-wide/16 v9, 0x0

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzg(IJ)I

    move-result v11

    add-int/2addr v4, v11

    move-wide/from16 v18, v9

    goto :goto_79e

    :pswitch_76e
    const/4 v6, 0x0

    const-wide/16 v18, 0x0

    and-int v11, v12, v16

    if-eqz v11, :cond_79e

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-static {v14, v9}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzg(II)I

    move-result v9

    goto :goto_79d

    :pswitch_77e
    const/4 v6, 0x0

    const-wide/16 v18, 0x0

    and-int v11, v12, v16

    if-eqz v11, :cond_79e

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzbn;->zze(IJ)I

    move-result v9

    goto :goto_79d

    :pswitch_78e
    const/4 v6, 0x0

    const-wide/16 v18, 0x0

    and-int v11, v12, v16

    if-eqz v11, :cond_79e

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzd(IJ)I

    move-result v9

    :goto_79d
    add-int/2addr v4, v9

    :cond_79e
    :goto_79e
    const/4 v9, 0x0

    goto :goto_7ad

    :pswitch_7a0
    const/4 v6, 0x0

    const-wide/16 v18, 0x0

    and-int v9, v12, v16

    if-eqz v9, :cond_79e

    const/4 v9, 0x0

    invoke-static {v14, v9}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzb(IF)I

    move-result v10

    add-int/2addr v4, v10

    :cond_7ad
    :goto_7ad
    const-wide/16 v10, 0x0

    goto :goto_7bf

    :pswitch_7b0
    const/4 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v18, 0x0

    and-int v10, v12, v16

    if-eqz v10, :cond_7ad

    const-wide/16 v10, 0x0

    invoke-static {v14, v10, v11}, Lcom/google/android/gms/internal/clearcut/zzbn;->zzb(ID)I

    move-result v13

    add-int/2addr v4, v13

    :goto_7bf
    add-int/lit8 v3, v3, 0x4

    move-wide/from16 v9, v18

    const/4 v6, 0x0

    const/4 v11, 0x0

    goto/16 :goto_3bf

    :cond_7c7
    iget-object v2, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmx:Lcom/google/android/gms/internal/clearcut/zzex;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Lcom/google/android/gms/internal/clearcut/zzex;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v4, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmo:Z

    if-eqz v2, :cond_7dd

    iget-object v2, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzby;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzby;->zzas()I

    move-result v1

    add-int/2addr v4, v1

    :cond_7dd
    return v4

    :pswitch_data_7de
    .packed-switch 0x0
        :pswitch_39c
        :pswitch_390
        :pswitch_380
        :pswitch_370
        :pswitch_360
        :pswitch_354
        :pswitch_348
        :pswitch_33c
        :pswitch_325
        :pswitch_311
        :pswitch_300
        :pswitch_2f1
        :pswitch_2e2
        :pswitch_2d7
        :pswitch_2cc
        :pswitch_2bd
        :pswitch_2ae
        :pswitch_299
        :pswitch_28e
        :pswitch_285
        :pswitch_27c
        :pswitch_273
        :pswitch_26a
        :pswitch_28e
        :pswitch_285
        :pswitch_261
        :pswitch_258
        :pswitch_24b
        :pswitch_242
        :pswitch_239
        :pswitch_230
        :pswitch_285
        :pswitch_28e
        :pswitch_227
        :pswitch_21d
        :pswitch_1fd
        :pswitch_1ec
        :pswitch_1db
        :pswitch_1ca
        :pswitch_1b9
        :pswitch_1a8
        :pswitch_197
        :pswitch_185
        :pswitch_173
        :pswitch_161
        :pswitch_14f
        :pswitch_13d
        :pswitch_12b
        :pswitch_119
        :pswitch_10b
        :pswitch_fb
        :pswitch_f3
        :pswitch_eb
        :pswitch_df
        :pswitch_d3
        :pswitch_c7
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
        :pswitch_9f
        :pswitch_97
        :pswitch_8f
        :pswitch_83
        :pswitch_77
        :pswitch_6f
        :pswitch_67
        :pswitch_5b
        :pswitch_4f
        :pswitch_47
    .end packed-switch

    :pswitch_data_86c
    .packed-switch 0x0
        :pswitch_7b0
        :pswitch_7a0
        :pswitch_78e
        :pswitch_77e
        :pswitch_76e
        :pswitch_75f
        :pswitch_753
        :pswitch_749
        :pswitch_734
        :pswitch_722
        :pswitch_713
        :pswitch_706
        :pswitch_6f9
        :pswitch_6ee
        :pswitch_6e3
        :pswitch_6d6
        :pswitch_6c9
        :pswitch_6b6
        :pswitch_6a2
        :pswitch_696
        :pswitch_68a
        :pswitch_67e
        :pswitch_672
        :pswitch_6a2
        :pswitch_696
        :pswitch_666
        :pswitch_65b
        :pswitch_64c
        :pswitch_641
        :pswitch_635
        :pswitch_628
        :pswitch_696
        :pswitch_6a2
        :pswitch_61b
        :pswitch_60e
        :pswitch_5ee
        :pswitch_5dd
        :pswitch_5cc
        :pswitch_5bb
        :pswitch_5aa
        :pswitch_599
        :pswitch_588
        :pswitch_576
        :pswitch_564
        :pswitch_552
        :pswitch_540
        :pswitch_52e
        :pswitch_51c
        :pswitch_50a
        :pswitch_4fa
        :pswitch_4ea
        :pswitch_4dc
        :pswitch_4cf
        :pswitch_4bf
        :pswitch_4af
        :pswitch_49f
        :pswitch_491
        :pswitch_484
        :pswitch_47c
        :pswitch_46c
        :pswitch_464
        :pswitch_45c
        :pswitch_450
        :pswitch_444
        :pswitch_43c
        :pswitch_434
        :pswitch_428
        :pswitch_41c
        :pswitch_414
    .end packed-switch
.end method

.method public final zzo(Ljava/lang/Object;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzms:[I

    const/4 v3, 0x1

    if-eqz v2, :cond_133

    iget-object v2, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzms:[I

    array-length v2, v2

    if-nez v2, :cond_10

    goto/16 :goto_133

    :cond_10
    const/4 v2, -0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzms:[I

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    :goto_18
    if-ge v2, v5, :cond_120

    aget v9, v4, v2

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/clearcut/zzds;->zzai(I)I

    move-result v10

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzag(I)I

    move-result v11

    iget-boolean v12, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmq:Z

    const v13, 0xfffff

    if-nez v12, :cond_46

    iget-object v12, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmi:[I

    add-int/lit8 v14, v10, 0x2

    aget v12, v12, v14

    and-int v14, v12, v13

    ushr-int/lit8 v12, v12, 0x14

    shl-int v12, v3, v12

    if-eq v14, v7, :cond_44

    sget-object v7, Lcom/google/android/gms/internal/clearcut/zzds;->zzmh:Lsun/misc/Unsafe;

    move-object v15, v4

    int-to-long v3, v14

    invoke-virtual {v7, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v8, v3

    move v7, v14

    goto :goto_48

    :cond_44
    move-object v15, v4

    goto :goto_48

    :cond_46
    move-object v15, v4

    const/4 v12, 0x0

    :goto_48
    const/high16 v3, 0x10000000

    and-int/2addr v3, v11

    if-eqz v3, :cond_4f

    const/4 v3, 0x1

    goto :goto_50

    :cond_4f
    const/4 v3, 0x0

    :goto_50
    if-eqz v3, :cond_59

    invoke-direct {v0, v1, v10, v8, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;III)Z

    move-result v3

    if-nez v3, :cond_59

    return v6

    :cond_59
    const/high16 v3, 0xff00000

    and-int/2addr v3, v11

    ushr-int/lit8 v3, v3, 0x14

    const/16 v4, 0x9

    if-eq v3, v4, :cond_109

    const/16 v4, 0x11

    if-eq v3, v4, :cond_109

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_dc

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_cb

    const/16 v4, 0x44

    if-eq v3, v4, :cond_cb

    packed-switch v3, :pswitch_data_136

    goto/16 :goto_11a

    :pswitch_77
    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    and-int v4, v11, v13

    int-to-long v11, v4

    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzdj;->zzh(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c7

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzae(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmz:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-interface {v9, v4}, Lcom/google/android/gms/internal/clearcut/zzdj;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdh;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/clearcut/zzdh;->zzmd:Lcom/google/android/gms/internal/clearcut/zzfl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/zzfl;->zzek()Lcom/google/android/gms/internal/clearcut/zzfq;

    move-result-object v4

    sget-object v9, Lcom/google/android/gms/internal/clearcut/zzfq;->zzrf:Lcom/google/android/gms/internal/clearcut/zzfq;

    if-ne v4, v9, :cond_c7

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_bf

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzea;->zzcm()Lcom/google/android/gms/internal/clearcut/zzea;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/clearcut/zzea;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v4

    :cond_bf
    invoke-interface {v4, v9}, Lcom/google/android/gms/internal/clearcut/zzef;->zzo(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a7

    const/4 v3, 0x0

    goto :goto_c8

    :cond_c7
    const/4 v3, 0x1

    :goto_c8
    if-nez v3, :cond_11a

    return v6

    :cond_cb
    invoke-direct {v0, v1, v9, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11a

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v3

    invoke-static {v1, v11, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/clearcut/zzef;)Z

    move-result v3

    if-nez v3, :cond_11a

    return v6

    :cond_dc
    :pswitch_dc
    and-int v3, v11, v13

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/clearcut/zzfd;->zzo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_105

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v4

    const/4 v9, 0x0

    :goto_f0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_105

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v10}, Lcom/google/android/gms/internal/clearcut/zzef;->zzo(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_102

    const/4 v3, 0x0

    goto :goto_106

    :cond_102
    add-int/lit8 v9, v9, 0x1

    goto :goto_f0

    :cond_105
    const/4 v3, 0x1

    :goto_106
    if-nez v3, :cond_11a

    return v6

    :cond_109
    invoke-direct {v0, v1, v10, v8, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;III)Z

    move-result v3

    if-eqz v3, :cond_11a

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->zzad(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v3

    invoke-static {v1, v11, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/clearcut/zzef;)Z

    move-result v3

    if-nez v3, :cond_11a

    return v6

    :cond_11a
    :goto_11a
    add-int/lit8 v2, v2, 0x1

    move-object v4, v15

    const/4 v3, 0x1

    goto/16 :goto_18

    :cond_120
    iget-boolean v2, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmo:Z

    if-eqz v2, :cond_131

    iget-object v2, v0, Lcom/google/android/gms/internal/clearcut/zzds;->zzmy:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/clearcut/zzbu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzby;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzby;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_131

    return v6

    :cond_131
    const/4 v1, 0x1

    return v1

    :cond_133
    :goto_133
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_136
    .packed-switch 0x31
        :pswitch_dc
        :pswitch_77
    .end packed-switch
.end method

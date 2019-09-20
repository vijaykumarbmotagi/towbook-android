.class Landroid/support/v7/widget/ChildHelper$Bucket;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bucket"
.end annotation


# static fields
.field static final BITS_PER_WORD:I = 0x40

.field static final LAST_BIT:J = -0x8000000000000000L


# instance fields
.field mData:J

.field mNext:Landroid/support/v7/widget/ChildHelper$Bucket;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 401
    iput-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method private ensureNext()V
    .registers 2

    .line 415
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-nez v0, :cond_b

    .line 416
    new-instance v0, Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-direct {v0}, Landroid/support/v7/widget/ChildHelper$Bucket;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    :cond_b
    return-void
.end method


# virtual methods
.method clear(I)V
    .registers 10

    const/16 v0, 0x40

    if-lt p1, v0, :cond_f

    .line 422
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v1, :cond_1c

    .line 423
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ChildHelper$Bucket;->clear(I)V

    goto :goto_1c

    .line 426
    :cond_f
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, -0x1

    xor-long v6, v2, v4

    and-long v2, v0, v6

    iput-wide v2, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    :cond_1c
    :goto_1c
    return-void
.end method

.method countOnesBefore(I)I
    .registers 10

    .line 493
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1e

    if-lt p1, v1, :cond_11

    .line 495
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    .line 497
    :cond_11
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    shl-long v4, v2, p1

    sub-long v6, v4, v2

    and-long v2, v0, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_1e
    if-ge p1, v1, :cond_2d

    .line 500
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    shl-long v4, v2, p1

    sub-long v6, v4, v2

    and-long v2, v0, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    .line 502
    :cond_2d
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result p1

    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method get(I)Z
    .registers 8

    const/16 v0, 0x40

    if-lt p1, v0, :cond_f

    .line 433
    invoke-direct {p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 434
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ChildHelper$Bucket;->get(I)Z

    move-result p1

    return p1

    .line 436
    :cond_f
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method insert(IZ)V
    .registers 16

    const/16 v0, 0x40

    if-lt p1, v0, :cond_e

    .line 449
    invoke-direct {p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 450
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/ChildHelper$Bucket;->insert(IZ)V

    goto :goto_4e

    .line 452
    :cond_e
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    const-wide/16 v3, 0x1

    shl-long v5, v3, p1

    sub-long v7, v5, v3

    .line 454
    iget-wide v3, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    and-long v5, v3, v7

    .line 455
    iget-wide v3, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v9, -0x1

    xor-long v11, v7, v9

    and-long v7, v3, v11

    shl-long v3, v7, v1

    or-long v7, v5, v3

    .line 456
    iput-wide v7, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    if-eqz p2, :cond_3d

    .line 458
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ChildHelper$Bucket;->set(I)V

    goto :goto_40

    .line 460
    :cond_3d
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ChildHelper$Bucket;->clear(I)V

    :goto_40
    if-nez v2, :cond_46

    .line 462
    iget-object p1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz p1, :cond_4e

    .line 463
    :cond_46
    invoke-direct {p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 464
    iget-object p1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {p1, v0, v2}, Landroid/support/v7/widget/ChildHelper$Bucket;->insert(IZ)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method remove(I)Z
    .registers 16

    const/16 v0, 0x40

    if-lt p1, v0, :cond_f

    .line 471
    invoke-direct {p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 472
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ChildHelper$Bucket;->remove(I)Z

    move-result p1

    return p1

    :cond_f
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    .line 475
    iget-wide v4, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    and-long v6, v4, v2

    const-wide/16 v4, 0x0

    cmp-long p1, v6, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    .line 476
    :goto_22
    iget-wide v6, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v8, -0x1

    xor-long v10, v2, v8

    and-long v12, v6, v10

    iput-wide v12, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    sub-long v6, v2, v0

    .line 478
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    and-long v2, v0, v6

    .line 480
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    xor-long v10, v6, v8

    and-long v6, v0, v10

    invoke-static {v6, v7, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    or-long v6, v2, v0

    .line 481
    iput-wide v6, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 482
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v0, :cond_56

    .line 483
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ChildHelper$Bucket;->get(I)Z

    move-result v0

    if-eqz v0, :cond_51

    const/16 v0, 0x3f

    .line 484
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->set(I)V

    .line 486
    :cond_51
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ChildHelper$Bucket;->remove(I)Z

    :cond_56
    return p1
.end method

.method reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 441
    iput-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 442
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v0, :cond_d

    .line 443
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->reset()V

    :cond_d
    return-void
.end method

.method set(I)V
    .registers 8

    const/16 v0, 0x40

    if-lt p1, v0, :cond_e

    .line 407
    invoke-direct {p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 408
    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ChildHelper$Bucket;->set(I)V

    goto :goto_17

    .line 410
    :cond_e
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long v4, v0, v2

    iput-wide v4, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    :goto_17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-nez v0, :cond_b

    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mNext:Landroid/support/v7/widget/ChildHelper$Bucket;

    .line 509
    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    return-object v0
.end method

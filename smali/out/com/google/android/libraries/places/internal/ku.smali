.class public final Lcom/google/android/libraries/places/internal/ku;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/ku;


# instance fields
.field public b:I

.field public c:[I

.field public d:[Ljava/lang/Object;

.field public e:I

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 117
    new-instance v0, Lcom/google/android/libraries/places/internal/ku;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/ku;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/libraries/places/internal/ku;->a:Lcom/google/android/libraries/places/internal/ku;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    const/16 v0, 0x8

    .line 7
    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/libraries/places/internal/ku;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/google/android/libraries/places/internal/ku;->e:I

    .line 11
    iput p1, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    .line 12
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ku;->c:[I

    .line 13
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    .line 14
    iput-boolean p4, p0, Lcom/google/android/libraries/places/internal/ku;->f:Z

    return-void
.end method

.method static a(Lcom/google/android/libraries/places/internal/ku;Lcom/google/android/libraries/places/internal/ku;)Lcom/google/android/libraries/places/internal/ku;
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    iget v1, p1, Lcom/google/android/libraries/places/internal/ku;->b:I

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ku;->c:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 3
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/ku;->c:[I

    iget v3, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    iget v4, p1, Lcom/google/android/libraries/places/internal/ku;->b:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p1, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    iget p1, p1, Lcom/google/android/libraries/places/internal/ku;->b:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance p0, Lcom/google/android/libraries/places/internal/ku;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/ku;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private static a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V
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

    .line 48
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/android/libraries/places/internal/ir;->c()Lcom/google/android/libraries/places/internal/is;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 40
    :pswitch_14
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/lh;->a()Lcom/google/android/libraries/places/internal/li;

    move-result-object p0

    sget-object v1, Lcom/google/android/libraries/places/internal/li;->a:Lcom/google/android/libraries/places/internal/li;

    if-ne p0, v1, :cond_28

    .line 41
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/lh;->a(I)V

    .line 42
    check-cast p1, Lcom/google/android/libraries/places/internal/ku;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/ku;->a(Lcom/google/android/libraries/places/internal/lh;)V

    .line 43
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/lh;->b(I)V

    return-void

    .line 44
    :cond_28
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/lh;->b(I)V

    .line 45
    check-cast p1, Lcom/google/android/libraries/places/internal/ku;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/ku;->a(Lcom/google/android/libraries/places/internal/lh;)V

    .line 46
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/lh;->a(I)V

    return-void

    .line 38
    :pswitch_34
    check-cast p1, Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/libraries/places/internal/lh;->a(ILcom/google/android/libraries/places/internal/hq;)V

    return-void

    .line 36
    :pswitch_3a
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, v0, p0, p1}, Lcom/google/android/libraries/places/internal/lh;->d(IJ)V

    return-void

    .line 32
    :pswitch_44
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, v0, p0, p1}, Lcom/google/android/libraries/places/internal/lh;->a(IJ)V

    return-void

    .line 34
    :cond_4e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, v0, p0}, Lcom/google/android/libraries/places/internal/lh;->d(II)V

    return-void

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_44
        :pswitch_3a
        :pswitch_34
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .registers 7

    .line 49
    iget v0, p0, Lcom/google/android/libraries/places/internal/ku;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    :goto_8
    iget v2, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    if-ge v0, v2, :cond_75

    .line 54
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ku;->c:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    const/4 v4, 0x5

    if-eq v2, v4, :cond_63

    packed-switch v2, :pswitch_data_78

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/android/libraries/places/internal/ir;->c()Lcom/google/android/libraries/places/internal/is;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 70
    :pswitch_24
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/libraries/places/internal/ku;

    .line 71
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/ku;->a()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_72

    .line 67
    :pswitch_37
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/libraries/places/internal/hq;

    invoke-static {v3, v2}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/hq;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_72

    .line 65
    :pswitch_43
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/hy;->g(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_72

    .line 61
    :pswitch_53
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/hy;->e(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_72

    .line 63
    :cond_63
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/android/libraries/places/internal/hy;->i(II)I

    move-result v2

    add-int/2addr v1, v2

    :goto_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 75
    :cond_75
    iput v1, p0, Lcom/google/android/libraries/places/internal/ku;->e:I

    return v1

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_53
        :pswitch_43
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method

.method public final a(Lcom/google/android/libraries/places/internal/lh;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    iget v0, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    if-nez v0, :cond_5

    return-void

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/lh;->a()Lcom/google/android/libraries/places/internal/li;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/li;->a:Lcom/google/android/libraries/places/internal/li;

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    .line 19
    :goto_e
    iget v1, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    if-ge v0, v1, :cond_20

    .line 20
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ku;->c:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/libraries/places/internal/ku;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_20
    return-void

    .line 22
    :cond_21
    iget v0, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_35

    .line 23
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ku;->c:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/libraries/places/internal/ku;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_35
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 81
    :cond_8
    instance-of v2, p1, Lcom/google/android/libraries/places/internal/ku;

    if-nez v2, :cond_d

    return v1

    .line 83
    :cond_d
    check-cast p1, Lcom/google/android/libraries/places/internal/ku;

    .line 84
    iget v2, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    iget v3, p1, Lcom/google/android/libraries/places/internal/ku;->b:I

    if-ne v2, v3, :cond_49

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ku;->c:[I

    iget-object v3, p1, Lcom/google/android/libraries/places/internal/ku;->c:[I

    iget v4, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v4, :cond_29

    .line 87
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

    .line 91
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v3, :cond_44

    .line 94
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

    goto :goto_49

    :cond_48
    return v0

    :cond_49
    :goto_49
    return v1
.end method

.method public final hashCode()I
    .registers 9

    .line 101
    iget v0, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ku;->c:[I

    iget v2, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x11

    :goto_10
    if-ge v5, v2, :cond_1a

    mul-int/lit8 v6, v6, 0x1f

    .line 105
    aget v7, v1, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1a
    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ku;->d:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/libraries/places/internal/ku;->b:I

    :goto_21
    if-ge v3, v2, :cond_2f

    mul-int/lit8 v4, v4, 0x1f

    .line 112
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

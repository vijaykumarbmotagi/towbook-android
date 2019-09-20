.class public final Lcom/annimon/stream/RandomCompat;
.super Ljava/lang/Object;
.source "RandomCompat.java"


# instance fields
.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/annimon/stream/RandomCompat;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p1, p2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/annimon/stream/RandomCompat;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/annimon/stream/RandomCompat;->random:Ljava/util/Random;

    return-void
.end method

.method static synthetic access$000(Lcom/annimon/stream/RandomCompat;)Ljava/util/Random;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/annimon/stream/RandomCompat;->random:Ljava/util/Random;

    return-object p0
.end method


# virtual methods
.method public doubles()Lcom/annimon/stream/DoubleStream;
    .registers 2

    .line 159
    new-instance v0, Lcom/annimon/stream/RandomCompat$3;

    invoke-direct {v0, p0}, Lcom/annimon/stream/RandomCompat$3;-><init>(Lcom/annimon/stream/RandomCompat;)V

    invoke-static {v0}, Lcom/annimon/stream/DoubleStream;->generate(Lcom/annimon/stream/function/DoubleSupplier;)Lcom/annimon/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(DD)Lcom/annimon/stream/DoubleStream;
    .registers 12

    cmpl-double v0, p1, p3

    if-ltz v0, :cond_a

    .line 326
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 328
    :cond_a
    new-instance v6, Lcom/annimon/stream/RandomCompat$6;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/annimon/stream/RandomCompat$6;-><init>(Lcom/annimon/stream/RandomCompat;DD)V

    invoke-static {v6}, Lcom/annimon/stream/DoubleStream;->generate(Lcom/annimon/stream/function/DoubleSupplier;)Lcom/annimon/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public doubles(J)Lcom/annimon/stream/DoubleStream;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_c

    .line 105
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_c
    cmp-long v2, p1, v0

    if-nez v2, :cond_15

    .line 107
    invoke-static {}, Lcom/annimon/stream/DoubleStream;->empty()Lcom/annimon/stream/DoubleStream;

    move-result-object p1

    return-object p1

    .line 109
    :cond_15
    invoke-virtual {p0}, Lcom/annimon/stream/RandomCompat;->doubles()Lcom/annimon/stream/DoubleStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/annimon/stream/DoubleStream;->limit(J)Lcom/annimon/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public doubles(JDD)Lcom/annimon/stream/DoubleStream;
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_c

    .line 228
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_c
    cmp-long v2, p1, v0

    if-nez v2, :cond_15

    .line 230
    invoke-static {}, Lcom/annimon/stream/DoubleStream;->empty()Lcom/annimon/stream/DoubleStream;

    move-result-object p1

    return-object p1

    .line 232
    :cond_15
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/annimon/stream/RandomCompat;->doubles(DD)Lcom/annimon/stream/DoubleStream;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/annimon/stream/DoubleStream;->limit(J)Lcom/annimon/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public getRandom()Ljava/util/Random;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/annimon/stream/RandomCompat;->random:Ljava/util/Random;

    return-object v0
.end method

.method public ints()Lcom/annimon/stream/IntStream;
    .registers 2

    .line 123
    new-instance v0, Lcom/annimon/stream/RandomCompat$1;

    invoke-direct {v0, p0}, Lcom/annimon/stream/RandomCompat$1;-><init>(Lcom/annimon/stream/RandomCompat;)V

    invoke-static {v0}, Lcom/annimon/stream/IntStream;->generate(Lcom/annimon/stream/function/IntSupplier;)Lcom/annimon/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(II)Lcom/annimon/stream/IntStream;
    .registers 4

    if-lt p1, p2, :cond_8

    .line 248
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 250
    :cond_8
    new-instance v0, Lcom/annimon/stream/RandomCompat$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/annimon/stream/RandomCompat$4;-><init>(Lcom/annimon/stream/RandomCompat;II)V

    invoke-static {v0}, Lcom/annimon/stream/IntStream;->generate(Lcom/annimon/stream/function/IntSupplier;)Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public ints(J)Lcom/annimon/stream/IntStream;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_c

    .line 63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_c
    cmp-long v2, p1, v0

    if-nez v2, :cond_15

    .line 65
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1

    .line 67
    :cond_15
    invoke-virtual {p0}, Lcom/annimon/stream/RandomCompat;->ints()Lcom/annimon/stream/IntStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/annimon/stream/IntStream;->limit(J)Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public ints(JII)Lcom/annimon/stream/IntStream;
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_c

    .line 182
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_c
    cmp-long v2, p1, v0

    if-nez v2, :cond_15

    .line 184
    invoke-static {}, Lcom/annimon/stream/IntStream;->empty()Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1

    .line 186
    :cond_15
    invoke-virtual {p0, p3, p4}, Lcom/annimon/stream/RandomCompat;->ints(II)Lcom/annimon/stream/IntStream;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/annimon/stream/IntStream;->limit(J)Lcom/annimon/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public longs()Lcom/annimon/stream/LongStream;
    .registers 2

    .line 141
    new-instance v0, Lcom/annimon/stream/RandomCompat$2;

    invoke-direct {v0, p0}, Lcom/annimon/stream/RandomCompat$2;-><init>(Lcom/annimon/stream/RandomCompat;)V

    invoke-static {v0}, Lcom/annimon/stream/LongStream;->generate(Lcom/annimon/stream/function/LongSupplier;)Lcom/annimon/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(J)Lcom/annimon/stream/LongStream;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_c

    .line 84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_c
    cmp-long v2, p1, v0

    if-nez v2, :cond_15

    .line 86
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1

    .line 88
    :cond_15
    invoke-virtual {p0}, Lcom/annimon/stream/RandomCompat;->longs()Lcom/annimon/stream/LongStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/annimon/stream/LongStream;->limit(J)Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public longs(JJ)Lcom/annimon/stream/LongStream;
    .registers 12

    cmp-long v0, p1, p3

    if-ltz v0, :cond_a

    .line 282
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 284
    :cond_a
    new-instance v6, Lcom/annimon/stream/RandomCompat$5;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/annimon/stream/RandomCompat$5;-><init>(Lcom/annimon/stream/RandomCompat;JJ)V

    invoke-static {v6}, Lcom/annimon/stream/LongStream;->generate(Lcom/annimon/stream/function/LongSupplier;)Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public longs(JJJ)Lcom/annimon/stream/LongStream;
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_c

    .line 205
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_c
    cmp-long v2, p1, v0

    if-nez v2, :cond_15

    .line 207
    invoke-static {}, Lcom/annimon/stream/LongStream;->empty()Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1

    .line 209
    :cond_15
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/annimon/stream/RandomCompat;->longs(JJ)Lcom/annimon/stream/LongStream;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/annimon/stream/LongStream;->limit(J)Lcom/annimon/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

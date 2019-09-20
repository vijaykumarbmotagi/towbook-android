.class final Lcom/google/common/cache/LongAdder;
.super Lcom/google/common/cache/Striped64;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/common/cache/LongAddable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/google/common/cache/Striped64;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    .line 204
    iput v0, p0, Lcom/google/common/cache/LongAdder;->busy:I

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 206
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 198
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 9

    .line 70
    iget-object v0, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-nez v0, :cond_e

    iget-wide v1, p0, Lcom/google/common/cache/LongAdder;->base:J

    add-long v3, v1, p1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/common/cache/LongAdder;->casBase(JJ)Z

    move-result v1

    if-nez v1, :cond_34

    .line 72
    :cond_e
    sget-object v1, Lcom/google/common/cache/LongAdder;->threadHashCode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    if-eqz v0, :cond_31

    array-length v3, v0

    if-lt v3, v2, :cond_31

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    aget v4, v1, v4

    and-int/2addr v3, v4

    aget-object v0, v0, v3

    if-eqz v0, :cond_31

    iget-wide v2, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long v4, v2, p1

    .line 75
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v2

    if-nez v2, :cond_34

    .line 76
    :cond_31
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/cache/LongAdder;->retryUpdate(J[IZ)V

    :cond_34
    return-void
.end method

.method public decrement()V
    .registers 3

    const-wide/16 v0, -0x1

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    return-void
.end method

.method public doubleValue()D
    .registers 3

    .line 193
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 3

    .line 185
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method final fn(JJ)J
    .registers 7

    add-long v0, p1, p3

    return-wide v0
.end method

.method public increment()V
    .registers 3

    const-wide/16 v0, 0x1

    .line 84
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    return-void
.end method

.method public intValue()I
    .registers 3

    .line 177
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 169
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 125
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->internalReset(J)V

    return-void
.end method

.method public sum()J
    .registers 10

    .line 104
    iget-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 105
    iget-object v2, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v2, :cond_16

    .line 107
    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_16

    .line 109
    aget-object v5, v2, v4

    if-eqz v5, :cond_13

    .line 111
    iget-wide v5, v5, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long v7, v0, v5

    move-wide v0, v7

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_16
    return-wide v0
.end method

.method public sumThenReset()J
    .registers 13

    .line 139
    iget-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 140
    iget-object v2, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    const-wide/16 v3, 0x0

    .line 141
    iput-wide v3, p0, Lcom/google/common/cache/LongAdder;->base:J

    if-eqz v2, :cond_1c

    .line 143
    array-length v5, v2

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_1c

    .line 145
    aget-object v7, v2, v6

    if-eqz v7, :cond_19

    .line 147
    iget-wide v8, v7, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long v10, v0, v8

    .line 148
    iput-wide v3, v7, Lcom/google/common/cache/Striped64$Cell;->value:J

    move-wide v0, v10

    :cond_19
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_1c
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 160
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

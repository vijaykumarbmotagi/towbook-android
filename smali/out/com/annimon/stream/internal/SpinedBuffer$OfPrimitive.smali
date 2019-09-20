.class abstract Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;
.super Ljava/lang/Object;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/internal/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field curChunk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field

.field elementIndex:I

.field final initialChunkPower:I

.field priorElementCount:[J

.field spine:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT_ARR;"
        }
    .end annotation
.end field

.field spineIndex:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 83
    iput v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    .line 84
    iget v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(I)V
    .registers 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_1c

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const/4 v0, 0x4

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    .line 77
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    .line 79
    iget p1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    shl-int p1, v1, p1

    invoke-virtual {p0, p1}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    return-void
.end method

.method private inflateSpine()V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-nez v0, :cond_17

    const/16 v0, 0x8

    .line 130
    invoke-virtual {p0, v0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->newArrayArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 131
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 132
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    aput-object v2, v0, v1

    :cond_17
    return-void
.end method


# virtual methods
.method protected abstract arrayLength(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;)I"
        }
    .end annotation
.end method

.method public asPrimitiveArray()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ARR;"
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v0

    .line 199
    invoke-static {v0, v1}, Lcom/annimon/stream/internal/Compat;->checkMaxArraySize(J)V

    long-to-int v0, v0

    .line 201
    invoke-virtual {p0, v0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0, v0, v1}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-object v0
.end method

.method capacity()J
    .registers 8

    .line 123
    iget v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 124
    invoke-virtual {p0, v0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_20

    :cond_c
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-wide v1, v0, v1

    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v3, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-object v0, v0, v3

    .line 125
    invoke-virtual {p0, v0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v0

    int-to-long v3, v0

    add-long v5, v1, v3

    move-wide v0, v5

    :goto_20
    return-wide v0
.end method

.method chunkFor(J)I
    .registers 11

    .line 159
    iget v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 160
    iget v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->elementIndex:I

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-gez v0, :cond_d

    return v1

    .line 163
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_17
    invoke-virtual {p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-ltz v0, :cond_29

    .line 167
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_29
    :goto_29
    iget v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-gt v1, v0, :cond_44

    .line 170
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v0

    int-to-long v4, v0

    add-long v6, v2, v4

    cmp-long v0, p1, v6

    if-gez v0, :cond_41

    return v1

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 173
    :cond_44
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method chunkSize(I)I
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_11

    if-ne p1, v0, :cond_6

    goto :goto_11

    .line 116
    :cond_6
    iget v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    const/16 p1, 0x1e

    .line 118
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_13

    .line 116
    :cond_11
    :goto_11
    iget p1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    :goto_13
    shl-int p1, v0, p1

    return p1
.end method

.method public clear()V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 222
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 224
    iput-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 226
    :cond_10
    iput v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->elementIndex:I

    .line 227
    iput v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    return-void
.end method

.method copyInto(Ljava/lang/Object;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation

    int-to-long v0, p2

    .line 178
    invoke-virtual {p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v2

    add-long v4, v0, v2

    .line 179
    invoke-virtual {p0, p1}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v6, v4, v2

    if-gtz v6, :cond_4f

    cmp-long v2, v4, v0

    if-gez v2, :cond_15

    goto :goto_4f

    .line 183
    :cond_15
    iget v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 184
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4e

    :cond_22
    move v0, p2

    const/4 p2, 0x0

    .line 187
    :goto_24
    iget v2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-ge p2, v2, :cond_43

    .line 188
    iget-object v2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v3, v3, p2

    invoke-virtual {p0, v3}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v2, v1, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iget-object v2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    .line 191
    :cond_43
    iget p2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->elementIndex:I

    if-lez p2, :cond_4e

    .line 192
    iget-object p2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-static {p2, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4e
    :goto_4e
    return-void

    .line 180
    :cond_4f
    :goto_4f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "does not fit"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public count()J
    .registers 8

    .line 107
    iget v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->elementIndex:I

    int-to-long v0, v0

    goto :goto_14

    :cond_8
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-wide v1, v0, v1

    iget v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->elementIndex:I

    int-to-long v3, v0

    add-long v5, v1, v3

    move-wide v0, v5

    :goto_14
    return-wide v0
.end method

.method final ensureCapacity(J)V
    .registers 14

    .line 137
    invoke-virtual {p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->capacity()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_55

    .line 139
    invoke-direct {p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->inflateSpine()V

    .line 140
    iget v2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v2, v2, 0x1

    :goto_f
    cmp-long v3, p1, v0

    if-lez v3, :cond_55

    .line 141
    iget-object v3, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_2d

    .line 142
    iget-object v3, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    .line 143
    iget-object v4, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 144
    iget-object v4, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 146
    :cond_2d
    invoke-virtual {p0, v2}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->chunkSize(I)I

    move-result v3

    .line 147
    iget-object v4, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v2

    .line 148
    iget-object v4, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget-object v5, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    add-int/lit8 v6, v2, -0x1

    aget-wide v7, v5, v6

    iget-object v5, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v5

    int-to-long v5, v5

    add-long v9, v7, v5

    aput-wide v9, v4, v2

    int-to-long v3, v3

    add-long v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move-wide v0, v5

    goto :goto_f

    :cond_55
    return-void
.end method

.method increaseCapacity()V
    .registers 7

    .line 155
    invoke-virtual {p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->capacity()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-virtual {p0, v4, v5}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->ensureCapacity(J)V

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 100
    iget v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->elementIndex:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method protected abstract newArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_ARR;"
        }
    .end annotation
.end method

.method protected abstract newArrayArray(I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT_ARR;"
        }
    .end annotation
.end method

.method preAccept()V
    .registers 3

    .line 207
    iget v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->elementIndex:I

    iget-object v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_34

    .line 208
    invoke-direct {p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->inflateSpine()V

    .line 209
    iget v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_23

    .line 210
    :cond_20
    invoke-virtual {p0}, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->increaseCapacity()V

    :cond_23
    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->elementIndex:I

    .line 212
    iget v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    .line 213
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    :cond_34
    return-void
.end method

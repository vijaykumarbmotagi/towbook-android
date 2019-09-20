.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 2062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2067
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const/4 v0, -0x1

    .line 2069
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2070
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 2290
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_c

    .line 2291
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    .line 2294
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 2295
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    const-wide/16 v1, -0x1

    .line 2296
    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2297
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v0, -0x1

    .line 2298
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2299
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method

.method public final expandBuffer(I)J
    .registers 11

    if-gtz p1, :cond_19

    .line 2260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const/16 v0, 0x2000

    if-le p1, v0, :cond_34

    .line 2263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount > Segment.SIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2265
    :cond_34
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v1, :cond_40

    .line 2266
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not attached to a buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2268
    :cond_40
    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-nez v1, :cond_4c

    .line 2269
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "expandBuffer() only permitted for read/write buffers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2272
    :cond_4c
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v1, v1, Lokio/Buffer;->size:J

    .line 2273
    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v3, p1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object p1

    .line 2274
    iget v3, p1, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    .line 2275
    iput v0, p1, Lokio/Segment;->limit:I

    .line 2276
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    int-to-long v5, v3

    add-long v7, v1, v5

    iput-wide v7, v4, Lokio/Buffer;->size:J

    .line 2279
    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2280
    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2281
    iget-object p1, p1, Lokio/Segment;->data:[B

    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    rsub-int p1, v3, 0x2000

    .line 2282
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2283
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-wide v5
.end method

.method public final next()I
    .registers 7

    .line 2078
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2079
    :cond_10
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1f

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    .line 2080
    :cond_1f
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long v4, v0, v2

    invoke-virtual {p0, v4, v5}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0
.end method

.method public final resizeBuffer(J)J
    .registers 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 2178
    iget-object v3, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v3, :cond_10

    .line 2179
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not attached to a buffer"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2181
    :cond_10
    iget-boolean v3, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-nez v3, :cond_1c

    .line 2182
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "resizeBuffer() only permitted for read/write buffers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2185
    :cond_1c
    iget-object v3, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v3, v3, Lokio/Buffer;->size:J

    cmp-long v5, v1, v3

    const-wide/16 v6, 0x0

    if-gtz v5, :cond_7c

    cmp-long v5, v1, v6

    if-gez v5, :cond_41

    .line 2188
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newSize < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_41
    const/4 v5, 0x0

    sub-long v8, v3, v1

    :goto_44
    cmp-long v5, v8, v6

    if-lez v5, :cond_6f

    .line 2192
    iget-object v5, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    .line 2193
    iget v10, v5, Lokio/Segment;->limit:I

    iget v11, v5, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    cmp-long v12, v10, v8

    if-gtz v12, :cond_67

    .line 2195
    iget-object v12, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v13

    iput-object v13, v12, Lokio/Buffer;->head:Lokio/Segment;

    .line 2196
    invoke-static {v5}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    sub-long v12, v8, v10

    move-wide v8, v12

    goto :goto_44

    .line 2199
    :cond_67
    iget v6, v5, Lokio/Segment;->limit:I

    int-to-long v6, v6

    sub-long v10, v6, v8

    long-to-int v6, v10

    iput v6, v5, Lokio/Segment;->limit:I

    :cond_6f
    const/4 v5, 0x0

    .line 2204
    iput-object v5, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2205
    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2206
    iput-object v5, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v5, -0x1

    .line 2207
    iput v5, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2208
    iput v5, v0, Lokio/Buffer$UnsafeCursor;->end:I

    goto :goto_b7

    :cond_7c
    cmp-long v5, v1, v3

    if-lez v5, :cond_b7

    sub-long v8, v1, v3

    const/4 v5, 0x1

    const/4 v10, 0x1

    :goto_84
    cmp-long v11, v8, v6

    if-lez v11, :cond_b7

    .line 2213
    iget-object v11, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v11, v5}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v11

    .line 2214
    iget v12, v11, Lokio/Segment;->limit:I

    rsub-int v12, v12, 0x2000

    int-to-long v12, v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v12, v12

    .line 2215
    iget v13, v11, Lokio/Segment;->limit:I

    add-int/2addr v13, v12

    iput v13, v11, Lokio/Segment;->limit:I

    int-to-long v13, v12

    sub-long v15, v8, v13

    if-eqz v10, :cond_b5

    .line 2220
    iput-object v11, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2221
    iput-wide v3, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2222
    iget-object v8, v11, Lokio/Segment;->data:[B

    iput-object v8, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2223
    iget v8, v11, Lokio/Segment;->limit:I

    sub-int/2addr v8, v12

    iput v8, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2224
    iget v8, v11, Lokio/Segment;->limit:I

    iput v8, v0, Lokio/Buffer$UnsafeCursor;->end:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    :cond_b5
    move-wide v8, v15

    goto :goto_84

    .line 2230
    :cond_b7
    :goto_b7
    iget-object v5, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-wide v1, v5, Lokio/Buffer;->size:J

    return-wide v3
.end method

.method public final seek(J)I
    .registers 15

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_c0

    .line 2089
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    cmp-long v4, p1, v2

    if-lez v4, :cond_10

    goto/16 :goto_c0

    :cond_10
    cmp-long v2, p1, v0

    if-eqz v2, :cond_b3

    .line 2094
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_1e

    goto/16 :goto_b3

    :cond_1e
    const-wide/16 v0, 0x0

    .line 2105
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    .line 2106
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 2107
    iget-object v5, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    .line 2108
    iget-object v6, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    if-eqz v6, :cond_47

    .line 2109
    iget-wide v6, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v8, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iget-object v9, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iget v9, v9, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long v10, v6, v8

    cmp-long v6, v10, p1

    if-lez v6, :cond_44

    .line 2113
    iget-object v5, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-wide v2, v10

    goto :goto_47

    .line 2117
    :cond_44
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-wide v0, v10

    :cond_47
    :goto_47
    const/4 v6, 0x0

    sub-long v6, v2, p1

    sub-long v8, p1, v0

    cmp-long v10, v6, v8

    if-lez v10, :cond_68

    .line 2127
    :goto_50
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long v5, v0, v2

    cmp-long v2, p1, v5

    if-ltz v2, :cond_7a

    .line 2128
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long v5, v0, v2

    .line 2129
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    move-wide v0, v5

    goto :goto_50

    :cond_68
    move-wide v0, v2

    move-object v4, v5

    :goto_6a
    cmp-long v2, v0, p1

    if-lez v2, :cond_7a

    .line 2136
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 2137
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v5, v0, v2

    move-wide v0, v5

    goto :goto_6a

    .line 2142
    :cond_7a
    iget-boolean v2, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v2, :cond_99

    iget-boolean v2, v4, Lokio/Segment;->shared:Z

    if-eqz v2, :cond_99

    .line 2143
    invoke-virtual {v4}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v2

    .line 2144
    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v3, v4, :cond_90

    .line 2145
    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-object v2, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 2147
    :cond_90
    invoke-virtual {v4, v2}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v4

    .line 2148
    iget-object v2, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    .line 2152
    :cond_99
    iput-object v4, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2153
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2154
    iget-object v2, v4, Lokio/Segment;->data:[B

    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2155
    iget v2, v4, Lokio/Segment;->pos:I

    sub-long v5, p1, v0

    long-to-int p1, v5

    add-int/2addr v2, p1

    iput v2, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2156
    iget p1, v4, Lokio/Segment;->limit:I

    iput p1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2157
    iget p1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget p2, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr p1, p2

    return p1

    :cond_b3
    :goto_b3
    const/4 v0, 0x0

    .line 2095
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2096
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2097
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 p1, -0x1

    .line 2098
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2099
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return p1

    .line 2090
    :cond_c0
    :goto_c0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "offset=%s > size=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2091
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    iget-object p2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v3, p2, Lokio/Buffer;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

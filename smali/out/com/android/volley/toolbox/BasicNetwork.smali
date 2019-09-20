.class public Lcom/android/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/android/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static final DEFAULT_POOL_SIZE:I = 0x1000

.field private static final SLOW_REQUEST_THRESHOLD_MS:I = 0xbb8


# instance fields
.field private final mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

.field protected final mHttpStack:Lcom/android/volley/toolbox/HttpStack;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/BaseHttpStack;)V
    .registers 4

    .line 96
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/BaseHttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/BaseHttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .registers 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

    .line 108
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 109
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 88
    new-instance v0, Lcom/android/volley/toolbox/AdaptedHttpStack;

    invoke-direct {v0, p1}, Lcom/android/volley/toolbox/AdaptedHttpStack;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

    .line 89
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 241
    invoke-virtual {p1}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    .line 242
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 245
    :try_start_b
    invoke-interface {v0, p2}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_e
    .catch Lcom/android/volley/VolleyError; {:try_start_b .. :try_end_e} :catch_22

    const-string p2, "%s-retry [timeout=%s]"

    .line 251
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_22
    move-exception p2

    const-string v0, "%s-timeout-giveup [timeout=%s]"

    .line 247
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 249
    throw p2
.end method

.method private static combineHeaders(Ljava/util/List;Lcom/android/volley/Cache$Entry;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 340
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 341
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Header;

    .line 342
    invoke-virtual {v2}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 348
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    iget-object p0, p1, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    if-eqz p0, :cond_56

    .line 350
    iget-object p0, p1, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_93

    .line 351
    iget-object p0, p1, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3c
    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/volley/Header;

    .line 352
    invoke-virtual {p1}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 353
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 359
    :cond_56
    iget-object p0, p1, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_93

    .line 360
    iget-object p0, p1, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_68
    :goto_68
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 361
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 362
    new-instance v2, Lcom/android/volley/Header;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_93
    return-object v1
.end method

.method protected static convertHeaders([Lcom/android/volley/Header;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/volley/Header;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 319
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    .line 320
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1d
    return-object v0
.end method

.method private getCacheHeaders(Lcom/android/volley/Cache$Entry;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 260
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    iget-object v1, p1, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v1, :cond_17

    const-string v1, "If-None-Match"

    .line 263
    iget-object v2, p1, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_17
    iget-wide v1, p1, Lcom/android/volley/Cache$Entry;->lastModified:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2a

    const-string v1, "If-Modified-Since"

    .line 267
    iget-wide v2, p1, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 268
    invoke-static {v2, v3}, Lcom/android/volley/toolbox/HttpHeaderParser;->formatEpochAsRfc1123(J)Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-object v0
.end method

.method private inputStreamToBytes(Ljava/io/InputStream;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/ServerError;
        }
    .end annotation

    .line 282
    new-instance v0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-direct {v0, v1, p2}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_13

    .line 286
    :try_start_b
    new-instance v2, Lcom/android/volley/ServerError;

    invoke-direct {v2}, Lcom/android/volley/ServerError;-><init>()V

    throw v2

    :catchall_11
    move-exception v2

    goto :goto_44

    .line 288
    :cond_13
    iget-object v2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_11

    .line 290
    :goto_1b
    :try_start_1b
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_26

    .line 291
    invoke-virtual {v0, v2, p2, v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_1b

    .line 293
    :cond_26
    invoke-virtual {v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_40

    if-eqz p1, :cond_37

    .line 298
    :try_start_2c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_37

    :catch_30
    const-string p1, "Error occurred when closing InputStream"

    .line 303
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {p1, v2}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 306
    invoke-virtual {v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v1

    :catchall_40
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_44
    if-eqz p1, :cond_51

    .line 298
    :try_start_46
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_51

    :catch_4a
    const-string p1, "Error occurred when closing InputStream"

    .line 303
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {p1, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 306
    invoke-virtual {v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v2
.end method

.method private logSlowRequests(JLcom/android/volley/Request;[BI)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request<",
            "*>;[BI)V"
        }
    .end annotation

    .line 221
    sget-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-lez v2, :cond_3f

    :cond_a
    const-string v0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v1, 0x5

    .line 222
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    .line 226
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    if-eqz p4, :cond_22

    .line 227
    array-length p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_24

    :cond_22
    const-string p2, "null"

    :goto_24
    aput-object p2, v1, p1

    const/4 p1, 0x3

    .line 228
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x4

    .line 229
    invoke-virtual {p3}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    .line 222
    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method


# virtual methods
.method protected logError(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "HTTP ERROR(%s) %d ms to fetch %s"

    const/4 v3, 0x3

    .line 276
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sub-long v4, v0, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v3, p3

    const/4 p1, 0x2

    aput-object p2, v3, p1

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 118
    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 122
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/android/volley/toolbox/BasicNetwork;->getCacheHeaders(Lcom/android/volley/Cache$Entry;)Ljava/util/Map;

    move-result-object v3

    .line 123
    iget-object v4, v7, Lcom/android/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

    invoke-virtual {v4, v8, v3}, Lcom/android/volley/toolbox/BaseHttpStack;->executeRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;

    move-result-object v12
    :try_end_1c
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_1c} :catch_16e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_1c} :catch_151
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_c4

    .line 124
    :try_start_1c
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v14

    .line 126
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v13
    :try_end_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_1c .. :try_end_24} :catch_16e
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_24} :catch_151
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_bf

    const/16 v1, 0x130

    if-ne v14, v1, :cond_66

    .line 129
    :try_start_28
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v1

    if-nez v1, :cond_44

    .line 131
    new-instance v1, Lcom/android/volley/NetworkResponse;

    const/16 v16, 0x130

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long v19, v3, v9

    move-object v15, v1

    move-object/from16 v21, v13

    invoke-direct/range {v15 .. v21}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    return-object v1

    .line 139
    :cond_44
    invoke-static {v13, v1}, Lcom/android/volley/toolbox/BasicNetwork;->combineHeaders(Ljava/util/List;Lcom/android/volley/Cache$Entry;)Ljava/util/List;

    move-result-object v27

    .line 140
    new-instance v3, Lcom/android/volley/NetworkResponse;

    const/16 v22, 0x130

    iget-object v1, v1, Lcom/android/volley/Cache$Entry;->data:[B

    const/16 v24, 0x1

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long v25, v4, v9

    move-object/from16 v21, v3

    move-object/from16 v23, v1

    invoke-direct/range {v21 .. v27}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V
    :try_end_5e
    .catch Ljava/net/SocketTimeoutException; {:try_start_28 .. :try_end_5e} :catch_16e
    .catch Ljava/net/MalformedURLException; {:try_start_28 .. :try_end_5e} :catch_151
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_5e} :catch_5f

    return-object v3

    :catch_5f
    move-exception v0

    move-object v1, v0

    move-object v15, v2

    move-object/from16 v19, v13

    goto/16 :goto_ca

    .line 149
    :cond_66
    :try_start_66
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1
    :try_end_6a
    .catch Ljava/net/SocketTimeoutException; {:try_start_66 .. :try_end_6a} :catch_16e
    .catch Ljava/net/MalformedURLException; {:try_start_66 .. :try_end_6a} :catch_151
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6a} :catch_b8

    if-eqz v1, :cond_75

    .line 152
    :try_start_6c
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getContentLength()I

    move-result v3

    invoke-direct {v7, v1, v3}, Lcom/android/volley/toolbox/BasicNetwork;->inputStreamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v1
    :try_end_74
    .catch Ljava/net/SocketTimeoutException; {:try_start_6c .. :try_end_74} :catch_16e
    .catch Ljava/net/MalformedURLException; {:try_start_6c .. :try_end_74} :catch_151
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_74} :catch_5f

    goto :goto_77

    .line 156
    :cond_75
    :try_start_75
    new-array v1, v11, [B
    :try_end_77
    .catch Ljava/net/SocketTimeoutException; {:try_start_75 .. :try_end_77} :catch_16e
    .catch Ljava/net/MalformedURLException; {:try_start_75 .. :try_end_77} :catch_151
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_77} :catch_b8

    :goto_77
    move-object/from16 v20, v1

    .line 160
    :try_start_79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    sub-long v3, v1, v9

    move-object v1, v7

    move-wide v2, v3

    move-object v4, v8

    move-object/from16 v5, v20

    move v6, v14

    .line 161
    invoke-direct/range {v1 .. v6}, Lcom/android/volley/toolbox/BasicNetwork;->logSlowRequests(JLcom/android/volley/Request;[BI)V

    const/16 v1, 0xc8

    if-lt v14, v1, :cond_a7

    const/16 v1, 0x12b

    if-le v14, v1, :cond_92

    goto :goto_a7

    .line 166
    :cond_92
    new-instance v1, Lcom/android/volley/NetworkResponse;

    const/16 v16, 0x0

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_9a
    .catch Ljava/net/SocketTimeoutException; {:try_start_79 .. :try_end_9a} :catch_16e
    .catch Ljava/net/MalformedURLException; {:try_start_79 .. :try_end_9a} :catch_151
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_9a} :catch_b0

    const/4 v4, 0x0

    sub-long v17, v2, v9

    move-object v3, v13

    move-object v13, v1

    move-object/from16 v15, v20

    move-object/from16 v19, v3

    :try_start_a3
    invoke-direct/range {v13 .. v19}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    return-object v1

    :cond_a7
    :goto_a7
    move-object v3, v13

    .line 164
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_ae
    .catch Ljava/net/SocketTimeoutException; {:try_start_a3 .. :try_end_ae} :catch_16e
    .catch Ljava/net/MalformedURLException; {:try_start_a3 .. :try_end_ae} :catch_151
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_ae} :catch_ae

    :catch_ae
    move-exception v0

    goto :goto_b2

    :catch_b0
    move-exception v0

    move-object v3, v13

    :goto_b2
    move-object v1, v0

    move-object/from16 v19, v3

    move-object/from16 v15, v20

    goto :goto_ca

    :catch_b8
    move-exception v0

    move-object v3, v13

    move-object v1, v0

    move-object v15, v2

    move-object/from16 v19, v3

    goto :goto_ca

    :catch_bf
    move-exception v0

    move-object/from16 v19, v1

    move-object v15, v2

    goto :goto_c9

    :catch_c4
    move-exception v0

    move-object/from16 v19, v1

    move-object v12, v2

    move-object v15, v12

    :goto_c9
    move-object v1, v0

    :goto_ca
    if-eqz v12, :cond_14b

    .line 179
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v1

    const-string v2, "Unexpected response code %d for %s"

    const/4 v3, 0x2

    .line 183
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v15, :cond_13f

    .line 186
    new-instance v2, Lcom/android/volley/NetworkResponse;

    const/16 v16, 0x0

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v17, v3, v9

    move-object v13, v2

    move v14, v1

    invoke-direct/range {v13 .. v19}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    const/16 v3, 0x191

    if-eq v1, v3, :cond_133

    const/16 v3, 0x193

    if-ne v1, v3, :cond_ff

    goto :goto_133

    :cond_ff
    const/16 v3, 0x190

    if-lt v1, v3, :cond_10d

    const/16 v3, 0x1f3

    if-gt v1, v3, :cond_10d

    .line 199
    new-instance v1, Lcom/android/volley/ClientError;

    invoke-direct {v1, v2}, Lcom/android/volley/ClientError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v1

    :cond_10d
    const/16 v3, 0x1f4

    if-lt v1, v3, :cond_12d

    const/16 v3, 0x257

    if-gt v1, v3, :cond_12d

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->shouldRetryServerErrors()Z

    move-result v1

    if-eqz v1, :cond_127

    const-string v1, "server"

    .line 202
    new-instance v3, Lcom/android/volley/ServerError;

    invoke-direct {v3, v2}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v1, v8, v3}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_8

    .line 205
    :cond_127
    new-instance v1, Lcom/android/volley/ServerError;

    invoke-direct {v1, v2}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v1

    .line 209
    :cond_12d
    new-instance v1, Lcom/android/volley/ServerError;

    invoke-direct {v1, v2}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v1

    :cond_133
    :goto_133
    const-string v1, "auth"

    .line 195
    new-instance v3, Lcom/android/volley/AuthFailureError;

    invoke-direct {v3, v2}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v1, v8, v3}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_8

    :cond_13f
    const-string v1, "network"

    .line 212
    new-instance v2, Lcom/android/volley/NetworkError;

    invoke-direct {v2}, Lcom/android/volley/NetworkError;-><init>()V

    invoke-static {v1, v8, v2}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_8

    .line 181
    :cond_14b
    new-instance v2, Lcom/android/volley/NoConnectionError;

    invoke-direct {v2, v1}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_151
    move-exception v0

    move-object v1, v0

    .line 175
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_16e
    const-string v1, "socket"

    .line 173
    new-instance v2, Lcom/android/volley/TimeoutError;

    invoke-direct {v2}, Lcom/android/volley/TimeoutError;-><init>()V

    invoke-static {v1, v8, v2}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_8
.end method

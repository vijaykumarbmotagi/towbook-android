.class final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static final MAX_SIZE:J = 0x10000L

.field static byteCount:J

.field static next:Lokio/Segment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static recycle(Lokio/Segment;)V
    .registers 9

    .line 52
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    if-nez v0, :cond_37

    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v0, :cond_9

    goto :goto_37

    .line 53
    :cond_9
    iget-boolean v0, p0, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_e

    return-void

    .line 54
    :cond_e
    const-class v0, Lokio/SegmentPool;

    monitor-enter v0

    .line 55
    :try_start_11
    sget-wide v1, Lokio/SegmentPool;->byteCount:J

    const-wide/16 v3, 0x2000

    add-long v5, v1, v3

    const-wide/32 v1, 0x10000

    cmp-long v7, v5, v1

    if-lez v7, :cond_20

    monitor-exit v0

    return-void

    .line 56
    :cond_20
    sget-wide v1, Lokio/SegmentPool;->byteCount:J

    const/4 v5, 0x0

    add-long v5, v1, v3

    sput-wide v5, Lokio/SegmentPool;->byteCount:J

    .line 57
    sget-object v1, Lokio/SegmentPool;->next:Lokio/Segment;

    iput-object v1, p0, Lokio/Segment;->next:Lokio/Segment;

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lokio/Segment;->limit:I

    iput v1, p0, Lokio/Segment;->pos:I

    .line 59
    sput-object p0, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 60
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_11 .. :try_end_36} :catchall_34

    throw p0

    .line 52
    :cond_37
    :goto_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static take()Lokio/Segment;
    .registers 8

    .line 39
    const-class v0, Lokio/SegmentPool;

    monitor-enter v0

    .line 40
    :try_start_3
    sget-object v1, Lokio/SegmentPool;->next:Lokio/Segment;

    if-eqz v1, :cond_1a

    .line 41
    sget-object v1, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 42
    iget-object v2, v1, Lokio/Segment;->next:Lokio/Segment;

    sput-object v2, Lokio/SegmentPool;->next:Lokio/Segment;

    const/4 v2, 0x0

    .line 43
    iput-object v2, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 44
    sget-wide v2, Lokio/SegmentPool;->byteCount:J

    const-wide/16 v4, 0x2000

    sub-long v6, v2, v4

    sput-wide v6, Lokio/SegmentPool;->byteCount:J

    .line 45
    monitor-exit v0

    return-object v1

    .line 47
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    .line 48
    new-instance v0, Lokio/Segment;

    invoke-direct {v0}, Lokio/Segment;-><init>()V

    return-object v0

    :catchall_21
    move-exception v1

    .line 47
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

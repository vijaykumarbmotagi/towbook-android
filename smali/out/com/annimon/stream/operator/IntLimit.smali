.class public Lcom/annimon/stream/operator/IntLimit;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntLimit.java"


# instance fields
.field private index:J

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final maxSize:J


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;J)V
    .registers 4

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/annimon/stream/operator/IntLimit;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 13
    iput-wide p2, p0, Lcom/annimon/stream/operator/IntLimit;->maxSize:J

    const-wide/16 p1, 0x0

    .line 14
    iput-wide p1, p0, Lcom/annimon/stream/operator/IntLimit;->index:J

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 6

    .line 19
    iget-wide v0, p0, Lcom/annimon/stream/operator/IntLimit;->index:J

    iget-wide v2, p0, Lcom/annimon/stream/operator/IntLimit;->maxSize:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_12

    iget-object v0, p0, Lcom/annimon/stream/operator/IntLimit;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public nextInt()I
    .registers 7

    .line 24
    iget-wide v0, p0, Lcom/annimon/stream/operator/IntLimit;->index:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/annimon/stream/operator/IntLimit;->index:J

    .line 25
    iget-object v0, p0, Lcom/annimon/stream/operator/IntLimit;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    return v0
.end method

.class public Lcom/annimon/stream/operator/IntSkip;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntSkip.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final n:J

.field private skipped:J


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;J)V
    .registers 4

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/annimon/stream/operator/IntSkip;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 13
    iput-wide p2, p0, Lcom/annimon/stream/operator/IntSkip;->n:J

    const-wide/16 p1, 0x0

    .line 14
    iput-wide p1, p0, Lcom/annimon/stream/operator/IntSkip;->skipped:J

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 7

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/annimon/stream/operator/IntSkip;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 20
    iget-wide v0, p0, Lcom/annimon/stream/operator/IntSkip;->skipped:J

    iget-wide v2, p0, Lcom/annimon/stream/operator/IntSkip;->n:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    goto :goto_1f

    .line 23
    :cond_11
    iget-object v0, p0, Lcom/annimon/stream/operator/IntSkip;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    .line 24
    iget-wide v0, p0, Lcom/annimon/stream/operator/IntSkip;->skipped:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/annimon/stream/operator/IntSkip;->skipped:J

    goto :goto_0

    .line 27
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/annimon/stream/operator/IntSkip;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextInt()I
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/annimon/stream/operator/IntSkip;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    return v0
.end method

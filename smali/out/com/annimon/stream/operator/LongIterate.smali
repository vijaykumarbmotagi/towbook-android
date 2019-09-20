.class public Lcom/annimon/stream/operator/LongIterate;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "LongIterate.java"


# instance fields
.field private current:J

.field private final op:Lcom/annimon/stream/function/LongUnaryOperator;


# direct methods
.method public constructor <init>(JLcom/annimon/stream/function/LongUnaryOperator;)V
    .registers 4

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 12
    iput-object p3, p0, Lcom/annimon/stream/operator/LongIterate;->op:Lcom/annimon/stream/function/LongUnaryOperator;

    .line 13
    iput-wide p1, p0, Lcom/annimon/stream/operator/LongIterate;->current:J

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public nextLong()J
    .registers 6

    .line 23
    iget-wide v0, p0, Lcom/annimon/stream/operator/LongIterate;->current:J

    .line 24
    iget-object v2, p0, Lcom/annimon/stream/operator/LongIterate;->op:Lcom/annimon/stream/function/LongUnaryOperator;

    iget-wide v3, p0, Lcom/annimon/stream/operator/LongIterate;->current:J

    invoke-interface {v2, v3, v4}, Lcom/annimon/stream/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/annimon/stream/operator/LongIterate;->current:J

    return-wide v0
.end method

.class public Lcom/annimon/stream/operator/DoubleIterate;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "DoubleIterate.java"


# instance fields
.field private current:D

.field private final op:Lcom/annimon/stream/function/DoubleUnaryOperator;


# direct methods
.method public constructor <init>(DLcom/annimon/stream/function/DoubleUnaryOperator;)V
    .registers 4

    .line 11
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 12
    iput-object p3, p0, Lcom/annimon/stream/operator/DoubleIterate;->op:Lcom/annimon/stream/function/DoubleUnaryOperator;

    .line 13
    iput-wide p1, p0, Lcom/annimon/stream/operator/DoubleIterate;->current:D

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public nextDouble()D
    .registers 6

    .line 23
    iget-wide v0, p0, Lcom/annimon/stream/operator/DoubleIterate;->current:D

    .line 24
    iget-object v2, p0, Lcom/annimon/stream/operator/DoubleIterate;->op:Lcom/annimon/stream/function/DoubleUnaryOperator;

    iget-wide v3, p0, Lcom/annimon/stream/operator/DoubleIterate;->current:D

    invoke-interface {v2, v3, v4}, Lcom/annimon/stream/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/annimon/stream/operator/DoubleIterate;->current:D

    return-wide v0
.end method

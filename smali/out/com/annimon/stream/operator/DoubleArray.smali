.class public Lcom/annimon/stream/operator/DoubleArray;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "DoubleArray.java"


# instance fields
.field private index:I

.field private final values:[D


# direct methods
.method public constructor <init>([D)V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleArray;->values:[D

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/annimon/stream/operator/DoubleArray;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 22
    iget v0, p0, Lcom/annimon/stream/operator/DoubleArray;->index:I

    iget-object v1, p0, Lcom/annimon/stream/operator/DoubleArray;->values:[D

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public nextDouble()D
    .registers 4

    .line 17
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleArray;->values:[D

    iget v1, p0, Lcom/annimon/stream/operator/DoubleArray;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/annimon/stream/operator/DoubleArray;->index:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

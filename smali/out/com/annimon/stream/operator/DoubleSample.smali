.class public Lcom/annimon/stream/operator/DoubleSample;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "DoubleSample.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final stepWidth:I


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;I)V
    .registers 3

    .line 10
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 12
    iput p2, p0, Lcom/annimon/stream/operator/DoubleSample;->stepWidth:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextDouble()D
    .registers 5

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 24
    :goto_7
    iget v3, p0, Lcom/annimon/stream/operator/DoubleSample;->stepWidth:I

    if-ge v2, v3, :cond_1b

    iget-object v3, p0, Lcom/annimon/stream/operator/DoubleSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v3}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 25
    iget-object v3, p0, Lcom/annimon/stream/operator/DoubleSample;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v3}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1b
    return-wide v0
.end method

.class public Lcom/annimon/stream/operator/DoubleFlatMap;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "DoubleFlatMap.java"


# instance fields
.field private inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private innerStream:Lcom/annimon/stream/DoubleStream;

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

.field private final mapper:Lcom/annimon/stream/function/DoubleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/DoubleFunction<",
            "+",
            "Lcom/annimon/stream/DoubleStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;Lcom/annimon/stream/function/DoubleFunction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;",
            "Lcom/annimon/stream/function/DoubleFunction<",
            "+",
            "Lcom/annimon/stream/DoubleStream;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    .line 17
    iput-object p2, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->mapper:Lcom/annimon/stream/function/DoubleFunction;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 25
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_46

    .line 26
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->innerStream:Lcom/annimon/stream/DoubleStream;

    if-eqz v0, :cond_22

    .line 27
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->innerStream:Lcom/annimon/stream/DoubleStream;

    invoke-virtual {v0}, Lcom/annimon/stream/DoubleStream;->close()V

    .line 28
    iput-object v2, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->innerStream:Lcom/annimon/stream/DoubleStream;

    .line 30
    :cond_22
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v2

    .line 31
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->mapper:Lcom/annimon/stream/function/DoubleFunction;

    invoke-interface {v0, v2, v3}, Lcom/annimon/stream/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/annimon/stream/DoubleStream;

    if-nez v0, :cond_33

    goto :goto_e

    .line 35
    :cond_33
    iput-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->innerStream:Lcom/annimon/stream/DoubleStream;

    .line 36
    invoke-virtual {v0}, Lcom/annimon/stream/DoubleStream;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 37
    invoke-virtual {v0}, Lcom/annimon/stream/DoubleStream;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    return v1

    .line 41
    :cond_46
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->innerStream:Lcom/annimon/stream/DoubleStream;

    if-eqz v0, :cond_51

    .line 42
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->innerStream:Lcom/annimon/stream/DoubleStream;

    invoke-virtual {v0}, Lcom/annimon/stream/DoubleStream;->close()V

    .line 43
    iput-object v2, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->innerStream:Lcom/annimon/stream/DoubleStream;

    :cond_51
    const/4 v0, 0x0

    return v0
.end method

.method public nextDouble()D
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    if-nez v0, :cond_a

    .line 51
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 53
    :cond_a
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.class public Lcom/annimon/stream/operator/LongFlatMap;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;
.source "LongFlatMap.java"


# instance fields
.field private inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private innerStream:Lcom/annimon/stream/LongStream;

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

.field private final mapper:Lcom/annimon/stream/function/LongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/LongFunction<",
            "+",
            "Lcom/annimon/stream/LongStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;Lcom/annimon/stream/function/LongFunction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;",
            "Lcom/annimon/stream/function/LongFunction<",
            "+",
            "Lcom/annimon/stream/LongStream;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/annimon/stream/operator/LongFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    .line 17
    iput-object p2, p0, Lcom/annimon/stream/operator/LongFlatMap;->mapper:Lcom/annimon/stream/function/LongFunction;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/LongFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/annimon/stream/operator/LongFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 25
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/annimon/stream/operator/LongFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_46

    .line 26
    iget-object v0, p0, Lcom/annimon/stream/operator/LongFlatMap;->innerStream:Lcom/annimon/stream/LongStream;

    if-eqz v0, :cond_22

    .line 27
    iget-object v0, p0, Lcom/annimon/stream/operator/LongFlatMap;->innerStream:Lcom/annimon/stream/LongStream;

    invoke-virtual {v0}, Lcom/annimon/stream/LongStream;->close()V

    .line 28
    iput-object v2, p0, Lcom/annimon/stream/operator/LongFlatMap;->innerStream:Lcom/annimon/stream/LongStream;

    .line 30
    :cond_22
    iget-object v0, p0, Lcom/annimon/stream/operator/LongFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v2

    .line 31
    iget-object v0, p0, Lcom/annimon/stream/operator/LongFlatMap;->mapper:Lcom/annimon/stream/function/LongFunction;

    invoke-interface {v0, v2, v3}, Lcom/annimon/stream/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/annimon/stream/LongStream;

    if-nez v0, :cond_33

    goto :goto_e

    .line 35
    :cond_33
    iput-object v0, p0, Lcom/annimon/stream/operator/LongFlatMap;->innerStream:Lcom/annimon/stream/LongStream;

    .line 36
    invoke-virtual {v0}, Lcom/annimon/stream/LongStream;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 37
    invoke-virtual {v0}, Lcom/annimon/stream/LongStream;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/LongFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    return v1

    .line 41
    :cond_46
    iget-object v0, p0, Lcom/annimon/stream/operator/LongFlatMap;->innerStream:Lcom/annimon/stream/LongStream;

    if-eqz v0, :cond_51

    .line 42
    iget-object v0, p0, Lcom/annimon/stream/operator/LongFlatMap;->innerStream:Lcom/annimon/stream/LongStream;

    invoke-virtual {v0}, Lcom/annimon/stream/LongStream;->close()V

    .line 43
    iput-object v2, p0, Lcom/annimon/stream/operator/LongFlatMap;->innerStream:Lcom/annimon/stream/LongStream;

    :cond_51
    const/4 v0, 0x0

    return v0
.end method

.method public nextLong()J
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/annimon/stream/operator/LongFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    if-nez v0, :cond_a

    .line 51
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 53
    :cond_a
    iget-object v0, p0, Lcom/annimon/stream/operator/LongFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

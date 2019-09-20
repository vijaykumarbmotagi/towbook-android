.class public Lcom/annimon/stream/operator/IntFlatMap;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntFlatMap.java"


# instance fields
.field private inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private innerStream:Lcom/annimon/stream/IntStream;

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final mapper:Lcom/annimon/stream/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/IntFunction<",
            "+",
            "Lcom/annimon/stream/IntStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntFunction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;",
            "Lcom/annimon/stream/function/IntFunction<",
            "+",
            "Lcom/annimon/stream/IntStream;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/annimon/stream/operator/IntFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 17
    iput-object p2, p0, Lcom/annimon/stream/operator/IntFlatMap;->mapper:Lcom/annimon/stream/function/IntFunction;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 25
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_46

    .line 26
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->innerStream:Lcom/annimon/stream/IntStream;

    if-eqz v0, :cond_22

    .line 27
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->innerStream:Lcom/annimon/stream/IntStream;

    invoke-virtual {v0}, Lcom/annimon/stream/IntStream;->close()V

    .line 28
    iput-object v2, p0, Lcom/annimon/stream/operator/IntFlatMap;->innerStream:Lcom/annimon/stream/IntStream;

    .line 30
    :cond_22
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    .line 31
    iget-object v2, p0, Lcom/annimon/stream/operator/IntFlatMap;->mapper:Lcom/annimon/stream/function/IntFunction;

    invoke-interface {v2, v0}, Lcom/annimon/stream/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/annimon/stream/IntStream;

    if-nez v0, :cond_33

    goto :goto_e

    .line 35
    :cond_33
    iput-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->innerStream:Lcom/annimon/stream/IntStream;

    .line 36
    invoke-virtual {v0}, Lcom/annimon/stream/IntStream;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 37
    invoke-virtual {v0}, Lcom/annimon/stream/IntStream;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    return v1

    .line 41
    :cond_46
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->innerStream:Lcom/annimon/stream/IntStream;

    if-eqz v0, :cond_51

    .line 42
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->innerStream:Lcom/annimon/stream/IntStream;

    invoke-virtual {v0}, Lcom/annimon/stream/IntStream;->close()V

    .line 43
    iput-object v2, p0, Lcom/annimon/stream/operator/IntFlatMap;->innerStream:Lcom/annimon/stream/IntStream;

    :cond_51
    const/4 v0, 0x0

    return v0
.end method

.method public nextInt()I
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    if-nez v0, :cond_a

    .line 51
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 53
    :cond_a
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFlatMap;->inner:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    return v0
.end method

.class public Lcom/annimon/stream/operator/DoubleFilterIndexed;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;
.source "DoubleFilterIndexed.java"


# instance fields
.field private hasNext:Z

.field private hasNextEvaluated:Z

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

.field private next:D

.field private final predicate:Lcom/annimon/stream/function/IndexedDoublePredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;Lcom/annimon/stream/function/IndexedDoublePredicate;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfDouble;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

    .line 17
    iput-object p2, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->predicate:Lcom/annimon/stream/function/IndexedDoublePredicate;

    return-void
.end method

.method private nextIteration()V
    .registers 5

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 43
    iget-object v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->getIndex()I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->iterator:Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/PrimitiveIndexedIterator$OfDouble;->next()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->next:D

    .line 45
    iget-object v1, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->predicate:Lcom/annimon/stream/function/IndexedDoublePredicate;

    iget-wide v2, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->next:D

    invoke-interface {v1, v0, v2, v3}, Lcom/annimon/stream/function/IndexedDoublePredicate;->test(ID)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNext:Z

    return-void

    :cond_28
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 22
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNextEvaluated:Z

    if-nez v0, :cond_a

    .line 23
    invoke-direct {p0}, Lcom/annimon/stream/operator/DoubleFilterIndexed;->nextIteration()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNextEvaluated:Z

    .line 26
    :cond_a
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNext:Z

    return v0
.end method

.method public nextDouble()D
    .registers 3

    .line 31
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNextEvaluated:Z

    if-nez v0, :cond_a

    .line 32
    invoke-virtual {p0}, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNext:Z

    .line 34
    :cond_a
    iget-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNext:Z

    if-nez v0, :cond_14

    .line 35
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_14
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->hasNextEvaluated:Z

    .line 38
    iget-wide v0, p0, Lcom/annimon/stream/operator/DoubleFilterIndexed;->next:D

    return-wide v0
.end method

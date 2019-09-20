.class public Lcom/annimon/stream/operator/IntFilter;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "IntFilter.java"


# instance fields
.field private hasNext:Z

.field private hasNextEvaluated:Z

.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private next:I

.field private final predicate:Lcom/annimon/stream/function/IntPredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/annimon/stream/operator/IntFilter;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 16
    iput-object p2, p0, Lcom/annimon/stream/operator/IntFilter;->predicate:Lcom/annimon/stream/function/IntPredicate;

    return-void
.end method

.method private nextIteration()V
    .registers 3

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFilter;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 42
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFilter;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/annimon/stream/operator/IntFilter;->next:I

    .line 43
    iget-object v0, p0, Lcom/annimon/stream/operator/IntFilter;->predicate:Lcom/annimon/stream/function/IntPredicate;

    iget v1, p0, Lcom/annimon/stream/operator/IntFilter;->next:I

    invoke-interface {v0, v1}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNext:Z

    return-void

    :cond_1e
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNextEvaluated:Z

    if-nez v0, :cond_a

    .line 22
    invoke-direct {p0}, Lcom/annimon/stream/operator/IntFilter;->nextIteration()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNextEvaluated:Z

    .line 25
    :cond_a
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNext:Z

    return v0
.end method

.method public nextInt()I
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNextEvaluated:Z

    if-nez v0, :cond_a

    .line 31
    invoke-virtual {p0}, Lcom/annimon/stream/operator/IntFilter;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNext:Z

    .line 33
    :cond_a
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNext:Z

    if-nez v0, :cond_14

    .line 34
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_14
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntFilter;->hasNextEvaluated:Z

    .line 37
    iget v0, p0, Lcom/annimon/stream/operator/IntFilter;->next:I

    return v0
.end method

.class public Lcom/annimon/stream/operator/IntTakeUntil;
.super Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;
.source "IntTakeUntil.java"


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

.field private final stopPredicate:Lcom/annimon/stream/function/IntPredicate;


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;Lcom/annimon/stream/function/IntPredicate;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveExtIterator$OfInt;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/IntTakeUntil;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/IntTakeUntil;->stopPredicate:Lcom/annimon/stream/function/IntPredicate;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/IntTakeUntil;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntTakeUntil;->isInit:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/annimon/stream/operator/IntTakeUntil;->stopPredicate:Lcom/annimon/stream/function/IntPredicate;

    iget v1, p0, Lcom/annimon/stream/operator/IntTakeUntil;->next:I

    invoke-interface {v0, v1}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-boolean v0, p0, Lcom/annimon/stream/operator/IntTakeUntil;->hasNext:Z

    .line 20
    iget-boolean v0, p0, Lcom/annimon/stream/operator/IntTakeUntil;->hasNext:Z

    if-eqz v0, :cond_2b

    .line 21
    iget-object v0, p0, Lcom/annimon/stream/operator/IntTakeUntil;->iterator:Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/annimon/stream/operator/IntTakeUntil;->next:I

    :cond_2b
    return-void
.end method

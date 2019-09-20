.class public Lcom/annimon/stream/operator/ObjTakeUntilIndexed;
.super Lcom/annimon/stream/iterator/LsaExtIterator;
.source "ObjTakeUntilIndexed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaExtIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final iterator:Lcom/annimon/stream/iterator/IndexedIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/iterator/IndexedIterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final stopPredicate:Lcom/annimon/stream/function/IndexedPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/annimon/stream/iterator/IndexedIterator;Lcom/annimon/stream/function/IndexedPredicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/iterator/IndexedIterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/IndexedPredicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaExtIterator;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->stopPredicate:Lcom/annimon/stream/function/IndexedPredicate;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .registers 4

    .line 19
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->isInit:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->stopPredicate:Lcom/annimon/stream/function/IndexedPredicate;

    iget-object v1, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/IndexedIterator;->getIndex()I

    move-result v1

    iget-object v2, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->next:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/annimon/stream/function/IndexedPredicate;->test(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->hasNext:Z

    .line 20
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->hasNext:Z

    if-eqz v0, :cond_2d

    .line 21
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjTakeUntilIndexed;->next:Ljava/lang/Object;

    :cond_2d
    return-void
.end method

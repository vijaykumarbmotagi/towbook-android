.class public Lcom/annimon/stream/operator/ObjDropWhileIndexed;
.super Lcom/annimon/stream/iterator/LsaExtIterator;
.source "ObjDropWhileIndexed.java"


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

.field private final predicate:Lcom/annimon/stream/function/IndexedPredicate;
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
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->predicate:Lcom/annimon/stream/function/IndexedPredicate;

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .registers 4

    .line 19
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->isInit:Z

    if-nez v0, :cond_27

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->hasNext:Z

    if-eqz v0, :cond_27

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->getIndex()I

    move-result v0

    .line 23
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v1}, Lcom/annimon/stream/iterator/IndexedIterator;->next()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->next:Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->predicate:Lcom/annimon/stream/function/IndexedPredicate;

    iget-object v2, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->next:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/annimon/stream/function/IndexedPredicate;->test(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 30
    :cond_27
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->hasNext:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    iput-boolean v0, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->hasNext:Z

    .line 31
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->hasNext:Z

    if-nez v0, :cond_3d

    return-void

    .line 33
    :cond_3d
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->iterator:Lcom/annimon/stream/iterator/IndexedIterator;

    invoke-virtual {v0}, Lcom/annimon/stream/iterator/IndexedIterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjDropWhileIndexed;->next:Ljava/lang/Object;

    return-void
.end method

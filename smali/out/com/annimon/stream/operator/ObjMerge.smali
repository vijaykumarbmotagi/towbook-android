.class public Lcom/annimon/stream/operator/ObjMerge;
.super Lcom/annimon/stream/iterator/LsaIterator;
.source "ObjMerge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/annimon/stream/operator/ObjMerge$MergeResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/annimon/stream/iterator/LsaIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final buffer1:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final buffer2:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final iterator1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final iterator2:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final selector:Lcom/annimon/stream/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/BiFunction<",
            "-TT;-TT;",
            "Lcom/annimon/stream/operator/ObjMerge$MergeResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/annimon/stream/function/BiFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TT;-TT;",
            "Lcom/annimon/stream/operator/ObjMerge$MergeResult;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaIterator;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjMerge;->iterator1:Ljava/util/Iterator;

    .line 24
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjMerge;->iterator2:Ljava/util/Iterator;

    .line 25
    iput-object p3, p0, Lcom/annimon/stream/operator/ObjMerge;->selector:Lcom/annimon/stream/function/BiFunction;

    .line 26
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/annimon/stream/operator/ObjMerge;->buffer1:Ljava/util/Queue;

    .line 27
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/annimon/stream/operator/ObjMerge;->buffer2:Ljava/util/Queue;

    return-void
.end method

.method private select(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->selector:Lcom/annimon/stream/function/BiFunction;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    .line 65
    sget-object v1, Lcom/annimon/stream/operator/ObjMerge$1;->$SwitchMap$com$annimon$stream$operator$ObjMerge$MergeResult:[I

    invoke-virtual {v0}, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    .line 72
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->buffer1:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p2

    .line 67
    :cond_19
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->buffer2:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->buffer1:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->buffer2:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->iterator1:Ljava/util/Iterator;

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->iterator2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method public nextIteration()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->buffer1:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 39
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->buffer1:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjMerge;->iterator2:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 41
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjMerge;->iterator2:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/annimon/stream/operator/ObjMerge;->select(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_21
    return-object v0

    .line 45
    :cond_22
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->buffer2:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 46
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->buffer2:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjMerge;->iterator1:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 48
    iget-object v1, p0, Lcom/annimon/stream/operator/ObjMerge;->iterator1:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/annimon/stream/operator/ObjMerge;->select(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_43
    return-object v0

    .line 53
    :cond_44
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->iterator1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_53

    .line 54
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->iterator2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 56
    :cond_53
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->iterator2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_62

    .line 57
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->iterator1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 60
    :cond_62
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjMerge;->iterator1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/annimon/stream/operator/ObjMerge;->iterator2:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/annimon/stream/operator/ObjMerge;->select(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

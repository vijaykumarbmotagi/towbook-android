.class public Lcom/annimon/stream/operator/ObjConcat;
.super Lcom/annimon/stream/iterator/LsaExtIterator;
.source "ObjConcat.java"


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
.field private firstStreamIsCurrent:Z

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


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/annimon/stream/iterator/LsaExtIterator;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/annimon/stream/operator/ObjConcat;->iterator1:Ljava/util/Iterator;

    .line 14
    iput-object p2, p0, Lcom/annimon/stream/operator/ObjConcat;->iterator2:Ljava/util/Iterator;

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/annimon/stream/operator/ObjConcat;->firstStreamIsCurrent:Z

    return-void
.end method


# virtual methods
.method protected nextIteration()V
    .registers 4

    .line 20
    iget-boolean v0, p0, Lcom/annimon/stream/operator/ObjConcat;->firstStreamIsCurrent:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 21
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjConcat;->iterator1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 22
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjConcat;->iterator1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjConcat;->next:Ljava/lang/Object;

    .line 23
    iput-boolean v2, p0, Lcom/annimon/stream/operator/ObjConcat;->hasNext:Z

    return-void

    .line 26
    :cond_19
    iput-boolean v1, p0, Lcom/annimon/stream/operator/ObjConcat;->firstStreamIsCurrent:Z

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjConcat;->iterator2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 29
    iget-object v0, p0, Lcom/annimon/stream/operator/ObjConcat;->iterator2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/annimon/stream/operator/ObjConcat;->next:Ljava/lang/Object;

    .line 30
    iput-boolean v2, p0, Lcom/annimon/stream/operator/ObjConcat;->hasNext:Z

    return-void

    .line 33
    :cond_2e
    iput-boolean v1, p0, Lcom/annimon/stream/operator/ObjConcat;->hasNext:Z

    return-void
.end method

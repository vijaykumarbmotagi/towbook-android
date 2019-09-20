.class final Lcom/annimon/stream/function/IndexedConsumer$Util$2;
.super Ljava/lang/Object;
.source "IndexedConsumer.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedConsumer$Util;->accept(Lcom/annimon/stream/function/IntConsumer;Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/function/IndexedConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/IndexedConsumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$c1:Lcom/annimon/stream/function/IntConsumer;

.field final synthetic val$c2:Lcom/annimon/stream/function/Consumer;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/IntConsumer;Lcom/annimon/stream/function/Consumer;)V
    .registers 3

    .line 63
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedConsumer$Util$2;->val$c1:Lcom/annimon/stream/function/IntConsumer;

    iput-object p2, p0, Lcom/annimon/stream/function/IndexedConsumer$Util$2;->val$c2:Lcom/annimon/stream/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/annimon/stream/function/IndexedConsumer$Util$2;->val$c1:Lcom/annimon/stream/function/IntConsumer;

    if-eqz v0, :cond_9

    .line 68
    iget-object v0, p0, Lcom/annimon/stream/function/IndexedConsumer$Util$2;->val$c1:Lcom/annimon/stream/function/IntConsumer;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/IntConsumer;->accept(I)V

    .line 70
    :cond_9
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedConsumer$Util$2;->val$c2:Lcom/annimon/stream/function/Consumer;

    if-eqz p1, :cond_12

    .line 71
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedConsumer$Util$2;->val$c2:Lcom/annimon/stream/function/Consumer;

    invoke-interface {p1, p2}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

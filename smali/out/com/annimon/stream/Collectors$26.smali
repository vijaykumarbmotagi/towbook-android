.class final Lcom/annimon/stream/Collectors$26;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->summingDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiConsumer<",
        "[DTT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$mapper:Lcom/annimon/stream/function/ToDoubleFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ToDoubleFunction;)V
    .registers 2

    .line 608
    iput-object p1, p0, Lcom/annimon/stream/Collectors$26;->val$mapper:Lcom/annimon/stream/function/ToDoubleFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 608
    check-cast p1, [D

    invoke-virtual {p0, p1, p2}, Lcom/annimon/stream/Collectors$26;->accept([DLjava/lang/Object;)V

    return-void
.end method

.method public accept([DLjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([DTT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 611
    aget-wide v1, p1, v0

    iget-object v3, p0, Lcom/annimon/stream/Collectors$26;->val$mapper:Lcom/annimon/stream/function/ToDoubleFunction;

    invoke-interface {v3, p2}, Lcom/annimon/stream/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v3

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

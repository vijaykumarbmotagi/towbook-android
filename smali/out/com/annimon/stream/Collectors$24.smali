.class final Lcom/annimon/stream/Collectors$24;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->summingLong(Lcom/annimon/stream/function/ToLongFunction;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiConsumer<",
        "[JTT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$mapper:Lcom/annimon/stream/function/ToLongFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ToLongFunction;)V
    .registers 2

    .line 579
    iput-object p1, p0, Lcom/annimon/stream/Collectors$24;->val$mapper:Lcom/annimon/stream/function/ToLongFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 579
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Lcom/annimon/stream/Collectors$24;->accept([JLjava/lang/Object;)V

    return-void
.end method

.method public accept([JLjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JTT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 582
    aget-wide v1, p1, v0

    iget-object v3, p0, Lcom/annimon/stream/Collectors$24;->val$mapper:Lcom/annimon/stream/function/ToLongFunction;

    invoke-interface {v3, p2}, Lcom/annimon/stream/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long v5, v1, v3

    aput-wide v5, p1, v0

    return-void
.end method

.class final Lcom/annimon/stream/Collectors$39;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->groupingBy(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiConsumer<",
        "Ljava/util/Map<",
        "TK;TA;>;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$classifier:Lcom/annimon/stream/function/Function;

.field final synthetic val$downstream:Lcom/annimon/stream/Collector;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/Collector;)V
    .registers 3

    .line 917
    iput-object p1, p0, Lcom/annimon/stream/Collectors$39;->val$classifier:Lcom/annimon/stream/function/Function;

    iput-object p2, p0, Lcom/annimon/stream/Collectors$39;->val$downstream:Lcom/annimon/stream/Collector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 917
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/annimon/stream/Collectors$39;->accept(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/util/Map;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TA;>;TT;)V"
        }
    .end annotation

    .line 920
    iget-object v0, p0, Lcom/annimon/stream/Collectors$39;->val$classifier:Lcom/annimon/stream/function/Function;

    invoke-interface {v0, p2}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 922
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 925
    iget-object v1, p0, Lcom/annimon/stream/Collectors$39;->val$downstream:Lcom/annimon/stream/Collector;

    invoke-interface {v1}, Lcom/annimon/stream/Collector;->supplier()Lcom/annimon/stream/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Lcom/annimon/stream/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    .line 926
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    :cond_1f
    iget-object p1, p0, Lcom/annimon/stream/Collectors$39;->val$downstream:Lcom/annimon/stream/Collector;

    invoke-interface {p1}, Lcom/annimon/stream/Collector;->accumulator()Lcom/annimon/stream/function/BiConsumer;

    move-result-object p1

    invoke-interface {p1, v1, p2}, Lcom/annimon/stream/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

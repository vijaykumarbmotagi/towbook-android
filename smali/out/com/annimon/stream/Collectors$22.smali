.class final Lcom/annimon/stream/Collectors$22;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->summingInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiConsumer<",
        "[ITT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$mapper:Lcom/annimon/stream/function/ToIntFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ToIntFunction;)V
    .registers 2

    .line 550
    iput-object p1, p0, Lcom/annimon/stream/Collectors$22;->val$mapper:Lcom/annimon/stream/function/ToIntFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 550
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Lcom/annimon/stream/Collectors$22;->accept([ILjava/lang/Object;)V

    return-void
.end method

.method public accept([ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([ITT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 553
    aget v1, p1, v0

    iget-object v2, p0, Lcom/annimon/stream/Collectors$22;->val$mapper:Lcom/annimon/stream/function/ToIntFunction;

    invoke-interface {v2, p2}, Lcom/annimon/stream/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr v1, p2

    aput v1, p1, v0

    return-void
.end method

.class final Lcom/annimon/stream/Collectors$36;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->mapping(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/Collector;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiConsumer<",
        "TA;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Lcom/annimon/stream/function/BiConsumer;

.field final synthetic val$mapper:Lcom/annimon/stream/function/Function;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V
    .registers 3

    .line 766
    iput-object p1, p0, Lcom/annimon/stream/Collectors$36;->val$accumulator:Lcom/annimon/stream/function/BiConsumer;

    iput-object p2, p0, Lcom/annimon/stream/Collectors$36;->val$mapper:Lcom/annimon/stream/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TT;)V"
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lcom/annimon/stream/Collectors$36;->val$accumulator:Lcom/annimon/stream/function/BiConsumer;

    iget-object v1, p0, Lcom/annimon/stream/Collectors$36;->val$mapper:Lcom/annimon/stream/function/Function;

    invoke-interface {v1, p2}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

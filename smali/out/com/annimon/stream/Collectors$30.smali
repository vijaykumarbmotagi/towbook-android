.class final Lcom/annimon/stream/Collectors$30;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->reducing(Ljava/lang/Object;Lcom/annimon/stream/function/BinaryOperator;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BiConsumer<",
        "Lcom/annimon/stream/Collectors$Tuple1<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$op:Lcom/annimon/stream/function/BinaryOperator;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/BinaryOperator;)V
    .registers 2

    .line 659
    iput-object p1, p0, Lcom/annimon/stream/Collectors$30;->val$op:Lcom/annimon/stream/function/BinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/annimon/stream/Collectors$Tuple1;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/Collectors$Tuple1<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/annimon/stream/Collectors$30;->val$op:Lcom/annimon/stream/function/BinaryOperator;

    iget-object v1, p1, Lcom/annimon/stream/Collectors$Tuple1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Lcom/annimon/stream/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p1, Lcom/annimon/stream/Collectors$Tuple1;->a:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 659
    check-cast p1, Lcom/annimon/stream/Collectors$Tuple1;

    invoke-virtual {p0, p1, p2}, Lcom/annimon/stream/Collectors$30;->accept(Lcom/annimon/stream/Collectors$Tuple1;Ljava/lang/Object;)V

    return-void
.end method

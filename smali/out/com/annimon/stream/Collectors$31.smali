.class final Lcom/annimon/stream/Collectors$31;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/Function;


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
        "Lcom/annimon/stream/function/Function<",
        "Lcom/annimon/stream/Collectors$Tuple1<",
        "TT;>;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/annimon/stream/Collectors$Tuple1;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/Collectors$Tuple1<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 669
    iget-object p1, p1, Lcom/annimon/stream/Collectors$Tuple1;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 666
    check-cast p1, Lcom/annimon/stream/Collectors$Tuple1;

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Collectors$31;->apply(Lcom/annimon/stream/Collectors$Tuple1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

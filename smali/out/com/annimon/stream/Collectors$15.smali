.class final Lcom/annimon/stream/Collectors$15;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/ToDoubleFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->averaging(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/ToDoubleFunction<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$mapper:Lcom/annimon/stream/function/Function;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Function;)V
    .registers 2

    .line 439
    iput-object p1, p0, Lcom/annimon/stream/Collectors$15;->val$mapper:Lcom/annimon/stream/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsDouble(Ljava/lang/Object;)D
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/annimon/stream/Collectors$15;->val$mapper:Lcom/annimon/stream/function/Function;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

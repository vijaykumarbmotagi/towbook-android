.class final Lcom/annimon/stream/DoubleStream$5;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Lcom/annimon/stream/function/ToDoubleFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/ToDoubleFunction<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsDouble(Ljava/lang/Double;)D
    .registers 4

    .line 1218
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    .line 1215
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/annimon/stream/DoubleStream$5;->applyAsDouble(Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0
.end method

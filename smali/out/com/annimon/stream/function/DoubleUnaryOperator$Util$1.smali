.class final Lcom/annimon/stream/function/DoubleUnaryOperator$Util$1;
.super Ljava/lang/Object;
.source "DoubleUnaryOperator.java"

# interfaces
.implements Lcom/annimon/stream/function/DoubleUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/DoubleUnaryOperator$Util;->identity()Lcom/annimon/stream/function/DoubleUnaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsDouble(D)D
    .registers 3

    return-wide p1
.end method

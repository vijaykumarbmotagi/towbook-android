.class final Lcom/annimon/stream/function/IntUnaryOperator$Util$1;
.super Ljava/lang/Object;
.source "IntUnaryOperator.java"

# interfaces
.implements Lcom/annimon/stream/function/IntUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IntUnaryOperator$Util;->identity()Lcom/annimon/stream/function/IntUnaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsInt(I)I
    .registers 2

    return p1
.end method

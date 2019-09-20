.class final Lcom/annimon/stream/function/LongUnaryOperator$Util$1;
.super Ljava/lang/Object;
.source "LongUnaryOperator.java"

# interfaces
.implements Lcom/annimon/stream/function/LongUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/LongUnaryOperator$Util;->identity()Lcom/annimon/stream/function/LongUnaryOperator;
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
.method public applyAsLong(J)J
    .registers 3

    return-wide p1
.end method

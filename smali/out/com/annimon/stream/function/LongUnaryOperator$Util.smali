.class public Lcom/annimon/stream/function/LongUnaryOperator$Util;
.super Ljava/lang/Object;
.source "LongUnaryOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/LongUnaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static identity()Lcom/annimon/stream/function/LongUnaryOperator;
    .registers 1

    .line 30
    new-instance v0, Lcom/annimon/stream/function/LongUnaryOperator$Util$1;

    invoke-direct {v0}, Lcom/annimon/stream/function/LongUnaryOperator$Util$1;-><init>()V

    return-object v0
.end method

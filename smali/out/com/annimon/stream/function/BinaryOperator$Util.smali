.class public Lcom/annimon/stream/function/BinaryOperator$Util;
.super Ljava/lang/Object;
.source "BinaryOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/BinaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maxBy(Ljava/util/Comparator;)Lcom/annimon/stream/function/BinaryOperator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/annimon/stream/function/BinaryOperator$Util$2;

    invoke-direct {v0, p0}, Lcom/annimon/stream/function/BinaryOperator$Util$2;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static minBy(Ljava/util/Comparator;)Lcom/annimon/stream/function/BinaryOperator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/annimon/stream/function/BinaryOperator$Util$1;

    invoke-direct {v0, p0}, Lcom/annimon/stream/function/BinaryOperator$Util$1;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

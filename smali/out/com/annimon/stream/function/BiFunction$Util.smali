.class public Lcom/annimon/stream/function/BiFunction$Util;
.super Ljava/lang/Object;
.source "BiFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/BiFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static andThen(Lcom/annimon/stream/function/BiFunction;Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/function/BiFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TT;-TU;+TR;>;",
            "Lcom/annimon/stream/function/Function<",
            "-TR;+TV;>;)",
            "Lcom/annimon/stream/function/BiFunction<",
            "TT;TU;TV;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/annimon/stream/function/BiFunction$Util$1;

    invoke-direct {v0, p1, p0}, Lcom/annimon/stream/function/BiFunction$Util$1;-><init>(Lcom/annimon/stream/function/Function;Lcom/annimon/stream/function/BiFunction;)V

    return-object v0
.end method

.method public static reverse(Lcom/annimon/stream/function/BiFunction;)Lcom/annimon/stream/function/BiFunction;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/BiFunction<",
            "-TT;-TU;+TR;>;)",
            "Lcom/annimon/stream/function/BiFunction<",
            "TU;TT;TR;>;"
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/annimon/stream/function/BiFunction$Util$2;

    invoke-direct {v0, p0}, Lcom/annimon/stream/function/BiFunction$Util$2;-><init>(Lcom/annimon/stream/function/BiFunction;)V

    return-object v0
.end method

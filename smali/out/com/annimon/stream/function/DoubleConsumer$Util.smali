.class public Lcom/annimon/stream/function/DoubleConsumer$Util;
.super Ljava/lang/Object;
.source "DoubleConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/DoubleConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static andThen(Lcom/annimon/stream/function/DoubleConsumer;Lcom/annimon/stream/function/DoubleConsumer;)Lcom/annimon/stream/function/DoubleConsumer;
    .registers 3

    .line 33
    new-instance v0, Lcom/annimon/stream/function/DoubleConsumer$Util$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/DoubleConsumer$Util$1;-><init>(Lcom/annimon/stream/function/DoubleConsumer;Lcom/annimon/stream/function/DoubleConsumer;)V

    return-object v0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableDoubleConsumer;)Lcom/annimon/stream/function/DoubleConsumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableDoubleConsumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/DoubleConsumer;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-static {p0, v0}, Lcom/annimon/stream/function/DoubleConsumer$Util;->safe(Lcom/annimon/stream/function/ThrowableDoubleConsumer;Lcom/annimon/stream/function/DoubleConsumer;)Lcom/annimon/stream/function/DoubleConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableDoubleConsumer;Lcom/annimon/stream/function/DoubleConsumer;)Lcom/annimon/stream/function/DoubleConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableDoubleConsumer<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/annimon/stream/function/DoubleConsumer;",
            ")",
            "Lcom/annimon/stream/function/DoubleConsumer;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/annimon/stream/function/DoubleConsumer$Util$2;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/DoubleConsumer$Util$2;-><init>(Lcom/annimon/stream/function/ThrowableDoubleConsumer;Lcom/annimon/stream/function/DoubleConsumer;)V

    return-object v0
.end method

.class public Lcom/annimon/stream/function/IndexedConsumer$Util;
.super Ljava/lang/Object;
.source "IndexedConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/IndexedConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(Lcom/annimon/stream/function/IntConsumer;Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/function/IndexedConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/IntConsumer;",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/IndexedConsumer<",
            "TT;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/annimon/stream/function/IndexedConsumer$Util$2;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/IndexedConsumer$Util$2;-><init>(Lcom/annimon/stream/function/IntConsumer;Lcom/annimon/stream/function/Consumer;)V

    return-object v0
.end method

.method public static wrap(Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/function/IndexedConsumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/annimon/stream/function/Consumer<",
            "-TT;>;)",
            "Lcom/annimon/stream/function/IndexedConsumer<",
            "TT;>;"
        }
    .end annotation

    .line 35
    invoke-static {p0}, Lcom/annimon/stream/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Lcom/annimon/stream/function/IndexedConsumer$Util$1;

    invoke-direct {v0, p0}, Lcom/annimon/stream/function/IndexedConsumer$Util$1;-><init>(Lcom/annimon/stream/function/Consumer;)V

    return-object v0
.end method

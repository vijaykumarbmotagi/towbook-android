.class public Lcom/annimon/stream/function/LongSupplier$Util;
.super Ljava/lang/Object;
.source "LongSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/LongSupplier;
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

.method public static safe(Lcom/annimon/stream/function/ThrowableLongSupplier;)Lcom/annimon/stream/function/LongSupplier;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableLongSupplier<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/LongSupplier;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 32
    invoke-static {p0, v0, v1}, Lcom/annimon/stream/function/LongSupplier$Util;->safe(Lcom/annimon/stream/function/ThrowableLongSupplier;J)Lcom/annimon/stream/function/LongSupplier;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableLongSupplier;J)Lcom/annimon/stream/function/LongSupplier;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableLongSupplier<",
            "Ljava/lang/Throwable;",
            ">;J)",
            "Lcom/annimon/stream/function/LongSupplier;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/annimon/stream/function/LongSupplier$Util$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/annimon/stream/function/LongSupplier$Util$1;-><init>(Lcom/annimon/stream/function/ThrowableLongSupplier;J)V

    return-object v0
.end method

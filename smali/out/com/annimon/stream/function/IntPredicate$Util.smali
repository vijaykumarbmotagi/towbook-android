.class public Lcom/annimon/stream/function/IntPredicate$Util;
.super Ljava/lang/Object;
.source "IntPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/IntPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(Lcom/annimon/stream/function/IntPredicate;Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/function/IntPredicate;
    .registers 3

    .line 29
    new-instance v0, Lcom/annimon/stream/function/IntPredicate$Util$1;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/IntPredicate$Util$1;-><init>(Lcom/annimon/stream/function/IntPredicate;Lcom/annimon/stream/function/IntPredicate;)V

    return-object v0
.end method

.method public static negate(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/function/IntPredicate;
    .registers 2

    .line 79
    new-instance v0, Lcom/annimon/stream/function/IntPredicate$Util$4;

    invoke-direct {v0, p0}, Lcom/annimon/stream/function/IntPredicate$Util$4;-><init>(Lcom/annimon/stream/function/IntPredicate;)V

    return-object v0
.end method

.method public static or(Lcom/annimon/stream/function/IntPredicate;Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/function/IntPredicate;
    .registers 3

    .line 46
    new-instance v0, Lcom/annimon/stream/function/IntPredicate$Util$2;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/IntPredicate$Util$2;-><init>(Lcom/annimon/stream/function/IntPredicate;Lcom/annimon/stream/function/IntPredicate;)V

    return-object v0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableIntPredicate;)Lcom/annimon/stream/function/IntPredicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableIntPredicate<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/annimon/stream/function/IntPredicate;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    invoke-static {p0, v0}, Lcom/annimon/stream/function/IntPredicate$Util;->safe(Lcom/annimon/stream/function/ThrowableIntPredicate;Z)Lcom/annimon/stream/function/IntPredicate;

    move-result-object p0

    return-object p0
.end method

.method public static safe(Lcom/annimon/stream/function/ThrowableIntPredicate;Z)Lcom/annimon/stream/function/IntPredicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/ThrowableIntPredicate<",
            "Ljava/lang/Throwable;",
            ">;Z)",
            "Lcom/annimon/stream/function/IntPredicate;"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/annimon/stream/function/IntPredicate$Util$5;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/IntPredicate$Util$5;-><init>(Lcom/annimon/stream/function/ThrowableIntPredicate;Z)V

    return-object v0
.end method

.method public static xor(Lcom/annimon/stream/function/IntPredicate;Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/function/IntPredicate;
    .registers 3

    .line 63
    new-instance v0, Lcom/annimon/stream/function/IntPredicate$Util$3;

    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/IntPredicate$Util$3;-><init>(Lcom/annimon/stream/function/IntPredicate;Lcom/annimon/stream/function/IntPredicate;)V

    return-object v0
.end method

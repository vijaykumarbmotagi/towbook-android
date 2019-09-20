.class final Lcom/annimon/stream/function/Function$Util$2;
.super Ljava/lang/Object;
.source "Function.java"

# interfaces
.implements Lcom/annimon/stream/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/Function$Util;->safe(Lcom/annimon/stream/function/ThrowableFunction;Ljava/lang/Object;)Lcom/annimon/stream/function/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Function<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:Ljava/lang/Object;

.field final synthetic val$throwableFunction:Lcom/annimon/stream/function/ThrowableFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableFunction;Ljava/lang/Object;)V
    .registers 3

    .line 98
    iput-object p1, p0, Lcom/annimon/stream/function/Function$Util$2;->val$throwableFunction:Lcom/annimon/stream/function/ThrowableFunction;

    iput-object p2, p0, Lcom/annimon/stream/function/Function$Util$2;->val$resultIfFailed:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/Function$Util$2;->val$throwableFunction:Lcom/annimon/stream/function/ThrowableFunction;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/ThrowableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 105
    :catch_7
    iget-object p1, p0, Lcom/annimon/stream/function/Function$Util$2;->val$resultIfFailed:Ljava/lang/Object;

    return-object p1
.end method

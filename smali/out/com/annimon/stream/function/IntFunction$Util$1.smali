.class final Lcom/annimon/stream/function/IntFunction$Util$1;
.super Ljava/lang/Object;
.source "IntFunction.java"

# interfaces
.implements Lcom/annimon/stream/function/IntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IntFunction$Util;->safe(Lcom/annimon/stream/function/ThrowableIntFunction;Ljava/lang/Object;)Lcom/annimon/stream/function/IntFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/IntFunction<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:Ljava/lang/Object;

.field final synthetic val$throwableFunction:Lcom/annimon/stream/function/ThrowableIntFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableIntFunction;Ljava/lang/Object;)V
    .registers 3

    .line 57
    iput-object p1, p0, Lcom/annimon/stream/function/IntFunction$Util$1;->val$throwableFunction:Lcom/annimon/stream/function/ThrowableIntFunction;

    iput-object p2, p0, Lcom/annimon/stream/function/IntFunction$Util$1;->val$resultIfFailed:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TR;"
        }
    .end annotation

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/IntFunction$Util$1;->val$throwableFunction:Lcom/annimon/stream/function/ThrowableIntFunction;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/ThrowableIntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 64
    :catch_7
    iget-object p1, p0, Lcom/annimon/stream/function/IntFunction$Util$1;->val$resultIfFailed:Ljava/lang/Object;

    return-object p1
.end method

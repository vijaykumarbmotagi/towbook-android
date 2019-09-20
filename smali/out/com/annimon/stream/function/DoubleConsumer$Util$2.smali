.class final Lcom/annimon/stream/function/DoubleConsumer$Util$2;
.super Ljava/lang/Object;
.source "DoubleConsumer.java"

# interfaces
.implements Lcom/annimon/stream/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/DoubleConsumer$Util;->safe(Lcom/annimon/stream/function/ThrowableDoubleConsumer;Lcom/annimon/stream/function/DoubleConsumer;)Lcom/annimon/stream/function/DoubleConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onFailedConsumer:Lcom/annimon/stream/function/DoubleConsumer;

.field final synthetic val$throwableConsumer:Lcom/annimon/stream/function/ThrowableDoubleConsumer;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableDoubleConsumer;Lcom/annimon/stream/function/DoubleConsumer;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/annimon/stream/function/DoubleConsumer$Util$2;->val$throwableConsumer:Lcom/annimon/stream/function/ThrowableDoubleConsumer;

    iput-object p2, p0, Lcom/annimon/stream/function/DoubleConsumer$Util$2;->val$onFailedConsumer:Lcom/annimon/stream/function/DoubleConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 4

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/DoubleConsumer$Util$2;->val$throwableConsumer:Lcom/annimon/stream/function/ThrowableDoubleConsumer;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/ThrowableDoubleConsumer;->accept(D)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_f

    .line 75
    :catch_6
    iget-object v0, p0, Lcom/annimon/stream/function/DoubleConsumer$Util$2;->val$onFailedConsumer:Lcom/annimon/stream/function/DoubleConsumer;

    if-eqz v0, :cond_f

    .line 76
    iget-object v0, p0, Lcom/annimon/stream/function/DoubleConsumer$Util$2;->val$onFailedConsumer:Lcom/annimon/stream/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/DoubleConsumer;->accept(D)V

    :cond_f
    :goto_f
    return-void
.end method

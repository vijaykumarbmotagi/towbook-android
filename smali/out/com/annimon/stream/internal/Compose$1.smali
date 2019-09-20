.class final Lcom/annimon/stream/internal/Compose$1;
.super Ljava/lang/Object;
.source "Compose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/internal/Compose;->runnables(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Ljava/lang/Runnable;

.field final synthetic val$b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 3

    .line 10
    iput-object p1, p0, Lcom/annimon/stream/internal/Compose$1;->val$a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/annimon/stream/internal/Compose$1;->val$b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/internal/Compose$1;->val$a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_b

    .line 24
    iget-object v0, p0, Lcom/annimon/stream/internal/Compose$1;->val$b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catch_b
    move-exception v0

    .line 17
    :try_start_c
    iget-object v1, p0, Lcom/annimon/stream/internal/Compose$1;->val$b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_11

    .line 19
    :catch_11
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_18

    .line 20
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 22
    :cond_18
    check-cast v0, Ljava/lang/Error;

    throw v0
.end method

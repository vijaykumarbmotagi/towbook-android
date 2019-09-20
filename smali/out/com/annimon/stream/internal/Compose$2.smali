.class final Lcom/annimon/stream/internal/Compose$2;
.super Ljava/lang/Object;
.source "Compose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/internal/Compose;->closeables(Ljava/io/Closeable;Ljava/io/Closeable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Ljava/io/Closeable;

.field final synthetic val$b:Ljava/io/Closeable;


# direct methods
.method constructor <init>(Ljava/io/Closeable;Ljava/io/Closeable;)V
    .registers 3

    .line 30
    iput-object p1, p0, Lcom/annimon/stream/internal/Compose$2;->val$a:Ljava/io/Closeable;

    iput-object p2, p0, Lcom/annimon/stream/internal/Compose$2;->val$b:Ljava/io/Closeable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/internal/Compose$2;->val$a:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_20

    .line 45
    :try_start_5
    iget-object v0, p0, Lcom/annimon/stream/internal/Compose$2;->val$b:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    .line 47
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_13

    .line 48
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 49
    :cond_13
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1a

    .line 50
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 52
    :cond_1a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_20
    move-exception v0

    .line 37
    :try_start_21
    iget-object v1, p0, Lcom/annimon/stream/internal/Compose$2;->val$b:Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_26} :catch_26

    .line 39
    :catch_26
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2d

    .line 40
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 42
    :cond_2d
    check-cast v0, Ljava/lang/Error;

    throw v0
.end method

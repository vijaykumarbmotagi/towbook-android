.class Lroboguice/util/SafeAsyncTask$Task$6;
.super Ljava/lang/Object;
.source "SafeAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lroboguice/util/SafeAsyncTask$Task;->postToUiThreadAndWait(Ljava/util/concurrent/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lroboguice/util/SafeAsyncTask$Task;

.field final synthetic val$c:Ljava/util/concurrent/Callable;

.field final synthetic val$exceptions:[Ljava/lang/Exception;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lroboguice/util/SafeAsyncTask$Task;Ljava/util/concurrent/Callable;[Ljava/lang/Exception;Ljava/util/concurrent/CountDownLatch;)V
    .registers 5

    .line 272
    iput-object p1, p0, Lroboguice/util/SafeAsyncTask$Task$6;->this$0:Lroboguice/util/SafeAsyncTask$Task;

    iput-object p2, p0, Lroboguice/util/SafeAsyncTask$Task$6;->val$c:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lroboguice/util/SafeAsyncTask$Task$6;->val$exceptions:[Ljava/lang/Exception;

    iput-object p4, p0, Lroboguice/util/SafeAsyncTask$Task$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 275
    :try_start_0
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask$Task$6;->val$c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 279
    :goto_5
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask$Task$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_14

    :catchall_b
    move-exception v0

    goto :goto_15

    :catch_d
    move-exception v0

    .line 277
    :try_start_e
    iget-object v1, p0, Lroboguice/util/SafeAsyncTask$Task$6;->val$exceptions:[Ljava/lang/Exception;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_b

    goto :goto_5

    :goto_14
    return-void

    .line 279
    :goto_15
    iget-object v1, p0, Lroboguice/util/SafeAsyncTask$Task$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.class public abstract Lroboguice/util/SafeAsyncTask;
.super Ljava/lang/Object;
.source "SafeAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/util/SafeAsyncTask$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TResultT;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final DEFAULT_POOL_SIZE:I = 0x19


# instance fields
.field protected executor:Ljava/util/concurrent/Executor;

.field protected future:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;

.field protected launchLocation:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x19

    .line 29
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lroboguice/util/SafeAsyncTask;->DEFAULT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lroboguice/util/SafeAsyncTask;->DEFAULT_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lroboguice/util/SafeAsyncTask;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lroboguice/util/SafeAsyncTask;->handler:Landroid/os/Handler;

    .line 50
    sget-object p1, Lroboguice/util/SafeAsyncTask;->DEFAULT_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lroboguice/util/SafeAsyncTask;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lroboguice/util/SafeAsyncTask;->handler:Landroid/os/Handler;

    .line 62
    iput-object p2, p0, Lroboguice/util/SafeAsyncTask;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lroboguice/util/SafeAsyncTask;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3

    .line 99
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask;->future:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_c

    .line 100
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You cannot cancel this task before calling future()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_c
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask;->future:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public execute()V
    .registers 2

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lroboguice/util/SafeAsyncTask;->execute([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method protected execute([Ljava/lang/StackTraceElement;)V
    .registers 3

    .line 94
    iput-object p1, p0, Lroboguice/util/SafeAsyncTask;->launchLocation:[Ljava/lang/StackTraceElement;

    .line 95
    iget-object p1, p0, Lroboguice/util/SafeAsyncTask;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0}, Lroboguice/util/SafeAsyncTask;->future()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 77
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public executor(Ljava/util/concurrent/Executor;)Lroboguice/util/SafeAsyncTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lroboguice/util/SafeAsyncTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lroboguice/util/SafeAsyncTask;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public future()Ljava/util/concurrent/FutureTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Lroboguice/util/SafeAsyncTask;->newTask()Lroboguice/util/SafeAsyncTask$Task;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lroboguice/util/SafeAsyncTask;->future:Ljava/util/concurrent/FutureTask;

    .line 68
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask;->future:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method public handler()Landroid/os/Handler;
    .registers 2

    .line 86
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public handler(Landroid/os/Handler;)Lroboguice/util/SafeAsyncTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")",
            "Lroboguice/util/SafeAsyncTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lroboguice/util/SafeAsyncTask;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method protected newTask()Lroboguice/util/SafeAsyncTask$Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lroboguice/util/SafeAsyncTask$Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 154
    new-instance v0, Lroboguice/util/SafeAsyncTask$Task;

    invoke-direct {v0, p0}, Lroboguice/util/SafeAsyncTask$Task;-><init>(Lroboguice/util/SafeAsyncTask;)V

    return-object v0
.end method

.method protected onException(Ljava/lang/Exception;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lroboguice/util/SafeAsyncTask;->onThrowable(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onFinally()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    return-void
.end method

.method protected onInterrupted(Ljava/lang/Exception;)V
    .registers 2

    .line 129
    invoke-virtual {p0, p1}, Lroboguice/util/SafeAsyncTask;->onException(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected onThrowable(Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const-string v0, "roboguice"

    const-string v1, "Throwable caught during background processing"

    .line 144
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

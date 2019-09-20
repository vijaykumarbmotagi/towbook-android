.class public interface abstract Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract executeOnBackgroundThread(Ljava/lang/Runnable;)V
.end method

.method public abstract getBackgroundExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getBackgroundExecutorThread()Ljava/lang/Thread;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getMainThreadExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract postToMainThread(Ljava/lang/Runnable;)V
.end method

.class public final Landroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mExecutor:Ljava/util/concurrent/Executor;

.field mLoggingLevel:I

.field mMaxJobSchedulerId:I

.field mMaxSchedulerLimit:I

.field mMinJobSchedulerId:I

.field mWorkerFactory:Landroidx/work/WorkerFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 154
    iput v0, p0, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    const v0, 0x7fffffff

    .line 156
    iput v0, p0, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    const/16 v0, 0x14

    .line 157
    iput v0, p0, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/work/Configuration;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 258
    new-instance v0, Landroidx/work/Configuration;

    invoke-direct {v0, p0}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    return-object v0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Landroidx/work/Configuration$Builder;
    .registers 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 177
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public setJobSchedulerJobIdRange(II)Landroidx/work/Configuration$Builder;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sub-int v0, p2, p1

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_e

    .line 201
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "WorkManager needs a range of at least 1000 job ids."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_e
    iput p1, p0, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    .line 206
    iput p2, p0, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    return-object p0
.end method

.method public setMaxSchedulerLimit(I)Landroidx/work/Configuration$Builder;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/16 v0, 0x14

    if-ge p1, v0, :cond_c

    .line 229
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "WorkManager needs to be able to schedule at least 20 jobs in JobScheduler."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const/16 v0, 0x32

    .line 233
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    return-object p0
.end method

.method public setMinimumLoggingLevel(I)Landroidx/work/Configuration$Builder;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 248
    iput p1, p0, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    return-object p0
.end method

.method public setWorkerFactory(Landroidx/work/WorkerFactory;)Landroidx/work/Configuration$Builder;
    .registers 2
    .param p1    # Landroidx/work/WorkerFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 166
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->mWorkerFactory:Landroidx/work/WorkerFactory;

    return-object p0
.end method

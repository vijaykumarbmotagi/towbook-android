.class public final Landroidx/work/OneTimeWorkRequest$Builder;
.super Landroidx/work/WorkRequest$Builder;
.source "OneTimeWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/OneTimeWorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/WorkRequest$Builder<",
        "Landroidx/work/OneTimeWorkRequest$Builder;",
        "Landroidx/work/OneTimeWorkRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 82
    iget-object p1, p0, Landroidx/work/OneTimeWorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    const-class v0, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method buildInternal()Landroidx/work/OneTimeWorkRequest;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 130
    iget-boolean v0, p0, Landroidx/work/OneTimeWorkRequest$Builder;->mBackoffCriteriaSet:Z

    if-eqz v0, :cond_1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1c

    iget-object v0, p0, Landroidx/work/OneTimeWorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 132
    invoke-virtual {v0}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1c
    new-instance v0, Landroidx/work/OneTimeWorkRequest;

    invoke-direct {v0, p0}, Landroidx/work/OneTimeWorkRequest;-><init>(Landroidx/work/OneTimeWorkRequest$Builder;)V

    return-object v0
.end method

.method bridge synthetic buildInternal()Landroidx/work/WorkRequest;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 73
    invoke-virtual {p0}, Landroidx/work/OneTimeWorkRequest$Builder;->buildInternal()Landroidx/work/OneTimeWorkRequest;

    move-result-object v0

    return-object v0
.end method

.method getThis()Landroidx/work/OneTimeWorkRequest$Builder;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method bridge synthetic getThis()Landroidx/work/WorkRequest$Builder;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 73
    invoke-virtual {p0}, Landroidx/work/OneTimeWorkRequest$Builder;->getThis()Landroidx/work/OneTimeWorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/OneTimeWorkRequest$Builder;
    .registers 5
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 93
    iget-object v0, p0, Landroidx/work/OneTimeWorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    return-object p0
.end method

.method public setInitialDelay(Ljava/time/Duration;)Landroidx/work/OneTimeWorkRequest$Builder;
    .registers 5
    .param p1    # Ljava/time/Duration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 105
    iget-object v0, p0, Landroidx/work/OneTimeWorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    return-object p0
.end method

.method public setInputMerger(Ljava/lang/Class;)Landroidx/work/OneTimeWorkRequest$Builder;
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/InputMerger;",
            ">;)",
            "Landroidx/work/OneTimeWorkRequest$Builder;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroidx/work/OneTimeWorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    return-object p0
.end method

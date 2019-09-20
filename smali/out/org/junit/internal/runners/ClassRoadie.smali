.class public Lorg/junit/internal/runners/ClassRoadie;
.super Ljava/lang/Object;
.source "ClassRoadie.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private description:Lorg/junit/runner/Description;

.field private notifier:Lorg/junit/runner/notification/RunNotifier;

.field private final runnable:Ljava/lang/Runnable;

.field private testClass:Lorg/junit/internal/runners/TestClass;


# direct methods
.method public constructor <init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/internal/runners/TestClass;Lorg/junit/runner/Description;Ljava/lang/Runnable;)V
    .registers 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/junit/internal/runners/ClassRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    .line 28
    iput-object p2, p0, Lorg/junit/internal/runners/ClassRoadie;->testClass:Lorg/junit/internal/runners/TestClass;

    .line 29
    iput-object p3, p0, Lorg/junit/internal/runners/ClassRoadie;->description:Lorg/junit/runner/Description;

    .line 30
    iput-object p4, p0, Lorg/junit/internal/runners/ClassRoadie;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method private runAfters()V
    .registers 5

    .line 70
    iget-object v0, p0, Lorg/junit/internal/runners/ClassRoadie;->testClass:Lorg/junit/internal/runners/TestClass;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestClass;->getAfters()Ljava/util/List;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 73
    :try_start_18
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_1d} :catch_23
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_a

    :catch_1e
    move-exception v1

    .line 77
    invoke-virtual {p0, v1}, Lorg/junit/internal/runners/ClassRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_23
    move-exception v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/junit/internal/runners/ClassRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_2c
    return-void
.end method

.method private runBefores()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/runners/FailedBefore;
        }
    .end annotation

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/runners/ClassRoadie;->testClass:Lorg/junit/internal/runners/TestClass;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestClass;->getBefores()Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 56
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1d} :catch_21
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_1d} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1f

    goto :goto_a

    :cond_1e
    return-void

    :catch_1f
    move-exception v0

    goto :goto_27

    :catch_21
    move-exception v0

    .line 59
    :try_start_22
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
    :try_end_27
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_22 .. :try_end_27} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_27} :catch_1f

    .line 64
    :goto_27
    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/ClassRoadie;->addFailure(Ljava/lang/Throwable;)V

    .line 65
    new-instance v0, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v0}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v0

    .line 62
    :catch_30
    new-instance v0, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v0}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v0
.end method


# virtual methods
.method protected addFailure(Ljava/lang/Throwable;)V
    .registers 5

    .line 38
    iget-object v0, p0, Lorg/junit/internal/runners/ClassRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lorg/junit/internal/runners/ClassRoadie;->description:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    return-void
.end method

.method public runProtected()V
    .registers 2

    .line 43
    :try_start_0
    invoke-direct {p0}, Lorg/junit/internal/runners/ClassRoadie;->runBefores()V

    .line 44
    invoke-virtual {p0}, Lorg/junit/internal/runners/ClassRoadie;->runUnprotected()V
    :try_end_6
    .catch Lorg/junit/internal/runners/FailedBefore; {:try_start_0 .. :try_end_6} :catch_c
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    .line 47
    invoke-direct {p0}, Lorg/junit/internal/runners/ClassRoadie;->runAfters()V

    throw v0

    :catch_c
    :goto_c
    invoke-direct {p0}, Lorg/junit/internal/runners/ClassRoadie;->runAfters()V

    return-void
.end method

.method protected runUnprotected()V
    .registers 2

    .line 34
    iget-object v0, p0, Lorg/junit/internal/runners/ClassRoadie;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
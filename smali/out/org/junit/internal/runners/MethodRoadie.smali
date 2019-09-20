.class public Lorg/junit/internal/runners/MethodRoadie;
.super Ljava/lang/Object;
.source "MethodRoadie.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final description:Lorg/junit/runner/Description;

.field private final notifier:Lorg/junit/runner/notification/RunNotifier;

.field private final test:Ljava/lang/Object;

.field private testMethod:Lorg/junit/internal/runners/TestMethod;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/junit/internal/runners/TestMethod;Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/junit/internal/runners/MethodRoadie;->test:Ljava/lang/Object;

    .line 34
    iput-object p3, p0, Lorg/junit/internal/runners/MethodRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    .line 35
    iput-object p4, p0, Lorg/junit/internal/runners/MethodRoadie;->description:Lorg/junit/runner/Description;

    .line 36
    iput-object p2, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    return-void
.end method

.method private runAfters()V
    .registers 5

    .line 147
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestMethod;->getAfters()Ljava/util/List;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 150
    :try_start_16
    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->test:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_1e} :catch_24
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1e} :catch_1f

    goto :goto_a

    :catch_1f
    move-exception v1

    .line 154
    invoke-virtual {p0, v1}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_24
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_2d
    return-void
.end method

.method private runBefores()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/runners/FailedBefore;
        }
    .end annotation

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestMethod;->getBefores()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 133
    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->test:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1e} :catch_22
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_1e} :catch_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_20

    goto :goto_a

    :cond_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_28

    :catch_22
    move-exception v0

    .line 136
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
    :try_end_28
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_23 .. :try_end_28} :catch_31
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_28} :catch_20

    .line 141
    :goto_28
    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    .line 142
    new-instance v0, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v0}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v0

    .line 139
    :catch_31
    new-instance v0, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v0}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v0
.end method

.method private runWithTimeout(J)V
    .registers 4

    .line 58
    new-instance v0, Lorg/junit/internal/runners/MethodRoadie$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/junit/internal/runners/MethodRoadie$1;-><init>(Lorg/junit/internal/runners/MethodRoadie;J)V

    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/MethodRoadie;->runBeforesThenTestThenAfters(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected addFailure(Ljava/lang/Throwable;)V
    .registers 5

    .line 160
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->description:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    return-void
.end method

.method public run()V
    .registers 6

    .line 40
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestMethod;->isIgnored()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 41
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v1, p0, Lorg/junit/internal/runners/MethodRoadie;->description:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestIgnored(Lorg/junit/runner/Description;)V

    return-void

    .line 44
    :cond_10
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v1, p0, Lorg/junit/internal/runners/MethodRoadie;->description:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestStarted(Lorg/junit/runner/Description;)V

    .line 46
    :try_start_17
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestMethod;->getTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_27

    .line 48
    invoke-direct {p0, v0, v1}, Lorg/junit/internal/runners/MethodRoadie;->runWithTimeout(J)V

    goto :goto_2a

    .line 50
    :cond_27
    invoke-virtual {p0}, Lorg/junit/internal/runners/MethodRoadie;->runTest()V
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_32

    .line 53
    :goto_2a
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v1, p0, Lorg/junit/internal/runners/MethodRoadie;->description:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    return-void

    :catchall_32
    move-exception v0

    iget-object v1, p0, Lorg/junit/internal/runners/MethodRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->description:Lorg/junit/runner/Description;

    invoke-virtual {v1, v2}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    throw v0
.end method

.method public runBeforesThenTestThenAfters(Ljava/lang/Runnable;)V
    .registers 3

    .line 96
    :try_start_0
    invoke-direct {p0}, Lorg/junit/internal/runners/MethodRoadie;->runBefores()V

    .line 97
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catch Lorg/junit/internal/runners/FailedBefore; {:try_start_0 .. :try_end_6} :catch_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_9
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_15

    :catchall_7
    move-exception p1

    goto :goto_11

    .line 100
    :catch_9
    :try_start_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "test should never throw an exception to this level"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_7

    .line 102
    :goto_11
    invoke-direct {p0}, Lorg/junit/internal/runners/MethodRoadie;->runAfters()V

    throw p1

    :catch_15
    :goto_15
    invoke-direct {p0}, Lorg/junit/internal/runners/MethodRoadie;->runAfters()V

    return-void
.end method

.method public runTest()V
    .registers 2

    .line 87
    new-instance v0, Lorg/junit/internal/runners/MethodRoadie$2;

    invoke-direct {v0, p0}, Lorg/junit/internal/runners/MethodRoadie$2;-><init>(Lorg/junit/internal/runners/MethodRoadie;)V

    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/MethodRoadie;->runBeforesThenTestThenAfters(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected runTestMethod()V
    .registers 4

    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    iget-object v1, p0, Lorg/junit/internal/runners/MethodRoadie;->test:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/TestMethod;->invoke(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestMethod;->expectsException()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 110
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v2}, Lorg/junit/internal/runners/TestMethod;->getExpectedException()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V
    :try_end_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_32} :catch_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_8e

    :catch_33
    move-exception v0

    .line 124
    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_8e

    :catch_38
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 114
    instance-of v1, v0, Lorg/junit/internal/AssumptionViolatedException;

    if-eqz v1, :cond_42

    return-void

    .line 116
    :cond_42
    iget-object v1, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v1}, Lorg/junit/internal/runners/TestMethod;->expectsException()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 117
    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_8e

    .line 118
    :cond_4e
    iget-object v1, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v1, v0}, Lorg/junit/internal/runners/TestMethod;->isUnexpected(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected exception, expected<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v2}, Lorg/junit/internal/runners/TestMethod;->getExpectedException()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> but was<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    return-void
.end method

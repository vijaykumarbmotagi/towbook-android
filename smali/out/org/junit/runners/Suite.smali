.class public Lorg/junit/runners/Suite;
.super Lorg/junit/runners/ParentRunner;
.source "Suite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runners/Suite$SuiteClasses;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/junit/runners/ParentRunner<",
        "Lorg/junit/runner/Runner;",
        ">;"
    }
.end annotation


# instance fields
.field private final runners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;-><init>(Ljava/lang/Class;)V

    .line 113
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/junit/runners/Suite;->runners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/junit/runners/model/RunnerBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lorg/junit/runners/Suite;->getAnnotatedClasses(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lorg/junit/runners/Suite;-><init>(Lorg/junit/runners/model/RunnerBuilder;Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 91
    new-instance v0, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;-><init>(Z)V

    invoke-direct {p0, v0, p1, p2}, Lorg/junit/runners/Suite;-><init>(Lorg/junit/runners/model/RunnerBuilder;Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method protected constructor <init>(Lorg/junit/runners/model/RunnerBuilder;Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/RunnerBuilder;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 102
    invoke-virtual {p1, p2, p3}, Lorg/junit/runners/model/RunnerBuilder;->runners(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/junit/runners/Suite;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/junit/runners/model/RunnerBuilder;[Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/RunnerBuilder;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0, p2}, Lorg/junit/runners/model/RunnerBuilder;->runners(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/junit/runners/Suite;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method

.method public static emptySuite()Lorg/junit/runner/Runner;
    .registers 3

    .line 33
    :try_start_0
    new-instance v0, Lorg/junit/runners/Suite;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lorg/junit/runners/Suite;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    :try_end_b
    .catch Lorg/junit/runners/model/InitializationError; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 35
    :catch_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This shouldn\'t be possible"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getAnnotatedClasses(Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 54
    const-class v0, Lorg/junit/runners/Suite$SuiteClasses;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/runners/Suite$SuiteClasses;

    if-nez v0, :cond_20

    .line 56
    new-instance v0, Lorg/junit/runners/model/InitializationError;

    const-string v1, "class \'%s\' must have a SuiteClasses annotation"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_20
    invoke-interface {v0}, Lorg/junit/runners/Suite$SuiteClasses;->value()[Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;
    .registers 2

    .line 27
    check-cast p1, Lorg/junit/runner/Runner;

    invoke-virtual {p0, p1}, Lorg/junit/runners/Suite;->describeChild(Lorg/junit/runner/Runner;)Lorg/junit/runner/Description;

    move-result-object p1

    return-object p1
.end method

.method protected describeChild(Lorg/junit/runner/Runner;)Lorg/junit/runner/Description;
    .registers 2

    .line 123
    invoke-virtual {p1}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object p1

    return-object p1
.end method

.method protected getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/junit/runners/Suite;->runners:Ljava/util/List;

    return-object v0
.end method

.method protected bridge synthetic runChild(Ljava/lang/Object;Lorg/junit/runner/notification/RunNotifier;)V
    .registers 3

    .line 27
    check-cast p1, Lorg/junit/runner/Runner;

    invoke-virtual {p0, p1, p2}, Lorg/junit/runners/Suite;->runChild(Lorg/junit/runner/Runner;Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method

.method protected runChild(Lorg/junit/runner/Runner;Lorg/junit/runner/notification/RunNotifier;)V
    .registers 3

    .line 128
    invoke-virtual {p1, p2}, Lorg/junit/runner/Runner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method
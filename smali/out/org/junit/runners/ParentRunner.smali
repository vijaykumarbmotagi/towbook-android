.class public abstract Lorg/junit/runners/ParentRunner;
.super Lorg/junit/runner/Runner;
.source "ParentRunner.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;
.implements Lorg/junit/runner/manipulation/Sortable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/junit/runner/Runner;",
        "Lorg/junit/runner/manipulation/Filterable;",
        "Lorg/junit/runner/manipulation/Sortable;"
    }
.end annotation


# static fields
.field private static final VALIDATORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/validator/TestClassValidator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final childrenLock:Ljava/lang/Object;

.field private volatile filteredChildren:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile scheduler:Lorg/junit/runners/model/RunnerScheduler;

.field private final testClass:Lorg/junit/runners/model/TestClass;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    .line 60
    new-array v0, v0, [Lorg/junit/validator/TestClassValidator;

    new-instance v1, Lorg/junit/validator/AnnotationsValidator;

    invoke-direct {v1}, Lorg/junit/validator/AnnotationsValidator;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/junit/validator/PublicClassValidator;

    invoke-direct {v1}, Lorg/junit/validator/PublicClassValidator;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/junit/runners/ParentRunner;->VALIDATORS:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    .line 69
    new-instance v0, Lorg/junit/runners/ParentRunner$1;

    invoke-direct {v0, p0}, Lorg/junit/runners/ParentRunner$1;-><init>(Lorg/junit/runners/ParentRunner;)V

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->scheduler:Lorg/junit/runners/model/RunnerScheduler;

    .line 83
    invoke-virtual {p0, p1}, Lorg/junit/runners/ParentRunner;->createTestClass(Ljava/lang/Class;)Lorg/junit/runners/model/TestClass;

    move-result-object p1

    iput-object p1, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    .line 84
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->validate()V

    return-void
.end method

.method static synthetic access$000(Lorg/junit/runners/ParentRunner;Lorg/junit/runner/notification/RunNotifier;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->runChildren(Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method

.method private applyValidators(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 133
    sget-object v0, Lorg/junit/runners/ParentRunner;->VALIDATORS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/validator/TestClassValidator;

    .line 134
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/junit/validator/TestClassValidator;->validateTestClass(Lorg/junit/runners/model/TestClass;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    :cond_28
    return-void
.end method

.method private areAllChildrenIgnored()Z
    .registers 3

    .line 200
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 201
    invoke-virtual {p0, v1}, Lorg/junit/runners/ParentRunner;->isIgnored(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method private comparator(Lorg/junit/runner/manipulation/Sorter;)Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/manipulation/Sorter;",
            ")",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 438
    new-instance v0, Lorg/junit/runners/ParentRunner$4;

    invoke-direct {v0, p0, p1}, Lorg/junit/runners/ParentRunner$4;-><init>(Lorg/junit/runners/ParentRunner;Lorg/junit/runner/manipulation/Sorter;)V

    return-object v0
.end method

.method private getFilteredChildren()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    if-nez v0, :cond_1a

    .line 424
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_7
    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    if-nez v1, :cond_15

    .line 426
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    .line 428
    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    .line 430
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    return-object v0
.end method

.method private runChildren(Lorg/junit/runner/notification/RunNotifier;)V
    .registers 6

    .line 285
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->scheduler:Lorg/junit/runners/model/RunnerScheduler;

    .line 287
    :try_start_2
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 288
    new-instance v3, Lorg/junit/runners/ParentRunner$3;

    invoke-direct {v3, p0, v2, p1}, Lorg/junit/runners/ParentRunner$3;-><init>(Lorg/junit/runners/ParentRunner;Ljava/lang/Object;Lorg/junit/runner/notification/RunNotifier;)V

    invoke-interface {v0, v3}, Lorg/junit/runners/model/RunnerScheduler;->schedule(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_21

    goto :goto_a

    .line 295
    :cond_1d
    invoke-interface {v0}, Lorg/junit/runners/model/RunnerScheduler;->finished()V

    return-void

    :catchall_21
    move-exception p1

    invoke-interface {v0}, Lorg/junit/runners/model/RunnerScheduler;->finished()V

    throw p1
.end method

.method private shouldRun(Lorg/junit/runner/manipulation/Filter;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/manipulation/Filter;",
            "TT;)Z"
        }
    .end annotation

    .line 434
    invoke-virtual {p0, p2}, Lorg/junit/runners/ParentRunner;->describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/junit/runner/manipulation/Filter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result p1

    return p1
.end method

.method private validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    invoke-virtual {p0, v0}, Lorg/junit/runners/ParentRunner;->collectInitializationErrors(Ljava/util/List;)V

    .line 417
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 418
    new-instance v1, Lorg/junit/runners/model/InitializationError;

    invoke-direct {v1, v0}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/util/List;)V

    throw v1

    :cond_14
    return-void
.end method

.method private validateClassRules(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 160
    sget-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->CLASS_RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    .line 161
    sget-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->CLASS_RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    return-void
.end method

.method private withClassRules(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .registers 5

    .line 244
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->classRules()Ljava/util/List;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_15

    :cond_b
    new-instance v1, Lorg/junit/rules/RunRules;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lorg/junit/rules/RunRules;-><init>(Lorg/junit/runners/model/Statement;Ljava/lang/Iterable;Lorg/junit/runner/Description;)V

    move-object p1, v1

    :goto_15
    return-object p1
.end method


# virtual methods
.method protected childrenInvoker(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;
    .registers 3

    .line 265
    new-instance v0, Lorg/junit/runners/ParentRunner$2;

    invoke-direct {v0, p0, p1}, Lorg/junit/runners/ParentRunner$2;-><init>(Lorg/junit/runners/ParentRunner;Lorg/junit/runner/notification/RunNotifier;)V

    return-object v0
.end method

.method protected classBlock(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;
    .registers 3

    .line 190
    invoke-virtual {p0, p1}, Lorg/junit/runners/ParentRunner;->childrenInvoker(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;

    move-result-object p1

    .line 191
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->areAllChildrenIgnored()Z

    move-result v0

    if-nez v0, :cond_16

    .line 192
    invoke-virtual {p0, p1}, Lorg/junit/runners/ParentRunner;->withBeforeClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object p1

    .line 193
    invoke-virtual {p0, p1}, Lorg/junit/runners/ParentRunner;->withAfterClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object p1

    .line 194
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->withClassRules(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object p1

    :cond_16
    return-object p1
.end method

.method protected classRules()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/rules/TestRule;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    const-class v1, Lorg/junit/ClassRule;

    const-class v2, Lorg/junit/rules/TestRule;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethodValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    const-class v2, Lorg/junit/ClassRule;

    const-class v4, Lorg/junit/rules/TestRule;

    invoke-virtual {v1, v3, v2, v4}, Lorg/junit/runners/model/TestClass;->getAnnotatedFieldValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method protected collectInitializationErrors(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 125
    const-class v0, Lorg/junit/BeforeClass;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/runners/ParentRunner;->validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V

    .line 126
    const-class v0, Lorg/junit/AfterClass;

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/runners/ParentRunner;->validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V

    .line 127
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->validateClassRules(Ljava/util/List;)V

    .line 128
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->applyValidators(Ljava/util/List;)V

    return-void
.end method

.method protected createTestClass(Ljava/lang/Class;)Lorg/junit/runners/model/TestClass;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runners/model/TestClass;"
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/junit/runners/model/TestClass;

    invoke-direct {v0, p1}, Lorg/junit/runners/model/TestClass;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected abstract describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/junit/runner/Description;"
        }
    .end annotation
.end method

.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 380
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 381
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 382
    invoke-direct {p0, p1, v3}, Lorg/junit/runners/ParentRunner;->shouldRun(Lorg/junit/runner/manipulation/Filter;Ljava/lang/Object;)Z

    move-result v4
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_42

    if-eqz v4, :cond_28

    .line 384
    :try_start_20
    invoke-virtual {p1, v3}, Lorg/junit/runner/manipulation/Filter;->apply(Ljava/lang/Object;)V
    :try_end_23
    .catch Lorg/junit/runner/manipulation/NoTestsRemainException; {:try_start_20 .. :try_end_23} :catch_24
    .catchall {:try_start_20 .. :try_end_23} :catchall_42

    goto :goto_10

    .line 386
    :catch_24
    :try_start_24
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 389
    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 392
    :cond_2c
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    .line 393
    iget-object p1, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 394
    new-instance p1, Lorg/junit/runner/manipulation/NoTestsRemainException;

    invoke-direct {p1}, Lorg/junit/runner/manipulation/NoTestsRemainException;-><init>()V

    throw p1

    .line 396
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_42

    throw p1
.end method

.method protected abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .registers 4

    .line 349
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getRunnerAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v0

    .line 351
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 352
    invoke-virtual {p0, v2}, Lorg/junit/runners/ParentRunner;->describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    goto :goto_14

    :cond_26
    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .registers 2

    .line 303
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRunnerAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .line 340
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getTestClass()Lorg/junit/runners/model/TestClass;
    .registers 2

    .line 314
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    return-object v0
.end method

.method protected isIgnored(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .registers 4

    .line 359
    new-instance v0, Lorg/junit/internal/runners/model/EachTestNotifier;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/junit/internal/runners/model/EachTestNotifier;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    .line 362
    :try_start_9
    invoke-virtual {p0, p1}, Lorg/junit/runners/ParentRunner;->classBlock(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;

    move-result-object p1

    .line 363
    invoke-virtual {p1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_10
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_9 .. :try_end_10} :catch_18
    .catch Lorg/junit/runner/notification/StoppedByUserException; {:try_start_9 .. :try_end_10} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_1c

    :catch_11
    move-exception p1

    .line 369
    invoke-virtual {v0, p1}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_1c

    :catch_16
    move-exception p1

    .line 367
    throw p1

    :catch_18
    move-exception p1

    .line 365
    invoke-virtual {v0, p1}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailedAssumption(Lorg/junit/internal/AssumptionViolatedException;)V

    :goto_1c
    return-void
.end method

.method protected abstract runChild(Ljava/lang/Object;Lorg/junit/runner/notification/RunNotifier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/junit/runner/notification/RunNotifier;",
            ")V"
        }
    .end annotation
.end method

.method protected final runLeaf(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;Lorg/junit/runner/notification/RunNotifier;)V
    .registers 5

    .line 322
    new-instance v0, Lorg/junit/internal/runners/model/EachTestNotifier;

    invoke-direct {v0, p3, p2}, Lorg/junit/internal/runners/model/EachTestNotifier;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    .line 323
    invoke-virtual {v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestStarted()V

    .line 325
    :try_start_8
    invoke-virtual {p1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_b
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_8 .. :try_end_b} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_11
    .catchall {:try_start_8 .. :try_end_b} :catchall_f

    .line 331
    :goto_b
    invoke-virtual {v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestFinished()V

    goto :goto_1b

    :catchall_f
    move-exception p1

    goto :goto_1c

    :catch_11
    move-exception p1

    .line 329
    :try_start_12
    invoke-virtual {v0, p1}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_16
    move-exception p1

    .line 327
    invoke-virtual {v0, p1}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailedAssumption(Lorg/junit/internal/AssumptionViolatedException;)V
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    goto :goto_b

    :goto_1b
    return-void

    .line 331
    :goto_1c
    invoke-virtual {v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestFinished()V

    throw p1
.end method

.method public setScheduler(Lorg/junit/runners/model/RunnerScheduler;)V
    .registers 2

    .line 450
    iput-object p1, p0, Lorg/junit/runners/ParentRunner;->scheduler:Lorg/junit/runners/model/RunnerScheduler;

    return-void
.end method

.method public sort(Lorg/junit/runner/manipulation/Sorter;)V
    .registers 5

    .line 400
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_3
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 402
    invoke-virtual {p1, v2}, Lorg/junit/runner/manipulation/Sorter;->apply(Ljava/lang/Object;)V

    goto :goto_b

    .line 404
    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 405
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->comparator(Lorg/junit/runner/manipulation/Sorter;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 406
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    .line 407
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p1
.end method

.method protected validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runners/model/FrameworkMethod;

    .line 155
    invoke-virtual {v0, p2, p3}, Lorg/junit/runners/model/FrameworkMethod;->validatePublicVoidNoArg(ZLjava/util/List;)V

    goto :goto_c

    :cond_1c
    return-void
.end method

.method protected withAfterClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .registers 5

    .line 228
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    const-class v1, Lorg/junit/AfterClass;

    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_16

    :cond_f
    new-instance v1, Lorg/junit/internal/runners/statements/RunAfters;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/junit/internal/runners/statements/RunAfters;-><init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    move-object p1, v1

    :goto_16
    return-object p1
.end method

.method protected withBeforeClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .registers 5

    .line 214
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    const-class v1, Lorg/junit/BeforeClass;

    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 216
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_16

    :cond_f
    new-instance v1, Lorg/junit/internal/runners/statements/RunBefores;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/junit/internal/runners/statements/RunBefores;-><init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    move-object p1, v1

    :goto_16
    return-object p1
.end method

.class public abstract Lorg/junit/rules/TestWatcher;
.super Ljava/lang/Object;
.source "TestWatcher.java"

# interfaces
.implements Lorg/junit/rules/TestRule;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/junit/rules/TestWatcher;->startingQuietly(Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/junit/rules/TestWatcher;->succeededQuietly(Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lorg/junit/rules/TestWatcher;Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lorg/junit/rules/TestWatcher;->skippedQuietly(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lorg/junit/rules/TestWatcher;Ljava/lang/Throwable;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lorg/junit/rules/TestWatcher;->failedQuietly(Ljava/lang/Throwable;Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/junit/rules/TestWatcher;->finishedQuietly(Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method private failedQuietly(Ljava/lang/Throwable;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 84
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/junit/rules/TestWatcher;->failed(Ljava/lang/Throwable;Lorg/junit/runner/Description;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    .line 86
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    return-void
.end method

.method private finishedQuietly(Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 117
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/junit/rules/TestWatcher;->finished(Lorg/junit/runner/Description;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    .line 119
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    return-void
.end method

.method private skippedQuietly(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/internal/AssumptionViolatedException;",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 95
    :try_start_0
    instance-of v0, p1, Lorg/junit/AssumptionViolatedException;

    if-eqz v0, :cond_a

    .line 96
    check-cast p1, Lorg/junit/AssumptionViolatedException;

    invoke-virtual {p0, p1, p2}, Lorg/junit/rules/TestWatcher;->skipped(Lorg/junit/AssumptionViolatedException;Lorg/junit/runner/Description;)V

    goto :goto_12

    .line 98
    :cond_a
    invoke-virtual {p0, p1, p2}, Lorg/junit/rules/TestWatcher;->skipped(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 101
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_12
    return-void
.end method

.method private startingQuietly(Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 108
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/junit/rules/TestWatcher;->starting(Lorg/junit/runner/Description;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    .line 110
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    return-void
.end method

.method private succeededQuietly(Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/junit/rules/TestWatcher;->succeeded(Lorg/junit/runner/Description;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    .line 77
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    return-void
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .registers 4

    .line 48
    new-instance v0, Lorg/junit/rules/TestWatcher$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/junit/rules/TestWatcher$1;-><init>(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Lorg/junit/runners/model/Statement;)V

    return-object v0
.end method

.method protected failed(Ljava/lang/Throwable;Lorg/junit/runner/Description;)V
    .registers 3

    return-void
.end method

.method protected finished(Lorg/junit/runner/Description;)V
    .registers 2

    return-void
.end method

.method protected skipped(Lorg/junit/AssumptionViolatedException;Lorg/junit/runner/Description;)V
    .registers 3

    .line 142
    invoke-virtual {p0, p1, p2}, Lorg/junit/rules/TestWatcher;->skipped(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;)V

    return-void
.end method

.method protected skipped(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected starting(Lorg/junit/runner/Description;)V
    .registers 2

    return-void
.end method

.method protected succeeded(Lorg/junit/runner/Description;)V
    .registers 2

    return-void
.end method

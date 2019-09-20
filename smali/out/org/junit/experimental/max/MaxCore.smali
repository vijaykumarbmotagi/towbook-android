.class public Lorg/junit/experimental/max/MaxCore;
.super Ljava/lang/Object;
.source "MaxCore.java"


# static fields
.field private static final MALFORMED_JUNIT_3_TEST_CLASS_PREFIX:Ljava/lang/String; = "malformed JUnit 3 test class: "


# instance fields
.field private final history:Lorg/junit/experimental/max/MaxHistory;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lorg/junit/experimental/max/MaxHistory;->forFolder(Ljava/io/File;)Lorg/junit/experimental/max/MaxHistory;

    move-result-object p1

    iput-object p1, p0, Lorg/junit/experimental/max/MaxCore;->history:Lorg/junit/experimental/max/MaxHistory;

    return-void
.end method

.method private buildRunner(Lorg/junit/runner/Description;)Lorg/junit/runner/Runner;
    .registers 5

    .line 124
    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestSuite with 0 tests"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 125
    invoke-static {}, Lorg/junit/runners/Suite;->emptySuite()Lorg/junit/runner/Runner;

    move-result-object p1

    return-object p1

    .line 127
    :cond_11
    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "malformed JUnit 3 test class: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 132
    new-instance v0, Lorg/junit/internal/runners/JUnit38ClassRunner;

    new-instance v1, Ljunit/framework/TestSuite;

    invoke-direct {p0, p1}, Lorg/junit/experimental/max/MaxCore;->getMalformedTestClass(Lorg/junit/runner/Description;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v1, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Lorg/junit/internal/runners/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V

    return-object v0

    .line 134
    :cond_2c
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getTestClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_4e

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t build a runner from description ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_4e
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5d

    .line 140
    invoke-static {v0}, Lorg/junit/runner/Request;->aClass(Ljava/lang/Class;)Lorg/junit/runner/Request;

    move-result-object p1

    invoke-virtual {p1}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object p1

    return-object p1

    .line 142
    :cond_5d
    invoke-static {v0, p1}, Lorg/junit/runner/Request;->method(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Request;

    move-result-object p1

    invoke-virtual {p1}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object p1

    return-object p1
.end method

.method private constructLeafRequest(Ljava/util/List;)Lorg/junit/runner/Request;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/junit/runner/Description;",
            ">;)",
            "Lorg/junit/runner/Request;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/Description;

    .line 108
    invoke-direct {p0, v1}, Lorg/junit/experimental/max/MaxCore;->buildRunner(Lorg/junit/runner/Description;)Lorg/junit/runner/Runner;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 110
    :cond_1d
    new-instance p1, Lorg/junit/experimental/max/MaxCore$1;

    invoke-direct {p1, p0, v0}, Lorg/junit/experimental/max/MaxCore$1;-><init>(Lorg/junit/experimental/max/MaxCore;Ljava/util/List;)V

    return-object p1
.end method

.method private findLeaves(Lorg/junit/runner/Request;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Request;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p1}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object p1

    invoke-virtual {p1}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/junit/experimental/max/MaxCore;->findLeaves(Lorg/junit/runner/Description;Lorg/junit/runner/Description;Ljava/util/List;)V

    return-object v0
.end method

.method private findLeaves(Lorg/junit/runner/Description;Lorg/junit/runner/Description;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Lorg/junit/runner/Description;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-virtual {p2}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 170
    invoke-virtual {p2}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "warning(junit.framework.TestSuite$1)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "malformed JUnit 3 test class: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/annotation/Annotation;

    invoke-static {p1, p2}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 173
    :cond_32
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 176
    :cond_36
    invoke-virtual {p2}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 177
    invoke-direct {p0, p2, v0, p3}, Lorg/junit/experimental/max/MaxCore;->findLeaves(Lorg/junit/runner/Description;Lorg/junit/runner/Description;Ljava/util/List;)V

    goto :goto_3e

    :cond_4e
    :goto_4e
    return-void
.end method

.method public static forFolder(Ljava/lang/String;)Lorg/junit/experimental/max/MaxCore;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/junit/experimental/max/MaxCore;->storedLocally(Ljava/io/File;)Lorg/junit/experimental/max/MaxCore;

    move-result-object p0

    return-object p0
.end method

.method private getMalformedTestClass(Lorg/junit/runner/Description;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 147
    :try_start_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "malformed JUnit 3 test class: "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public static storedLocally(Ljava/io/File;)Lorg/junit/experimental/max/MaxCore;
    .registers 2

    .line 49
    new-instance v0, Lorg/junit/experimental/max/MaxCore;

    invoke-direct {v0, p0}, Lorg/junit/experimental/max/MaxCore;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Class;)Lorg/junit/runner/Result;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Result;"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lorg/junit/runner/Request;->aClass(Ljava/lang/Class;)Lorg/junit/runner/Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/junit/experimental/max/MaxCore;->run(Lorg/junit/runner/Request;)Lorg/junit/runner/Result;

    move-result-object p1

    return-object p1
.end method

.method public run(Lorg/junit/runner/Request;)Lorg/junit/runner/Result;
    .registers 3

    .line 74
    new-instance v0, Lorg/junit/runner/JUnitCore;

    invoke-direct {v0}, Lorg/junit/runner/JUnitCore;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/junit/experimental/max/MaxCore;->run(Lorg/junit/runner/Request;Lorg/junit/runner/JUnitCore;)Lorg/junit/runner/Result;

    move-result-object p1

    return-object p1
.end method

.method public run(Lorg/junit/runner/Request;Lorg/junit/runner/JUnitCore;)Lorg/junit/runner/Result;
    .registers 4

    .line 88
    iget-object v0, p0, Lorg/junit/experimental/max/MaxCore;->history:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {v0}, Lorg/junit/experimental/max/MaxHistory;->listener()Lorg/junit/runner/notification/RunListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/junit/runner/JUnitCore;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 89
    invoke-virtual {p0, p1}, Lorg/junit/experimental/max/MaxCore;->sortRequest(Lorg/junit/runner/Request;)Lorg/junit/runner/Request;

    move-result-object p1

    invoke-virtual {p1}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Runner;)Lorg/junit/runner/Result;

    move-result-object p1

    return-object p1
.end method

.method public sortRequest(Lorg/junit/runner/Request;)Lorg/junit/runner/Request;
    .registers 3

    .line 96
    instance-of v0, p1, Lorg/junit/internal/requests/SortingRequest;

    if-eqz v0, :cond_5

    return-object p1

    .line 100
    :cond_5
    invoke-direct {p0, p1}, Lorg/junit/experimental/max/MaxCore;->findLeaves(Lorg/junit/runner/Request;)Ljava/util/List;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lorg/junit/experimental/max/MaxCore;->history:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {v0}, Lorg/junit/experimental/max/MaxHistory;->testComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    invoke-direct {p0, p1}, Lorg/junit/experimental/max/MaxCore;->constructLeafRequest(Ljava/util/List;)Lorg/junit/runner/Request;

    move-result-object p1

    return-object p1
.end method

.method public sortedLeavesForTest(Lorg/junit/runner/Request;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Request;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p1}, Lorg/junit/experimental/max/MaxCore;->sortRequest(Lorg/junit/runner/Request;)Lorg/junit/runner/Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/junit/experimental/max/MaxCore;->findLeaves(Lorg/junit/runner/Request;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
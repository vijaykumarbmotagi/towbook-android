.class public Lorg/junit/experimental/categories/Categories;
.super Lorg/junit/runners/Suite;
.source "Categories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/experimental/categories/Categories$CategoryFilter;,
        Lorg/junit/experimental/categories/Categories$ExcludeCategory;,
        Lorg/junit/experimental/categories/Categories$IncludeCategory;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/junit/runners/model/RunnerBuilder;)V
    .registers 5
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

    .line 307
    invoke-direct {p0, p1, p2}, Lorg/junit/runners/Suite;-><init>(Ljava/lang/Class;Lorg/junit/runners/model/RunnerBuilder;)V

    .line 309
    :try_start_3
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->getIncludedCategory(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p2

    .line 310
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->getExcludedCategory(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 311
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->isAnyIncluded(Ljava/lang/Class;)Z

    move-result v1

    .line 312
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->isAnyExcluded(Ljava/lang/Class;)Z

    move-result p1

    .line 314
    invoke-static {v1, p2, p1, v0}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->categoryFilter(ZLjava/util/Set;ZLjava/util/Set;)Lorg/junit/experimental/categories/Categories$CategoryFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/junit/experimental/categories/Categories;->filter(Lorg/junit/runner/manipulation/Filter;)V
    :try_end_1a
    .catch Lorg/junit/runner/manipulation/NoTestsRemainException; {:try_start_3 .. :try_end_1a} :catch_22

    .line 318
    invoke-virtual {p0}, Lorg/junit/experimental/categories/Categories;->getDescription()Lorg/junit/runner/Description;

    move-result-object p1

    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->assertNoCategorizedDescendentsOfUncategorizeableParents(Lorg/junit/runner/Description;)V

    return-void

    :catch_22
    move-exception p1

    .line 316
    new-instance p2, Lorg/junit/runners/model/InitializationError;

    invoke-direct {p2, p1}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic access$000([Ljava/lang/Class;)Ljava/util/Set;
    .registers 1

    .line 81
    invoke-static {p0}, Lorg/junit/experimental/categories/Categories;->createSet([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/util/Set;Ljava/lang/Class;)Z
    .registers 2

    .line 81
    invoke-static {p0, p1}, Lorg/junit/experimental/categories/Categories;->hasAssignableTo(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static assertNoCategorizedDescendentsOfUncategorizeableParents(Lorg/junit/runner/Description;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 342
    invoke-static {p0}, Lorg/junit/experimental/categories/Categories;->canHaveCategorizedChildren(Lorg/junit/runner/Description;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 343
    invoke-static {p0}, Lorg/junit/experimental/categories/Categories;->assertNoDescendantsHaveCategoryAnnotations(Lorg/junit/runner/Description;)V

    .line 345
    :cond_9
    invoke-virtual {p0}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 346
    invoke-static {v0}, Lorg/junit/experimental/categories/Categories;->assertNoCategorizedDescendentsOfUncategorizeableParents(Lorg/junit/runner/Description;)V

    goto :goto_11

    :cond_21
    return-void
.end method

.method private static assertNoDescendantsHaveCategoryAnnotations(Lorg/junit/runner/Description;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 352
    const-class v1, Lorg/junit/experimental/categories/Category;

    invoke-virtual {v0, v1}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 353
    new-instance p0, Lorg/junit/runners/model/InitializationError;

    const-string v0, "Category annotations on Parameterized classes are not supported on individual methods."

    invoke-direct {p0, v0}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 355
    :cond_24
    invoke-static {v0}, Lorg/junit/experimental/categories/Categories;->assertNoDescendantsHaveCategoryAnnotations(Lorg/junit/runner/Description;)V

    goto :goto_8

    :cond_28
    return-void
.end method

.method private static canHaveCategorizedChildren(Lorg/junit/runner/Description;)Z
    .registers 2

    .line 361
    invoke-virtual {p0}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 362
    invoke-virtual {v0}, Lorg/junit/runner/Description;->getTestClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method private static varargs createSet([Ljava/lang/Class;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_a

    .line 381
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_a
    return-object v0
.end method

.method private static getExcludedCategory(Ljava/lang/Class;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 332
    const-class v0, Lorg/junit/experimental/categories/Categories$ExcludeCategory;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/junit/experimental/categories/Categories$ExcludeCategory;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    .line 333
    :cond_c
    invoke-interface {p0}, Lorg/junit/experimental/categories/Categories$ExcludeCategory;->value()[Ljava/lang/Class;

    move-result-object p0

    :goto_10
    invoke-static {p0}, Lorg/junit/experimental/categories/Categories;->createSet([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static getIncludedCategory(Ljava/lang/Class;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 322
    const-class v0, Lorg/junit/experimental/categories/Categories$IncludeCategory;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/junit/experimental/categories/Categories$IncludeCategory;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    .line 323
    :cond_c
    invoke-interface {p0}, Lorg/junit/experimental/categories/Categories$IncludeCategory;->value()[Ljava/lang/Class;

    move-result-object p0

    :goto_10
    invoke-static {p0}, Lorg/junit/experimental/categories/Categories;->createSet([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static hasAssignableTo(Ljava/util/Set;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 370
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 371
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private static isAnyExcluded(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 337
    const-class v0, Lorg/junit/experimental/categories/Categories$ExcludeCategory;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/junit/experimental/categories/Categories$ExcludeCategory;

    if-eqz p0, :cond_13

    .line 338
    invoke-interface {p0}, Lorg/junit/experimental/categories/Categories$ExcludeCategory;->matchAny()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private static isAnyIncluded(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 327
    const-class v0, Lorg/junit/experimental/categories/Categories$IncludeCategory;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/junit/experimental/categories/Categories$IncludeCategory;

    if-eqz p0, :cond_13

    .line 328
    invoke-interface {p0}, Lorg/junit/experimental/categories/Categories$IncludeCategory;->matchAny()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.class Lorg/junit/rules/ExpectedExceptionMatcherBuilder;
.super Ljava/lang/Object;
.source "ExpectedExceptionMatcherBuilder.java"


# instance fields
.field private final matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hamcrest/Matcher<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    return-void
.end method

.method private allOfTheMatchers()Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 32
    iget-object v0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hamcrest/Matcher;

    invoke-direct {p0, v0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->cast(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0

    .line 34
    :cond_17
    invoke-direct {p0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->castedMatchers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/hamcrest/CoreMatchers;->allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method private cast(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "*>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method private castedMatchers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method add(Lorg/hamcrest/Matcher;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method build()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->allOfTheMatchers()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/matchers/JUnitMatchers;->isThrowable(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method expectsThrowable()Z
    .registers 2

    .line 23
    iget-object v0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

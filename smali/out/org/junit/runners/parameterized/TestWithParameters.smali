.class public Lorg/junit/runners/parameterized/TestWithParameters;
.super Ljava/lang/Object;
.source "TestWithParameters.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final testClass:Lorg/junit/runners/model/TestClass;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/junit/runners/model/TestClass;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/junit/runners/model/TestClass;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The name is missing."

    .line 26
    invoke-static {p1, v0}, Lorg/junit/runners/parameterized/TestWithParameters;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The test class is missing."

    .line 27
    invoke-static {p2, v0}, Lorg/junit/runners/parameterized/TestWithParameters;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The parameters are missing."

    .line 28
    invoke-static {p3, v0}, Lorg/junit/runners/parameterized/TestWithParameters;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lorg/junit/runners/parameterized/TestWithParameters;->name:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lorg/junit/runners/parameterized/TestWithParameters;->testClass:Lorg/junit/runners/model/TestClass;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/junit/runners/parameterized/TestWithParameters;->parameters:Ljava/util/List;

    return-void
.end method

.method private static notNull(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    if-nez p0, :cond_8

    .line 79
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 62
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 65
    :cond_13
    check-cast p1, Lorg/junit/runners/parameterized/TestWithParameters;

    .line 66
    iget-object v2, p0, Lorg/junit/runners/parameterized/TestWithParameters;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/junit/runners/parameterized/TestWithParameters;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lorg/junit/runners/parameterized/TestWithParameters;->parameters:Ljava/util/List;

    iget-object v3, p1, Lorg/junit/runners/parameterized/TestWithParameters;->parameters:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lorg/junit/runners/parameterized/TestWithParameters;->testClass:Lorg/junit/runners/model/TestClass;

    iget-object p1, p1, Lorg/junit/runners/parameterized/TestWithParameters;->testClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v2, p1}, Lorg/junit/runners/model/TestClass;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lorg/junit/runners/parameterized/TestWithParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/junit/runners/parameterized/TestWithParameters;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public getTestClass()Lorg/junit/runners/model/TestClass;
    .registers 2

    .line 39
    iget-object v0, p0, Lorg/junit/runners/parameterized/TestWithParameters;->testClass:Lorg/junit/runners/model/TestClass;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 49
    iget-object v0, p0, Lorg/junit/runners/parameterized/TestWithParameters;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x399b

    mul-int/lit16 v0, v0, 0x399b

    .line 50
    iget-object v1, p0, Lorg/junit/runners/parameterized/TestWithParameters;->testClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v1}, Lorg/junit/runners/model/TestClass;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x399b

    .line 51
    iget-object v1, p0, Lorg/junit/runners/parameterized/TestWithParameters;->parameters:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/junit/runners/parameterized/TestWithParameters;->testClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v1}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/junit/runners/parameterized/TestWithParameters;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' with parameters "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/junit/runners/parameterized/TestWithParameters;->parameters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

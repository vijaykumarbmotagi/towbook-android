.class Lorg/junit/runners/model/NoGenericTypeParametersValidator;
.super Ljava/lang/Object;
.source "NoGenericTypeParametersValidator.java"


# instance fields
.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->method:Ljava/lang/reflect/Method;

    return-void
.end method

.method private validateNoTypeParameterOnGenericArrayType(Ljava/lang/reflect/GenericArrayType;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/GenericArrayType;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnType(Ljava/lang/reflect/Type;Ljava/util/List;)V

    return-void
.end method

.method private validateNoTypeParameterOnParameterizedType(Ljava/lang/reflect/ParameterizedType;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 40
    invoke-direct {p0, v2, p2}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnType(Ljava/lang/reflect/Type;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method private validateNoTypeParameterOnType(Ljava/lang/reflect/Type;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 25
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2c

    .line 26
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "() contains unresolved type variable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 28
    :cond_2c
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_36

    .line 29
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, p1, p2}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnParameterizedType(Ljava/lang/reflect/ParameterizedType;Ljava/util/List;)V

    goto :goto_49

    .line 30
    :cond_36
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_40

    .line 31
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {p0, p1, p2}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnWildcardType(Ljava/lang/reflect/WildcardType;Ljava/util/List;)V

    goto :goto_49

    .line 32
    :cond_40
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_49

    .line 33
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, p1, p2}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnGenericArrayType(Ljava/lang/reflect/GenericArrayType;Ljava/util/List;)V

    :cond_49
    :goto_49
    return-void
.end method

.method private validateNoTypeParameterOnWildcardType(Ljava/lang/reflect/WildcardType;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/WildcardType;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_11

    aget-object v4, v0, v3

    .line 47
    invoke-direct {p0, v4, p2}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnType(Ljava/lang/reflect/Type;Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 49
    :cond_11
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    array-length v0, p1

    :goto_16
    if-ge v2, v0, :cond_20

    aget-object v1, p1, v2

    .line 50
    invoke-direct {p0, v1, p2}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnType(Ljava/lang/reflect/Type;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_20
    return-void
.end method


# virtual methods
.method validate(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 20
    invoke-direct {p0, v3, p1}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnType(Ljava/lang/reflect/Type;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

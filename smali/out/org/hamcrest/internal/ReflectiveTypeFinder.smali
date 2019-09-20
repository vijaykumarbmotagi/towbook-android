.class public Lorg/hamcrest/internal/ReflectiveTypeFinder;
.super Ljava/lang/Object;
.source "ReflectiveTypeFinder.java"


# instance fields
.field private final expectedNumberOfParameters:I

.field private final methodName:Ljava/lang/String;

.field private final typedParameter:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/hamcrest/internal/ReflectiveTypeFinder;->methodName:Ljava/lang/String;

    .line 37
    iput p2, p0, Lorg/hamcrest/internal/ReflectiveTypeFinder;->expectedNumberOfParameters:I

    .line 38
    iput p3, p0, Lorg/hamcrest/internal/ReflectiveTypeFinder;->typedParameter:I

    return-void
.end method


# virtual methods
.method protected canObtainExpectedTypeFrom(Ljava/lang/reflect/Method;)Z
    .registers 4

    .line 57
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/hamcrest/internal/ReflectiveTypeFinder;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lorg/hamcrest/internal/ReflectiveTypeFinder;->expectedNumberOfParameters:I

    if-ne v0, v1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result p1

    if-nez p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    return p1
.end method

.method protected expectedTypeFrom(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lorg/hamcrest/internal/ReflectiveTypeFinder;->typedParameter:I

    aget-object p1, p1, v0

    return-object p1
.end method

.method public findExpectedType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 42
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_21

    .line 43
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 44
    invoke-virtual {p0, v3}, Lorg/hamcrest/internal/ReflectiveTypeFinder;->canObtainExpectedTypeFrom(Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 45
    invoke-virtual {p0, v3}, Lorg/hamcrest/internal/ReflectiveTypeFinder;->expectedTypeFrom(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 42
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 49
    :cond_21
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot determine correct type for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/hamcrest/internal/ReflectiveTypeFinder;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

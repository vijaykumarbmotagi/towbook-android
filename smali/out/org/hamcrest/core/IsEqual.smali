.class public Lorg/hamcrest/core/IsEqual;
.super Lorg/hamcrest/BaseMatcher;
.source "IsEqual.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/BaseMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final expectedValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/hamcrest/core/IsEqual;->expectedValue:Ljava/lang/Object;

    return-void
.end method

.method private static areArrayElementsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    :goto_2
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 56
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/hamcrest/core/IsEqual;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method private static areArrayLengthsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    .line 51
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static areArraysEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 47
    invoke-static {p0, p1}, Lorg/hamcrest/core/IsEqual;->areArrayLengthsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0, p1}, Lorg/hamcrest/core/IsEqual;->areArrayElementsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_8

    if-nez p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    :cond_8
    if-eqz p1, :cond_1e

    .line 39
    invoke-static {p0}, Lorg/hamcrest/core/IsEqual;->isArray(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 40
    invoke-static {p1}, Lorg/hamcrest/core/IsEqual;->isArray(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {p0, p1}, Lorg/hamcrest/core/IsEqual;->areArraysEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0

    .line 43
    :cond_1e
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 92
    new-instance v0, Lorg/hamcrest/core/IsEqual;

    invoke-direct {v0, p0}, Lorg/hamcrest/core/IsEqual;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static isArray(Ljava/lang/Object;)Z
    .registers 1

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .registers 3

    .line 31
    iget-object v0, p0, Lorg/hamcrest/core/IsEqual;->expectedValue:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .registers 3

    .line 26
    iget-object v0, p0, Lorg/hamcrest/core/IsEqual;->expectedValue:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/hamcrest/core/IsEqual;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

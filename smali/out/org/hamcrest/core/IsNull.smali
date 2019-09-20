.class public Lorg/hamcrest/core/IsNull;
.super Lorg/hamcrest/BaseMatcher;
.source "IsNull.java"


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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    return-void
.end method

.method public static notNullValue()Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 48
    invoke-static {}, Lorg/hamcrest/core/IsNull;->nullValue()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Lorg/hamcrest/core/IsNot;->not(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static notNullValue(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 81
    invoke-static {p0}, Lorg/hamcrest/core/IsNull;->nullValue(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Lorg/hamcrest/core/IsNot;->not(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static nullValue()Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 34
    new-instance v0, Lorg/hamcrest/core/IsNull;

    invoke-direct {v0}, Lorg/hamcrest/core/IsNull;-><init>()V

    return-object v0
.end method

.method public static nullValue(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 63
    new-instance p0, Lorg/hamcrest/core/IsNull;

    invoke-direct {p0}, Lorg/hamcrest/core/IsNull;-><init>()V

    return-object p0
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .registers 3

    const-string v0, "null"

    .line 22
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

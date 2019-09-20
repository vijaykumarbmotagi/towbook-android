.class public Lorg/hamcrest/core/StringStartsWith;
.super Lorg/hamcrest/core/SubstringMatcher;
.source "StringStartsWith.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lorg/hamcrest/core/SubstringMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static startsWith(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 38
    new-instance v0, Lorg/hamcrest/core/StringStartsWith;

    invoke-direct {v0, p0}, Lorg/hamcrest/core/StringStartsWith;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected evalSubstringOf(Ljava/lang/String;)Z
    .registers 3

    .line 18
    iget-object v0, p0, Lorg/hamcrest/core/StringStartsWith;->substring:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected relationship()Ljava/lang/String;
    .registers 2

    const-string v0, "starting with"

    return-object v0
.end method

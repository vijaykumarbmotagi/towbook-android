.class public Lorg/junit/experimental/results/ResultMatchers;
.super Ljava/lang/Object;
.source "ResultMatchers.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static failureCountIs(I)Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Lorg/junit/experimental/results/PrintableResult;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/junit/experimental/results/ResultMatchers$1;

    invoke-direct {v0, p0}, Lorg/junit/experimental/results/ResultMatchers$1;-><init>(I)V

    return-object v0
.end method

.method public static hasFailureContaining(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Lorg/junit/experimental/results/PrintableResult;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/junit/experimental/results/ResultMatchers$3;

    invoke-direct {v0, p0}, Lorg/junit/experimental/results/ResultMatchers$3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasSingleFailureContaining(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/junit/experimental/results/ResultMatchers$2;

    invoke-direct {v0, p0}, Lorg/junit/experimental/results/ResultMatchers$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isSuccessful()Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Lorg/junit/experimental/results/PrintableResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-static {v0}, Lorg/junit/experimental/results/ResultMatchers;->failureCountIs(I)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

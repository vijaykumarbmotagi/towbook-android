.class public final Lorg/junit/experimental/categories/IncludeCategories;
.super Lorg/junit/experimental/categories/CategoryFilterFactory;
.source "IncludeCategories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/experimental/categories/IncludeCategories$IncludesAny;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lorg/junit/experimental/categories/CategoryFilterFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFilter(Ljava/util/List;)Lorg/junit/runner/manipulation/Filter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lorg/junit/runner/manipulation/Filter;"
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/junit/experimental/categories/IncludeCategories$IncludesAny;

    invoke-direct {v0, p1}, Lorg/junit/experimental/categories/IncludeCategories$IncludesAny;-><init>(Ljava/util/List;)V

    return-object v0
.end method

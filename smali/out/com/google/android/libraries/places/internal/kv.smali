.class public final Lcom/google/android/libraries/places/internal/kv;
.super Ljava/util/AbstractList;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/iz;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/libraries/places/internal/iz;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/iz;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/iz;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/kv;->a:Lcom/google/android/libraries/places/internal/iz;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kv;->a:Lcom/google/android/libraries/places/internal/iz;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/iz;->a(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/libraries/places/internal/hq;)V
    .registers 2

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kv;->a:Lcom/google/android/libraries/places/internal/iz;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/iz;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/android/libraries/places/internal/iz;
    .registers 1

    return-object p0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kv;->a:Lcom/google/android/libraries/places/internal/iz;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/iz;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/kx;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/kx;-><init>(Lcom/google/android/libraries/places/internal/kv;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/internal/kw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/kw;-><init>(Lcom/google/android/libraries/places/internal/kv;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kv;->a:Lcom/google/android/libraries/places/internal/iz;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/iz;->size()I

    move-result v0

    return v0
.end method

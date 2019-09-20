.class Lcom/google/android/libraries/places/internal/jk;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 21
    check-cast p1, Lcom/google/android/libraries/places/internal/jj;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/jj;->isEmpty()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_a

    return p2

    .line 25
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/jj;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0

    :cond_2a
    return p2
.end method

.method static b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/jj;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/libraries/places/internal/jj<",
            "TK;TV;>;"
        }
    .end annotation

    .line 9
    check-cast p0, Lcom/google/android/libraries/places/internal/jj;

    .line 10
    check-cast p1, Lcom/google/android/libraries/places/internal/jj;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/jj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 13
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/jj;->a:Z

    if-nez v0, :cond_12

    .line 15
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/jj;->a()Lcom/google/android/libraries/places/internal/jj;

    move-result-object p0

    .line 17
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/jj;->b()V

    .line 18
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/jj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/jj;->putAll(Ljava/util/Map;)V

    :cond_1e
    return-object p0
.end method


# virtual methods
.method public a(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 7
    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/jk;->b(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/jk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/jj;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/libraries/places/internal/jj;

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/jj;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/jj;->a:Z

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/ji;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/libraries/places/internal/ji<",
            "**>;"
        }
    .end annotation

    .line 5
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

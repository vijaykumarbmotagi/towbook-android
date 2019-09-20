.class Lcom/google/android/libraries/places/internal/ib;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/libraries/places/internal/ie<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ib;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/util/Map$Entry;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/ij$c;

    .line 16
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/libraries/places/internal/id<",
            "Lcom/google/android/libraries/places/internal/ij$c;",
            ">;"
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/android/libraries/places/internal/ij$b;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ij$b;->a:Lcom/google/android/libraries/places/internal/id;

    return-object p1
.end method

.method a(Lcom/google/android/libraries/places/internal/lh;Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/ij$c;

    .line 20
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method a(Lcom/google/android/libraries/places/internal/jo;)Z
    .registers 2

    .line 2
    instance-of p1, p1, Lcom/google/android/libraries/places/internal/ij$b;

    return p1
.end method

.method b(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/libraries/places/internal/id<",
            "Lcom/google/android/libraries/places/internal/ij$c;",
            ">;"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/libraries/places/internal/ij$b;

    .line 5
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/ij$b;->a:Lcom/google/android/libraries/places/internal/id;

    .line 6
    iget-boolean v0, v0, Lcom/google/android/libraries/places/internal/id;->b:Z

    if-eqz v0, :cond_12

    .line 8
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/ij$b;->a:Lcom/google/android/libraries/places/internal/id;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/id;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/id;

    iput-object v0, p1, Lcom/google/android/libraries/places/internal/ij$b;->a:Lcom/google/android/libraries/places/internal/id;

    .line 9
    :cond_12
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ij$b;->a:Lcom/google/android/libraries/places/internal/id;

    return-object p1
.end method

.method c(Ljava/lang/Object;)V
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/id;->a()V

    return-void
.end method

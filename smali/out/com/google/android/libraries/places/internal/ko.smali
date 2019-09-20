.class final Lcom/google/android/libraries/places/internal/ko;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final synthetic d:Lcom/google/android/libraries/places/internal/kg;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/kg;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ko;->d:Lcom/google/android/libraries/places/internal/kg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/google/android/libraries/places/internal/ko;->a:I

    return-void
.end method

.method private final a()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ko;->c:Ljava/util/Iterator;

    if-nez v0, :cond_12

    .line 24
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ko;->d:Lcom/google/android/libraries/places/internal/kg;

    .line 25
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    .line 26
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/ko;->c:Ljava/util/Iterator;

    .line 27
    :cond_12
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ko;->c:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .registers 4

    .line 3
    iget v0, p0, Lcom/google/android/libraries/places/internal/ko;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ko;->d:Lcom/google/android/libraries/places/internal/kg;

    .line 4
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ko;->d:Lcom/google/android/libraries/places/internal/kg;

    .line 7
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/kg;->b:Ljava/util/Map;

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ko;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/ko;->b:Z

    .line 30
    iget v1, p0, Lcom/google/android/libraries/places/internal/ko;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/libraries/places/internal/ko;->a:I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ko;->d:Lcom/google/android/libraries/places/internal/kg;

    .line 31
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 33
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ko;->d:Lcom/google/android/libraries/places/internal/kg;

    .line 34
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    .line 35
    iget v1, p0, Lcom/google/android/libraries/places/internal/ko;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 36
    :cond_1f
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ko;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .registers 4

    .line 10
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/ko;->b:Z

    if-nez v0, :cond_c

    .line 11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/ko;->b:Z

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ko;->d:Lcom/google/android/libraries/places/internal/kg;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kg;->e()V

    .line 15
    iget v0, p0, Lcom/google/android/libraries/places/internal/ko;->a:I

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ko;->d:Lcom/google/android/libraries/places/internal/kg;

    .line 16
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/kg;->a:Ljava/util/List;

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 18
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ko;->d:Lcom/google/android/libraries/places/internal/kg;

    iget v1, p0, Lcom/google/android/libraries/places/internal/ko;->a:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/libraries/places/internal/ko;->a:I

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/kg;->c(I)Ljava/lang/Object;

    return-void

    .line 21
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ko;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

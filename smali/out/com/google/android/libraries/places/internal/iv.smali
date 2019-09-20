.class final Lcom/google/android/libraries/places/internal/iv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcom/google/android/libraries/places/internal/iu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcom/google/android/libraries/places/internal/iu;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/iv;->a:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/iv;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/iv;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/iu;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_c
    invoke-static {}, Lcom/google/android/libraries/places/internal/iu;->a()Lcom/google/android/libraries/places/internal/jo;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 9
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/jo;

    if-nez v0, :cond_c

    .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_c
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/iv;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/iu;

    check-cast p1, Lcom/google/android/libraries/places/internal/jo;

    .line 12
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    const/4 v2, 0x0

    .line 13
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/ix;->a:Lcom/google/android/libraries/places/internal/hq;

    .line 14
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/ix;->c:Lcom/google/android/libraries/places/internal/hq;

    .line 15
    iput-object p1, v0, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    return-object v1
.end method

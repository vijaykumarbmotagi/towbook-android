.class final Lcom/google/android/libraries/places/internal/kh;
.super Lcom/google/android/libraries/places/internal/kg;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/kg<",
        "TFieldDescriptorType;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/kg;-><init>(IB)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 3
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/kg;->c:Z

    if-nez v0, :cond_59

    const/4 v0, 0x0

    .line 5
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kg;->b()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/kg;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/ie;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/ie;->d()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 9
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 11
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/kg;->c()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/ie;

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/ie;->d()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 14
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 16
    :cond_59
    invoke-super {p0}, Lcom/google/android/libraries/places/internal/kg;->a()V

    return-void
.end method

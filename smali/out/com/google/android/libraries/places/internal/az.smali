.class public final Lcom/google/android/libraries/places/internal/az;
.super Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;
.source "PG"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;
    .registers 3

    if-nez p1, :cond_a

    .line 4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null placeId"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/az;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;"
        }
    .end annotation

    if-nez p1, :cond_a

    .line 8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null placeTypes"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/az;->b:Ljava/util/List;

    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/az;->f:Ljava/util/List;

    return-object p0
.end method

.method public final build()Lcom/google/android/libraries/places/api/model/AutocompletePrediction;
    .registers 12

    const-string v0, ""

    .line 30
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/az;->a:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 31
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " placeId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_10
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/az;->b:Ljava/util/List;

    if-nez v1, :cond_1e

    .line 33
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " placeTypes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    :cond_1e
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/az;->c:Ljava/lang/String;

    if-nez v1, :cond_2c

    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " fullText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_2c
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/az;->d:Ljava/lang/String;

    if-nez v1, :cond_3a

    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " primaryText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_3a
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/az;->e:Ljava/lang/String;

    if-nez v1, :cond_48

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " secondaryText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_48
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_61

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    :cond_61
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_66
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_6a
    new-instance v0, Lcom/google/android/libraries/places/internal/bt;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/az;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/az;->b:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/az;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/az;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/az;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/libraries/places/internal/az;->f:Ljava/util/List;

    iget-object v9, p0, Lcom/google/android/libraries/places/internal/az;->g:Ljava/util/List;

    iget-object v10, p0, Lcom/google/android/libraries/places/internal/az;->h:Ljava/util/List;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/libraries/places/internal/bt;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final c(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/az;->g:Ljava/util/List;

    return-object p0
.end method

.method public final d(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/az;->h:Ljava/util/List;

    return-object p0
.end method

.method public final setFullText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;
    .registers 3

    if-nez p1, :cond_a

    .line 12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null fullText"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/az;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final setPrimaryText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;
    .registers 3

    if-nez p1, :cond_a

    .line 16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null primaryText"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/az;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final setSecondaryText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AutocompletePrediction$Builder;
    .registers 3

    if-nez p1, :cond_a

    .line 20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null secondaryText"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/az;->e:Ljava/lang/String;

    return-object p0
.end method

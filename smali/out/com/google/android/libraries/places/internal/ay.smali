.class abstract Lcom/google/android/libraries/places/internal/ay;
.super Lcom/google/android/libraries/places/api/model/AutocompletePrediction;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .param p6    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;-><init>()V

    if-nez p1, :cond_d

    .line 3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null placeId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_d
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ay;->a:Ljava/lang/String;

    if-nez p2, :cond_19

    .line 6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null placeTypes"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_19
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ay;->b:Ljava/util/List;

    if-nez p3, :cond_25

    .line 9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null fullText"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_25
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/ay;->c:Ljava/lang/String;

    if-nez p4, :cond_31

    .line 12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null primaryText"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_31
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/ay;->d:Ljava/lang/String;

    if-nez p5, :cond_3d

    .line 15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null secondaryText"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3d
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/ay;->e:Ljava/lang/String;

    .line 17
    iput-object p6, p0, Lcom/google/android/libraries/places/internal/ay;->f:Ljava/util/List;

    .line 18
    iput-object p7, p0, Lcom/google/android/libraries/places/internal/ay;->g:Ljava/util/List;

    .line 19
    iput-object p8, p0, Lcom/google/android/libraries/places/internal/ay;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ay;->c:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ay;->d:Ljava/lang/String;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ay;->e:Ljava/lang/String;

    return-object v0
.end method

.method final d()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ay;->f:Ljava/util/List;

    return-object v0
.end method

.method final e()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ay;->g:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 32
    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    const/4 v2, 0x0

    if-eqz v1, :cond_8e

    .line 33
    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    .line 34
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ay;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPlaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ay;->b:Ljava/util/List;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPlaceTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ay;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ay;->d:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ay;->e:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ay;->f:Ljava/util/List;

    if-nez v1, :cond_52

    .line 39
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->d()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_8d

    goto :goto_5e

    :cond_52
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ay;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    :goto_5e
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ay;->g:Ljava/util/List;

    if-nez v1, :cond_69

    .line 40
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->e()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_8d

    goto :goto_75

    :cond_69
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ay;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    :goto_75
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ay;->h:Ljava/util/List;

    if-nez v1, :cond_80

    .line 41
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->f()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_8d

    goto :goto_8c

    :cond_80
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ay;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    :goto_8c
    return v0

    :cond_8d
    return v2

    :cond_8e
    return v2
.end method

.method final f()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ay;->h:Ljava/util/List;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ay;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceTypes()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ay;->b:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 44
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ay;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 46
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ay;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 48
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ay;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 50
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ay;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 52
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ay;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 54
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ay;->f:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_37

    const/4 v2, 0x0

    goto :goto_3d

    :cond_37
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ay;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_3d
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 56
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ay;->g:Ljava/util/List;

    if-nez v2, :cond_46

    const/4 v2, 0x0

    goto :goto_4c

    :cond_46
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ay;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_4c
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 58
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ay;->h:Ljava/util/List;

    if-nez v1, :cond_54

    goto :goto_5a

    :cond_54
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ay;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_5a
    xor-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 29
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ay;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ay;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ay;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ay;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/ay;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/ay;->f:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/ay;->g:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/ay;->h:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0xb2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "AutocompletePrediction{placeId="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", placeTypes="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fullText="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", primaryText="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", secondaryText="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fullTextMatchedSubstrings="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", primaryTextMatchedSubstrings="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", secondaryTextMatchedSubstrings="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

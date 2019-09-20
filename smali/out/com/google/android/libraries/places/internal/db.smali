.class final Lcom/google/android/libraries/places/internal/db;
.super Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/libraries/places/api/model/LocationBias;

.field private final c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

.field private final f:Lcom/google/android/libraries/places/api/model/TypeFilter;

.field private final g:Lcom/google/android/gms/tasks/CancellationToken;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;Lcom/google/android/libraries/places/api/model/TypeFilter;Lcom/google/android/gms/tasks/CancellationToken;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/libraries/places/api/model/TypeFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/db;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/db;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/db;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 5
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/db;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/db;->e:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 7
    iput-object p6, p0, Lcom/google/android/libraries/places/internal/db;->f:Lcom/google/android/libraries/places/api/model/TypeFilter;

    .line 8
    iput-object p7, p0, Lcom/google/android/libraries/places/internal/db;->g:Lcom/google/android/gms/tasks/CancellationToken;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 20
    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_ae

    .line 21
    check-cast p1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;

    .line 22
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->a:Ljava/lang/String;

    if-nez v1, :cond_16

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ad

    goto :goto_22

    :cond_16
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    :goto_22
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    if-nez v1, :cond_2d

    .line 23
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v1

    if-nez v1, :cond_ad

    goto :goto_39

    :cond_2d
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    :goto_39
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-nez v1, :cond_44

    .line 24
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v1

    if-nez v1, :cond_ad

    goto :goto_50

    :cond_44
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    :goto_50
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->d:Ljava/lang/String;

    if-nez v1, :cond_5b

    .line 25
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ad

    goto :goto_67

    :cond_5b
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    :goto_67
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->e:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    if-nez v1, :cond_72

    .line 26
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v1

    if-nez v1, :cond_ad

    goto :goto_7e

    :cond_72
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->e:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    :goto_7e
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->f:Lcom/google/android/libraries/places/api/model/TypeFilter;

    if-nez v1, :cond_89

    .line 27
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypeFilter()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v1

    if-nez v1, :cond_ad

    goto :goto_95

    :cond_89
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->f:Lcom/google/android/libraries/places/api/model/TypeFilter;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypeFilter()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/api/model/TypeFilter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    :goto_95
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->g:Lcom/google/android/gms/tasks/CancellationToken;

    if-nez v1, :cond_a0

    .line 28
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p1

    if-nez p1, :cond_ad

    goto :goto_ac

    :cond_a0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->g:Lcom/google/android/gms/tasks/CancellationToken;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ad

    :goto_ac
    return v0

    :cond_ad
    return v2

    :cond_ae
    return v2
.end method

.method public final getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/db;->g:Lcom/google/android/gms/tasks/CancellationToken;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/db;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/db;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    return-object v0
.end method

.method public final getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/db;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/db;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/db;->e:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    return-object v0
.end method

.method public final getTypeFilter()Lcom/google/android/libraries/places/api/model/TypeFilter;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/db;->f:Lcom/google/android/libraries/places/api/model/TypeFilter;

    return-object v0
.end method

.method public final hashCode()I
    .registers 5

    .line 31
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/db;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/db;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 33
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/db;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    if-nez v3, :cond_19

    const/4 v3, 0x0

    goto :goto_1f

    :cond_19
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/db;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1f
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 35
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/db;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-nez v3, :cond_28

    const/4 v3, 0x0

    goto :goto_2e

    :cond_28
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/db;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2e
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 37
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/db;->d:Ljava/lang/String;

    if-nez v3, :cond_37

    const/4 v3, 0x0

    goto :goto_3d

    :cond_37
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/db;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3d
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 39
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/db;->e:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    if-nez v3, :cond_46

    const/4 v3, 0x0

    goto :goto_4c

    :cond_46
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/db;->e:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4c
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 41
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/db;->f:Lcom/google/android/libraries/places/api/model/TypeFilter;

    if-nez v3, :cond_55

    const/4 v3, 0x0

    goto :goto_5b

    :cond_55
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/db;->f:Lcom/google/android/libraries/places/api/model/TypeFilter;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/api/model/TypeFilter;->hashCode()I

    move-result v3

    :goto_5b
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 43
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/db;->g:Lcom/google/android/gms/tasks/CancellationToken;

    if-nez v2, :cond_63

    goto :goto_69

    :cond_63
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->g:Lcom/google/android/gms/tasks/CancellationToken;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_69
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 10

    .line 17
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/db;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/db;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/db;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/db;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/db;->e:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/db;->f:Lcom/google/android/libraries/places/api/model/TypeFilter;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/db;->g:Lcom/google/android/gms/tasks/CancellationToken;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x89

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "FindAutocompletePredictionsRequest{query="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", locationBias="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", locationRestriction="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", country="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sessionToken="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", typeFilter="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cancellationToken="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

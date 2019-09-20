.class final Lcom/google/android/libraries/places/internal/cy;
.super Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

.field private final d:Lcom/google/android/gms/tasks/CancellationToken;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;Lcom/google/android/gms/tasks/CancellationToken;)V
    .registers 5
    .param p3    # Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;",
            "Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;",
            "Lcom/google/android/gms/tasks/CancellationToken;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/cy;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/cy;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/cy;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 5
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/cy;->d:Lcom/google/android/gms/tasks/CancellationToken;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 14
    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_53

    .line 15
    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;

    .line 16
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cy;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cy;->b:Ljava/util/List;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cy;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    if-nez v1, :cond_2e

    .line 18
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v1

    if-nez v1, :cond_52

    goto :goto_3a

    :cond_2e
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cy;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    :goto_3a
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cy;->d:Lcom/google/android/gms/tasks/CancellationToken;

    if-nez v1, :cond_45

    .line 19
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p1

    if-nez p1, :cond_52

    goto :goto_51

    :cond_45
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cy;->d:Lcom/google/android/gms/tasks/CancellationToken;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    :goto_51
    return v0

    :cond_52
    return v2

    :cond_53
    return v2
.end method

.method public final getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cy;->d:Lcom/google/android/gms/tasks/CancellationToken;

    return-object v0
.end method

.method public final getPlaceFields()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cy;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getPlaceId()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cy;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    return-object v0
.end method

.method public final hashCode()I
    .registers 5

    .line 22
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cy;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 24
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/cy;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 26
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/cy;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_22

    :cond_1c
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/cy;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_22
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 28
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cy;->d:Lcom/google/android/gms/tasks/CancellationToken;

    if-nez v1, :cond_2a

    goto :goto_30

    :cond_2a
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cy;->d:Lcom/google/android/gms/tasks/CancellationToken;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_30
    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cy;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cy;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/cy;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/cy;->d:Lcom/google/android/gms/tasks/CancellationToken;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4c

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "FetchPlaceRequest{placeId="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", placeFields="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sessionToken="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cancellationToken="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

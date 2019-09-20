.class final Lcom/google/android/libraries/places/internal/de;
.super Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;
.source "PG"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/tasks/CancellationToken;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/android/gms/tasks/CancellationToken;)V
    .registers 3
    .param p2    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;",
            "Lcom/google/android/gms/tasks/CancellationToken;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/de;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/de;->b:Lcom/google/android/gms/tasks/CancellationToken;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 10
    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    .line 11
    check-cast p1, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    .line 12
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/de;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/de;->b:Lcom/google/android/gms/tasks/CancellationToken;

    if-nez v1, :cond_22

    .line 13
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p1

    if-nez p1, :cond_2f

    goto :goto_2e

    :cond_22
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/de;->b:Lcom/google/android/gms/tasks/CancellationToken;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    :goto_2e
    return v0

    :cond_2f
    return v2

    :cond_30
    return v2
.end method

.method public final getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/de;->b:Lcom/google/android/gms/tasks/CancellationToken;

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

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/de;->a:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/de;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 18
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/de;->b:Lcom/google/android/gms/tasks/CancellationToken;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_18

    :cond_12
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/de;->b:Lcom/google/android/gms/tasks/CancellationToken;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_18
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/de;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/de;->b:Lcom/google/android/gms/tasks/CancellationToken;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x39

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "FindCurrentPlaceRequest{placeFields="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cancellationToken="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

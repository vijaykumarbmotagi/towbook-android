.class final Lcom/google/android/libraries/places/internal/cv;
.super Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;
.source "PG"


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:Ljava/lang/Integer;

.field private final c:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

.field private final d:Lcom/google/android/gms/tasks/CancellationToken;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/libraries/places/api/model/PhotoMetadata;Lcom/google/android/gms/tasks/CancellationToken;)V
    .registers 5
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/cv;->a:Ljava/lang/Integer;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/cv;->b:Ljava/lang/Integer;

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/cv;->c:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    .line 5
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/cv;->d:Lcom/google/android/gms/tasks/CancellationToken;

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
    instance-of v1, p1, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_5e

    .line 15
    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;

    .line 16
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cv;->a:Ljava/lang/Integer;

    if-nez v1, :cond_16

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_5d

    goto :goto_22

    :cond_16
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cv;->a:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    :goto_22
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cv;->b:Ljava/lang/Integer;

    if-nez v1, :cond_2d

    .line 17
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_5d

    goto :goto_39

    :cond_2d
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cv;->b:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    :goto_39
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cv;->c:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getPhotoMetadata()Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cv;->d:Lcom/google/android/gms/tasks/CancellationToken;

    if-nez v1, :cond_50

    .line 19
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p1

    if-nez p1, :cond_5d

    goto :goto_5c

    :cond_50
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cv;->d:Lcom/google/android/gms/tasks/CancellationToken;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    :goto_5c
    return v0

    :cond_5d
    return v2

    :cond_5e
    return v2
.end method

.method public final getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cv;->d:Lcom/google/android/gms/tasks/CancellationToken;

    return-object v0
.end method

.method public final getMaxHeight()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x1L
        to = 0x640L
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cv;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxWidth()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x1L
        to = 0x640L
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cv;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPhotoMetadata()Lcom/google/android/libraries/places/api/model/PhotoMetadata;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cv;->c:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    return-object v0
.end method

.method public final hashCode()I
    .registers 5

    .line 22
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cv;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cv;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_d
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 24
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/cv;->b:Ljava/lang/Integer;

    if-nez v3, :cond_19

    const/4 v3, 0x0

    goto :goto_1f

    :cond_19
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/cv;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_1f
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 26
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/cv;->c:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 28
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/cv;->d:Lcom/google/android/gms/tasks/CancellationToken;

    if-nez v2, :cond_30

    goto :goto_36

    :cond_30
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cv;->d:Lcom/google/android/gms/tasks/CancellationToken;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_36
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cv;->a:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cv;->b:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/cv;->c:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/cv;->d:Lcom/google/android/gms/tasks/CancellationToken;

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

    const-string v4, "FetchPhotoRequest{maxWidth="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", maxHeight="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", photoMetadata="

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

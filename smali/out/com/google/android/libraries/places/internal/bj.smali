.class abstract Lcom/google/android/libraries/places/internal/bj;
.super Lcom/google/android/libraries/places/api/model/PhotoMetadata;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;-><init>()V

    if-nez p1, :cond_d

    .line 3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null attributions"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_d
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bj;->a:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/google/android/libraries/places/internal/bj;->b:I

    .line 6
    iput p3, p0, Lcom/google/android/libraries/places/internal/bj;->c:I

    if-nez p4, :cond_1d

    .line 8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null photoReference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1d
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/bj;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 18
    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 19
    check-cast p1, Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    .line 20
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bj;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->getAttributions()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget v1, p0, Lcom/google/android/libraries/places/internal/bj;->b:I

    .line 21
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->getHeight()I

    move-result v3

    if-ne v1, v3, :cond_34

    iget v1, p0, Lcom/google/android/libraries/places/internal/bj;->c:I

    .line 22
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_34

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bj;->d:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    return v0

    :cond_34
    return v2

    :cond_35
    return v2
.end method

.method public getAttributions()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/google/android/libraries/places/internal/bj;->b:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/google/android/libraries/places/internal/bj;->c:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bj;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 28
    iget v2, p0, Lcom/google/android/libraries/places/internal/bj;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 30
    iget v2, p0, Lcom/google/android/libraries/places/internal/bj;->c:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 32
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bj;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 15
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bj;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/libraries/places/internal/bj;->b:I

    iget v2, p0, Lcom/google/android/libraries/places/internal/bj;->c:I

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bj;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x54

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "PhotoMetadata{attributions="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", photoReference="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

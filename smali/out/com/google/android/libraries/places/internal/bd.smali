.class abstract Lcom/google/android/libraries/places/internal/bd;
.super Lcom/google/android/libraries/places/api/model/LocalTime;
.source "PG"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/LocalTime;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/libraries/places/internal/bd;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/libraries/places/internal/bd;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 10
    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/LocalTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 11
    check-cast p1, Lcom/google/android/libraries/places/api/model/LocalTime;

    .line 12
    iget v1, p0, Lcom/google/android/libraries/places/internal/bd;->a:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/LocalTime;->getHours()I

    move-result v3

    if-ne v1, v3, :cond_1c

    iget v1, p0, Lcom/google/android/libraries/places/internal/bd;->b:I

    .line 13
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/LocalTime;->getMinutes()I

    move-result p1

    if-ne v1, p1, :cond_1c

    return v0

    :cond_1c
    return v2

    :cond_1d
    return v2
.end method

.method public getHours()I
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x17L
    .end annotation

    .line 5
    iget v0, p0, Lcom/google/android/libraries/places/internal/bd;->a:I

    return v0
.end method

.method public getMinutes()I
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x3bL
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/android/libraries/places/internal/bd;->b:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 16
    iget v0, p0, Lcom/google/android/libraries/places/internal/bd;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 18
    iget v1, p0, Lcom/google/android/libraries/places/internal/bd;->b:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 7
    iget v0, p0, Lcom/google/android/libraries/places/internal/bd;->a:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/bd;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "LocalTime{hours="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", minutes="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

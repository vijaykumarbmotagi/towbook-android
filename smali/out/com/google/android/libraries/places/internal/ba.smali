.class abstract Lcom/google/android/libraries/places/internal/ba;
.super Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;
.source "PG"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/libraries/places/internal/ba;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/libraries/places/internal/ba;->b:I

    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    .line 5
    iget v0, p0, Lcom/google/android/libraries/places/internal/ba;->a:I

    return v0
.end method

.method final b()I
    .registers 2

    .line 6
    iget v0, p0, Lcom/google/android/libraries/places/internal/ba;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 10
    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 11
    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;

    .line 12
    iget v1, p0, Lcom/google/android/libraries/places/internal/ba;->a:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;->a()I

    move-result v3

    if-ne v1, v3, :cond_1c

    iget v1, p0, Lcom/google/android/libraries/places/internal/ba;->b:I

    .line 13
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$a;->b()I

    move-result p1

    if-ne v1, p1, :cond_1c

    return v0

    :cond_1c
    return v2

    :cond_1d
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 16
    iget v0, p0, Lcom/google/android/libraries/places/internal/ba;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 18
    iget v1, p0, Lcom/google/android/libraries/places/internal/ba;->b:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 7
    iget v0, p0, Lcom/google/android/libraries/places/internal/ba;->a:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/ba;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "SubstringMatch{offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
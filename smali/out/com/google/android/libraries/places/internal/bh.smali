.class abstract Lcom/google/android/libraries/places/internal/bh;
.super Lcom/google/android/libraries/places/api/model/Period;
.source "PG"


# instance fields
.field private final a:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

.field private final b:Lcom/google/android/libraries/places/api/model/TimeOfWeek;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/api/model/TimeOfWeek;Lcom/google/android/libraries/places/api/model/TimeOfWeek;)V
    .registers 3
    .param p1    # Lcom/google/android/libraries/places/api/model/TimeOfWeek;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/libraries/places/api/model/TimeOfWeek;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/Period;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bh;->a:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/bh;->b:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

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
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/Period;

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    .line 11
    check-cast p1, Lcom/google/android/libraries/places/api/model/Period;

    .line 12
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bh;->a:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    if-nez v1, :cond_16

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v1

    if-nez v1, :cond_3a

    goto :goto_22

    :cond_16
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bh;->a:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    :goto_22
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bh;->b:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    if-nez v1, :cond_2d

    .line 13
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object p1

    if-nez p1, :cond_3a

    goto :goto_39

    :cond_2d
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bh;->b:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    :goto_39
    return v0

    :cond_3a
    return v2

    :cond_3b
    return v2
.end method

.method public getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bh;->b:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    return-object v0
.end method

.method public getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bh;->a:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 16
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bh;->a:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bh;->a:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_d
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 18
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/bh;->b:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    if-nez v2, :cond_18

    goto :goto_1e

    :cond_18
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bh;->b:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1e
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bh;->a:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bh;->b:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Period{open="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", close="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

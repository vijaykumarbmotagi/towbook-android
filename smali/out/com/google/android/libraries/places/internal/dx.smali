.class final Lcom/google/android/libraries/places/internal/dx;
.super Lcom/google/android/libraries/places/internal/eu;
.source "PG"


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/libraries/places/api/model/LocationBias;

.field private final c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/libraries/places/api/model/TypeFilter;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/TypeFilter;)V
    .registers 6
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
    .param p5    # Lcom/google/android/libraries/places/api/model/TypeFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;",
            "Lcom/google/android/libraries/places/api/model/LocationBias;",
            "Lcom/google/android/libraries/places/api/model/LocationRestriction;",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/places/api/model/TypeFilter;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/eu;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dx;->a:Lcom/google/common/collect/ImmutableList;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/dx;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/dx;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 5
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/dx;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/dx;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dx;->a:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final b()Lcom/google/android/libraries/places/api/model/LocationBias;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dx;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    return-object v0
.end method

.method public final c()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dx;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dx;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/google/android/libraries/places/api/model/TypeFilter;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dx;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 16
    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/eu;

    const/4 v2, 0x0

    if-eqz v1, :cond_75

    .line 17
    check-cast p1, Lcom/google/android/libraries/places/internal/eu;

    .line 18
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dx;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/eu;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dx;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    if-nez v1, :cond_22

    .line 19
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/eu;->b()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v1

    if-nez v1, :cond_74

    goto :goto_2e

    :cond_22
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dx;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/eu;->b()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    :goto_2e
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dx;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-nez v1, :cond_39

    .line 20
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/eu;->c()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v1

    if-nez v1, :cond_74

    goto :goto_45

    :cond_39
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dx;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/eu;->c()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    :goto_45
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dx;->d:Ljava/lang/String;

    if-nez v1, :cond_50

    .line 21
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/eu;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_74

    goto :goto_5c

    :cond_50
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dx;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/eu;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    :goto_5c
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dx;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    if-nez v1, :cond_67

    .line 22
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/eu;->e()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object p1

    if-nez p1, :cond_74

    goto :goto_73

    :cond_67
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dx;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/eu;->e()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/api/model/TypeFilter;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    :goto_73
    return v0

    :cond_74
    return v2

    :cond_75
    return v2
.end method

.method public final hashCode()I
    .registers 5

    .line 25
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dx;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 27
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/dx;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    const/4 v3, 0x0

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_19

    :cond_13
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/dx;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_19
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 29
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/dx;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-nez v2, :cond_22

    const/4 v2, 0x0

    goto :goto_28

    :cond_22
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/dx;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_28
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 31
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/dx;->d:Ljava/lang/String;

    if-nez v2, :cond_31

    const/4 v2, 0x0

    goto :goto_37

    :cond_31
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/dx;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_37
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 33
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dx;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    if-nez v1, :cond_3f

    goto :goto_45

    :cond_3f
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dx;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/model/TypeFilter;->hashCode()I

    move-result v3

    :goto_45
    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dx;->a:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dx;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/dx;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/dx;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/dx;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x5d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "AutocompleteOptions{placeFields="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", locationBias="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", locationRestriction="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", country="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", typeFilter="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

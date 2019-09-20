.class public final Lcom/google/android/libraries/places/internal/dy;
.super Lcom/google/android/libraries/places/internal/ev;
.source "PG"


# instance fields
.field private a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/libraries/places/api/model/LocationBias;

.field private c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/libraries/places/api/model/TypeFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ev;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/libraries/places/internal/eu;
    .registers 9

    const-string v0, ""

    .line 14
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dy;->a:Lcom/google/common/collect/ImmutableList;

    if-nez v1, :cond_10

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " placeFields"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2e
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_32
    new-instance v0, Lcom/google/android/libraries/places/internal/dx;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/dy;->a:Lcom/google/common/collect/ImmutableList;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/dy;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/dy;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/dy;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/dy;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-object v2, v0

    .line 19
    invoke-direct/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/dx;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/TypeFilter;)V

    return-object v0
.end method

.method final a(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/internal/ev;
    .registers 2
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dy;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    return-object p0
.end method

.method final a(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/internal/ev;
    .registers 2
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dy;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-object p0
.end method

.method final a(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/internal/ev;
    .registers 2
    .param p1    # Lcom/google/android/libraries/places/api/model/TypeFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dy;->e:Lcom/google/android/libraries/places/api/model/TypeFilter;

    return-object p0
.end method

.method final a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/ev;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dy;->d:Ljava/lang/String;

    return-object p0
.end method

.method final a(Ljava/util/List;)Lcom/google/android/libraries/places/internal/ev;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/internal/ev;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dy;->a:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

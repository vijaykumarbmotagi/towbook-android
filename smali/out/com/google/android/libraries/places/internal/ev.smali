.class public abstract Lcom/google/android/libraries/places/internal/ev;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/android/libraries/places/internal/eu;
.end method

.method public abstract a(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/internal/ev;
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/internal/ev;
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/internal/ev;
    .param p1    # Lcom/google/android/libraries/places/api/model/TypeFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/ev;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/util/List;)Lcom/google/android/libraries/places/internal/ev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/internal/ev;"
        }
    .end annotation
.end method

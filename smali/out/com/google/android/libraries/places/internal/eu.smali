.class public abstract Lcom/google/android/libraries/places/internal/eu;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()Lcom/google/android/libraries/places/api/model/LocationBias;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract c()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract e()Lcom/google/android/libraries/places/api/model/TypeFilter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

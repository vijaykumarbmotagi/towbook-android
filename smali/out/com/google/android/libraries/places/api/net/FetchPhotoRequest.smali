.class public abstract Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/aw;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;
    .registers 2
    .param p0    # Lcom/google/android/libraries/places/api/model/PhotoMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/libraries/places/internal/cw;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/cw;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;->a(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;
    .registers 1
    .param p0    # Lcom/google/android/libraries/places/api/model/PhotoMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->builder(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;->build()Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getMaxHeight()Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x1L
        to = 0x640L
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getMaxWidth()Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x1L
        to = 0x640L
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getPhotoMetadata()Lcom/google/android/libraries/places/api/model/PhotoMetadata;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.class public abstract Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
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

.method public static newInstance(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .registers 2
    .param p0    # Lcom/google/android/libraries/places/api/model/Place;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/internal/da;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/da;-><init>(Lcom/google/android/libraries/places/api/model/Place;)V

    return-object v0
.end method


# virtual methods
.method public abstract getPlace()Lcom/google/android/libraries/places/api/model/Place;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

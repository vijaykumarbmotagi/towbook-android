.class public final Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;
.super Lcom/google/android/libraries/places/internal/aj;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/aj<",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public errorMessage:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public htmlAttributions:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public placeLikelihoodResults:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "predictions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;",
            ">;"
        }
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/aj;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert()Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;->status:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/fg;->a(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/PlacesStatusCodes;->isError(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4
    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget-object v3, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;->status:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;->errorMessage:Ljava/lang/String;

    .line 5
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/fg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw v1

    .line 6
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;->placeLikelihoodResults:Ljava/util/List;

    if-eqz v1, :cond_7c

    .line 8
    iget-object v1, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;->placeLikelihoodResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;->getPlaceResult()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;

    move-result-object v3

    const/16 v4, 0x8

    if-nez v3, :cond_4f

    .line 10
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "Unexpected server error: PlaceLikelihood returned without a Place value"

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw v0

    .line 11
    :cond_4f
    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;->getLikelihood()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_62

    .line 12
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "Unexpected server error: PlaceLikelihood returned without a likelihood value"

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw v0

    .line 14
    :cond_62
    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;->getPlaceResult()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;->htmlAttributions:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/ao;->a(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v3

    .line 16
    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceLikelihoodResult;->getLikelihood()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/api/model/PlaceLikelihood;->newInstance(Lcom/google/android/libraries/places/api/model/Place;D)Lcom/google/android/libraries/places/api/model/PlaceLikelihood;

    move-result-object v2

    .line 17
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 19
    :cond_7c
    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic convert()Lcom/google/android/libraries/places/internal/ax;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;->convert()Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    move-result-object v0

    return-object v0
.end method

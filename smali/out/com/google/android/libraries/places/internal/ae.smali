.class public final Lcom/google/android/libraries/places/internal/ae;
.super Lcom/google/android/libraries/places/internal/r;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/r;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;Ljava/lang/String;Lcom/google/android/libraries/places/internal/et;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/libraries/places/internal/r;-><init>(Lcom/google/android/libraries/places/internal/aw;Ljava/util/Locale;Ljava/lang/String;Lcom/google/android/libraries/places/internal/et;)V

    return-void
.end method


# virtual methods
.method protected final d()Ljava/lang/String;
    .registers 2

    const-string v0, "photo"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/r;->a:Lcom/google/android/libraries/places/internal/aw;

    .line 5
    check-cast v0, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getPhotoMetadata()Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "maxheight"

    .line 8
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/libraries/places/internal/r;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "maxwidth"

    .line 9
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0, v5}, Lcom/google/android/libraries/places/internal/r;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "photoreference"

    .line 10
    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

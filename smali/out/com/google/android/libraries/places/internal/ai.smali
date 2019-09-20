.class public final Lcom/google/android/libraries/places/internal/ai;
.super Lcom/google/android/libraries/places/internal/r;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/r;"
    }
.end annotation


# instance fields
.field private final e:Landroid/location/Location;

.field private final f:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/libraries/places/internal/fh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/common/collect/ImmutableList;Ljava/util/Locale;Ljava/lang/String;Lcom/google/android/libraries/places/internal/et;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            "Landroid/location/Location;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/libraries/places/internal/fh;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/places/internal/et;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/google/android/libraries/places/internal/r;-><init>(Lcom/google/android/libraries/places/internal/aw;Ljava/util/Locale;Ljava/lang/String;Lcom/google/android/libraries/places/internal/et;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ai;->e:Landroid/location/Location;

    .line 3
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/ai;->f:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method protected final d()Ljava/lang/String;
    .registers 2

    const-string v0, "findplacefromuserlocation/json"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/r;->a:Lcom/google/android/libraries/places/internal/aw;

    .line 7
    check-cast v0, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ai;->e:Landroid/location/Location;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/ap;->b(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "location"

    const/4 v4, 0x0

    .line 10
    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/r;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ai;->f:Lcom/google/common/collect/ImmutableList;

    .line 12
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/ap;->a(Lcom/google/common/collect/ImmutableList;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifiaccesspoints"

    .line 13
    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/r;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/ai;->e:Landroid/location/Location;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/ap;->a(Landroid/location/Location;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "precision"

    .line 15
    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/r;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "timestamp"

    .line 16
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/ai;->e:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/r;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/aq;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fields"

    .line 18
    invoke-static {v1, v2, v0, v4}, Lcom/google/android/libraries/places/internal/r;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

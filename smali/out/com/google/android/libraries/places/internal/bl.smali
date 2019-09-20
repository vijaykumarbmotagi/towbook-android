.class abstract Lcom/google/android/libraries/places/internal/bl;
.super Lcom/google/android/libraries/places/api/model/Place;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/maps/model/LatLng;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/libraries/places/api/model/OpeningHours;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/libraries/places/api/model/PlusCode;

.field private final j:Ljava/lang/Integer;

.field private final k:Ljava/lang/Double;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/lang/Integer;

.field private final n:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final o:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/OpeningHours;Ljava/lang/String;Ljava/util/List;Lcom/google/android/libraries/places/api/model/PlusCode;Ljava/lang/Integer;Ljava/lang/Double;Ljava/util/List;Ljava/lang/Integer;Lcom/google/android/gms/maps/model/LatLngBounds;Landroid/net/Uri;)V
    .registers 16
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/libraries/places/api/model/OpeningHours;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/libraries/places/api/model/PlusCode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Double;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/places/api/model/OpeningHours;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;",
            "Lcom/google/android/libraries/places/api/model/PlusCode;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/Place;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bl;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/bl;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/bl;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/bl;->d:Lcom/google/android/gms/maps/model/LatLng;

    .line 6
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/bl;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/google/android/libraries/places/internal/bl;->f:Lcom/google/android/libraries/places/api/model/OpeningHours;

    .line 8
    iput-object p7, p0, Lcom/google/android/libraries/places/internal/bl;->g:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/google/android/libraries/places/internal/bl;->h:Ljava/util/List;

    .line 10
    iput-object p9, p0, Lcom/google/android/libraries/places/internal/bl;->i:Lcom/google/android/libraries/places/api/model/PlusCode;

    .line 11
    iput-object p10, p0, Lcom/google/android/libraries/places/internal/bl;->j:Ljava/lang/Integer;

    .line 12
    iput-object p11, p0, Lcom/google/android/libraries/places/internal/bl;->k:Ljava/lang/Double;

    .line 13
    iput-object p12, p0, Lcom/google/android/libraries/places/internal/bl;->l:Ljava/util/List;

    .line 14
    iput-object p13, p0, Lcom/google/android/libraries/places/internal/bl;->m:Ljava/lang/Integer;

    .line 15
    iput-object p14, p0, Lcom/google/android/libraries/places/internal/bl;->n:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 16
    iput-object p15, p0, Lcom/google/android/libraries/places/internal/bl;->o:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 36
    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/Place;

    const/4 v2, 0x0

    if-eqz v1, :cond_166

    .line 37
    check-cast p1, Lcom/google/android/libraries/places/api/model/Place;

    .line 38
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->a:Ljava/lang/String;

    if-nez v1, :cond_16

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_165

    goto :goto_22

    :cond_16
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    :goto_22
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->b:Ljava/util/List;

    if-nez v1, :cond_2d

    .line 39
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAttributions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_165

    goto :goto_39

    :cond_2d
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAttributions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    :goto_39
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->c:Ljava/lang/String;

    if-nez v1, :cond_44

    .line 40
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_165

    goto :goto_50

    :cond_44
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    :goto_50
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->d:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v1, :cond_5b

    .line 41
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_165

    goto :goto_67

    :cond_5b
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->d:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    :goto_67
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->e:Ljava/lang/String;

    if-nez v1, :cond_72

    .line 42
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_165

    goto :goto_7e

    :cond_72
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    :goto_7e
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->f:Lcom/google/android/libraries/places/api/model/OpeningHours;

    if-nez v1, :cond_89

    .line 43
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v1

    if-nez v1, :cond_165

    goto :goto_95

    :cond_89
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->f:Lcom/google/android/libraries/places/api/model/OpeningHours;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    :goto_95
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->g:Ljava/lang/String;

    if-nez v1, :cond_a0

    .line 44
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_165

    goto :goto_ac

    :cond_a0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    :goto_ac
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->h:Ljava/util/List;

    if-nez v1, :cond_b7

    .line 45
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPhotoMetadatas()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_165

    goto :goto_c3

    :cond_b7
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPhotoMetadatas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    :goto_c3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->i:Lcom/google/android/libraries/places/api/model/PlusCode;

    if-nez v1, :cond_ce

    .line 46
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPlusCode()Lcom/google/android/libraries/places/api/model/PlusCode;

    move-result-object v1

    if-nez v1, :cond_165

    goto :goto_da

    :cond_ce
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->i:Lcom/google/android/libraries/places/api/model/PlusCode;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPlusCode()Lcom/google/android/libraries/places/api/model/PlusCode;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    :goto_da
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->j:Ljava/lang/Integer;

    if-nez v1, :cond_e5

    .line 47
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPriceLevel()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_165

    goto :goto_f1

    :cond_e5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->j:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPriceLevel()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    :goto_f1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->k:Ljava/lang/Double;

    if-nez v1, :cond_fc

    .line 48
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getRating()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_165

    goto :goto_108

    :cond_fc
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->k:Ljava/lang/Double;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getRating()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    :goto_108
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->l:Ljava/util/List;

    if-nez v1, :cond_113

    .line 49
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getTypes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_165

    goto :goto_11f

    :cond_113
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->l:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    :goto_11f
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->m:Ljava/lang/Integer;

    if-nez v1, :cond_12a

    .line 50
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getUserRatingsTotal()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_165

    goto :goto_136

    :cond_12a
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->m:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getUserRatingsTotal()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    :goto_136
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->n:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v1, :cond_141

    .line 51
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    if-nez v1, :cond_165

    goto :goto_14d

    :cond_141
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->n:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    :goto_14d
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->o:Landroid/net/Uri;

    if-nez v1, :cond_158

    .line 52
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getWebsiteUri()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_165

    goto :goto_164

    :cond_158
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->o:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getWebsiteUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_165

    :goto_164
    return v0

    :cond_165
    return v2

    :cond_166
    return v2
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributions()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->b:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->d:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->f:Lcom/google/android/libraries/places/api/model/OpeningHours;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoMetadatas()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->h:Ljava/util/List;

    return-object v0
.end method

.method public getPlusCode()Lcom/google/android/libraries/places/api/model/PlusCode;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->i:Lcom/google/android/libraries/places/api/model/PlusCode;

    return-object v0
.end method

.method public getPriceLevel()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x4L
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRating()Ljava/lang/Double;
    .registers 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 1.0
        to = 5.0
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->k:Ljava/lang/Double;

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->l:Ljava/util/List;

    return-object v0
.end method

.method public getUserRatingsTotal()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->n:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getWebsiteUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->o:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/bl;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 57
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->b:Ljava/util/List;

    if-nez v3, :cond_19

    const/4 v3, 0x0

    goto :goto_1f

    :cond_19
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_1f
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 59
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->c:Ljava/lang/String;

    if-nez v3, :cond_28

    const/4 v3, 0x0

    goto :goto_2e

    :cond_28
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2e
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 61
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->d:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v3, :cond_37

    const/4 v3, 0x0

    goto :goto_3d

    :cond_37
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->d:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/LatLng;->hashCode()I

    move-result v3

    :goto_3d
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 63
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->e:Ljava/lang/String;

    if-nez v3, :cond_46

    const/4 v3, 0x0

    goto :goto_4c

    :cond_46
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4c
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 65
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->f:Lcom/google/android/libraries/places/api/model/OpeningHours;

    if-nez v3, :cond_55

    const/4 v3, 0x0

    goto :goto_5b

    :cond_55
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->f:Lcom/google/android/libraries/places/api/model/OpeningHours;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5b
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 67
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->g:Ljava/lang/String;

    if-nez v3, :cond_64

    const/4 v3, 0x0

    goto :goto_6a

    :cond_64
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6a
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 69
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->h:Ljava/util/List;

    if-nez v3, :cond_73

    const/4 v3, 0x0

    goto :goto_79

    :cond_73
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_79
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 71
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->i:Lcom/google/android/libraries/places/api/model/PlusCode;

    if-nez v3, :cond_82

    const/4 v3, 0x0

    goto :goto_88

    :cond_82
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->i:Lcom/google/android/libraries/places/api/model/PlusCode;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_88
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 73
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->j:Ljava/lang/Integer;

    if-nez v3, :cond_91

    const/4 v3, 0x0

    goto :goto_97

    :cond_91
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->j:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_97
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 75
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->k:Ljava/lang/Double;

    if-nez v3, :cond_a0

    const/4 v3, 0x0

    goto :goto_a6

    :cond_a0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->k:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->hashCode()I

    move-result v3

    :goto_a6
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 77
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->l:Ljava/util/List;

    if-nez v3, :cond_af

    const/4 v3, 0x0

    goto :goto_b5

    :cond_af
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_b5
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 79
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->m:Ljava/lang/Integer;

    if-nez v3, :cond_be

    const/4 v3, 0x0

    goto :goto_c4

    :cond_be
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->m:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_c4
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 81
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->n:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v3, :cond_cd

    const/4 v3, 0x0

    goto :goto_d3

    :cond_cd
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bl;->n:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/LatLngBounds;->hashCode()I

    move-result v3

    :goto_d3
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 83
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/bl;->o:Landroid/net/Uri;

    if-nez v2, :cond_db

    goto :goto_e1

    :cond_db
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bl;->o:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    :goto_e1
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 18

    move-object/from16 v0, p0

    .line 33
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/bl;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/bl;->b:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/bl;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/bl;->d:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/libraries/places/internal/bl;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/libraries/places/internal/bl;->f:Lcom/google/android/libraries/places/api/model/OpeningHours;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/libraries/places/internal/bl;->g:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/libraries/places/internal/bl;->h:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/libraries/places/internal/bl;->i:Lcom/google/android/libraries/places/api/model/PlusCode;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/libraries/places/internal/bl;->j:Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/libraries/places/internal/bl;->k:Ljava/lang/Double;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/google/android/libraries/places/internal/bl;->l:Ljava/util/List;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/libraries/places/internal/bl;->m:Ljava/lang/Integer;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/google/android/libraries/places/internal/bl;->n:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/google/android/libraries/places/internal/bl;->o:Landroid/net/Uri;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, 0xb5

    move-object/from16 v16, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Place{address="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", attributions="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", latLng="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", openingHours="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", phoneNumber="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", photoMetadatas="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", plusCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", priceLevel="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rating="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", types="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", userRatingsTotal="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", viewport="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", websiteUri="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

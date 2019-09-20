.class public final Lcom/google/android/libraries/places/internal/bm;
.super Lcom/google/android/libraries/places/api/model/Place$Builder;
.source "PG"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/maps/model/LatLng;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/android/libraries/places/api/model/OpeningHours;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/libraries/places/api/model/PlusCode;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Double;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Integer;

.field private n:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private o:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/Place$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final autoBuild()Lcom/google/android/libraries/places/api/model/Place;
    .registers 19

    move-object/from16 v0, p0

    .line 33
    new-instance v17, Lcom/google/android/libraries/places/internal/ch;

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/bm;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/bm;->b:Ljava/util/List;

    iget-object v4, v0, Lcom/google/android/libraries/places/internal/bm;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/libraries/places/internal/bm;->d:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v6, v0, Lcom/google/android/libraries/places/internal/bm;->e:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/libraries/places/internal/bm;->f:Lcom/google/android/libraries/places/api/model/OpeningHours;

    iget-object v8, v0, Lcom/google/android/libraries/places/internal/bm;->g:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/libraries/places/internal/bm;->h:Ljava/util/List;

    iget-object v10, v0, Lcom/google/android/libraries/places/internal/bm;->i:Lcom/google/android/libraries/places/api/model/PlusCode;

    iget-object v11, v0, Lcom/google/android/libraries/places/internal/bm;->j:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/google/android/libraries/places/internal/bm;->k:Ljava/lang/Double;

    iget-object v13, v0, Lcom/google/android/libraries/places/internal/bm;->l:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/libraries/places/internal/bm;->m:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/google/android/libraries/places/internal/bm;->n:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/bm;->o:Landroid/net/Uri;

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lcom/google/android/libraries/places/internal/ch;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/OpeningHours;Ljava/lang/String;Ljava/util/List;Lcom/google/android/libraries/places/api/model/PlusCode;Ljava/lang/Integer;Ljava/lang/Double;Ljava/util/List;Ljava/lang/Integer;Lcom/google/android/gms/maps/model/LatLngBounds;Landroid/net/Uri;)V

    return-object v17
.end method

.method public final setAddress(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setAttributions(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->b:Ljava/util/List;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final setLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->d:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final setOpeningHours(Lcom/google/android/libraries/places/api/model/OpeningHours;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Lcom/google/android/libraries/places/api/model/OpeningHours;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->f:Lcom/google/android/libraries/places/api/model/OpeningHours;

    return-object p0
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final setPhotoMetadatas(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->h:Ljava/util/List;

    return-object p0
.end method

.method public final setPlusCode(Lcom/google/android/libraries/places/api/model/PlusCode;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Lcom/google/android/libraries/places/api/model/PlusCode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->i:Lcom/google/android/libraries/places/api/model/PlusCode;

    return-object p0
.end method

.method public final setPriceLevel(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setRating(Ljava/lang/Double;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Ljava/lang/Double;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->k:Ljava/lang/Double;

    return-object p0
.end method

.method public final setTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->l:Ljava/util/List;

    return-object p0
.end method

.method public final setUserRatingsTotal(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 27
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->m:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setViewport(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->n:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method

.method public final setWebsiteUri(Landroid/net/Uri;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bm;->o:Landroid/net/Uri;

    return-object p0
.end method

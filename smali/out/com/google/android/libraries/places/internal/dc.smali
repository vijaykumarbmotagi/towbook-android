.class public final Lcom/google/android/libraries/places/internal/dc;
.super Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;
.source "PG"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/libraries/places/api/model/LocationBias;

.field private c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

.field private f:Lcom/google/android/libraries/places/api/model/TypeFilter;

.field private g:Lcom/google/android/gms/tasks/CancellationToken;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;
    .registers 10

    .line 17
    new-instance v8, Lcom/google/android/libraries/places/internal/db;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dc;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/dc;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/dc;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/dc;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/dc;->e:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/dc;->f:Lcom/google/android/libraries/places/api/model/TypeFilter;

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/dc;->g:Lcom/google/android/gms/tasks/CancellationToken;

    move-object v0, v8

    .line 18
    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/db;-><init>(Ljava/lang/String;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;Lcom/google/android/libraries/places/api/model/TypeFilter;Lcom/google/android/gms/tasks/CancellationToken;)V

    return-object v8
.end method

.method public final setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;
    .registers 2
    .param p1    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dc;->g:Lcom/google/android/gms/tasks/CancellationToken;

    return-object p0
.end method

.method public final setCountry(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dc;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final setLocationBias(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;
    .registers 2
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dc;->b:Lcom/google/android/libraries/places/api/model/LocationBias;

    return-object p0
.end method

.method public final setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;
    .registers 2
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dc;->c:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-object p0
.end method

.method public final setQuery(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dc;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setSessionToken(Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;
    .registers 2
    .param p1    # Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dc;->e:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    return-object p0
.end method

.method public final setTypeFilter(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;
    .registers 2
    .param p1    # Lcom/google/android/libraries/places/api/model/TypeFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dc;->f:Lcom/google/android/libraries/places/api/model/TypeFilter;

    return-object p0
.end method

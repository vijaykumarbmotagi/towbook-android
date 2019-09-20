.class public final Lcom/google/android/libraries/places/internal/cz;
.super Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;
.source "PG"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

.field private d:Lcom/google/android/gms/tasks/CancellationToken;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;
    .registers 3

    if-nez p1, :cond_a

    .line 4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null placeId"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/cz;->a:Ljava/lang/String;

    return-object p0
.end method

.method final a(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;"
        }
    .end annotation

    if-nez p1, :cond_a

    .line 8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null placeFields"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/cz;->b:Ljava/util/List;

    return-object p0
.end method

.method public final build()Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;
    .registers 6

    const-string v0, ""

    .line 16
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cz;->a:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " placeId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    :cond_10
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cz;->b:Ljava/util/List;

    if-nez v1, :cond_1e

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " placeFields"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3c
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_40
    new-instance v0, Lcom/google/android/libraries/places/internal/cy;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cz;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/cz;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/cz;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/cz;->d:Lcom/google/android/gms/tasks/CancellationToken;

    .line 23
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/cy;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;Lcom/google/android/gms/tasks/CancellationToken;)V

    return-object v0
.end method

.method public final setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;
    .registers 2
    .param p1    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/cz;->d:Lcom/google/android/gms/tasks/CancellationToken;

    return-object p0
.end method

.method public final setSessionToken(Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;
    .registers 2
    .param p1    # Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/cz;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    return-object p0
.end method

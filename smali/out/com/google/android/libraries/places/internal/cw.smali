.class public final Lcom/google/android/libraries/places/internal/cw;
.super Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;
.source "PG"


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;

.field private c:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

.field private d:Lcom/google/android/gms/tasks/CancellationToken;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;
    .registers 3

    if-nez p1, :cond_a

    .line 10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null photoMetadata"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/cw;->c:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    return-object p0
.end method

.method final a()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cw;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method final b()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cw;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method final c()Lcom/google/android/libraries/places/api/model/PhotoMetadata;
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cw;->c:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    if-nez v0, :cond_c

    .line 14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"photoMetadata\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_c
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/cw;->c:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    return-object v0
.end method

.method final d()Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;
    .registers 6

    const-string v0, ""

    .line 19
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cw;->c:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    if-nez v1, :cond_10

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " photoMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2e
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_32
    new-instance v0, Lcom/google/android/libraries/places/internal/cv;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/cw;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/cw;->b:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/cw;->c:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/cw;->d:Lcom/google/android/gms/tasks/CancellationToken;

    .line 24
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/cv;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/libraries/places/api/model/PhotoMetadata;Lcom/google/android/gms/tasks/CancellationToken;)V

    return-object v0
.end method

.method public final setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;
    .registers 2
    .param p1    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/cw;->d:Lcom/google/android/gms/tasks/CancellationToken;

    return-object p0
.end method

.method public final setMaxHeight(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/cw;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setMaxWidth(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/cw;->a:Ljava/lang/Integer;

    return-object p0
.end method

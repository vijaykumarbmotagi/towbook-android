.class public final Lcom/google/android/libraries/places/internal/bk;
.super Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;
.source "PG"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_a

    .line 12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null photoReference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bk;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/google/android/libraries/places/api/model/PhotoMetadata;
    .registers 6

    const-string v0, ""

    .line 16
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bk;->a:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " attributions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    :cond_10
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bk;->b:Ljava/lang/Integer;

    if-nez v1, :cond_1e

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    :cond_1e
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bk;->c:Ljava/lang/Integer;

    if-nez v1, :cond_2c

    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    :cond_2c
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bk;->d:Ljava/lang/String;

    if-nez v1, :cond_3a

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " photoReference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 25
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_53

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    :cond_53
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_58
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_5c
    new-instance v0, Lcom/google/android/libraries/places/internal/cf;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/bk;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/bk;->b:Ljava/lang/Integer;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/bk;->c:Ljava/lang/Integer;

    .line 28
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/bk;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/cf;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public final setAttributions(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;
    .registers 3

    if-nez p1, :cond_a

    .line 4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null attributions"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bk;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setHeight(I)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;
    .registers 2

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bk;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setWidth(I)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;
    .registers 2

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/bk;->c:Ljava/lang/Integer;

    return-object p0
.end method

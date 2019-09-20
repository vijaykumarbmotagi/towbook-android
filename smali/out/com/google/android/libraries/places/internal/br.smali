.class public final Lcom/google/android/libraries/places/internal/br;
.super Lcom/google/android/libraries/places/api/model/RectangularBounds$a;
.source "PG"


# instance fields
.field private a:Lcom/google/android/gms/maps/model/LatLng;

.field private b:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/RectangularBounds$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/libraries/places/api/model/RectangularBounds$a;
    .registers 3

    if-nez p1, :cond_a

    .line 4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null southwest"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->a:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method final a()Lcom/google/android/libraries/places/api/model/RectangularBounds;
    .registers 5

    const-string v0, ""

    .line 12
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/br;->a:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v1, :cond_10

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " southwest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    :cond_10
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/br;->b:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v1, :cond_1e

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " northeast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 17
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

    .line 18
    :cond_40
    new-instance v0, Lcom/google/android/libraries/places/internal/cn;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/br;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/br;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/cn;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v0
.end method

.method final b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/libraries/places/api/model/RectangularBounds$a;
    .registers 3

    if-nez p1, :cond_a

    .line 8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null northeast"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_a
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/br;->b:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

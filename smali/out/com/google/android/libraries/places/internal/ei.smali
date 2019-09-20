.class public final Lcom/google/android/libraries/places/internal/ei;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;


# instance fields
.field private final synthetic a:Lcom/google/android/libraries/places/internal/ff;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/ff;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ei;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/google/android/gms/common/api/Status;)V
    .registers 5

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ei;->a:Lcom/google/android/libraries/places/internal/ff;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/ff;->a(Lcom/google/android/libraries/places/internal/ff;ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 11
    throw p1
.end method

.method public final onPlaceSelected(Lcom/google/android/libraries/places/api/model/Place;)V
    .registers 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ei;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/ff;->a(Lcom/google/android/libraries/places/internal/ff;Lcom/google/android/libraries/places/api/model/Place;)V
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 6
    throw p1
.end method

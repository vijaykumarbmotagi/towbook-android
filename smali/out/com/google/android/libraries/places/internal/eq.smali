.class final synthetic Lcom/google/android/libraries/places/internal/eq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/eo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/eo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/eq;->a:Lcom/google/android/libraries/places/internal/eo;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/eq;->a:Lcom/google/android/libraries/places/internal/eo;

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    .line 2
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/libraries/places/internal/el;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 3
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->getAutocompletePredictions()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/es;->a(Ljava/util/List;)Lcom/google/android/libraries/places/internal/es;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/el;->a(Lcom/google/android/libraries/places/internal/es;)V

    return-void
.end method

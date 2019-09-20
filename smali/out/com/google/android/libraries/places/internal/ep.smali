.class final synthetic Lcom/google/android/libraries/places/internal/ep;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/eo;

.field private final b:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/eo;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ep;->a:Lcom/google/android/libraries/places/internal/eo;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ep;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ep;->a:Lcom/google/android/libraries/places/internal/eo;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ep;->b:Ljava/lang/CharSequence;

    .line 2
    :try_start_4
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/el;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    if-eqz v2, :cond_11

    .line 3
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/el;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/CancellationTokenSource;->cancel()V

    .line 4
    :cond_11
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    new-instance v3, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    iput-object v3, v2, Lcom/google/android/libraries/places/internal/el;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 5
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->builder()Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setQuery(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    .line 9
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/el;->b:Lcom/google/android/libraries/places/internal/eu;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/eu;->b()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setLocationBias(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    .line 12
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/el;->b:Lcom/google/android/libraries/places/internal/eu;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/eu;->c()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    .line 15
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/el;->b:Lcom/google/android/libraries/places/internal/eu;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/eu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    .line 18
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/el;->b:Lcom/google/android/libraries/places/internal/eu;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/eu;->e()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setTypeFilter(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    .line 21
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/el;->g:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setSessionToken(Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/el;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->build()Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;

    move-result-object v1

    .line 25
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    .line 26
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/el;->a:Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 28
    invoke-interface {v2, v1}, Lcom/google/android/libraries/places/api/net/PlacesClient;->findAutocompletePredictions(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/eq;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/places/internal/eq;-><init>(Lcom/google/android/libraries/places/internal/eo;)V

    .line 29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/er;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/places/internal/er;-><init>(Lcom/google/android/libraries/places/internal/eo;)V

    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_87
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_87} :catch_88
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_87} :catch_88

    return-void

    :catch_88
    move-exception v0

    .line 33
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 34
    throw v0
.end method

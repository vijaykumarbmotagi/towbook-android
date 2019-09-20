.class final synthetic Lcom/google/android/libraries/places/internal/em;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/el;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/el;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/em;->a:Lcom/google/android/libraries/places/internal/el;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/em;->a:Lcom/google/android/libraries/places/internal/el;

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/google/android/libraries/places/internal/el;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 3
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/el;->d:Lcom/google/android/libraries/places/internal/es;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;->getPlace()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/libraries/places/internal/es;->a(Lcom/google/android/libraries/places/internal/es;Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/internal/es;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/el;->a(Lcom/google/android/libraries/places/internal/es;)V

    .line 4
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/el;->e:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

    if-eqz p1, :cond_21

    .line 5
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/el;->e:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/el;->d:Lcom/google/android/libraries/places/internal/es;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/es;->e:Lcom/google/android/libraries/places/api/model/Place;

    invoke-interface {p1, v0}, Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;->onPlaceSelected(Lcom/google/android/libraries/places/api/model/Place;)V

    :cond_21
    return-void
.end method

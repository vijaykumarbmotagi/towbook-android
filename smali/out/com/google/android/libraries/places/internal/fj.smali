.class public Lcom/google/android/libraries/places/internal/fj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/lm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/lm;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/av;

.field public final b:Lcom/google/android/libraries/places/internal/et;

.field public final c:Lcom/google/android/libraries/places/internal/ft;

.field public final d:Lcom/google/android/libraries/places/internal/dh;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/av;Lcom/google/android/libraries/places/internal/et;Lcom/google/android/libraries/places/internal/ft;Lcom/google/android/libraries/places/internal/dh;)V
    .registers 5

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/av;

    .line 58
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/fj;->b:Lcom/google/android/libraries/places/internal/et;

    .line 59
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/fj;->c:Lcom/google/android/libraries/places/internal/ft;

    .line 60
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/fj;->d:Lcom/google/android/libraries/places/internal/dh;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .registers 1

    .line 4
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/s;->convert()Lcom/google/android/libraries/places/internal/ax;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    return-object p0
.end method

.method public static a(Landroid/net/wifi/WifiManager;Lcom/google/android/libraries/places/internal/a;)Lcom/google/android/libraries/places/internal/j;
    .registers 3

    .line 6
    new-instance v0, Lcom/google/android/libraries/places/internal/j;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/j;-><init>(Landroid/net/wifi/WifiManager;Lcom/google/android/libraries/places/internal/a;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .registers 1

    .line 5
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FetchPlacePabloResponse;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/s;->convert()Lcom/google/android/libraries/places/internal/ax;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/af;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/s;->convert()Lcom/google/android/libraries/places/internal/ax;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/s;->convert()Lcom/google/android/libraries/places/internal/ax;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)Lcom/google/android/gms/tasks/Task;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2334

    if-nez v0, :cond_1f

    if-nez v1, :cond_1f

    .line 21
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Must include max width or max height in request."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1f
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_42

    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gtz v5, :cond_42

    .line 23
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const-string v5, "Max Width must be >= 1, but was: %d."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    .line 24
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_42
    if-eqz v1, :cond_63

    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_63

    .line 27
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v5, "Max Height must be >= 1, but was: %d."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    .line 28
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 30
    :cond_63
    new-instance v0, Lcom/google/android/libraries/places/internal/ae;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/av;

    .line 31
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/av;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/fj;->b:Lcom/google/android/libraries/places/internal/et;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/libraries/places/internal/ae;-><init>(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;Ljava/lang/String;Lcom/google/android/libraries/places/internal/et;)V

    .line 32
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fj;->d:Lcom/google/android/libraries/places/internal/dh;

    new-instance v1, Lcom/google/android/libraries/places/internal/dm;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/dm;-><init>()V

    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/dh;->a(Lcom/google/android/libraries/places/internal/r;Lcom/google/android/libraries/places/internal/dm;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/al;->a:Lcom/google/android/gms/tasks/Continuation;

    .line 34
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x2334

    if-eqz v0, :cond_1d

    .line 37
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "Place ID must not be empty."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 38
    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 39
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "Place Fields must not be empty."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 40
    :cond_38
    new-instance v0, Lcom/google/android/libraries/places/internal/ag;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/av;

    .line 41
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/av;->c()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/av;

    .line 42
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/av;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fj;->b:Lcom/google/android/libraries/places/internal/et;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/libraries/places/internal/ag;-><init>(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;Ljava/util/Locale;Ljava/lang/String;Lcom/google/android/libraries/places/internal/et;)V

    .line 43
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fj;->c:Lcom/google/android/libraries/places/internal/ft;

    const-class v1, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FetchPlacePabloResponse;

    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ft;->a(Lcom/google/android/libraries/places/internal/r;Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/am;->a:Lcom/google/android/gms/tasks/Continuation;

    .line 45
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 9
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 11
    :cond_17
    new-instance v0, Lcom/google/android/libraries/places/internal/ah;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/av;

    .line 12
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/av;->c()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/av;

    .line 13
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/av;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fj;->b:Lcom/google/android/libraries/places/internal/et;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/libraries/places/internal/ah;-><init>(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;Ljava/util/Locale;Ljava/lang/String;Lcom/google/android/libraries/places/internal/et;)V

    .line 14
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fj;->c:Lcom/google/android/libraries/places/internal/ft;

    const-class v1, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ft;->a(Lcom/google/android/libraries/places/internal/r;Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/ak;->a:Lcom/google/android/gms/tasks/Continuation;

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/common/collect/ImmutableList;)Lcom/google/android/gms/tasks/Task;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            "Landroid/location/Location;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/libraries/places/internal/fh;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 48
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0x2334

    const-string v0, "Place Fields must not be empty."

    invoke-direct {p2, p3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1d
    new-instance v7, Lcom/google/android/libraries/places/internal/ai;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/av;

    .line 50
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/av;->c()Ljava/util/Locale;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/av;

    .line 51
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/av;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/fj;->b:Lcom/google/android/libraries/places/internal/et;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/ai;-><init>(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/common/collect/ImmutableList;Ljava/util/Locale;Ljava/lang/String;Lcom/google/android/libraries/places/internal/et;)V

    .line 52
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fj;->c:Lcom/google/android/libraries/places/internal/ft;

    const-class p2, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;

    .line 53
    invoke-virtual {p1, v7, p2}, Lcom/google/android/libraries/places/internal/ft;->a(Lcom/google/android/libraries/places/internal/r;Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object p2, Lcom/google/android/libraries/places/internal/an;->a:Lcom/google/android/gms/tasks/Continuation;

    .line 54
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 7
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

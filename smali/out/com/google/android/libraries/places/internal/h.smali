.class final Lcom/google/android/libraries/places/internal/h;
.super Lcom/google/android/gms/location/LocationCallback;
.source "PG"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/h;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .registers 6

    .line 8
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/android/gms/location/LocationCallback;->onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 10
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/h;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    const-string v3, "Location unavailable."

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z
    :try_end_1c
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1c} :catch_1d

    :cond_1c
    return-void

    :catch_1d
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 14
    throw p1
.end method

.method public final onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .registers 3

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/android/gms/location/LocationCallback;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/h;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 7
    throw p1
.end method

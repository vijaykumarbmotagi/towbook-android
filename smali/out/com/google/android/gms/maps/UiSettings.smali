.class public final Lcom/google/android/gms/maps/UiSettings;
.super Ljava/lang/Object;


# instance fields
.field private final zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    return-void
.end method


# virtual methods
.method public final isCompassEnabled()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->isCompassEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isIndoorLevelPickerEnabled()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->isIndoorLevelPickerEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isMapToolbarEnabled()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->isMapToolbarEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isMyLocationButtonEnabled()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->isMyLocationButtonEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isRotateGesturesEnabled()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->isRotateGesturesEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isScrollGesturesEnabled()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->isScrollGesturesEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isTiltGesturesEnabled()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->isTiltGesturesEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isZoomControlsEnabled()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->isZoomControlsEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isZoomGesturesEnabled()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->isZoomGesturesEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setAllGesturesEnabled(Z)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->setAllGesturesEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setCompassEnabled(Z)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->setCompassEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setIndoorLevelPickerEnabled(Z)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->setIndoorLevelPickerEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setMapToolbarEnabled(Z)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->setMapToolbarEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setMyLocationButtonEnabled(Z)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->setMyLocationButtonEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setRotateGesturesEnabled(Z)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->setRotateGesturesEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setScrollGesturesEnabled(Z)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->setScrollGesturesEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setTiltGesturesEnabled(Z)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->setTiltGesturesEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setZoomControlsEnabled(Z)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->setZoomControlsEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setZoomGesturesEnabled(Z)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/UiSettings;->zzci:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->setZoomGesturesEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.class final Lcom/google/android/gms/maps/MapFragment$zzb;
.super Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/MapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/DeferredLifecycleHelper<",
        "Lcom/google/android/gms/maps/MapFragment$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaz:Landroid/app/Fragment;

.field private zzbc:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/OnDelegateCreatedListener<",
            "Lcom/google/android/gms/maps/MapFragment$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzbd:Landroid/app/Activity;

.field private final zzbe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/OnMapReadyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Fragment;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbe:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzaz:Landroid/app/Fragment;

    return-void
.end method

.method private final setActivity(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbd:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/maps/MapFragment$zzb;->zzc()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/maps/MapFragment$zzb;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/maps/MapFragment$zzb;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private final zzc()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbd:Landroid/app/Activity;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbc:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-nez v0, :cond_5b

    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbd:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbd:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zzbz;->zza(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbd:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/zze;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    move-result-object v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbc:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;

    new-instance v2, Lcom/google/android/gms/maps/MapFragment$zza;

    iget-object v3, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzaz:Landroid/app/Fragment;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/MapFragment$zza;-><init>(Landroid/app/Fragment;Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;->onDelegateCreated(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/OnMapReadyCallback;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/MapFragment$zza;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/MapFragment$zza;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    goto :goto_38

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_53} :catch_54
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_e .. :try_end_53} :catch_5b

    return-void

    :catch_54
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_5b
    :cond_5b
    return-void
.end method


# virtual methods
.method protected final createDelegate(Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/OnDelegateCreatedListener<",
            "Lcom/google/android/gms/maps/MapFragment$zza;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbc:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/MapFragment$zzb;->zzc()V

    return-void
.end method

.method public final getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapFragment$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapFragment$zza;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbe:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

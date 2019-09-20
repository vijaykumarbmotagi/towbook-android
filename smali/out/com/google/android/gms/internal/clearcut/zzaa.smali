.class public Lcom/google/android/gms/internal/clearcut/zzaa;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzdc:Landroid/os/UserManager;

.field private static volatile zzdd:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzaa;->zzf()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/clearcut/zzaa;->zzdd:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zze(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzaa;->zzf()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzaa;->zzf(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private static zzf()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private static zzf(Landroid/content/Context;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/clearcut/zzaa;->zzdd:Z

    if-nez v0, :cond_31

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzaa;->zzdc:Landroid/os/UserManager;

    if-nez v0, :cond_26

    const-class v1, Lcom/google/android/gms/internal/clearcut/zzaa;

    monitor-enter v1

    :try_start_b
    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzaa;->zzdc:Landroid/os/UserManager;

    if-nez v0, :cond_21

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    sput-object p0, Lcom/google/android/gms/internal/clearcut/zzaa;->zzdc:Landroid/os/UserManager;

    if-nez p0, :cond_20

    const/4 p0, 0x1

    sput-boolean p0, Lcom/google/android/gms/internal/clearcut/zzaa;->zzdd:Z

    monitor-exit v1

    return p0

    :cond_20
    move-object v0, p0

    :cond_21
    monitor-exit v1

    goto :goto_26

    :catchall_23
    move-exception p0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw p0

    :cond_26
    :goto_26
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/clearcut/zzaa;->zzdd:Z

    if-eqz v0, :cond_31

    const/4 p0, 0x0

    sput-object p0, Lcom/google/android/gms/internal/clearcut/zzaa;->zzdc:Landroid/os/UserManager;

    :cond_31
    return v0
.end method

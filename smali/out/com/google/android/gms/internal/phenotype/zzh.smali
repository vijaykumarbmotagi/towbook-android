.class public final Lcom/google/android/gms/internal/phenotype/zzh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzak:Ljava/lang/Object;

.field private static zzal:Landroid/content/Context; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static zzam:Z = false

.field private static volatile zzan:Ljava/lang/Boolean;

.field private static volatile zzbq:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/phenotype/zzh;->zzak:Ljava/lang/Object;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/phenotype/zzh;->zzak:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_10

    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_18

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_18

    :cond_17
    move-object p0, v1

    :goto_18
    sget-object v1, Lcom/google/android/gms/internal/phenotype/zzh;->zzal:Landroid/content/Context;

    if-eq v1, p0, :cond_1f

    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/internal/phenotype/zzh;->zzan:Ljava/lang/Boolean;

    :cond_1f
    sput-object p0, Lcom/google/android/gms/internal/phenotype/zzh;->zzal:Landroid/content/Context;

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_26

    const/4 p0, 0x0

    sput-boolean p0, Lcom/google/android/gms/internal/phenotype/zzh;->zzam:Z

    return-void

    :catchall_26
    move-exception p0

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public static maybeInit(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/phenotype/zzh;->zzal:Landroid/content/Context;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/google/android/gms/internal/phenotype/zzh;->init(Landroid/content/Context;)V

    :cond_7
    return-void
.end method
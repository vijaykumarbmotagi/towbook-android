.class abstract Lcom/google/android/gms/iid/zzai;
.super Ljava/lang/Object;


# static fields
.field private static zzcy:Lcom/google/android/gms/iid/zzai;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "SdkFlagFactory.class"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized zzw()Lcom/google/android/gms/iid/zzai;
    .registers 2

    const-class v0, Lcom/google/android/gms/iid/zzai;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/iid/zzai;->zzcy:Lcom/google/android/gms/iid/zzai;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/android/gms/iid/zzac;

    invoke-direct {v1}, Lcom/google/android/gms/iid/zzac;-><init>()V

    sput-object v1, Lcom/google/android/gms/iid/zzai;->zzcy:Lcom/google/android/gms/iid/zzai;

    :cond_e
    sget-object v1, Lcom/google/android/gms/iid/zzai;->zzcy:Lcom/google/android/gms/iid/zzai;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method abstract zzd(Ljava/lang/String;Z)Lcom/google/android/gms/iid/zzaj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/iid/zzaj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

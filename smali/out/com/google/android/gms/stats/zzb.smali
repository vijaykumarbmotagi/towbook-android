.class final Lcom/google/android/gms/stats/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaei:Lcom/google/android/gms/stats/WakeLock;


# direct methods
.method constructor <init>(Lcom/google/android/gms/stats/WakeLock;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/stats/zzb;->zzaei:Lcom/google/android/gms/stats/WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/stats/zzb;->zzaei:Lcom/google/android/gms/stats/WakeLock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/stats/WakeLock;->zza(Lcom/google/android/gms/stats/WakeLock;I)V

    return-void
.end method

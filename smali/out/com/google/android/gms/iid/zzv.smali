.class final synthetic Lcom/google/android/gms/iid/zzv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzch:Lcom/google/android/gms/iid/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/zzt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/iid/zzv;->zzch:Lcom/google/android/gms/iid/zzt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/iid/zzv;->zzch:Lcom/google/android/gms/iid/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/iid/zzt;->zzt()V

    return-void
.end method

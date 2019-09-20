.class public final Lcom/google/android/gms/internal/clearcut/zzgw$zza;
.super Lcom/google/android/gms/internal/clearcut/zzcg;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/zzdq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/clearcut/zzgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/clearcut/zzgw$zza$zza;,
        Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/zzcg<",
        "Lcom/google/android/gms/internal/clearcut/zzgw$zza;",
        "Lcom/google/android/gms/internal/clearcut/zzgw$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/clearcut/zzdq;"
    }
.end annotation


# static fields
.field private static volatile zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/zzdz<",
            "Lcom/google/android/gms/internal/clearcut/zzgw$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbir:Lcom/google/android/gms/internal/clearcut/zzgw$zza;


# instance fields
.field private zzbiq:Lcom/google/android/gms/internal/clearcut/zzcn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/zzcn<",
            "Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/zzgw$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zzbir:Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    const-class v0, Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zzbir:Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzcg;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/clearcut/zzcg;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzcg;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zzbb()Lcom/google/android/gms/internal/clearcut/zzcn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zzbiq:Lcom/google/android/gms/internal/clearcut/zzcn;

    return-void
.end method

.method public static zzft()Lcom/google/android/gms/internal/clearcut/zzgw$zza;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zzbir:Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    return-object v0
.end method

.method static synthetic zzfu()Lcom/google/android/gms/internal/clearcut/zzgw$zza;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zzbir:Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    return-object v0
.end method

.method public static zzi([B)Lcom/google/android/gms/internal/clearcut/zzgw$zza;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/clearcut/zzco;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zzbir:Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/clearcut/zzcg;->zzb(Lcom/google/android/gms/internal/clearcut/zzcg;[B)Lcom/google/android/gms/internal/clearcut/zzcg;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lcom/google/android/gms/internal/clearcut/zzgx;->zzba:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzb;

    sget-object p3, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zzbir:Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/clearcut/zzcg$zzb;-><init>(Lcom/google/android/gms/internal/clearcut/zzcg;)V

    sput-object p1, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;

    :cond_2a
    monitor-exit p2

    return-object p1

    :catchall_2c
    move-exception p1

    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2c

    throw p1

    :cond_2f
    return-object p1

    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zzbir:Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbiq"

    aput-object v0, p1, p2

    const-class p2, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zzbir:Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zza(Lcom/google/android/gms/internal/clearcut/zzdo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zza;-><init>(Lcom/google/android/gms/internal/clearcut/zzgx;)V

    return-object p1

    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/clearcut/zzgw$zza;-><init>()V

    return-object p1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_48
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzfs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->zzbiq:Lcom/google/android/gms/internal/clearcut/zzcn;

    return-object v0
.end method

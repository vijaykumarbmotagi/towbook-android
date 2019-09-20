.class public final Lcom/google/android/gms/internal/clearcut/zzge$zzw;
.super Lcom/google/android/gms/internal/clearcut/zzcg;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/zzdq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/clearcut/zzge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzw"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/clearcut/zzge$zzw$zza;,
        Lcom/google/android/gms/internal/clearcut/zzge$zzw$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/zzcg<",
        "Lcom/google/android/gms/internal/clearcut/zzge$zzw;",
        "Lcom/google/android/gms/internal/clearcut/zzge$zzw$zza;",
        ">;",
        "Lcom/google/android/gms/internal/clearcut/zzdq;"
    }
.end annotation


# static fields
.field private static volatile zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/zzdz<",
            "Lcom/google/android/gms/internal/clearcut/zzge$zzw;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbhw:Lcom/google/android/gms/internal/clearcut/zzge$zzw;


# instance fields
.field private zzbb:I

.field private zzbhq:I

.field private zzbhr:Ljava/lang/String;

.field private zzbhs:Ljava/lang/String;

.field private zzbht:Ljava/lang/String;

.field private zzbhu:Ljava/lang/String;

.field private zzbhv:Ljava/lang/String;

.field private zzsr:Ljava/lang/String;

.field private zzsz:Ljava/lang/String;

.field private zzta:Ljava/lang/String;

.field private zzte:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzge$zzw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/zzge$zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzbhw:Lcom/google/android/gms/internal/clearcut/zzge$zzw;

    const-class v0, Lcom/google/android/gms/internal/clearcut/zzge$zzw;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzbhw:Lcom/google/android/gms/internal/clearcut/zzge$zzw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzcg;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/clearcut/zzcg;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzcg;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzbhr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzte:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzbhs:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzta:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzsr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzbht:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzsz:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzbhu:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzbhv:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzfp()Lcom/google/android/gms/internal/clearcut/zzge$zzw;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzbhw:Lcom/google/android/gms/internal/clearcut/zzge$zzw;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lcom/google/android/gms/internal/clearcut/zzgf;->zzba:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_8e

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
    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/clearcut/zzge$zzw;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzb;

    sget-object p3, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzbhw:Lcom/google/android/gms/internal/clearcut/zzge$zzw;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/clearcut/zzcg$zzb;-><init>(Lcom/google/android/gms/internal/clearcut/zzcg;)V

    sput-object p1, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;

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
    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzbhw:Lcom/google/android/gms/internal/clearcut/zzge$zzw;

    return-object p1

    :pswitch_33
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbb"

    aput-object v0, p1, p2

    const-string p2, "zzbhq"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzge$zzw$zzb;->zzd()Lcom/google/android/gms/internal/clearcut/zzck;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbhr"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzte"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbhs"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzta"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzsr"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzbht"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzsz"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzbhu"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzbhv"

    aput-object p3, p1, p2

    const-string p2, "\u0001\n\u0000\u0001\u0001\n\n\u000b\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u0008\u0001\u0003\u0008\u0002\u0004\u0008\u0003\u0005\u0008\u0004\u0006\u0008\u0005\u0007\u0008\u0006\u0008\u0008\u0007\t\u0008\u0008\n\u0008\t"

    sget-object p3, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zzbhw:Lcom/google/android/gms/internal/clearcut/zzge$zzw;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/clearcut/zzge$zzw;->zza(Lcom/google/android/gms/internal/clearcut/zzdo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_81
    new-instance p1, Lcom/google/android/gms/internal/clearcut/zzge$zzw$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzge$zzw$zza;-><init>(Lcom/google/android/gms/internal/clearcut/zzgf;)V

    return-object p1

    :pswitch_87
    new-instance p1, Lcom/google/android/gms/internal/clearcut/zzge$zzw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/clearcut/zzge$zzw;-><init>()V

    return-object p1

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_87
        :pswitch_81
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

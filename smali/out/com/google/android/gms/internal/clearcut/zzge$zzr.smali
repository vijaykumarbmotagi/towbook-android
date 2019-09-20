.class public final Lcom/google/android/gms/internal/clearcut/zzge$zzr;
.super Lcom/google/android/gms/internal/clearcut/zzcg;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/zzdq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/clearcut/zzge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/clearcut/zzge$zzr$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/zzcg<",
        "Lcom/google/android/gms/internal/clearcut/zzge$zzr;",
        "Lcom/google/android/gms/internal/clearcut/zzge$zzr$zza;",
        ">;",
        "Lcom/google/android/gms/internal/clearcut/zzdq;"
    }
.end annotation


# static fields
.field private static final zzbez:Lcom/google/android/gms/internal/clearcut/zzge$zzr;

.field private static volatile zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/zzdz<",
            "Lcom/google/android/gms/internal/clearcut/zzge$zzr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbb:I

.field private zzsw:Ljava/lang/String;

.field private zzsz:Ljava/lang/String;

.field private zzwa:Ljava/lang/String;

.field private zzwb:Ljava/lang/String;

.field private zzwc:I

.field private zzwd:I

.field private zzwz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzge$zzr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/zzge$zzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zzbez:Lcom/google/android/gms/internal/clearcut/zzge$zzr;

    const-class v0, Lcom/google/android/gms/internal/clearcut/zzge$zzr;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zzbez:Lcom/google/android/gms/internal/clearcut/zzge$zzr;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzcg;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/clearcut/zzcg;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzcg;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zzwa:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zzwb:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zzsw:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zzsz:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zzwz:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzfk()Lcom/google/android/gms/internal/clearcut/zzge$zzr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zzbez:Lcom/google/android/gms/internal/clearcut/zzge$zzr;

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

    packed-switch p1, :pswitch_data_74

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
    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/clearcut/zzge$zzr;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzb;

    sget-object p3, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zzbez:Lcom/google/android/gms/internal/clearcut/zzge$zzr;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/clearcut/zzcg$zzb;-><init>(Lcom/google/android/gms/internal/clearcut/zzcg;)V

    sput-object p1, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;

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
    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zzbez:Lcom/google/android/gms/internal/clearcut/zzge$zzr;

    return-object p1

    :pswitch_33
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbb"

    aput-object v0, p1, p2

    const-string p2, "zzwa"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzwb"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzsw"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzsz"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzwc"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzwd"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzwz"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0008\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001\u0003\u0008\u0002\u0004\u0008\u0003\u0005\u0004\u0004\u0006\u0004\u0005\u0007\u0008\u0006"

    sget-object p3, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zzbez:Lcom/google/android/gms/internal/clearcut/zzge$zzr;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/clearcut/zzge$zzr;->zza(Lcom/google/android/gms/internal/clearcut/zzdo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_67
    new-instance p1, Lcom/google/android/gms/internal/clearcut/zzge$zzr$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/clearcut/zzge$zzr$zza;-><init>(Lcom/google/android/gms/internal/clearcut/zzgf;)V

    return-object p1

    :pswitch_6d
    new-instance p1, Lcom/google/android/gms/internal/clearcut/zzge$zzr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/clearcut/zzge$zzr;-><init>()V

    return-object p1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_67
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

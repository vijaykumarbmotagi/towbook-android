.class public final enum Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/zzcj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/clearcut/zzap$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/clearcut/zzcj;"
    }
.end annotation


# static fields
.field private static final zzbq:Lcom/google/android/gms/internal/clearcut/zzck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/zzck<",
            "Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzet:Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

.field private static final enum zzeu:Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

.field private static final enum zzev:Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

.field private static final synthetic zzew:[Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->zzet:Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    const-string v1, "ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->zzeu:Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    const-string v1, "OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->zzev:Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->zzet:Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->zzeu:Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->zzev:Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->zzew:[Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzar;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/zzar;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->zzbq:Lcom/google/android/gms/internal/clearcut/zzck;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->zzew:[Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/clearcut/zzck;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/clearcut/zzck<",
            "Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->zzbq:Lcom/google/android/gms/internal/clearcut/zzck;

    return-object v0
.end method

.method public static zze(I)Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;
    .registers 1

    packed-switch p0, :pswitch_data_e

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->zzev:Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->zzeu:Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->zzet:Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;

    return-object p0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final zzc()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzap$zza$zzb;->value:I

    return v0
.end method
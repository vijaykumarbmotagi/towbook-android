.class final enum Lorg/acra/collector/MediaCodecListCollector$CodecType;
.super Ljava/lang/Enum;
.source "MediaCodecListCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/collector/MediaCodecListCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CodecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/acra/collector/MediaCodecListCollector$CodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/acra/collector/MediaCodecListCollector$CodecType;

.field public static final enum AAC:Lorg/acra/collector/MediaCodecListCollector$CodecType;

.field public static final enum AVC:Lorg/acra/collector/MediaCodecListCollector$CodecType;

.field public static final enum H263:Lorg/acra/collector/MediaCodecListCollector$CodecType;

.field public static final enum MPEG4:Lorg/acra/collector/MediaCodecListCollector$CodecType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 36
    new-instance v0, Lorg/acra/collector/MediaCodecListCollector$CodecType;

    const-string v1, "AVC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/acra/collector/MediaCodecListCollector$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/collector/MediaCodecListCollector$CodecType;->AVC:Lorg/acra/collector/MediaCodecListCollector$CodecType;

    new-instance v0, Lorg/acra/collector/MediaCodecListCollector$CodecType;

    const-string v1, "H263"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/acra/collector/MediaCodecListCollector$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/collector/MediaCodecListCollector$CodecType;->H263:Lorg/acra/collector/MediaCodecListCollector$CodecType;

    new-instance v0, Lorg/acra/collector/MediaCodecListCollector$CodecType;

    const-string v1, "MPEG4"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/acra/collector/MediaCodecListCollector$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/collector/MediaCodecListCollector$CodecType;->MPEG4:Lorg/acra/collector/MediaCodecListCollector$CodecType;

    new-instance v0, Lorg/acra/collector/MediaCodecListCollector$CodecType;

    const-string v1, "AAC"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/acra/collector/MediaCodecListCollector$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/collector/MediaCodecListCollector$CodecType;->AAC:Lorg/acra/collector/MediaCodecListCollector$CodecType;

    const/4 v0, 0x4

    .line 35
    new-array v0, v0, [Lorg/acra/collector/MediaCodecListCollector$CodecType;

    sget-object v1, Lorg/acra/collector/MediaCodecListCollector$CodecType;->AVC:Lorg/acra/collector/MediaCodecListCollector$CodecType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/collector/MediaCodecListCollector$CodecType;->H263:Lorg/acra/collector/MediaCodecListCollector$CodecType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/collector/MediaCodecListCollector$CodecType;->MPEG4:Lorg/acra/collector/MediaCodecListCollector$CodecType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/acra/collector/MediaCodecListCollector$CodecType;->AAC:Lorg/acra/collector/MediaCodecListCollector$CodecType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/acra/collector/MediaCodecListCollector$CodecType;->$VALUES:[Lorg/acra/collector/MediaCodecListCollector$CodecType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/collector/MediaCodecListCollector$CodecType;
    .registers 2

    .line 35
    const-class v0, Lorg/acra/collector/MediaCodecListCollector$CodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/acra/collector/MediaCodecListCollector$CodecType;

    return-object p0
.end method

.method public static values()[Lorg/acra/collector/MediaCodecListCollector$CodecType;
    .registers 1

    .line 35
    sget-object v0, Lorg/acra/collector/MediaCodecListCollector$CodecType;->$VALUES:[Lorg/acra/collector/MediaCodecListCollector$CodecType;

    invoke-virtual {v0}, [Lorg/acra/collector/MediaCodecListCollector$CodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/collector/MediaCodecListCollector$CodecType;

    return-object v0
.end method

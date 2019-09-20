.class public final enum Lorg/checkerframework/qualframework/poly/qual/Wildcard;
.super Ljava/lang/Enum;
.source "Wildcard.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/qualframework/poly/qual/Wildcard;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/qualframework/poly/qual/Wildcard;

.field public static final enum EXTENDS:Lorg/checkerframework/qualframework/poly/qual/Wildcard;

.field public static final enum NONE:Lorg/checkerframework/qualframework/poly/qual/Wildcard;

.field public static final enum SUPER:Lorg/checkerframework/qualframework/poly/qual/Wildcard;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 11
    new-instance v0, Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/qualframework/poly/qual/Wildcard;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/qualframework/poly/qual/Wildcard;->NONE:Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    new-instance v0, Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    const-string v1, "EXTENDS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/checkerframework/qualframework/poly/qual/Wildcard;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/qualframework/poly/qual/Wildcard;->EXTENDS:Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    new-instance v0, Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    const-string v1, "SUPER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/checkerframework/qualframework/poly/qual/Wildcard;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/qualframework/poly/qual/Wildcard;->SUPER:Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    sget-object v1, Lorg/checkerframework/qualframework/poly/qual/Wildcard;->NONE:Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    aput-object v1, v0, v2

    sget-object v1, Lorg/checkerframework/qualframework/poly/qual/Wildcard;->EXTENDS:Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    aput-object v1, v0, v3

    sget-object v1, Lorg/checkerframework/qualframework/poly/qual/Wildcard;->SUPER:Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    aput-object v1, v0, v4

    sput-object v0, Lorg/checkerframework/qualframework/poly/qual/Wildcard;->$VALUES:[Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/qualframework/poly/qual/Wildcard;
    .registers 2

    .line 10
    const-class v0, Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    return-object p0
.end method

.method public static values()[Lorg/checkerframework/qualframework/poly/qual/Wildcard;
    .registers 1

    .line 10
    sget-object v0, Lorg/checkerframework/qualframework/poly/qual/Wildcard;->$VALUES:[Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    invoke-virtual {v0}, [Lorg/checkerframework/qualframework/poly/qual/Wildcard;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/qualframework/poly/qual/Wildcard;

    return-object v0
.end method

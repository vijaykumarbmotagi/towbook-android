.class public final enum Lafu/org/checkerframework/dataflow/qual/Pure$Kind;
.super Ljava/lang/Enum;
.source "Pure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafu/org/checkerframework/dataflow/qual/Pure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lafu/org/checkerframework/dataflow/qual/Pure$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lafu/org/checkerframework/dataflow/qual/Pure$Kind;

.field public static final enum DETERMINISTIC:Lafu/org/checkerframework/dataflow/qual/Pure$Kind;

.field public static final enum SIDE_EFFECT_FREE:Lafu/org/checkerframework/dataflow/qual/Pure$Kind;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 29
    new-instance v0, Lafu/org/checkerframework/dataflow/qual/Pure$Kind;

    const-string v1, "SIDE_EFFECT_FREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lafu/org/checkerframework/dataflow/qual/Pure$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/dataflow/qual/Pure$Kind;->SIDE_EFFECT_FREE:Lafu/org/checkerframework/dataflow/qual/Pure$Kind;

    .line 35
    new-instance v0, Lafu/org/checkerframework/dataflow/qual/Pure$Kind;

    const-string v1, "DETERMINISTIC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lafu/org/checkerframework/dataflow/qual/Pure$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/dataflow/qual/Pure$Kind;->DETERMINISTIC:Lafu/org/checkerframework/dataflow/qual/Pure$Kind;

    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [Lafu/org/checkerframework/dataflow/qual/Pure$Kind;

    sget-object v1, Lafu/org/checkerframework/dataflow/qual/Pure$Kind;->SIDE_EFFECT_FREE:Lafu/org/checkerframework/dataflow/qual/Pure$Kind;

    aput-object v1, v0, v2

    sget-object v1, Lafu/org/checkerframework/dataflow/qual/Pure$Kind;->DETERMINISTIC:Lafu/org/checkerframework/dataflow/qual/Pure$Kind;

    aput-object v1, v0, v3

    sput-object v0, Lafu/org/checkerframework/dataflow/qual/Pure$Kind;->$VALUES:[Lafu/org/checkerframework/dataflow/qual/Pure$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lafu/org/checkerframework/dataflow/qual/Pure$Kind;
    .registers 2

    .line 27
    const-class v0, Lafu/org/checkerframework/dataflow/qual/Pure$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lafu/org/checkerframework/dataflow/qual/Pure$Kind;

    return-object p0
.end method

.method public static values()[Lafu/org/checkerframework/dataflow/qual/Pure$Kind;
    .registers 1

    .line 27
    sget-object v0, Lafu/org/checkerframework/dataflow/qual/Pure$Kind;->$VALUES:[Lafu/org/checkerframework/dataflow/qual/Pure$Kind;

    invoke-virtual {v0}, [Lafu/org/checkerframework/dataflow/qual/Pure$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lafu/org/checkerframework/dataflow/qual/Pure$Kind;

    return-object v0
.end method

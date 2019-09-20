.class public final enum Lafu/org/checkerframework/framework/qual/DefaultLocation;
.super Ljava/lang/Enum;
.source "DefaultLocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lafu/org/checkerframework/framework/qual/DefaultLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum ALL:Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum EXCEPTION_PARAMETER:Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum EXPLICIT_LOWER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum EXPLICIT_UPPER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum FIELD:Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum IMPLICIT_LOWER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum IMPLICIT_UPPER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum LOCAL_VARIABLE:Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum LOWER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum OTHERWISE:Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum PARAMETERS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum RECEIVERS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum RESOURCE_VARIABLE:Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum RETURNS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

.field public static final enum UPPER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 19
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "FIELD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->FIELD:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    .line 27
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "LOCAL_VARIABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->LOCAL_VARIABLE:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    .line 33
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "RESOURCE_VARIABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->RESOURCE_VARIABLE:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    .line 39
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "EXCEPTION_PARAMETER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->EXCEPTION_PARAMETER:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    .line 45
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "RECEIVERS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->RECEIVERS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    .line 51
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "PARAMETERS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->PARAMETERS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    .line 57
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "RETURNS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->RETURNS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    .line 66
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "LOWER_BOUNDS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->LOWER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    .line 73
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "EXPLICIT_LOWER_BOUNDS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->EXPLICIT_LOWER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    .line 80
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "IMPLICIT_LOWER_BOUNDS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->IMPLICIT_LOWER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    .line 93
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "UPPER_BOUNDS"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->UPPER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    .line 101
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "EXPLICIT_UPPER_BOUNDS"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->EXPLICIT_UPPER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    .line 109
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "IMPLICIT_UPPER_BOUNDS"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->IMPLICIT_UPPER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    .line 115
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "OTHERWISE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->OTHERWISE:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    .line 121
    new-instance v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const-string v1, "ALL"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lafu/org/checkerframework/framework/qual/DefaultLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->ALL:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const/16 v0, 0xf

    .line 13
    new-array v0, v0, [Lafu/org/checkerframework/framework/qual/DefaultLocation;

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->FIELD:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    aput-object v1, v0, v2

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->LOCAL_VARIABLE:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    aput-object v1, v0, v3

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->RESOURCE_VARIABLE:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    aput-object v1, v0, v4

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->EXCEPTION_PARAMETER:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    aput-object v1, v0, v5

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->RECEIVERS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    aput-object v1, v0, v6

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->PARAMETERS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    aput-object v1, v0, v7

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->RETURNS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    aput-object v1, v0, v8

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->LOWER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    aput-object v1, v0, v9

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->EXPLICIT_LOWER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    aput-object v1, v0, v10

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->IMPLICIT_LOWER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    aput-object v1, v0, v11

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->UPPER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    aput-object v1, v0, v12

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->EXPLICIT_UPPER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    aput-object v1, v0, v13

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->IMPLICIT_UPPER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    aput-object v1, v0, v14

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->OTHERWISE:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lafu/org/checkerframework/framework/qual/DefaultLocation;->ALL:Lafu/org/checkerframework/framework/qual/DefaultLocation;

    aput-object v1, v0, v15

    sput-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->$VALUES:[Lafu/org/checkerframework/framework/qual/DefaultLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lafu/org/checkerframework/framework/qual/DefaultLocation;
    .registers 2

    .line 13
    const-class v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lafu/org/checkerframework/framework/qual/DefaultLocation;

    return-object p0
.end method

.method public static values()[Lafu/org/checkerframework/framework/qual/DefaultLocation;
    .registers 1

    .line 13
    sget-object v0, Lafu/org/checkerframework/framework/qual/DefaultLocation;->$VALUES:[Lafu/org/checkerframework/framework/qual/DefaultLocation;

    invoke-virtual {v0}, [Lafu/org/checkerframework/framework/qual/DefaultLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lafu/org/checkerframework/framework/qual/DefaultLocation;

    return-object v0
.end method

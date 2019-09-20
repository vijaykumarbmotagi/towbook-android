.class public final enum Lcom/annimon/stream/operator/ObjMerge$MergeResult;
.super Ljava/lang/Enum;
.source "ObjMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/operator/ObjMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MergeResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/annimon/stream/operator/ObjMerge$MergeResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/annimon/stream/operator/ObjMerge$MergeResult;

.field public static final enum TAKE_FIRST:Lcom/annimon/stream/operator/ObjMerge$MergeResult;

.field public static final enum TAKE_SECOND:Lcom/annimon/stream/operator/ObjMerge$MergeResult;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 12
    new-instance v0, Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    const-string v1, "TAKE_FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/operator/ObjMerge$MergeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->TAKE_FIRST:Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    new-instance v0, Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    const-string v1, "TAKE_SECOND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/annimon/stream/operator/ObjMerge$MergeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->TAKE_SECOND:Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    sget-object v1, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->TAKE_FIRST:Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->TAKE_SECOND:Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->$VALUES:[Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/annimon/stream/operator/ObjMerge$MergeResult;
    .registers 2

    .line 11
    const-class v0, Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    return-object p0
.end method

.method public static values()[Lcom/annimon/stream/operator/ObjMerge$MergeResult;
    .registers 1

    .line 11
    sget-object v0, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->$VALUES:[Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    invoke-virtual {v0}, [Lcom/annimon/stream/operator/ObjMerge$MergeResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    return-object v0
.end method

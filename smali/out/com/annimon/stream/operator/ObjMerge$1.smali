.class synthetic Lcom/annimon/stream/operator/ObjMerge$1;
.super Ljava/lang/Object;
.source "ObjMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/operator/ObjMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$annimon$stream$operator$ObjMerge$MergeResult:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 65
    invoke-static {}, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->values()[Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/annimon/stream/operator/ObjMerge$1;->$SwitchMap$com$annimon$stream$operator$ObjMerge$MergeResult:[I

    :try_start_9
    sget-object v0, Lcom/annimon/stream/operator/ObjMerge$1;->$SwitchMap$com$annimon$stream$operator$ObjMerge$MergeResult:[I

    sget-object v1, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->TAKE_FIRST:Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    invoke-virtual {v1}, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/annimon/stream/operator/ObjMerge$1;->$SwitchMap$com$annimon$stream$operator$ObjMerge$MergeResult:[I

    sget-object v1, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->TAKE_SECOND:Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    invoke-virtual {v1}, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

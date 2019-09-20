.class synthetic Landroidx/work/impl/model/WorkTypeConverters$1;
.super Ljava/lang/Object;
.source "WorkTypeConverters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/model/WorkTypeConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$work$BackoffPolicy:[I

.field static final synthetic $SwitchMap$androidx$work$NetworkType:[I

.field static final synthetic $SwitchMap$androidx$work$WorkInfo$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 197
    invoke-static {}, Landroidx/work/NetworkType;->values()[Landroidx/work/NetworkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$NetworkType:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$NetworkType:[I

    sget-object v2, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    invoke-virtual {v2}, Landroidx/work/NetworkType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$NetworkType:[I

    sget-object v3, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v3}, Landroidx/work/NetworkType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$NetworkType:[I

    sget-object v4, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    invoke-virtual {v4}, Landroidx/work/NetworkType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$NetworkType:[I

    sget-object v5, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    invoke-virtual {v5}, Landroidx/work/NetworkType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    const/4 v4, 0x5

    :try_start_36
    sget-object v5, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$NetworkType:[I

    sget-object v6, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    invoke-virtual {v6}, Landroidx/work/NetworkType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_40} :catch_40

    .line 155
    :catch_40
    invoke-static {}, Landroidx/work/BackoffPolicy;->values()[Landroidx/work/BackoffPolicy;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$BackoffPolicy:[I

    :try_start_49
    sget-object v5, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$BackoffPolicy:[I

    sget-object v6, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    invoke-virtual {v6}, Landroidx/work/BackoffPolicy;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_53} :catch_53

    :catch_53
    :try_start_53
    sget-object v5, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$BackoffPolicy:[I

    sget-object v6, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    invoke-virtual {v6}, Landroidx/work/BackoffPolicy;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_5d} :catch_5d

    .line 89
    :catch_5d
    invoke-static {}, Landroidx/work/WorkInfo$State;->values()[Landroidx/work/WorkInfo$State;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$WorkInfo$State:[I

    :try_start_66
    sget-object v5, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$WorkInfo$State:[I

    sget-object v6, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v6}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_70} :catch_70

    :catch_70
    :try_start_70
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$WorkInfo$State:[I

    sget-object v5, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    invoke-virtual {v5}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7a
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$WorkInfo$State:[I

    sget-object v1, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$WorkInfo$State:[I

    sget-object v1, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_8e} :catch_8e

    :catch_8e
    :try_start_8e
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$WorkInfo$State:[I

    sget-object v1, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_98} :catch_98

    :catch_98
    :try_start_98
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$WorkInfo$State:[I

    sget-object v1, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a3} :catch_a3

    :catch_a3
    return-void
.end method

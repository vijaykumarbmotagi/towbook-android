.class synthetic Lcom/github/ybq/android/spinkit/SpriteFactory$1;
.super Ljava/lang/Object;
.source "SpriteFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/SpriteFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$github$ybq$android$spinkit$Style:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 27
    invoke-static {}, Lcom/github/ybq/android/spinkit/Style;->values()[Lcom/github/ybq/android/spinkit/Style;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    :try_start_9
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->ROTATING_PLANE:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->DOUBLE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->WAVE:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->WANDERING_CUBES:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->PULSE:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->CHASING_DOTS:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4b
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->THREE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_56

    :catch_56
    :try_start_56
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->CUBE_GRID:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->FADING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7a
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->FOLDING_CUBE:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_86

    :catch_86
    :try_start_86
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->ROTATING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_92

    :catch_92
    :try_start_92
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->MULTIPLE_PULSE:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_9e

    :catch_9e
    :try_start_9e
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_aa

    :catch_aa
    :try_start_aa
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->MULTIPLE_PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v1}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_b6

    :catch_b6
    return-void
.end method

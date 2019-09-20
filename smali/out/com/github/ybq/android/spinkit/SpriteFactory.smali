.class public Lcom/github/ybq/android/spinkit/SpriteFactory;
.super Ljava/lang/Object;
.source "SpriteFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/github/ybq/android/spinkit/Style;)Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .registers 2

    .line 27
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_68

    const/4 p0, 0x0

    goto :goto_66

    .line 71
    :pswitch_d
    new-instance p0, Lcom/github/ybq/android/spinkit/style/MultiplePulseRing;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/MultiplePulseRing;-><init>()V

    goto :goto_66

    .line 68
    :pswitch_13
    new-instance p0, Lcom/github/ybq/android/spinkit/style/PulseRing;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/PulseRing;-><init>()V

    goto :goto_66

    .line 65
    :pswitch_19
    new-instance p0, Lcom/github/ybq/android/spinkit/style/MultiplePulse;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/MultiplePulse;-><init>()V

    goto :goto_66

    .line 62
    :pswitch_1f
    new-instance p0, Lcom/github/ybq/android/spinkit/style/RotatingCircle;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/RotatingCircle;-><init>()V

    goto :goto_66

    .line 59
    :pswitch_25
    new-instance p0, Lcom/github/ybq/android/spinkit/style/FoldingCube;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/FoldingCube;-><init>()V

    goto :goto_66

    .line 56
    :pswitch_2b
    new-instance p0, Lcom/github/ybq/android/spinkit/style/FadingCircle;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/FadingCircle;-><init>()V

    goto :goto_66

    .line 53
    :pswitch_31
    new-instance p0, Lcom/github/ybq/android/spinkit/style/CubeGrid;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/CubeGrid;-><init>()V

    goto :goto_66

    .line 50
    :pswitch_37
    new-instance p0, Lcom/github/ybq/android/spinkit/style/Circle;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/Circle;-><init>()V

    goto :goto_66

    .line 47
    :pswitch_3d
    new-instance p0, Lcom/github/ybq/android/spinkit/style/ThreeBounce;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/ThreeBounce;-><init>()V

    goto :goto_66

    .line 44
    :pswitch_43
    new-instance p0, Lcom/github/ybq/android/spinkit/style/ChasingDots;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/ChasingDots;-><init>()V

    goto :goto_66

    .line 41
    :pswitch_49
    new-instance p0, Lcom/github/ybq/android/spinkit/style/Pulse;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/Pulse;-><init>()V

    goto :goto_66

    .line 38
    :pswitch_4f
    new-instance p0, Lcom/github/ybq/android/spinkit/style/WanderingCubes;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/WanderingCubes;-><init>()V

    goto :goto_66

    .line 35
    :pswitch_55
    new-instance p0, Lcom/github/ybq/android/spinkit/style/Wave;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/Wave;-><init>()V

    goto :goto_66

    .line 32
    :pswitch_5b
    new-instance p0, Lcom/github/ybq/android/spinkit/style/DoubleBounce;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/DoubleBounce;-><init>()V

    goto :goto_66

    .line 29
    :pswitch_61
    new-instance p0, Lcom/github/ybq/android/spinkit/style/RotatingPlane;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/RotatingPlane;-><init>()V

    :goto_66
    return-object p0

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5b
        :pswitch_55
        :pswitch_4f
        :pswitch_49
        :pswitch_43
        :pswitch_3d
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_1f
        :pswitch_19
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

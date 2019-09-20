.class public Lcom/github/ybq/android/spinkit/style/MultiplePulseRing;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "MultiplePulseRing.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .registers 5

    const/4 v0, 0x0

    .line 22
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 23
    aget-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v2, v0, 0xc8

    invoke-virtual {v1, v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    goto :goto_1

    :cond_e
    return-void
.end method

.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .registers 4

    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [Lcom/github/ybq/android/spinkit/sprite/Sprite;

    new-instance v1, Lcom/github/ybq/android/spinkit/style/PulseRing;

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/style/PulseRing;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/ybq/android/spinkit/style/PulseRing;

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/style/PulseRing;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/ybq/android/spinkit/style/PulseRing;

    invoke-direct {v1}, Lcom/github/ybq/android/spinkit/style/PulseRing;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

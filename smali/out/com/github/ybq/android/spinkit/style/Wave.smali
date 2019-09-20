.class public Lcom/github/ybq/android/spinkit/style/Wave;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "Wave.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 10

    .line 34
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/style/Wave;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/style/Wave;->getChildCount()I

    move-result v1

    div-int/2addr v0, v1

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    const/4 v2, 0x0

    .line 38
    :goto_1b
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/style/Wave;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 39
    invoke-virtual {p0, v2}, Lcom/github/ybq/android/spinkit/style/Wave;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v3

    .line 40
    iget v4, p1, Landroid/graphics/Rect;->left:I

    mul-int v5, v2, v0

    add-int/2addr v4, v5

    div-int/lit8 v5, v0, 0x5

    add-int/2addr v4, v5

    add-int v5, v4, v1

    .line 42
    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v6, v5, v7}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_39
    return-void
.end method

.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .registers 5

    const/4 v0, 0x5

    .line 19
    new-array v0, v0, [Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;

    const/4 v1, 0x0

    .line 20
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_2a

    .line 21
    new-instance v2, Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;-><init>(Lcom/github/ybq/android/spinkit/style/Wave;)V

    aput-object v2, v0, v1

    .line 22
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1e

    .line 23
    aget-object v2, v0, v1

    mul-int/lit8 v3, v1, 0x64

    add-int/lit16 v3, v3, 0x258

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    goto :goto_27

    .line 25
    :cond_1e
    aget-object v2, v0, v1

    mul-int/lit8 v3, v1, 0x64

    add-int/lit16 v3, v3, -0x4b0

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/style/Wave$WaveItem;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2a
    return-object v0
.end method

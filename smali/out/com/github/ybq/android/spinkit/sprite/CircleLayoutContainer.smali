.class public abstract Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "CircleLayoutContainer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;)V
    .registers 8

    const/4 v0, 0x0

    .line 13
    :goto_1
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 14
    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    mul-int/lit16 v3, v0, 0x168

    .line 16
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getChildCount()I

    move-result v4

    div-int/2addr v3, v4

    int-to-float v3, v3

    .line 17
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    .line 18
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    .line 16
    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 19
    invoke-virtual {v1, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->draw(Landroid/graphics/Canvas;)V

    .line 20
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_35
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 10

    .line 26
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x400cccccc0000000L    # 3.5999999046325684

    div-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getChildCount()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v1, v0

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v3, 0x0

    .line 31
    :goto_2b
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 32
    invoke-virtual {p0, v3}, Lcom/github/ybq/android/spinkit/sprite/CircleLayoutContainer;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v4

    .line 33
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v4, v1, v5, v2, v6}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_42
    return-void
.end method

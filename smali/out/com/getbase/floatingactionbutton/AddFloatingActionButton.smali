.class public Lcom/getbase/floatingactionbutton/AddFloatingActionButton;
.super Lcom/getbase/floatingactionbutton/FloatingActionButton;
.source "AddFloatingActionButton.java"


# instance fields
.field mPlusColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 64
    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_icon_size:I

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getDimension(I)F

    move-result v6

    const/high16 v0, 0x40000000    # 2.0f

    div-float v4, v6, v0

    .line 67
    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_plus_icon_size:I

    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getDimension(I)F

    move-result v1

    .line 68
    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_plus_icon_stroke:I

    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getDimension(I)F

    move-result v2

    div-float v5, v2, v0

    sub-float v1, v6, v1

    div-float v3, v1, v0

    .line 71
    new-instance v0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton$1;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton$1;-><init>(Lcom/getbase/floatingactionbutton/AddFloatingActionButton;FFFF)V

    .line 79
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 81
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 82
    iget v2, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x1

    .line 84
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v1
.end method

.method public getPlusColor()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    return v0
.end method

.method init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 32
    sget-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->AddFloatingActionButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->AddFloatingActionButton_fab_plusIconColor:I

    const v2, 0x106000b

    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    .line 34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    invoke-super {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 59
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use FloatingActionButton if you want to use custom icon"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPlusColor(I)V
    .registers 3

    .line 51
    iget v0, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    if-eq v0, p1, :cond_9

    .line 52
    iput p1, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    .line 53
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->updateBackground()V

    :cond_9
    return-void
.end method

.method public setPlusColorResId(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 47
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setPlusColor(I)V

    return-void
.end method

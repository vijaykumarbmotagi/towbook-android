.class public Lcom/getbase/floatingactionbutton/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getbase/floatingactionbutton/FloatingActionButton$TranslucentLayerDrawable;,
        Lcom/getbase/floatingactionbutton/FloatingActionButton$FAB_SIZE;
    }
.end annotation


# static fields
.field public static final SIZE_MINI:I = 0x1

.field public static final SIZE_NORMAL:I


# instance fields
.field private mCircleSize:F

.field mColorDisabled:I

.field mColorNormal:I

.field mColorPressed:I

.field private mDrawableSize:I

.field private mIcon:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowOffset:F

.field private mShadowRadius:F

.field private mSize:I

.field mStrokeVisible:Z

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private adjustColorBrightness(IF)I
    .registers 6

    const/4 v0, 0x3

    .line 355
    new-array v0, v0, [F

    .line 356
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    .line 358
    aget v2, v0, v1

    mul-float v2, v2, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    aput p2, v0, v1

    .line 360
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private createCircleDrawable(IF)Landroid/graphics/drawable/Drawable;
    .registers 12

    .line 288
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 289
    invoke-direct {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->opaque(I)I

    move-result p1

    .line 291
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 293
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x1

    .line 294
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 295
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x2

    .line 297
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createInnerStrokesDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v2, v3

    const/16 p1, 0xff

    if-eq v0, p1, :cond_38

    .line 302
    iget-boolean p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mStrokeVisible:Z

    if-nez p1, :cond_32

    goto :goto_38

    :cond_32
    new-instance p1, Lcom/getbase/floatingactionbutton/FloatingActionButton$TranslucentLayerDrawable;

    invoke-direct {p1, v0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton$TranslucentLayerDrawable;-><init>(I[Landroid/graphics/drawable/Drawable;)V

    goto :goto_3d

    :cond_38
    :goto_38
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_3d
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    float-to-int v8, p2

    const/4 v4, 0x1

    move-object v3, p1

    move v5, v8

    move v6, v8

    move v7, v8

    .line 307
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-object p1
.end method

.method private createFillDrawable(F)Landroid/graphics/drawable/StateListDrawable;
    .registers 7

    .line 280
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    .line 281
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, -0x101009e

    aput v4, v2, v3

    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorDisabled:I

    invoke-direct {p0, v4, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createCircleDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 282
    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    invoke-direct {p0, v2, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createCircleDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 283
    new-array v1, v3, [I

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    invoke-direct {p0, v2, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createCircleDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private createInnerStrokesDrawable(IF)Landroid/graphics/drawable/Drawable;
    .registers 12

    .line 381
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mStrokeVisible:Z

    if-nez v0, :cond_b

    .line 382
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p1

    .line 385
    :cond_b
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 387
    invoke-direct {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->darkenColor(I)I

    move-result v8

    .line 388
    invoke-direct {p0, v8}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->halfTransparent(I)I

    move-result v7

    .line 389
    invoke-direct {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->lightenColor(I)I

    move-result v4

    .line 390
    invoke-direct {p0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->halfTransparent(I)I

    move-result v5

    .line 392
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    .line 393
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 394
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 395
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 396
    new-instance p2, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;

    move-object v2, p2

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionButton;IIIII)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    return-object v0
.end method

.method private createOuterStrokeDrawable(F)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 330
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 332
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    .line 333
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 334
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 335
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, -0x1000000

    .line 336
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    const p1, 0x3ca3d70a    # 0.02f

    .line 337
    invoke-direct {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->opacityToAlpha(F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-object v0
.end method

.method private darkenColor(I)I
    .registers 3

    const v0, 0x3f666666    # 0.9f

    .line 347
    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->adjustColorBrightness(IF)I

    move-result p1

    return p1
.end method

.method private halfTransparent(I)I
    .registers 5

    .line 365
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 366
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 367
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 368
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 364
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private lightenColor(I)I
    .registers 3

    const v0, 0x3f8ccccd    # 1.1f

    .line 351
    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->adjustColorBrightness(IF)I

    move-result p1

    return p1
.end method

.method private opacityToAlpha(F)I
    .registers 3

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private opaque(I)I
    .registers 4

    .line 374
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 375
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 376
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 373
    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 414
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 416
    :cond_a
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_d
    return-void
.end method

.method private updateCircleSize()V
    .registers 2

    .line 98
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    if-nez v0, :cond_7

    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_size_normal:I

    goto :goto_9

    :cond_7
    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_size_mini:I

    :goto_9
    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mCircleSize:F

    return-void
.end method

.method private updateDrawableSize()V
    .registers 4

    .line 94
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mCircleSize:F

    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    return-void
.end method


# virtual methods
.method getColor(I)I
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 201
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getColorDisabled()I
    .registers 2

    .line 175
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorDisabled:I

    return v0
.end method

.method public getColorNormal()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    return v0
.end method

.method public getColorPressed()I
    .registers 2

    .line 157
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    return v0
.end method

.method getDimension(I)F
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 205
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 271
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 272
    :cond_7
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    if-eqz v0, :cond_16

    .line 273
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 275
    :cond_16
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method getLabelView()Landroid/widget/TextView;
    .registers 2

    .line 217
    sget v0, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 75
    sget-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 76
    sget p2, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton_fab_colorNormal:I

    const v0, 0x1060013

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    .line 77
    sget p2, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton_fab_colorPressed:I

    const v0, 0x1060012

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    .line 78
    sget p2, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton_fab_colorDisabled:I

    const/high16 v0, 0x1060000

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorDisabled:I

    .line 79
    sget p2, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton_fab_size:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    .line 80
    sget p2, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton_fab_icon:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    .line 81
    sget p2, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton_fab_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mTitle:Ljava/lang/String;

    .line 82
    sget p2, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton_fab_stroke_visible:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mStrokeVisible:Z

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateCircleSize()V

    .line 86
    sget p1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_radius:I

    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    .line 87
    sget p1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowOffset:F

    .line 88
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateDrawableSize()V

    .line 90
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    return-void
.end method

.method public isStrokeVisible()Z
    .registers 2

    .line 197
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mStrokeVisible:Z

    return v0
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 226
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 227
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    invoke-virtual {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColorDisabled(I)V
    .registers 3

    .line 183
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorDisabled:I

    if-eq v0, p1, :cond_9

    .line 184
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorDisabled:I

    .line 185
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    :cond_9
    return-void
.end method

.method public setColorDisabledResId(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 179
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setColorDisabled(I)V

    return-void
.end method

.method public setColorNormal(I)V
    .registers 3

    .line 147
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    if-eq v0, p1, :cond_9

    .line 148
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    .line 149
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    :cond_9
    return-void
.end method

.method public setColorNormalResId(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 143
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setColorNormal(I)V

    return-void
.end method

.method public setColorPressed(I)V
    .registers 3

    .line 165
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    if-eq v0, p1, :cond_9

    .line 166
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    .line 167
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    :cond_9
    return-void
.end method

.method public setColorPressedResId(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 161
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setColorPressed(I)V

    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 120
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    if-eq v0, p1, :cond_c

    .line 121
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 123
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    :cond_c
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 128
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_c

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    .line 130
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    :cond_c
    return-void
.end method

.method public setSize(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    if-eqz p1, :cond_d

    .line 103
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use @FAB_SIZE constants only!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_d
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    if-eq v0, p1, :cond_1c

    .line 107
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    .line 108
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateCircleSize()V

    .line 109
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateDrawableSize()V

    .line 110
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    :cond_1c
    return-void
.end method

.method public setStrokeVisible(Z)V
    .registers 3

    .line 190
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mStrokeVisible:Z

    if-eq v0, p1, :cond_9

    .line 191
    iput-boolean p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mStrokeVisible:Z

    .line 192
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 209
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mTitle:Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 212
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 422
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 424
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method updateBackground()V
    .registers 13

    .line 231
    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_stroke_width:I

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 234
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 236
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    if-nez v4, :cond_1a

    sget v4, Lcom/getbase/floatingactionbutton/R$drawable;->fab_bg_normal:I

    goto :goto_1c

    :cond_1a
    sget v4, Lcom/getbase/floatingactionbutton/R$drawable;->fab_bg_mini:I

    :goto_1c
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 237
    invoke-direct {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createFillDrawable(F)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 238
    invoke-direct {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createOuterStrokeDrawable(F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    .line 239
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-direct {v8, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mCircleSize:F

    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_icon_size:I

    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    div-int/2addr v0, v3

    .line 244
    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    float-to-int v9, v2

    .line 245
    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    iget v3, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowOffset:F

    sub-float/2addr v2, v3

    float-to-int v10, v2

    .line 246
    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    iget v3, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowOffset:F

    add-float/2addr v2, v3

    float-to-int v11, v2

    const/4 v3, 0x1

    move-object v2, v8

    move v4, v9

    move v5, v10

    move v6, v9

    move v7, v11

    .line 248
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v3, 0x2

    int-to-float v2, v9

    sub-float/2addr v2, v1

    float-to-int v6, v2

    int-to-float v2, v10

    sub-float/2addr v2, v1

    float-to-int v5, v2

    int-to-float v2, v11

    sub-float/2addr v2, v1

    float-to-int v7, v2

    move-object v2, v8

    move v4, v6

    .line 254
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v3, 0x3

    add-int v6, v9, v0

    add-int v5, v10, v0

    add-int v7, v11, v0

    move v4, v6

    .line 260
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 266
    invoke-direct {p0, v8}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

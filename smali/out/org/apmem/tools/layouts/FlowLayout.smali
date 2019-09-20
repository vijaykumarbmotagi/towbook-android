.class public Lorg/apmem/tools/layouts/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private debugDraw:Z

.field private horizontalSpacing:I

.field private orientation:I

.field private verticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->horizontalSpacing:I

    .line 17
    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->verticalSpacing:I

    .line 18
    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->orientation:I

    .line 19
    iput-boolean v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->debugDraw:Z

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lorg/apmem/tools/layouts/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->horizontalSpacing:I

    .line 17
    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->verticalSpacing:I

    .line 18
    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->orientation:I

    .line 19
    iput-boolean v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->debugDraw:Z

    .line 30
    invoke-direct {p0, p1, p2}, Lorg/apmem/tools/layouts/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 16
    iput p3, p0, Lorg/apmem/tools/layouts/FlowLayout;->horizontalSpacing:I

    .line 17
    iput p3, p0, Lorg/apmem/tools/layouts/FlowLayout;->verticalSpacing:I

    .line 18
    iput p3, p0, Lorg/apmem/tools/layouts/FlowLayout;->orientation:I

    .line 19
    iput-boolean p3, p0, Lorg/apmem/tools/layouts/FlowLayout;->debugDraw:Z

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apmem/tools/layouts/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createPaint(I)Landroid/graphics/Paint;
    .registers 4

    .line 274
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 275
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 276
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 277
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object v0
.end method

.method private drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V
    .registers 18

    move-object v0, p0

    .line 222
    iget-boolean v1, v0, Lorg/apmem/tools/layouts/FlowLayout;->debugDraw:Z

    if-nez v1, :cond_6

    return-void

    :cond_6
    const/16 v1, -0x100

    .line 226
    invoke-direct {v0, v1}, Lorg/apmem/tools/layouts/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    const v2, -0xff0100

    .line 227
    invoke-direct {v0, v2}, Lorg/apmem/tools/layouts/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v9

    const/high16 v2, -0x10000

    .line 228
    invoke-direct {v0, v2}, Lorg/apmem/tools/layouts/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v10

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .line 232
    invoke-static {v11}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$200(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v2

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v13, 0x40800000    # 4.0f

    if-lez v2, :cond_79

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v8, v2

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v12

    add-float v14, v2, v3

    .line 235
    invoke-static {v11}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$200(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v5, v8, v2

    move-object/from16 v2, p1

    move v3, v8

    move v4, v14

    move v6, v14

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 236
    invoke-static {v11}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$200(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v8

    sub-float v3, v2, v13

    sub-float v4, v14, v13

    invoke-static {v11}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$200(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v5, v8, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 237
    invoke-static {v11}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$200(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v8

    sub-float v3, v2, v13

    add-float v4, v14, v13

    invoke-static {v11}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$200(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v5, v8, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_c1

    .line 238
    :cond_79
    iget v2, v0, Lorg/apmem/tools/layouts/FlowLayout;->horizontalSpacing:I

    if-lez v2, :cond_c1

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v12

    add-float v14, v3, v4

    .line 241
    iget v3, v0, Lorg/apmem/tools/layouts/FlowLayout;->horizontalSpacing:I

    int-to-float v3, v3

    add-float v6, v2, v3

    move-object/from16 v3, p1

    move v4, v2

    move v5, v14

    move v7, v14

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 242
    iget v3, v0, Lorg/apmem/tools/layouts/FlowLayout;->horizontalSpacing:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    sub-float v4, v3, v13

    sub-float v5, v14, v13

    iget v3, v0, Lorg/apmem/tools/layouts/FlowLayout;->horizontalSpacing:I

    int-to-float v3, v3

    add-float v6, v2, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 243
    iget v3, v0, Lorg/apmem/tools/layouts/FlowLayout;->horizontalSpacing:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    sub-float v4, v3, v13

    add-float v5, v14, v13

    iget v3, v0, Lorg/apmem/tools/layouts/FlowLayout;->horizontalSpacing:I

    int-to-float v3, v3

    add-float v6, v2, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 246
    :cond_c1
    :goto_c1
    invoke-static {v11}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$100(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v2

    if-lez v2, :cond_116

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v12

    add-float v8, v2, v3

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v9, v2

    .line 249
    invoke-static {v11}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$100(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v6, v9, v2

    move-object/from16 v2, p1

    move v3, v8

    move v4, v9

    move v5, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v3, v8, v13

    .line 250
    invoke-static {v11}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$100(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v9

    sub-float v4, v2, v13

    invoke-static {v11}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$100(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v6, v9, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v3, v8, v13

    .line 251
    invoke-static {v11}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$100(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v9

    sub-float v4, v2, v13

    invoke-static {v11}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$100(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v2

    int-to-float v2, v2

    add-float v6, v9, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_15d

    .line 252
    :cond_116
    iget v1, v0, Lorg/apmem/tools/layouts/FlowLayout;->verticalSpacing:I

    if-lez v1, :cond_15d

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v12

    add-float/2addr v1, v2

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    .line 255
    iget v3, v0, Lorg/apmem/tools/layouts/FlowLayout;->verticalSpacing:I

    int-to-float v3, v3

    add-float v7, v2, v3

    move-object/from16 v3, p1

    move v4, v1

    move v5, v2

    move v6, v1

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v1, v13

    .line 256
    iget v3, v0, Lorg/apmem/tools/layouts/FlowLayout;->verticalSpacing:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    sub-float v5, v3, v13

    iget v3, v0, Lorg/apmem/tools/layouts/FlowLayout;->verticalSpacing:I

    int-to-float v3, v3

    add-float v7, v2, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v4, v1, v13

    .line 257
    iget v3, v0, Lorg/apmem/tools/layouts/FlowLayout;->verticalSpacing:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    sub-float v5, v3, v13

    iget v3, v0, Lorg/apmem/tools/layouts/FlowLayout;->verticalSpacing:I

    int-to-float v3, v3

    add-float v7, v2, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 260
    :cond_15d
    :goto_15d
    invoke-static {v11}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$000(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1a2

    .line 261
    iget v1, v0, Lorg/apmem/tools/layouts/FlowLayout;->orientation:I

    const/high16 v2, 0x40c00000    # 6.0f

    if-nez v1, :cond_186

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v6, v1

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v12

    add-float/2addr v1, v3

    sub-float v5, v1, v2

    add-float v7, v1, v2

    move-object/from16 v3, p1

    move v4, v6

    move-object v8, v10

    .line 264
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1a2

    .line 266
    :cond_186
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v12

    add-float/2addr v1, v3

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v7, v3

    sub-float v4, v1, v2

    add-float v6, v1, v2

    move-object/from16 v3, p1

    move v5, v7

    move-object v8, v10

    .line 268
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1a2
    :goto_1a2
    return-void
.end method

.method private getHorizontalSpacing(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I
    .registers 3

    .line 164
    invoke-virtual {p1}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->horizontalSpacingSpecified()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 165
    invoke-static {p1}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$200(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result p1

    goto :goto_d

    .line 167
    :cond_b
    iget p1, p0, Lorg/apmem/tools/layouts/FlowLayout;->horizontalSpacing:I

    :goto_d
    return p1
.end method

.method private getVerticalSpacing(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I
    .registers 3

    .line 154
    invoke-virtual {p1}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->verticalSpacingSpecified()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 155
    invoke-static {p1}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$100(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result p1

    goto :goto_d

    .line 157
    :cond_b
    iget p1, p0, Lorg/apmem/tools/layouts/FlowLayout;->verticalSpacing:I

    :goto_d
    return p1
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 210
    sget-object v0, Lcom/towbook/mobile/R$styleable;->FlowLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 212
    :try_start_8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lorg/apmem/tools/layouts/FlowLayout;->horizontalSpacing:I

    const/4 p2, 0x3

    .line 213
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lorg/apmem/tools/layouts/FlowLayout;->verticalSpacing:I

    const/4 p2, 0x2

    .line 214
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lorg/apmem/tools/layouts/FlowLayout;->orientation:I

    .line 215
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lorg/apmem/tools/layouts/FlowLayout;->debugDraw:Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_26

    .line 217
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_26
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 191
    instance-of p1, p1, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 5

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 185
    invoke-direct {p0, p1, p2}, Lorg/apmem/tools/layouts/FlowLayout;->drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V

    return p3
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->generateDefaultLayoutParams()Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    .registers 3

    .line 196
    new-instance v0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lorg/apmem/tools/layouts/FlowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lorg/apmem/tools/layouts/FlowLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    .registers 4

    .line 201
    new-instance v0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    .registers 3

    .line 206
    new-instance v0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    .line 174
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_5
    if-ge p2, p1, :cond_31

    .line 176
    invoke-virtual {p0, p2}, Lorg/apmem/tools/layouts/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 177
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .line 178
    invoke-static {p4}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$300(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result p5

    invoke-static {p4}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$400(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v0

    invoke-static {p4}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$300(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p4}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$400(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p4, v2

    invoke-virtual {p3, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_31
    return-void
.end method

.method protected onMeasure(II)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 41
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 42
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 44
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 45
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 50
    iget v7, v0, Lorg/apmem/tools/layouts/FlowLayout;->orientation:I

    if-nez v7, :cond_2f

    goto :goto_31

    :cond_2f
    move v3, v4

    move v5, v6

    .line 68
    :goto_31
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getChildCount()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3c
    if-ge v7, v4, :cond_ed

    .line 70
    invoke-virtual {v0, v7}, Lorg/apmem/tools/layouts/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 71
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v6, 0x8

    if-ne v15, v6, :cond_4e

    move/from16 v17, v4

    goto/16 :goto_e7

    .line 75
    :cond_4e
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .line 78
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingRight()I

    move-result v15

    add-int/2addr v9, v15

    iget v15, v6, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->width:I

    invoke-static {v1, v9, v15}, Lorg/apmem/tools/layouts/FlowLayout;->getChildMeasureSpec(III)I

    move-result v9

    .line 79
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    move/from16 v17, v4

    iget v4, v6, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->height:I

    invoke-static {v2, v15, v4}, Lorg/apmem/tools/layouts/FlowLayout;->getChildMeasureSpec(III)I

    move-result v4

    .line 77
    invoke-virtual {v14, v9, v4}, Landroid/view/View;->measure(II)V

    .line 82
    invoke-direct {v0, v6}, Lorg/apmem/tools/layouts/FlowLayout;->getHorizontalSpacing(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v4

    .line 83
    invoke-direct {v0, v6}, Lorg/apmem/tools/layouts/FlowLayout;->getVerticalSpacing(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v9

    .line 85
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 86
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move/from16 v18, v4

    .line 93
    iget v4, v0, Lorg/apmem/tools/layouts/FlowLayout;->orientation:I

    if-nez v4, :cond_90

    move v4, v14

    goto :goto_98

    :cond_90
    move v4, v15

    move v15, v14

    move/from16 v20, v18

    move/from16 v18, v9

    move/from16 v9, v20

    :goto_98
    add-int/2addr v10, v15

    add-int v16, v10, v18

    .line 108
    invoke-static {v6}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$000(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)Z

    move-result v19

    if-nez v19, :cond_a9

    if-eqz v5, :cond_a6

    if-le v10, v3, :cond_a6

    goto :goto_a9

    :cond_a6
    const/16 v19, 0x0

    goto :goto_ab

    :cond_a9
    :goto_a9
    const/16 v19, 0x1

    :goto_ab
    if-eqz v19, :cond_b4

    add-int/2addr v11, v12

    add-int v12, v4, v9

    add-int v16, v15, v18

    move v13, v4

    move v10, v15

    :cond_b4
    add-int/2addr v9, v4

    .line 118
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 119
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 123
    iget v12, v0, Lorg/apmem/tools/layouts/FlowLayout;->orientation:I

    if-nez v12, :cond_cd

    .line 124
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v12

    add-int/2addr v12, v10

    sub-int/2addr v12, v15

    .line 125
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v13

    add-int/2addr v13, v11

    goto :goto_d8

    .line 127
    :cond_cd
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v12

    add-int/2addr v12, v11

    .line 128
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v13

    add-int/2addr v13, v10

    sub-int/2addr v13, v14

    .line 130
    :goto_d8
    invoke-virtual {v6, v12, v13}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->setPosition(II)V

    .line 132
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int v8, v11, v4

    move v13, v4

    move v12, v9

    move/from16 v10, v16

    move v9, v8

    move v8, v6

    :goto_e7
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v17

    goto/16 :goto_3c

    .line 137
    :cond_ed
    iget v3, v0, Lorg/apmem/tools/layouts/FlowLayout;->orientation:I

    if-nez v3, :cond_106

    .line 138
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v8, v3

    .line 139
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v9, v3

    goto :goto_11a

    .line 141
    :cond_106
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v8, v3

    .line 142
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v9, v3

    .line 145
    :goto_11a
    iget v3, v0, Lorg/apmem/tools/layouts/FlowLayout;->orientation:I

    if-nez v3, :cond_12a

    .line 146
    invoke-static {v8, v1}, Lorg/apmem/tools/layouts/FlowLayout;->resolveSize(II)I

    move-result v1

    invoke-static {v9, v2}, Lorg/apmem/tools/layouts/FlowLayout;->resolveSize(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apmem/tools/layouts/FlowLayout;->setMeasuredDimension(II)V

    goto :goto_135

    .line 148
    :cond_12a
    invoke-static {v9, v1}, Lorg/apmem/tools/layouts/FlowLayout;->resolveSize(II)I

    move-result v1

    invoke-static {v8, v2}, Lorg/apmem/tools/layouts/FlowLayout;->resolveSize(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apmem/tools/layouts/FlowLayout;->setMeasuredDimension(II)V

    :goto_135
    return-void
.end method

.class public Landroid/support/v4/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mParams:[F
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mType:C
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(C[F)V
    .registers 3

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-char p1, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    .line 321
    iput-object p2, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/PathParser$PathDataNode;)V
    .registers 4

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iget-char v0, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    .line 326
    iget-object v0, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    iget-object p1, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length p1, p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/support/v4/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .registers 32

    move-object/from16 v10, p0

    move-object/from16 v13, p4

    const/4 v14, 0x0

    .line 365
    aget v0, p1, v14

    const/4 v15, 0x1

    .line 366
    aget v1, p1, v15

    const/16 v16, 0x2

    .line 367
    aget v2, p1, v16

    const/16 v17, 0x3

    .line 368
    aget v3, p1, v17

    const/16 v18, 0x4

    .line 369
    aget v4, p1, v18

    const/16 v19, 0x5

    .line 370
    aget v5, p1, v19

    sparse-switch p3, :sswitch_data_2ec

    :goto_1d
    :sswitch_1d
    const/16 v20, 0x2

    goto :goto_38

    .line 377
    :sswitch_20
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    .line 385
    invoke-virtual {v10, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move v0, v4

    move v2, v0

    move v1, v5

    move v3, v1

    goto :goto_1d

    :sswitch_2b
    const/16 v20, 0x4

    goto :goto_38

    :sswitch_2e
    const/16 v20, 0x1

    goto :goto_38

    :sswitch_31
    const/4 v6, 0x6

    const/16 v20, 0x6

    goto :goto_38

    :sswitch_35
    const/4 v6, 0x7

    const/16 v20, 0x7

    :goto_38
    move v8, v0

    move v7, v1

    move/from16 v21, v4

    move/from16 v22, v5

    const/4 v9, 0x0

    move/from16 v0, p2

    .line 417
    :goto_41
    array-length v1, v13

    if-ge v9, v1, :cond_2dc

    const/16 v4, 0x63

    const/16 v5, 0x54

    const/16 v6, 0x51

    const/16 v15, 0x74

    const/16 v14, 0x71

    const/high16 v23, 0x40000000    # 2.0f

    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_33e

    move v12, v7

    move v11, v8

    :goto_56
    move/from16 v26, v9

    goto/16 :goto_2d4

    :sswitch_5a
    add-int/lit8 v0, v9, 0x0

    .line 466
    aget v4, v13, v0

    invoke-virtual {v10, v1, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 467
    aget v0, v13, v0

    add-float/2addr v7, v0

    goto :goto_56

    :sswitch_65
    if-eq v0, v14, :cond_70

    if-eq v0, v15, :cond_70

    if-eq v0, v6, :cond_70

    if-ne v0, v5, :cond_6e

    goto :goto_70

    :cond_6e
    const/4 v0, 0x0

    goto :goto_74

    :cond_70
    :goto_70
    sub-float v1, v8, v2

    sub-float v0, v7, v3

    :goto_74
    add-int/lit8 v2, v9, 0x0

    .line 545
    aget v3, v13, v2

    add-int/lit8 v4, v9, 0x1

    aget v5, v13, v4

    invoke-virtual {v10, v1, v0, v3, v5}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-float/2addr v1, v8

    add-float/2addr v0, v7

    .line 549
    aget v2, v13, v2

    add-float/2addr v8, v2

    .line 550
    aget v2, v13, v4

    add-float/2addr v7, v2

    move v3, v0

    move v2, v1

    goto :goto_56

    :sswitch_8a
    if-eq v0, v4, :cond_9b

    const/16 v4, 0x73

    if-eq v0, v4, :cond_9b

    const/16 v4, 0x43

    if-eq v0, v4, :cond_9b

    const/16 v4, 0x53

    if-ne v0, v4, :cond_99

    goto :goto_9b

    :cond_99
    const/4 v2, 0x0

    goto :goto_a1

    :cond_9b
    :goto_9b
    sub-float v0, v8, v2

    sub-float v1, v7, v3

    move v2, v1

    move v1, v0

    :goto_a1
    add-int/lit8 v14, v9, 0x0

    .line 499
    aget v3, v13, v14

    add-int/lit8 v15, v9, 0x1

    aget v4, v13, v15

    add-int/lit8 v23, v9, 0x2

    aget v5, v13, v23

    add-int/lit8 v24, v9, 0x3

    aget v6, v13, v24

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 503
    aget v0, v13, v14

    add-float/2addr v0, v8

    .line 504
    aget v1, v13, v15

    add-float/2addr v1, v7

    .line 505
    aget v2, v13, v23

    add-float/2addr v8, v2

    .line 506
    aget v2, v13, v24

    add-float/2addr v7, v2

    goto/16 :goto_14c

    :sswitch_c3
    add-int/lit8 v0, v9, 0x0

    .line 524
    aget v1, v13, v0

    add-int/lit8 v2, v9, 0x1

    aget v3, v13, v2

    add-int/lit8 v4, v9, 0x2

    aget v5, v13, v4

    add-int/lit8 v6, v9, 0x3

    aget v14, v13, v6

    invoke-virtual {v10, v1, v3, v5, v14}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 525
    aget v0, v13, v0

    add-float/2addr v0, v8

    .line 526
    aget v1, v13, v2

    add-float/2addr v1, v7

    .line 527
    aget v2, v13, v4

    add-float/2addr v8, v2

    .line 528
    aget v2, v13, v6

    add-float/2addr v7, v2

    goto :goto_14c

    :sswitch_e3
    add-int/lit8 v0, v9, 0x0

    .line 420
    aget v1, v13, v0

    add-float/2addr v8, v1

    add-int/lit8 v1, v9, 0x1

    .line 421
    aget v4, v13, v1

    add-float/2addr v7, v4

    if-lez v9, :cond_f8

    .line 426
    aget v0, v13, v0

    aget v1, v13, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_56

    .line 428
    :cond_f8
    aget v0, v13, v0

    aget v1, v13, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    move/from16 v22, v7

    move/from16 v21, v8

    goto/16 :goto_56

    :sswitch_105
    add-int/lit8 v0, v9, 0x0

    .line 448
    aget v1, v13, v0

    add-int/lit8 v4, v9, 0x1

    aget v5, v13, v4

    invoke-virtual {v10, v1, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 449
    aget v0, v13, v0

    add-float/2addr v8, v0

    .line 450
    aget v0, v13, v4

    add-float/2addr v7, v0

    goto/16 :goto_56

    :sswitch_118
    add-int/lit8 v0, v9, 0x0

    .line 458
    aget v4, v13, v0

    invoke-virtual {v10, v4, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 459
    aget v0, v13, v0

    add-float/2addr v8, v0

    goto/16 :goto_56

    :sswitch_124
    add-int/lit8 v0, v9, 0x0

    .line 474
    aget v1, v13, v0

    add-int/lit8 v0, v9, 0x1

    aget v2, v13, v0

    add-int/lit8 v14, v9, 0x2

    aget v3, v13, v14

    add-int/lit8 v15, v9, 0x3

    aget v4, v13, v15

    add-int/lit8 v23, v9, 0x4

    aget v5, v13, v23

    add-int/lit8 v24, v9, 0x5

    aget v6, v13, v24

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 477
    aget v0, v13, v14

    add-float/2addr v0, v8

    .line 478
    aget v1, v13, v15

    add-float/2addr v1, v7

    .line 479
    aget v2, v13, v23

    add-float/2addr v8, v2

    .line 480
    aget v2, v13, v24

    add-float/2addr v7, v2

    :goto_14c
    move v2, v0

    move v3, v1

    goto/16 :goto_56

    :sswitch_150
    add-int/lit8 v14, v9, 0x5

    .line 569
    aget v0, v13, v14

    add-float v3, v0, v8

    add-int/lit8 v15, v9, 0x6

    aget v0, v13, v15

    add-float v4, v0, v7

    add-int/lit8 v0, v9, 0x0

    aget v5, v13, v0

    add-int/lit8 v0, v9, 0x1

    aget v6, v13, v0

    add-int/lit8 v0, v9, 0x2

    aget v23, v13, v0

    add-int/lit8 v0, v9, 0x3

    aget v0, v13, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_173

    const/16 v24, 0x1

    goto :goto_175

    :cond_173
    const/16 v24, 0x0

    :goto_175
    add-int/lit8 v0, v9, 0x4

    aget v0, v13, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_180

    const/16 v25, 0x1

    goto :goto_182

    :cond_180
    const/16 v25, 0x0

    :goto_182
    move-object v0, v10

    move v1, v8

    move v2, v7

    move v12, v7

    move/from16 v7, v23

    move v11, v8

    move/from16 v8, v24

    move/from16 v26, v9

    move/from16 v9, v25

    invoke-static/range {v0 .. v9}, Landroid/support/v4/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 579
    aget v0, v13, v14

    add-float v8, v11, v0

    .line 580
    aget v0, v13, v15

    add-float v7, v12, v0

    goto/16 :goto_2d2

    :sswitch_19c
    move v11, v8

    move/from16 v26, v9

    add-int/lit8 v9, v26, 0x0

    .line 470
    aget v0, v13, v9

    invoke-virtual {v10, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 471
    aget v7, v13, v9

    goto/16 :goto_2d4

    :sswitch_1aa
    move v12, v7

    move v11, v8

    move/from16 v26, v9

    if-eq v0, v14, :cond_1b6

    if-eq v0, v15, :cond_1b6

    if-eq v0, v6, :cond_1b6

    if-ne v0, v5, :cond_1be

    :cond_1b6
    mul-float v8, v11, v23

    sub-float/2addr v8, v2

    mul-float v7, v12, v23

    sub-float/2addr v7, v3

    move v12, v7

    move v11, v8

    :cond_1be
    add-int/lit8 v9, v26, 0x0

    .line 560
    aget v0, v13, v9

    add-int/lit8 v1, v26, 0x1

    aget v2, v13, v1

    invoke-virtual {v10, v11, v12, v0, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 564
    aget v8, v13, v9

    .line 565
    aget v7, v13, v1

    move v2, v11

    move v3, v12

    goto/16 :goto_2d4

    :sswitch_1d1
    move v12, v7

    move v11, v8

    move/from16 v26, v9

    if-eq v0, v4, :cond_1e7

    const/16 v1, 0x73

    if-eq v0, v1, :cond_1e7

    const/16 v1, 0x43

    if-eq v0, v1, :cond_1e7

    const/16 v1, 0x53

    if-ne v0, v1, :cond_1e4

    goto :goto_1e7

    :cond_1e4
    move v1, v11

    move v2, v12

    goto :goto_1ef

    :cond_1e7
    :goto_1e7
    mul-float v8, v11, v23

    sub-float/2addr v8, v2

    mul-float v7, v12, v23

    sub-float/2addr v7, v3

    move v2, v7

    move v1, v8

    :goto_1ef
    add-int/lit8 v9, v26, 0x0

    .line 516
    aget v3, v13, v9

    add-int/lit8 v7, v26, 0x1

    aget v4, v13, v7

    add-int/lit8 v8, v26, 0x2

    aget v5, v13, v8

    add-int/lit8 v11, v26, 0x3

    aget v6, v13, v11

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 518
    aget v0, v13, v9

    .line 519
    aget v1, v13, v7

    .line 520
    aget v8, v13, v8

    .line 521
    aget v7, v13, v11

    goto :goto_229

    :sswitch_20c
    move/from16 v26, v9

    add-int/lit8 v9, v26, 0x0

    .line 531
    aget v0, v13, v9

    add-int/lit8 v1, v26, 0x1

    aget v2, v13, v1

    add-int/lit8 v3, v26, 0x2

    aget v4, v13, v3

    add-int/lit8 v5, v26, 0x3

    aget v6, v13, v5

    invoke-virtual {v10, v0, v2, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 532
    aget v0, v13, v9

    .line 533
    aget v1, v13, v1

    .line 534
    aget v8, v13, v3

    .line 535
    aget v7, v13, v5

    :goto_229
    move v2, v0

    move v3, v1

    goto/16 :goto_2d4

    :sswitch_22d
    move/from16 v26, v9

    add-int/lit8 v9, v26, 0x0

    .line 434
    aget v8, v13, v9

    add-int/lit8 v0, v26, 0x1

    .line 435
    aget v7, v13, v0

    if-lez v26, :cond_242

    .line 440
    aget v1, v13, v9

    aget v0, v13, v0

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2d4

    .line 442
    :cond_242
    aget v1, v13, v9

    aget v0, v13, v0

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v22, v7

    move/from16 v21, v8

    goto/16 :goto_2d4

    :sswitch_24f
    move/from16 v26, v9

    add-int/lit8 v9, v26, 0x0

    .line 453
    aget v0, v13, v9

    add-int/lit8 v1, v26, 0x1

    aget v4, v13, v1

    invoke-virtual {v10, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 454
    aget v8, v13, v9

    .line 455
    aget v7, v13, v1

    goto/16 :goto_2d4

    :sswitch_262
    move v12, v7

    move/from16 v26, v9

    add-int/lit8 v9, v26, 0x0

    .line 462
    aget v0, v13, v9

    invoke-virtual {v10, v0, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 463
    aget v8, v13, v9

    goto/16 :goto_2d4

    :sswitch_270
    move/from16 v26, v9

    add-int/lit8 v9, v26, 0x0

    .line 484
    aget v1, v13, v9

    add-int/lit8 v9, v26, 0x1

    aget v2, v13, v9

    add-int/lit8 v9, v26, 0x2

    aget v3, v13, v9

    add-int/lit8 v7, v26, 0x3

    aget v4, v13, v7

    add-int/lit8 v8, v26, 0x4

    aget v5, v13, v8

    add-int/lit8 v11, v26, 0x5

    aget v6, v13, v11

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 486
    aget v8, v13, v8

    .line 487
    aget v0, v13, v11

    .line 488
    aget v1, v13, v9

    .line 489
    aget v2, v13, v7

    move v7, v0

    move v3, v2

    move v2, v1

    goto :goto_2d4

    :sswitch_29a
    move v12, v7

    move v11, v8

    move/from16 v26, v9

    add-int/lit8 v14, v26, 0x5

    .line 585
    aget v3, v13, v14

    add-int/lit8 v15, v26, 0x6

    aget v4, v13, v15

    add-int/lit8 v9, v26, 0x0

    aget v5, v13, v9

    add-int/lit8 v9, v26, 0x1

    aget v6, v13, v9

    add-int/lit8 v9, v26, 0x2

    aget v7, v13, v9

    add-int/lit8 v9, v26, 0x3

    aget v0, v13, v9

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2bc

    const/4 v8, 0x1

    goto :goto_2bd

    :cond_2bc
    const/4 v8, 0x0

    :goto_2bd
    add-int/lit8 v9, v26, 0x4

    aget v0, v13, v9

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2c7

    const/4 v9, 0x1

    goto :goto_2c8

    :cond_2c7
    const/4 v9, 0x0

    :goto_2c8
    move-object v0, v10

    move v1, v11

    move v2, v12

    invoke-static/range {v0 .. v9}, Landroid/support/v4/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 595
    aget v8, v13, v14

    .line 596
    aget v7, v13, v15

    :goto_2d2
    move v3, v7

    move v2, v8

    :goto_2d4
    add-int v9, v26, v20

    move/from16 v0, p3

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_41

    :cond_2dc
    move v12, v7

    const/4 v1, 0x0

    .line 603
    aput v8, p1, v1

    const/4 v1, 0x1

    .line 604
    aput v12, p1, v1

    .line 605
    aput v2, p1, v16

    .line 606
    aput v3, p1, v17

    .line 607
    aput v21, p1, v18

    .line 608
    aput v22, p1, v19

    return-void

    :sswitch_data_2ec
    .sparse-switch
        0x41 -> :sswitch_35
        0x43 -> :sswitch_31
        0x48 -> :sswitch_2e
        0x4c -> :sswitch_1d
        0x4d -> :sswitch_1d
        0x51 -> :sswitch_2b
        0x53 -> :sswitch_2b
        0x54 -> :sswitch_1d
        0x56 -> :sswitch_2e
        0x5a -> :sswitch_20
        0x61 -> :sswitch_35
        0x63 -> :sswitch_31
        0x68 -> :sswitch_2e
        0x6c -> :sswitch_1d
        0x6d -> :sswitch_1d
        0x71 -> :sswitch_2b
        0x73 -> :sswitch_2b
        0x74 -> :sswitch_1d
        0x76 -> :sswitch_2e
        0x7a -> :sswitch_20
    .end sparse-switch

    :sswitch_data_33e
    .sparse-switch
        0x41 -> :sswitch_29a
        0x43 -> :sswitch_270
        0x48 -> :sswitch_262
        0x4c -> :sswitch_24f
        0x4d -> :sswitch_22d
        0x51 -> :sswitch_20c
        0x53 -> :sswitch_1d1
        0x54 -> :sswitch_1aa
        0x56 -> :sswitch_19c
        0x61 -> :sswitch_150
        0x63 -> :sswitch_124
        0x68 -> :sswitch_118
        0x6c -> :sswitch_105
        0x6d -> :sswitch_e3
        0x71 -> :sswitch_c3
        0x73 -> :sswitch_8a
        0x74 -> :sswitch_65
        0x76 -> :sswitch_5a
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .registers 79

    move-wide/from16 v0, p5

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double v8, p17, v6

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    .line 716
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 719
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 720
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 721
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    .line 722
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    neg-double v6, v0

    mul-double v18, v6, v9

    mul-double v20, v18, v15

    mul-double v22, p7, v11

    mul-double v24, v22, v13

    sub-double v20, v20, v24

    mul-double v6, v6, v11

    mul-double v15, v15, v6

    mul-double v2, p7, v9

    mul-double v13, v13, v2

    add-double/2addr v15, v13

    int-to-double v13, v8

    div-double v4, p17, v13

    const/4 v13, 0x0

    move-wide/from16 v26, p11

    move-wide/from16 v28, v15

    move-wide/from16 v24, v20

    move-wide/from16 v20, p9

    move-wide/from16 v14, p15

    :goto_47
    if-ge v13, v8, :cond_ee

    move-wide/from16 v30, v6

    add-double v6, v14, v4

    .line 729
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    .line 730
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v36, v0, v9

    mul-double v36, v36, v34

    add-double v36, p1, v36

    mul-double v38, v22, v32

    move-wide/from16 v40, v4

    sub-double v4, v36, v38

    mul-double v36, v0, v11

    mul-double v36, v36, v34

    add-double v36, p3, v36

    mul-double v42, v2, v32

    add-double v0, v36, v42

    mul-double v36, v18, v32

    mul-double v42, v22, v34

    sub-double v36, v36, v42

    mul-double v32, v32, v30

    mul-double v34, v34, v2

    add-double v32, v32, v34

    sub-double v14, v6, v14

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    move-wide/from16 v44, v2

    div-double v2, v14, v34

    .line 735
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    .line 737
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    mul-double v42, v2, v34

    mul-double v42, v42, v2

    move-wide/from16 v46, v6

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    add-double v6, v42, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v6, v6, v16

    mul-double v14, v14, v6

    div-double v14, v14, v34

    mul-double v24, v24, v14

    add-double v6, v20, v24

    mul-double v28, v28, v14

    add-double v2, v26, v28

    mul-double v16, v14, v36

    move/from16 v48, v8

    move-wide/from16 v49, v9

    sub-double v8, v4, v16

    mul-double v14, v14, v32

    sub-double v14, v0, v14

    const/4 v10, 0x0

    move-wide/from16 v58, v11

    move-object/from16 v11, p0

    .line 744
    invoke-virtual {v11, v10, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    double-to-float v6, v6

    double-to-float v2, v2

    double-to-float v3, v8

    double-to-float v7, v14

    double-to-float v8, v4

    double-to-float v9, v0

    move-object/from16 v51, v11

    move/from16 v52, v6

    move/from16 v53, v2

    move/from16 v54, v3

    move/from16 v55, v7

    move/from16 v56, v8

    move/from16 v57, v9

    .line 746
    invoke-virtual/range {v51 .. v57}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v26, v0

    move-wide/from16 v20, v4

    move-wide/from16 v6, v30

    move-wide/from16 v28, v32

    move-wide/from16 v24, v36

    move-wide/from16 v4, v40

    move-wide/from16 v2, v44

    move-wide/from16 v14, v46

    move/from16 v8, v48

    move-wide/from16 v9, v49

    move-wide/from16 v11, v58

    move-wide/from16 v0, p5

    goto/16 :goto_47

    :cond_ee
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .registers 55

    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v0, p5

    move/from16 v2, p6

    move/from16 v7, p7

    move/from16 v9, p9

    float-to-double v4, v7

    .line 623
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 625
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 626
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    float-to-double v14, v1

    mul-double v16, v14, v10

    move/from16 v6, p2

    move-wide/from16 v25, v4

    float-to-double v4, v6

    mul-double v18, v4, v12

    add-double v16, v16, v18

    move-wide/from16 v27, v14

    float-to-double v14, v0

    div-double v16, v16, v14

    neg-float v8, v1

    float-to-double v8, v8

    mul-double v8, v8, v12

    mul-double v18, v4, v10

    add-double v8, v8, v18

    move-wide/from16 v29, v4

    float-to-double v4, v2

    div-double/2addr v8, v4

    float-to-double v6, v3

    mul-double v6, v6, v10

    move/from16 v1, p4

    move-wide/from16 v31, v8

    float-to-double v8, v1

    mul-double v18, v8, v12

    add-double v6, v6, v18

    div-double/2addr v6, v14

    neg-float v1, v3

    move-wide/from16 v33, v14

    float-to-double v14, v1

    mul-double v14, v14, v12

    mul-double v8, v8, v10

    add-double/2addr v14, v8

    div-double/2addr v14, v4

    sub-double v8, v16, v6

    sub-double v18, v31, v14

    add-double v20, v16, v6

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    add-double v35, v31, v14

    div-double v35, v35, v22

    mul-double v22, v8, v8

    mul-double v37, v18, v18

    move-wide/from16 v39, v12

    add-double v12, v22, v37

    const-wide/16 v22, 0x0

    cmpl-double v1, v12, v22

    if-nez v1, :cond_71

    const-string v0, "PathParser"

    const-string v1, " Points are coincident"

    .line 642
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_71
    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    div-double v37, v37, v12

    const-wide/high16 v41, 0x3fd0000000000000L    # 0.25

    move-wide/from16 v43, v10

    sub-double v10, v37, v41

    cmpg-double v1, v10, v22

    if-gez v1, :cond_b7

    const-string v1, "PathParser"

    .line 647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Points are too far apart "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v6, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v4, v6

    double-to-float v1, v4

    mul-float v5, v0, v1

    mul-float v6, v2, v1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v12, p9

    move v9, v12

    .line 649
    invoke-static/range {v0 .. v9}, Landroid/support/v4/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    return-void

    :cond_b7
    move/from16 v12, p9

    .line 653
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v8, v8, v0

    mul-double v0, v0, v18

    move/from16 v2, p8

    if-ne v2, v12, :cond_ca

    sub-double v20, v20, v0

    add-double v35, v35, v8

    goto :goto_cf

    :cond_ca
    const/4 v2, 0x0

    add-double v20, v20, v0

    sub-double v35, v35, v8

    :goto_cf
    const/4 v0, 0x0

    sub-double v8, v31, v35

    sub-double v0, v16, v20

    .line 666
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v14, v14, v35

    sub-double v6, v6, v20

    .line 668
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v2, v0

    cmpl-double v6, v2, v22

    if-ltz v6, :cond_e7

    const/4 v6, 0x1

    goto :goto_e8

    :cond_e7
    const/4 v6, 0x0

    :goto_e8
    if-eq v12, v6, :cond_f7

    cmpl-double v6, v2, v22

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v6, :cond_f5

    sub-double/2addr v2, v7

    goto :goto_f7

    :cond_f5
    const/4 v6, 0x0

    add-double/2addr v2, v7

    :cond_f7
    :goto_f7
    move-wide/from16 v23, v2

    mul-double v20, v20, v33

    mul-double v35, v35, v4

    mul-double v10, v20, v43

    mul-double v12, v35, v39

    const/4 v2, 0x0

    sub-double v7, v10, v12

    mul-double v20, v20, v39

    mul-double v35, v35, v43

    add-double v9, v20, v35

    move-object/from16 v6, p0

    move-wide/from16 v11, v33

    move-wide/from16 v2, v27

    move-wide v13, v4

    move-wide v15, v2

    move-wide/from16 v17, v29

    move-wide/from16 v19, v25

    move-wide/from16 v21, v0

    .line 685
    invoke-static/range {v6 .. v24}, Landroid/support/v4/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    return-void
.end method

.method public static nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .registers 7

    const/4 v0, 0x6

    .line 336
    new-array v0, v0, [F

    const/16 v1, 0x6d

    const/4 v2, 0x0

    .line 338
    :goto_6
    array-length v3, p0

    if-ge v2, v3, :cond_1b

    .line 339
    aget-object v3, p0, v2

    iget-char v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v2

    iget-object v4, v4, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v0, v1, v3, v4}, Landroid/support/v4/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    .line 340
    aget-object v1, p0, v2

    iget-char v1, v1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/support/v4/graphics/PathParser$PathDataNode;F)V
    .registers 8

    const/4 v0, 0x0

    .line 355
    :goto_1
    iget-object v1, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 356
    iget-object v1, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    iget-object v2, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float v2, v2, v3

    iget-object v3, p2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float v3, v3, p3

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

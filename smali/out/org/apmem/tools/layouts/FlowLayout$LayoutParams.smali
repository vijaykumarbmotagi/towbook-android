.class public Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apmem/tools/layouts/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static NO_SPACING:I = -0x1


# instance fields
.field private horizontalSpacing:I

.field private newLine:Z

.field private verticalSpacing:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 295
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 285
    sget p1, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->NO_SPACING:I

    iput p1, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 286
    sget p1, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->NO_SPACING:I

    iput p1, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->verticalSpacing:I

    const/4 p1, 0x0

    .line 287
    iput-boolean p1, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->newLine:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 290
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 285
    sget v0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 286
    sget v0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->verticalSpacing:I

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->newLine:Z

    .line 291
    invoke-direct {p0, p1, p2}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 299
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    sget p1, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->NO_SPACING:I

    iput p1, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 286
    sget p1, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->NO_SPACING:I

    iput p1, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->verticalSpacing:I

    const/4 p1, 0x0

    .line 287
    iput-boolean p1, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->newLine:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)Z
    .registers 1

    .line 281
    iget-boolean p0, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->newLine:Z

    return p0
.end method

.method static synthetic access$100(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I
    .registers 1

    .line 281
    iget p0, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->verticalSpacing:I

    return p0
.end method

.method static synthetic access$200(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I
    .registers 1

    .line 281
    iget p0, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->horizontalSpacing:I

    return p0
.end method

.method static synthetic access$300(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I
    .registers 1

    .line 281
    iget p0, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->x:I

    return p0
.end method

.method static synthetic access$400(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I
    .registers 1

    .line 281
    iget p0, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->y:I

    return p0
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 316
    sget-object v0, Lcom/towbook/mobile/R$styleable;->FlowLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 318
    :try_start_6
    sget p2, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->NO_SPACING:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->horizontalSpacing:I

    const/4 p2, 0x2

    .line 319
    sget v1, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->NO_SPACING:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->verticalSpacing:I

    const/4 p2, 0x1

    .line 320
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->newLine:Z
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_23

    .line 322
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_23
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public horizontalSpacingSpecified()Z
    .registers 3

    .line 303
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->horizontalSpacing:I

    sget v1, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->NO_SPACING:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setPosition(II)V
    .registers 3

    .line 311
    iput p1, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->x:I

    .line 312
    iput p2, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->y:I

    return-void
.end method

.method public verticalSpacingSpecified()Z
    .registers 3

    .line 307
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->verticalSpacing:I

    sget v1, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->NO_SPACING:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

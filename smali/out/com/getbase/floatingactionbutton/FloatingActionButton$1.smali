.class Lcom/getbase/floatingactionbutton/FloatingActionButton$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getbase/floatingactionbutton/FloatingActionButton;->createInnerStrokesDrawable(IF)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field final synthetic val$bottomStrokeColor:I

.field final synthetic val$bottomStrokeColorHalfTransparent:I

.field final synthetic val$color:I

.field final synthetic val$topStrokeColor:I

.field final synthetic val$topStrokeColorHalfTransparent:I


# direct methods
.method constructor <init>(Lcom/getbase/floatingactionbutton/FloatingActionButton;IIIII)V
    .registers 7

    .line 396
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$topStrokeColor:I

    iput p3, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$topStrokeColorHalfTransparent:I

    iput p4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$color:I

    iput p5, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$bottomStrokeColorHalfTransparent:I

    iput p6, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$bottomStrokeColor:I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .registers 12

    .line 399
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v0, 0x2

    div-int/2addr p1, v0

    int-to-float v3, p1

    int-to-float v4, p2

    const/4 p1, 0x5

    new-array v5, p1, [I

    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$topStrokeColor:I

    const/4 v1, 0x0

    aput p2, v5, v1

    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$topStrokeColorHalfTransparent:I

    const/4 v1, 0x1

    aput p2, v5, v1

    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$color:I

    aput p2, v5, v0

    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$bottomStrokeColorHalfTransparent:I

    const/4 v0, 0x3

    aput p2, v5, v0

    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->val$bottomStrokeColor:I

    const/4 v0, 0x4

    aput p2, v5, v0

    new-array v6, p1, [F

    fill-array-data v6, :array_30

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    move-object v0, v8

    move v1, v3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v8

    nop

    :array_30
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

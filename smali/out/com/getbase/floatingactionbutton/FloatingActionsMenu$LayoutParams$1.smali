.class Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->addLayerTypeListener(Landroid/animation/Animator;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;Landroid/view/View;)V
    .registers 3

    .line 486
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;->this$1:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    iput-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 489
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 494
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;->val$view:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

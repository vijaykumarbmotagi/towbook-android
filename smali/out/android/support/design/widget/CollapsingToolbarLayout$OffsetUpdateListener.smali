.class Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .registers 2

    .line 1268
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .registers 10

    .line 1273
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iput p2, p1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    .line 1275
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object p1, p1, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object p1, p1, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 1277
    :goto_15
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_53

    .line 1278
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1279
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1280
    invoke-static {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v5

    .line 1282
    iget v6, v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    packed-switch v6, :pswitch_data_82

    goto :goto_50

    :pswitch_34
    neg-int v3, p2

    int-to-float v3, v3

    .line 1288
    iget v4, v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float v3, v3, v4

    .line 1289
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1288
    invoke-virtual {v5, v3}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_50

    :pswitch_42
    neg-int v4, p2

    .line 1284
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 1285
    invoke-virtual {v6, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v3

    .line 1284
    invoke-static {v4, v0, v3}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1295
    :cond_53
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1297
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v0, v0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_65

    if-lez p1, :cond_65

    .line 1298
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1302
    :cond_65
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 1304
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object p1, p1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 1305
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 1304
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    return-void

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_42
        :pswitch_34
    .end packed-switch
.end method

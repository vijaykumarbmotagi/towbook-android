.class Landroid/support/design/widget/BottomSheetBehavior$2;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomSheetBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;)V
    .registers 2

    .line 641
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 4

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    .line 707
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget p1, p1, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    iget-object p3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean p3, p3, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz p3, :cond_f

    iget-object p3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget p3, p3, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    goto :goto_13

    :cond_f
    iget-object p3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget p3, p3, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    :goto_13
    invoke-static {p2, p1, p3}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result p1

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 3

    .line 717
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean p1, p1, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz p1, :cond_10

    .line 718
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget p1, p1, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int/2addr p1, v0

    return p1

    .line 720
    :cond_10
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget p1, p1, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 669
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    :cond_8
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    .line 663
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {p1, p3}, Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 7

    const/4 p2, 0x0

    cmpg-float v0, p3, p2

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-gez v0, :cond_d

    .line 678
    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget p2, p2, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    :goto_b
    const/4 v1, 0x3

    goto :goto_4c

    .line 680
    :cond_d
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v0, p1, p3}, Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 681
    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget p2, p2, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    const/4 v1, 0x5

    goto :goto_4c

    :cond_21
    cmpl-float p2, p3, p2

    if-nez p2, :cond_48

    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    .line 685
    iget-object p3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget p3, p3, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_43

    .line 686
    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget p2, p2, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    goto :goto_b

    .line 689
    :cond_43
    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget p2, p2, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    goto :goto_4c

    .line 693
    :cond_48
    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget p2, p2, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    .line 696
    :goto_4c
    iget-object p3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object p3, p3, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p3, v0, p2}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 697
    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 698
    new-instance p2, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    iget-object p3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {p2, p3, p1, v1}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_70

    .line 701
    :cond_6b
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {p1, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    :goto_70
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 7

    .line 645
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    return v2

    .line 648
    :cond_9
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z

    if-eqz v0, :cond_10

    return v2

    .line 651
    :cond_10
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_31

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    if-ne v0, p2, :cond_31

    .line 652
    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object p2, p2, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_31

    const/4 v0, -0x1

    .line 653
    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_31

    return v2

    .line 658
    :cond_31
    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object p2, p2, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_42

    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object p2, p2, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    return v1
.end method

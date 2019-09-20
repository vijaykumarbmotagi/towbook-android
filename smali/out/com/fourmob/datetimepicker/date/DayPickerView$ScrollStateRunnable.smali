.class public Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fourmob/datetimepicker/date/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field final synthetic this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;


# direct methods
.method protected constructor <init>(Lcom/fourmob/datetimepicker/date/DayPickerView;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .registers 5

    .line 217
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    iget-object p1, p1, Lcom/fourmob/datetimepicker/date/DayPickerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iput p2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->mNewState:I

    .line 219
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    iget-object p1, p1, Lcom/fourmob/datetimepicker/date/DayPickerView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x28

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .registers 6

    .line 224
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    iget v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->mNewState:I

    iput v1, v0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mCurrentScrollState:I

    .line 226
    iget v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->mNewState:I

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    iget v0, v0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    iget v0, v0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_77

    .line 229
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    iget v2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->mNewState:I

    iput v2, v0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    .line 231
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    :goto_25
    if-eqz v0, :cond_35

    .line 232
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gtz v4, :cond_35

    .line 233
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_25

    :cond_35
    if-nez v0, :cond_38

    return-void

    .line 239
    :cond_38
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v3}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getFirstVisiblePosition()I

    move-result v3

    .line 240
    iget-object v4, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v4}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getLastVisiblePosition()I

    move-result v4

    if-eqz v3, :cond_50

    .line 241
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v3}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-eq v4, v3, :cond_50

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    .line 242
    :goto_51
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 244
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v3}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-eqz v1, :cond_7d

    .line 245
    sget v1, Lcom/fourmob/datetimepicker/date/DayPickerView;->LIST_TOP_OFFSET:I

    if-ge v2, v1, :cond_7d

    const/16 v1, 0xfa

    if-le v0, v3, :cond_71

    .line 247
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v0, v2, v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->smoothScrollBy(II)V

    goto :goto_7d

    .line 249
    :cond_71
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v2, v0, v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->smoothScrollBy(II)V

    goto :goto_7d

    .line 253
    :cond_77
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    iget v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->mNewState:I

    iput v1, v0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    :cond_7d
    :goto_7d
    return-void
.end method

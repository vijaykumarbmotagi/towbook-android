.class public Lcom/fourmob/datetimepicker/date/DayPickerView;
.super Landroid/widget/ListView;
.source "DayPickerView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;
    }
.end annotation


# static fields
.field protected static final GOTO_SCROLL_DURATION:I = 0xfa

.field public static LIST_TOP_OFFSET:I = -0x1

.field protected static final SCROLL_CHANGE_DELAY:I = 0x28


# instance fields
.field protected mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

.field protected mContext:Landroid/content/Context;

.field private final mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

.field protected mCurrentMonthDisplayed:I

.field protected mCurrentScrollState:I

.field protected mDaysPerWeek:I

.field protected mFriction:F

.field protected mHandler:Landroid/os/Handler;

.field protected mNumWeeks:I

.field private mPerformingScroll:Z

.field protected mPreviousScrollPosition:J

.field protected mPreviousScrollState:I

.field protected mScrollStateChangedRunnable:Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;

.field protected mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

.field protected mShowWeekNumber:Z

.field protected mTempDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V
    .registers 5

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mCurrentScrollState:I

    .line 29
    iput v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    .line 31
    new-instance v1, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;

    invoke-direct {v1, p0}, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;-><init>(Lcom/fourmob/datetimepicker/date/DayPickerView;)V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mScrollStateChangedRunnable:Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;

    .line 32
    new-instance v1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-direct {v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;-><init>()V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    .line 33
    new-instance v1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-direct {v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;-><init>()V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mTempDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    const/4 v1, 0x6

    .line 35
    iput v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mNumWeeks:I

    .line 36
    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mShowWeekNumber:Z

    const/4 v1, 0x7

    .line 37
    iput v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mDaysPerWeek:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    iput v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mFriction:F

    .line 43
    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    .line 44
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {p2, p0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->registerOnDateChangedListener(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;)V

    .line 45
    new-instance p2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setDrawSelectorOnTop(Z)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->init(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onDateChanged()V

    return-void
.end method


# virtual methods
.method public getMostVisiblePosition()I
    .registers 10

    .line 52
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getFirstVisiblePosition()I

    move-result v0

    .line 53
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_d
    if-ge v3, v1, :cond_2f

    .line 60
    invoke-virtual {p0, v4}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_16

    goto :goto_2f

    .line 64
    :cond_16
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 65
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v8, v3

    if-le v8, v6, :cond_2b

    move v5, v4

    move v6, v8

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    move v3, v7

    goto :goto_d

    :cond_2f
    :goto_2f
    add-int/2addr v0, v5

    return v0
.end method

.method public goTo(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;ZZZ)Z
    .registers 9

    if-eqz p3, :cond_7

    .line 78
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {v0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->set(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mTempDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {v0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->set(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    .line 82
    iget v0, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v1}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget p1, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    add-int/2addr v0, p1

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_1c
    add-int/lit8 v2, v1, 0x1

    .line 90
    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_25

    goto :goto_2b

    .line 94
    :cond_25
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ltz v3, :cond_66

    :goto_2b
    if-eqz v1, :cond_32

    .line 100
    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    if-eqz p3, :cond_3c

    .line 106
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {v2, v3}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->setSelectedDay(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    :cond_3c
    if-ne v0, v1, :cond_49

    if-eqz p4, :cond_41

    goto :goto_49

    :cond_41
    if-eqz p3, :cond_65

    .line 121
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {p0, p2}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setMonthDisplayed(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    goto :goto_65

    .line 112
    :cond_49
    :goto_49
    iget-object p3, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mTempDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {p0, p3}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setMonthDisplayed(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    const/4 p3, 0x2

    .line 113
    iput p3, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    if-eqz p2, :cond_62

    .line 114
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xb

    if-lt p2, p3, :cond_62

    .line 115
    sget p1, Lcom/fourmob/datetimepicker/date/DayPickerView;->LIST_TOP_OFFSET:I

    const/16 p2, 0xfa

    invoke-virtual {p0, v0, p1, p2}, Lcom/fourmob/datetimepicker/date/DayPickerView;->smoothScrollToPositionFromTop(III)V

    const/4 p1, 0x1

    return p1

    .line 118
    :cond_62
    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->postSetSelection(I)V

    :cond_65
    :goto_65
    return p1

    :cond_66
    move v1, v2

    goto :goto_1c
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setUpListView()V

    .line 129
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setUpAdapter()V

    .line 130
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected layoutChildren()V
    .registers 2

    .line 134
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 135
    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPerformingScroll:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPerformingScroll:Z

    :cond_a
    return-void
.end method

.method public onChange()V
    .registers 2

    .line 141
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setUpAdapter()V

    .line 142
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onDateChanged()V
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->goTo(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;ZZZ)Z

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    const/4 p2, 0x0

    .line 150
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/fourmob/datetimepicker/date/SimpleMonthView;

    if-nez p2, :cond_a

    return-void

    .line 156
    :cond_a
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->getHeight()I

    move-result p3

    mul-int p1, p1, p3

    invoke-virtual {p2}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->getBottom()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-long p1, p1

    .line 157
    iput-wide p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollPosition:J

    .line 158
    iget p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mCurrentScrollState:I

    iput p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mScrollStateChangedRunnable:Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/fourmob/datetimepicker/date/DayPickerView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public postSetSelection(I)V
    .registers 3

    .line 166
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->clearFocus()V

    .line 167
    new-instance v0, Lcom/fourmob/datetimepicker/date/DayPickerView$1;

    invoke-direct {v0, p0, p1}, Lcom/fourmob/datetimepicker/date/DayPickerView$1;-><init>(Lcom/fourmob/datetimepicker/date/DayPickerView;I)V

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 172
    invoke-virtual {p0, p0, p1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method setFrictionIfSupported(F)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_9

    .line 202
    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setFriction(F)V

    :cond_9
    return-void
.end method

.method protected setMonthDisplayed(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V
    .registers 2

    .line 176
    iget p1, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    iput p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mCurrentMonthDisplayed:I

    .line 177
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->invalidateViews()V

    return-void
.end method

.method protected setUpAdapter()V
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    if-nez v0, :cond_11

    .line 182
    new-instance v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;-><init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    .line 184
    :cond_11
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->setSelectedDay(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    .line 185
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected setUpListView()V
    .registers 3

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setCacheColorHint(I)V

    const/4 v1, 0x0

    .line 190
    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 191
    invoke-virtual {p0, v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setItemsCanFocus(Z)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setFastScrollEnabled(Z)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setVerticalScrollBarEnabled(Z)V

    .line 194
    invoke-virtual {p0, p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 195
    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setFadingEdgeLength(I)V

    .line 196
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iget v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView;->mFriction:F

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setFrictionIfSupported(F)V

    return-void
.end method

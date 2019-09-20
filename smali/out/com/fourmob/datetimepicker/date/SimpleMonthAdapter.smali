.class public Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleMonthAdapter.java"

# interfaces
.implements Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;
    }
.end annotation


# static fields
.field protected static final MONTHS_IN_YEAR:I = 0xc

.field protected static WEEK_7_OVERHANG_HEIGHT:I = 0x7


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

.field private mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    .line 26
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->init()V

    .line 27
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {p1}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->setSelectedDay(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    return-void
.end method

.method private isSelectedDayInMonth(II)Z
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    iget v0, v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    if-ne v0, p1, :cond_e

    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    iget p1, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    if-ne p1, p2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMaxYear()I

    move-result v0

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v1}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 p3, -0x1

    if-eqz p2, :cond_c

    .line 50
    check-cast p2, Lcom/fourmob/datetimepicker/date/SimpleMonthView;

    .line 51
    invoke-virtual {p2}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_23

    .line 53
    :cond_c
    new-instance p2, Lcom/fourmob/datetimepicker/date/SimpleMonthView;

    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p3, p3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p2, v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->setClickable(Z)V

    .line 56
    invoke-virtual {p2, p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->setOnDayClickListener(Lcom/fourmob/datetimepicker/date/SimpleMonthView$OnDayClickListener;)V

    const/4 v0, 0x0

    :goto_23
    if-nez v0, :cond_2a

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    :cond_2a
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 63
    rem-int/lit8 v1, p1, 0xc

    .line 64
    div-int/lit8 p1, p1, 0xc

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v2}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v2

    add-int/2addr p1, v2

    .line 67
    invoke-direct {p0, p1, v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->isSelectedDayInMonth(II)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 68
    iget-object p3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    iget p3, p3, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    .line 71
    :cond_42
    invoke-virtual {p2}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->reuse()V

    const-string v2, "selected_day"

    .line 73
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "year"

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "month"

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "week_start"

    .line 76
    iget-object p3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {p3}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getFirstDayOfWeek()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p2, v0}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->setMonthParams(Ljava/util/HashMap;)V

    .line 78
    invoke-virtual {p2}, Lcom/fourmob/datetimepicker/date/SimpleMonthView;->invalidate()V

    return-object p2
.end method

.method protected init()V
    .registers 4

    .line 84
    new-instance v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;-><init>(J)V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    return-void
.end method

.method public onDayClick(Lcom/fourmob/datetimepicker/date/SimpleMonthView;Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V
    .registers 3

    if-eqz p2, :cond_5

    .line 89
    invoke-virtual {p0, p2}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->onDayTapped(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    :cond_5
    return-void
.end method

.method protected onDayTapped(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->tryVibrate()V

    .line 95
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    iget v1, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    iget v2, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    iget v3, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    invoke-interface {v0, v1, v2, v3}, Lcom/fourmob/datetimepicker/date/DatePickerController;->onDayOfMonthSelected(III)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->setSelectedDay(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V

    return-void
.end method

.method public setSelectedDay(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->mSelectedDay:Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    .line 101
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;->notifyDataSetChanged()V

    return-void
.end method

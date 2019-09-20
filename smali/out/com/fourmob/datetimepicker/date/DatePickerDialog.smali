.class public Lcom/fourmob/datetimepicker/date/DatePickerDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fourmob/datetimepicker/date/DatePickerController;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;,
        Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_DELAY:I = 0x1f4

.field private static DAY_FORMAT:Ljava/text/SimpleDateFormat; = null

.field public static final KEY_CURRENT_VIEW:Ljava/lang/String; = "current_view"

.field public static final KEY_LIST_POSITION:Ljava/lang/String; = "list_position"

.field public static final KEY_LIST_POSITION_OFFSET:Ljava/lang/String; = "list_position_offset"

.field private static final KEY_SELECTED_DAY:Ljava/lang/String; = "day"

.field private static final KEY_SELECTED_MONTH:Ljava/lang/String; = "month"

.field private static final KEY_SELECTED_YEAR:Ljava/lang/String; = "year"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final KEY_WEEK_START:Ljava/lang/String; = "week_start"

.field public static final KEY_YEAR_END:Ljava/lang/String; = "year_end"

.field public static final KEY_YEAR_START:Ljava/lang/String; = "year_start"

.field private static final MAX_YEAR:I = 0x7f5

.field private static final MIN_YEAR:I = 0x76e

.field private static final MONTH_AND_DAY_VIEW:I = 0x0

.field private static final UNINITIALIZED:I = -0x1

.field private static YEAR_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final YEAR_VIEW:I = 0x1


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

.field private final mCalendar:Ljava/util/Calendar;

.field private mCallBack:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

.field private mCloseOnSingleTapDay:Z

.field private mCurrentView:I

.field private mDateFormatSymbols:Ljava/text/DateFormatSymbols;

.field private mDayOfWeekView:Landroid/widget/TextView;

.field private mDayPickerDescription:Ljava/lang/String;

.field private mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

.field private mDelayAnimation:Z

.field private mDoneButton:Landroid/widget/Button;

.field private mLastVibrate:J

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxYear:I

.field private mMinYear:I

.field private mMonthAndDayView:Landroid/widget/LinearLayout;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private mSelectedDayTextView:Landroid/widget/TextView;

.field private mSelectedMonthTextView:Landroid/widget/TextView;

.field private mVibrate:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWeekStart:I

.field private mYearPickerDescription:Ljava/lang/String;

.field private mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

.field private mYearView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 97
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 56
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDateFormatSymbols:Ljava/text/DateFormatSymbols;

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    const/4 v1, -0x1

    .line 65
    iput v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    .line 67
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    iput v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    const/16 v1, 0x7f5

    .line 68
    iput v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    const/16 v1, 0x76e

    .line 69
    iput v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMinYear:I

    .line 86
    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mVibrate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/fourmob/datetimepicker/date/DatePickerDialog;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->onDoneButtonClick()V

    return-void
.end method

.method private adjustDayInMonthIfNeeded(II)V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 91
    invoke-static {p1, p2}, Lcom/fourmob/datetimepicker/Utils;->getDaysInMonth(II)I

    move-result p1

    if-le v0, p1, :cond_12

    .line 93
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p2, v1, p1}, Ljava/util/Calendar;->set(II)V

    :cond_12
    return-void
.end method

.method public static newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;III)Lcom/fourmob/datetimepicker/date/DatePickerDialog;
    .registers 5

    const/4 v0, 0x1

    .line 102
    invoke-static {p0, p1, p2, p3, v0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZ)Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZ)Lcom/fourmob/datetimepicker/date/DatePickerDialog;
    .registers 12

    .line 106
    new-instance v6, Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    invoke-direct {v6}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;-><init>()V

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 107
    invoke-virtual/range {v0 .. v5}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->initialize(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZ)V

    return-object v6
.end method

.method private onDoneButtonClick()V
    .registers 6

    .line 321
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->tryVibrate()V

    .line 322
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCallBack:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_21

    .line 323
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCallBack:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/fourmob/datetimepicker/date/DatePickerDialog;III)V

    .line 325
    :cond_21
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->dismiss()V

    return-void
.end method

.method private setCurrentView(I)V
    .registers 3

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setCurrentView(IZ)V

    return-void
.end method

.method private setCurrentView(IZ)V
    .registers 12

    .line 121
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_d2

    goto/16 :goto_d0

    .line 142
    :pswitch_f
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    const v7, 0x3f59999a    # 0.85f

    const v8, 0x3f8ccccd    # 1.1f

    invoke-static {v6, v7, v8}, Lcom/fourmob/datetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v6

    .line 143
    iget-boolean v7, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    if-eqz v7, :cond_24

    .line 144
    invoke-virtual {v6, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 145
    iput-boolean v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    .line 147
    :cond_24
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {v2}, Lcom/fourmob/datetimepicker/date/YearPickerView;->onDateChanged()V

    .line 148
    iget v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-ne v2, p1, :cond_2f

    if-eqz p2, :cond_40

    .line 149
    :cond_2f
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 150
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 151
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {p2, v4}, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    .line 152
    iput p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    .line 154
    :cond_40
    invoke-virtual {v6}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 155
    sget-object p1, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectYear:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_d0

    .line 124
    :pswitch_70
    iget-object v6, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    const v7, 0x3f666666    # 0.9f

    const v8, 0x3f866666    # 1.05f

    invoke-static {v6, v7, v8}, Lcom/fourmob/datetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v6

    .line 125
    iget-boolean v7, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    if-eqz v7, :cond_85

    .line 126
    invoke-virtual {v6, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 127
    iput-boolean v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    .line 129
    :cond_85
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v2}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onDateChanged()V

    .line 130
    iget v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-ne v2, p1, :cond_90

    if-eqz p2, :cond_a1

    .line 131
    :cond_90
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 132
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 133
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {p2, v5}, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    .line 134
    iput p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    .line 136
    :cond_a1
    invoke-virtual {v6}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 137
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/16 p2, 0x10

    invoke-static {p1, v0, v1, p2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    .line 138
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectDay:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_d0
    return-void

    nop

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_70
        :pswitch_f
    .end packed-switch
.end method

.method private updateDisplay(Z)V
    .registers 6

    .line 171
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    .line 172
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    iget v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 173
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDateFormatSymbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_27
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectedMonthTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDateFormatSymbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectedDayTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    sget-object v1, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 183
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v2, v0, v1}, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    const/16 v2, 0x18

    .line 185
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 186
    iget-object v3, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_90

    const/16 p1, 0x14

    .line 190
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    invoke-static {v0, p1}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_90
    return-void
.end method

.method private updatePickers()V
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 197
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;

    invoke-interface {v1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;->onDateChanged()V

    goto :goto_6

    :cond_16
    return-void
.end method


# virtual methods
.method public getFirstDayOfWeek()I
    .registers 2

    .line 203
    iget v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    return v0
.end method

.method public getMaxYear()I
    .registers 2

    .line 207
    iget v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    return v0
.end method

.method public getMinYear()I
    .registers 2

    .line 211
    iget v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMinYear:I

    return v0
.end method

.method public getSelectedDay()Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;
    .registers 3

    .line 215
    new-instance v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public initialize(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZ)V
    .registers 7

    const/16 v0, 0x7f5

    if-le p2, v0, :cond_c

    .line 220
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "year end must < 2037"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const/16 v0, 0x76e

    if-ge p2, v0, :cond_18

    .line 222
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "year end must > 1902"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_18
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCallBack:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    .line 224
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 225
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 226
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 227
    iput-boolean p5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mVibrate:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 231
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->tryVibrate()V

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/fourmob/datetimepicker/R$id;->date_picker_year:I

    if-ne v0, v1, :cond_10

    const/4 p1, 0x1

    .line 233
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    goto :goto_1c

    .line 234
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/fourmob/datetimepicker/R$id;->date_picker_month_and_day:I

    if-ne p1, v0, :cond_1c

    const/4 p1, 0x0

    .line 235
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "DatePickerDialog"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "DatePickerDialog#onCreate"

    invoke-static {v1, v2, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_13

    :catch_e
    const-string v1, "DatePickerDialog#onCreate"

    invoke-static {v0, v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_13} :catch_e

    .line 239
    :goto_13
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v1, "vibrator"

    .line 242
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_5a

    .line 244
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    const-string v2, "year"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 245
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const-string v2, "month"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 246
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    const-string v2, "day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const-string v0, "vibrate"

    .line 247
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mVibrate:Z

    .line 249
    :cond_5a
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14

    const/4 p2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DatePickerDialog#onCreateView"

    invoke-static {v0, v1, p2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_e

    :catch_9
    const-string v0, "DatePickerDialog#onCreateView"

    invoke-static {p2, v0, p2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_e} :catch_9

    .line 252
    :goto_e
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 254
    sget v0, Lcom/fourmob/datetimepicker/R$layout;->date_picker_dialog:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 256
    sget p2, Lcom/fourmob/datetimepicker/R$id;->date_picker_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    .line 257
    sget p2, Lcom/fourmob/datetimepicker/R$id;->date_picker_month_and_day:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    .line 258
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    sget p2, Lcom/fourmob/datetimepicker/R$id;->date_picker_month:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectedMonthTextView:Landroid/widget/TextView;

    .line 260
    sget p2, Lcom/fourmob/datetimepicker/R$id;->date_picker_day:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectedDayTextView:Landroid/widget/TextView;

    .line 261
    sget p2, Lcom/fourmob/datetimepicker/R$id;->date_picker_year:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    .line 262
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, -0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_8b

    const-string v2, "week_start"

    .line 268
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    const-string v2, "year_start"

    .line 269
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMinYear:I

    const-string v2, "year_end"

    .line 270
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    const-string v2, "current_view"

    .line 271
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "list_position"

    .line 272
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "list_position_offset"

    .line 273
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_8e

    :cond_8b
    const/4 p3, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 276
    :goto_8e
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 277
    new-instance v5, Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-direct {v5, v4, p0}, Lcom/fourmob/datetimepicker/date/DayPickerView;-><init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V

    iput-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    .line 278
    new-instance v5, Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-direct {v5, v4, p0}, Lcom/fourmob/datetimepicker/date/YearPickerView;-><init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V

    iput-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    .line 280
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 281
    sget v5, Lcom/fourmob/datetimepicker/R$string;->day_picker_description:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerDescription:Ljava/lang/String;

    .line 282
    sget v5, Lcom/fourmob/datetimepicker/R$string;->select_day:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectDay:Ljava/lang/String;

    .line 283
    sget v5, Lcom/fourmob/datetimepicker/R$string;->year_picker_description:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerDescription:Ljava/lang/String;

    .line 284
    sget v5, Lcom/fourmob/datetimepicker/R$string;->select_year:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mSelectYear:Ljava/lang/String;

    .line 286
    sget v4, Lcom/fourmob/datetimepicker/R$id;->animator:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    iput-object v4, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    .line 287
    iget-object v4, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v4, v5}, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    .line 288
    iget-object v4, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {v4, v5}, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    .line 289
    iget-object v4, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    .line 291
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v7, 0x12c

    .line 292
    invoke-virtual {v4, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 293
    iget-object v9, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v9, v4}, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 295
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 296
    invoke-virtual {v4, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 297
    iget-object v5, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v5, v4}, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 299
    sget v4, Lcom/fourmob/datetimepicker/R$id;->done:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDoneButton:Landroid/widget/Button;

    .line 300
    iget-object v4, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDoneButton:Landroid/widget/Button;

    new-instance v5, Lcom/fourmob/datetimepicker/date/DatePickerDialog$1;

    invoke-direct {v5, p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog$1;-><init>(Lcom/fourmob/datetimepicker/date/DatePickerDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-direct {p0, v0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    .line 307
    invoke-direct {p0, v2, v1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setCurrentView(IZ)V

    if-eq v3, p2, :cond_130

    if-nez v2, :cond_129

    .line 311
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {p2, v3}, Lcom/fourmob/datetimepicker/date/DayPickerView;->postSetSelection(I)V

    :cond_129
    if-ne v2, v1, :cond_130

    .line 314
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {p2, v3, p3}, Lcom/fourmob/datetimepicker/date/YearPickerView;->postSetSelectionFromTop(II)V

    .line 317
    :cond_130
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object p1
.end method

.method public onDayOfMonthSelected(III)V
    .registers 6

    .line 329
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 330
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 331
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 332
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->updatePickers()V

    .line 333
    invoke-direct {p0, v1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    .line 335
    iget-boolean p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCloseOnSingleTapDay:Z

    if-eqz p1, :cond_1f

    .line 336
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->onDoneButtonClick()V

    :cond_1f
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .line 341
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    .line 342
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "month"

    .line 343
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "day"

    .line 344
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "week_start"

    .line 345
    iget v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "year_start"

    .line 346
    iget v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMinYear:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "year_end"

    .line 347
    iget v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "current_view"

    .line 348
    iget v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    iget v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-nez v0, :cond_4e

    .line 352
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/DayPickerView;->getMostVisiblePosition()I

    move-result v0

    goto :goto_4f

    :cond_4e
    const/4 v0, -0x1

    .line 353
    :goto_4f
    iget v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-ne v1, v2, :cond_64

    .line 354
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->getFirstVisiblePosition()I

    move-result v0

    const-string v1, "list_position_offset"

    .line 355
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-virtual {v2}, Lcom/fourmob/datetimepicker/date/YearPickerView;->getFirstPositionOffset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_64
    const-string v1, "list_position"

    .line 357
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "vibrate"

    .line 358
    iget-boolean v1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mVibrate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/gestures/GestureObserver;->getInstance()Lcom/newrelic/agent/android/gestures/GestureObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/gestures/GestureObserver;->onActivityOrFragmentStarted(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/gestures/GestureObserver;->getInstance()Lcom/newrelic/agent/android/gestures/GestureObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/gestures/GestureObserver;->onActivityOrFragmentStopped(Ljava/lang/Object;)V

    return-void
.end method

.method public onYearSelected(I)V
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->adjustDayInMonthIfNeeded(II)V

    .line 363
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 364
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->updatePickers()V

    const/4 p1, 0x0

    .line 365
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    .line 366
    invoke-direct {p0, v1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    return-void
.end method

.method public registerOnDateChangedListener(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;)V
    .registers 3

    .line 370
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCloseOnSingleTapDay(Z)V
    .registers 2

    .line 412
    iput-boolean p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCloseOnSingleTapDay:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_13

    const/4 v0, 0x7

    if-le p1, v0, :cond_7

    goto :goto_13

    .line 378
    :cond_7
    iput p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    .line 379
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    if-eqz p1, :cond_12

    .line 380
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {p1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onChange()V

    :cond_12
    return-void

    .line 375
    :cond_13
    :goto_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value must be between Calendar.SUNDAY and Calendar.SATURDAY"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnDateSetListener(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;)V
    .registers 2

    .line 385
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mCallBack:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method public setVibrate(Z)V
    .registers 2

    .line 113
    iput-boolean p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mVibrate:Z

    return-void
.end method

.method public setYearRange(II)V
    .registers 4

    if-gt p2, p1, :cond_a

    .line 390
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Year end must be larger than year start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/16 v0, 0x7f5

    if-le p2, v0, :cond_16

    .line 392
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "max year end must < 2037"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    const/16 v0, 0x76e

    if-ge p1, v0, :cond_22

    .line 394
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "min year end must > 1902"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_22
    iput p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMinYear:I

    .line 396
    iput p2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    .line 397
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    if-eqz p1, :cond_2f

    .line 398
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/fourmob/datetimepicker/date/DayPickerView;

    invoke-virtual {p1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->onChange()V

    :cond_2f
    return-void
.end method

.method public tryVibrate()V
    .registers 8

    .line 402
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mVibrate:Z

    if-eqz v0, :cond_1f

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 404
    iget-wide v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mLastVibrate:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x7d

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1f

    .line 405
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 406
    iput-wide v0, p0, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->mLastVibrate:J

    :cond_1f
    return-void
.end method

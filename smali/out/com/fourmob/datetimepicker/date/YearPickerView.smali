.class public Lcom/fourmob/datetimepicker/date/YearPickerView;
.super Landroid/widget/ListView;
.source "YearPickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;

.field private mChildSize:I

.field private final mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

.field private mSelectedView:Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

.field private mViewSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fourmob/datetimepicker/date/DatePickerController;)V
    .registers 5

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    .line 29
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {p2, p0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->registerOnDateChangedListener(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateChangedListener;)V

    .line 31
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 34
    sget v0, Lcom/fourmob/datetimepicker/R$dimen;->date_picker_view_animator_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mViewSize:I

    .line 35
    sget v0, Lcom/fourmob/datetimepicker/R$dimen;->year_label_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mChildSize:I

    const/4 p2, 0x1

    .line 37
    invoke-virtual {p0, p2}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setVerticalFadingEdgeEnabled(Z)V

    .line 38
    iget p2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mChildSize:I

    div-int/lit8 p2, p2, 0x3

    invoke-virtual {p0, p2}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setFadingEdgeLength(I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->init(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setDividerHeight(I)V

    .line 43
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->onDateChanged()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/TextView;)I
    .registers 1

    .line 18
    invoke-static {p0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->getYearFromTextView(Landroid/widget/TextView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/fourmob/datetimepicker/date/YearPickerView;)Lcom/fourmob/datetimepicker/date/DatePickerController;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    return-object p0
.end method

.method static synthetic access$202(Lcom/fourmob/datetimepicker/date/YearPickerView;Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;)Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    return-object p1
.end method

.method private static getYearFromTextView(Landroid/widget/TextView;)I
    .registers 1

    .line 47
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 8

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v1}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v1

    :goto_b
    iget-object v2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v2}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMaxYear()I

    move-result v2

    if-gt v1, v2, :cond_29

    const-string v2, "%d"

    const/4 v3, 0x1

    .line 53
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 55
    :cond_29
    new-instance v1, Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;

    sget v2, Lcom/fourmob/datetimepicker/R$layout;->year_label_text_view:I

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;-><init>(Lcom/fourmob/datetimepicker/date/YearPickerView;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;

    .line 56
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;

    invoke-virtual {p0, p1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public getFirstPositionOffset()I
    .registers 3

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    .line 64
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public onDateChanged()V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    .line 69
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    move-result-object v0

    iget v0, v0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    iget-object v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {v1}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->postSetSelectionCentered(I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 74
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-interface {p1}, Lcom/fourmob/datetimepicker/date/DatePickerController;->tryVibrate()V

    .line 75
    check-cast p2, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    if-eqz p2, :cond_33

    .line 77
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    if-eq p2, p1, :cond_25

    .line 78
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    if-eqz p1, :cond_1c

    .line 79
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->drawIndicator(Z)V

    .line 80
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    invoke-virtual {p1}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    :cond_1c
    const/4 p1, 0x1

    .line 82
    invoke-virtual {p2, p1}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->drawIndicator(Z)V

    .line 83
    invoke-virtual {p2}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 84
    iput-object p2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    .line 86
    :cond_25
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mController:Lcom/fourmob/datetimepicker/date/DatePickerController;

    invoke-static {p2}, Lcom/fourmob/datetimepicker/date/YearPickerView;->getYearFromTextView(Landroid/widget/TextView;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/fourmob/datetimepicker/date/DatePickerController;->onYearSelected(I)V

    .line 87
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mAdapter:Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;

    invoke-virtual {p1}, Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    :cond_33
    return-void
.end method

.method public postSetSelectionCentered(I)V
    .registers 4

    .line 92
    iget v0, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mViewSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView;->mChildSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->postSetSelectionFromTop(II)V

    return-void
.end method

.method public postSetSelectionFromTop(II)V
    .registers 4

    .line 96
    new-instance v0, Lcom/fourmob/datetimepicker/date/YearPickerView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/fourmob/datetimepicker/date/YearPickerView$1;-><init>(Lcom/fourmob/datetimepicker/date/YearPickerView;II)V

    invoke-virtual {p0, v0}, Lcom/fourmob/datetimepicker/date/YearPickerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;
.super Landroid/widget/ArrayAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fourmob/datetimepicker/date/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YearAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fourmob/datetimepicker/date/YearPickerView;


# direct methods
.method public constructor <init>(Lcom/fourmob/datetimepicker/date/YearPickerView;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/fourmob/datetimepicker/date/YearPickerView;

    .line 107
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    .line 113
    invoke-virtual {p1}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 114
    invoke-static {p1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->access$000(Landroid/widget/TextView;)I

    move-result p2

    .line 115
    iget-object p3, p0, Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-static {p3}, Lcom/fourmob/datetimepicker/date/YearPickerView;->access$100(Lcom/fourmob/datetimepicker/date/YearPickerView;)Lcom/fourmob/datetimepicker/date/DatePickerController;

    move-result-object p3

    invoke-interface {p3}, Lcom/fourmob/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;

    move-result-object p3

    iget p3, p3, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    if-ne p3, p2, :cond_1d

    const/4 p2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p2, 0x0

    .line 116
    :goto_1e
    invoke-virtual {p1, p2}, Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;->drawIndicator(Z)V

    if-eqz p2, :cond_28

    .line 118
    iget-object p2, p0, Lcom/fourmob/datetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/fourmob/datetimepicker/date/YearPickerView;

    invoke-static {p2, p1}, Lcom/fourmob/datetimepicker/date/YearPickerView;->access$202(Lcom/fourmob/datetimepicker/date/YearPickerView;Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;)Lcom/fourmob/datetimepicker/date/TextViewWithCircularIndicator;

    :cond_28
    return-object p1
.end method

.class public Landroid/databinding/adapters/CalendarViewBindingAdapter;
.super Ljava/lang/Object;
.source "CalendarViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/InverseBindingMethods;
    value = {
        .subannotation Landroid/databinding/InverseBindingMethod;
            attribute = "android:date"
            type = Landroid/widget/CalendarView;
        .end subannotation
    }
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDate(Landroid/widget/CalendarView;J)V
    .registers 6
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:date"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Landroid/widget/CalendarView;->getDate()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_b

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/widget/CalendarView;->setDate(J)V

    :cond_b
    return-void
.end method

.method public static setListeners(Landroid/widget/CalendarView;Landroid/widget/CalendarView$OnDateChangeListener;Landroid/databinding/InverseBindingListener;)V
    .registers 4
    .annotation build Landroid/databinding/BindingAdapter;
        requireAll = false
        value = {
            "android:onSelectedDayChange",
            "android:dateAttrChanged"
        }
    .end annotation

    if-nez p2, :cond_6

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    goto :goto_e

    .line 48
    :cond_6
    new-instance v0, Landroid/databinding/adapters/CalendarViewBindingAdapter$1;

    invoke-direct {v0, p1, p2}, Landroid/databinding/adapters/CalendarViewBindingAdapter$1;-><init>(Landroid/widget/CalendarView$OnDateChangeListener;Landroid/databinding/InverseBindingListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    :goto_e
    return-void
.end method
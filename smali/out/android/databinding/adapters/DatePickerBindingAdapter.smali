.class public Landroid/databinding/adapters/DatePickerBindingAdapter;
.super Ljava/lang/Object;
.source "DatePickerBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/InverseBindingMethods;
    value = {
        .subannotation Landroid/databinding/InverseBindingMethod;
            attribute = "android:year"
            type = Landroid/widget/DatePicker;
        .end subannotation,
        .subannotation Landroid/databinding/InverseBindingMethod;
            attribute = "android:month"
            type = Landroid/widget/DatePicker;
        .end subannotation,
        .subannotation Landroid/databinding/InverseBindingMethod;
            attribute = "android:day"
            method = "getDayOfMonth"
            type = Landroid/widget/DatePicker;
        .end subannotation
    }
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setListeners(Landroid/widget/DatePicker;IIILandroid/widget/DatePicker$OnDateChangedListener;Landroid/databinding/InverseBindingListener;Landroid/databinding/InverseBindingListener;Landroid/databinding/InverseBindingListener;)V
    .registers 10
    .annotation build Landroid/databinding/BindingAdapter;
        requireAll = false
        value = {
            "android:year",
            "android:month",
            "android:day",
            "android:onDateChanged",
            "android:yearAttrChanged",
            "android:monthAttrChanged",
            "android:dayAttrChanged"
        }
    .end annotation

    if-nez p1, :cond_6

    .line 44
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result p1

    :cond_6
    if-nez p3, :cond_c

    .line 47
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result p3

    :cond_c
    if-nez p5, :cond_16

    if-nez p6, :cond_16

    if-nez p7, :cond_16

    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    goto :goto_31

    .line 52
    :cond_16
    sget v0, Lcom/android/databinding/library/baseAdapters/R$id;->onDateChanged:I

    invoke-static {p0, v0}, Landroid/databinding/adapters/ListenerUtil;->getListener(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;

    if-nez v0, :cond_2b

    .line 54
    new-instance v0, Landroid/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;-><init>(Landroid/databinding/adapters/DatePickerBindingAdapter$1;)V

    .line 55
    sget v1, Lcom/android/databinding/library/baseAdapters/R$id;->onDateChanged:I

    invoke-static {p0, v0, v1}, Landroid/databinding/adapters/ListenerUtil;->trackListener(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;

    .line 57
    :cond_2b
    invoke-virtual {v0, p4, p5, p6, p7}, Landroid/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->setListeners(Landroid/widget/DatePicker$OnDateChangedListener;Landroid/databinding/InverseBindingListener;Landroid/databinding/InverseBindingListener;Landroid/databinding/InverseBindingListener;)V

    .line 58
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    :goto_31
    return-void
.end method

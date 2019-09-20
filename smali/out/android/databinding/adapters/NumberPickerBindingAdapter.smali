.class public Landroid/databinding/adapters/NumberPickerBindingAdapter;
.super Ljava/lang/Object;
.source "NumberPickerBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:format"
            method = "setFormatter"
            type = Landroid/widget/NumberPicker;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onScrollStateChange"
            method = "setOnScrollListener"
            type = Landroid/widget/NumberPicker;
        .end subannotation
    }
.end annotation

.annotation build Landroid/databinding/InverseBindingMethods;
    value = {
        .subannotation Landroid/databinding/InverseBindingMethod;
            attribute = "android:value"
            type = Landroid/widget/NumberPicker;
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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setListeners(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$OnValueChangeListener;Landroid/databinding/InverseBindingListener;)V
    .registers 4
    .annotation build Landroid/databinding/BindingAdapter;
        requireAll = false
        value = {
            "android:onValueChange",
            "android:valueAttrChanged"
        }
    .end annotation

    if-nez p2, :cond_6

    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    goto :goto_e

    .line 56
    :cond_6
    new-instance v0, Landroid/databinding/adapters/NumberPickerBindingAdapter$1;

    invoke-direct {v0, p1, p2}, Landroid/databinding/adapters/NumberPickerBindingAdapter$1;-><init>(Landroid/widget/NumberPicker$OnValueChangeListener;Landroid/databinding/InverseBindingListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    :goto_e
    return-void
.end method

.method public static setValue(Landroid/widget/NumberPicker;I)V
    .registers 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:value"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    if-eq v0, p1, :cond_9

    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    :cond_9
    return-void
.end method

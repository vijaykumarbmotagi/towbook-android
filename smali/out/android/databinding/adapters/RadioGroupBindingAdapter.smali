.class public Landroid/databinding/adapters/RadioGroupBindingAdapter;
.super Ljava/lang/Object;
.source "RadioGroupBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/InverseBindingMethods;
    value = {
        .subannotation Landroid/databinding/InverseBindingMethod;
            attribute = "android:checkedButton"
            method = "getCheckedRadioButtonId"
            type = Landroid/widget/RadioGroup;
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

.method public static setCheckedButton(Landroid/widget/RadioGroup;I)V
    .registers 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:checkedButton"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-eq p1, v0, :cond_9

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_9
    return-void
.end method

.method public static setListeners(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$OnCheckedChangeListener;Landroid/databinding/InverseBindingListener;)V
    .registers 4
    .annotation build Landroid/databinding/BindingAdapter;
        requireAll = false
        value = {
            "android:onCheckedChanged",
            "android:checkedButtonAttrChanged"
        }
    .end annotation

    if-nez p2, :cond_6

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_e

    .line 48
    :cond_6
    new-instance v0, Landroid/databinding/adapters/RadioGroupBindingAdapter$1;

    invoke-direct {v0, p1, p2}, Landroid/databinding/adapters/RadioGroupBindingAdapter$1;-><init>(Landroid/widget/RadioGroup$OnCheckedChangeListener;Landroid/databinding/InverseBindingListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :goto_e
    return-void
.end method

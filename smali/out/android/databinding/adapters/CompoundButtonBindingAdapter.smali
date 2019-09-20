.class public Landroid/databinding/adapters/CompoundButtonBindingAdapter;
.super Ljava/lang/Object;
.source "CompoundButtonBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:buttonTint"
            method = "setButtonTintList"
            type = Landroid/widget/CompoundButton;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onCheckedChanged"
            method = "setOnCheckedChangeListener"
            type = Landroid/widget/CompoundButton;
        .end subannotation
    }
.end annotation

.annotation build Landroid/databinding/InverseBindingMethods;
    value = {
        .subannotation Landroid/databinding/InverseBindingMethod;
            attribute = "android:checked"
            type = Landroid/widget/CompoundButton;
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setChecked(Landroid/widget/CompoundButton;Z)V
    .registers 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:checked"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_9

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_9
    return-void
.end method

.method public static setListeners(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/databinding/InverseBindingListener;)V
    .registers 4
    .annotation build Landroid/databinding/BindingAdapter;
        requireAll = false
        value = {
            "android:onCheckedChanged",
            "android:checkedAttrChanged"
        }
    .end annotation

    if-nez p2, :cond_6

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_e

    .line 55
    :cond_6
    new-instance v0, Landroid/databinding/adapters/CompoundButtonBindingAdapter$1;

    invoke-direct {v0, p1, p2}, Landroid/databinding/adapters/CompoundButtonBindingAdapter$1;-><init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/databinding/InverseBindingListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_e
    return-void
.end method

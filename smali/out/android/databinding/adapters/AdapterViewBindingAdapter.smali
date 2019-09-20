.class public Landroid/databinding/adapters/AdapterViewBindingAdapter;
.super Ljava/lang/Object;
.source "AdapterViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onItemClick"
            method = "setOnItemClickListener"
            type = Landroid/widget/AdapterView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onItemLongClick"
            method = "setOnItemLongClickListener"
            type = Landroid/widget/AdapterView;
        .end subannotation
    }
.end annotation

.annotation build Landroid/databinding/InverseBindingMethods;
    value = {
        .subannotation Landroid/databinding/InverseBindingMethod;
            attribute = "android:selectedItemPosition"
            type = Landroid/widget/AdapterView;
        .end subannotation,
        .subannotation Landroid/databinding/InverseBindingMethod;
            attribute = "android:selection"
            event = "android:selectedItemPositionAttrChanged"
            method = "getSelectedItemPosition"
            type = Landroid/widget/AdapterView;
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
        Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;,
        Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;,
        Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setOnItemSelectedListener(Landroid/widget/AdapterView;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;Landroid/databinding/InverseBindingListener;)V
    .registers 5
    .annotation build Landroid/databinding/BindingAdapter;
        requireAll = false
        value = {
            "android:onItemSelected",
            "android:onNothingSelected",
            "android:selectedItemPositionAttrChanged"
        }
    .end annotation

    if-nez p1, :cond_b

    if-nez p2, :cond_b

    if-nez p3, :cond_b

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_13

    .line 82
    :cond_b
    new-instance v0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;

    invoke-direct {v0, p1, p2, p3}, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;-><init>(Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;Landroid/databinding/InverseBindingListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_13
    return-void
.end method

.method public static setSelectedItemPosition(Landroid/widget/AdapterView;I)V
    .registers 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:selectedItemPosition"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, p1, :cond_9

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_9
    return-void
.end method

.method public static setSelectedItemPosition(Landroid/widget/AdapterView;ILandroid/widget/Adapter;)V
    .registers 4
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:selectedItemPosition",
            "android:adapter"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eq p2, v0, :cond_d

    .line 63
    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_16

    .line 65
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p2

    if-eq p2, p1, :cond_16

    .line 66
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static setSelection(Landroid/widget/AdapterView;I)V
    .registers 2
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:selection"
        }
    .end annotation

    .line 56
    invoke-static {p0, p1}, Landroid/databinding/adapters/AdapterViewBindingAdapter;->setSelectedItemPosition(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method public static setSelection(Landroid/widget/AdapterView;ILandroid/widget/Adapter;)V
    .registers 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:selection",
            "android:adapter"
        }
    .end annotation

    .line 72
    invoke-static {p0, p1, p2}, Landroid/databinding/adapters/AdapterViewBindingAdapter;->setSelectedItemPosition(Landroid/widget/AdapterView;ILandroid/widget/Adapter;)V

    return-void
.end method

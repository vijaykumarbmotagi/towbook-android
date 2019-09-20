.class public Landroid/databinding/adapters/SeekBarBindingAdapter;
.super Ljava/lang/Object;
.source "SeekBarBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/InverseBindingMethods;
    value = {
        .subannotation Landroid/databinding/InverseBindingMethod;
            attribute = "android:progress"
            type = Landroid/widget/SeekBar;
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
        Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;,
        Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;,
        Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setOnSeekBarChangeListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;Landroid/databinding/InverseBindingListener;)V
    .registers 6
    .annotation build Landroid/databinding/BindingAdapter;
        requireAll = false
        value = {
            "android:onStartTrackingTouch",
            "android:onStopTrackingTouch",
            "android:onProgressChanged",
            "android:progressAttrChanged"
        }
    .end annotation

    if-nez p1, :cond_d

    if-nez p2, :cond_d

    if-nez p3, :cond_d

    if-nez p4, :cond_d

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_15

    .line 50
    :cond_d
    new-instance v0, Landroid/databinding/adapters/SeekBarBindingAdapter$1;

    invoke-direct {v0, p3, p4, p1, p2}, Landroid/databinding/adapters/SeekBarBindingAdapter$1;-><init>(Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;Landroid/databinding/InverseBindingListener;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;)V

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :goto_15
    return-void
.end method

.method public static setProgress(Landroid/widget/SeekBar;I)V
    .registers 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:progress"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-eq p1, v0, :cond_9

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_9
    return-void
.end method

.class public Landroid/databinding/adapters/ZoomControlsBindingAdapter;
.super Ljava/lang/Object;
.source "ZoomControlsBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onZoomIn"
            method = "setOnZoomInClickListener"
            type = Landroid/widget/ZoomControls;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onZoomOut"
            method = "setOnZoomOutClickListener"
            type = Landroid/widget/ZoomControls;
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

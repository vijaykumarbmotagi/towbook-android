.class public Landroid/databinding/adapters/ToolbarBindingAdapter;
.super Ljava/lang/Object;
.source "ToolbarBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onMenuItemClick"
            method = "setOnMenuItemClickListener"
            type = Landroid/widget/Toolbar;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onNavigationClick"
            method = "setNavigationOnClickListener"
            type = Landroid/widget/Toolbar;
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

.class public abstract Landroid/databinding/DataBinderMapper;
.super Ljava/lang/Object;
.source "DataBinderMapper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract convertBrIdToString(I)Ljava/lang/String;
.end method

.method public abstract getDataBinder(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
.end method

.method public abstract getDataBinder(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
.end method

.method public abstract getLayoutId(Ljava/lang/String;)I
.end method

.class public abstract Landroid/databinding/ViewDataBinding$PropertyChangedInverseListener;
.super Landroid/databinding/Observable$OnPropertyChangedCallback;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "PropertyChangedInverseListener"
.end annotation


# instance fields
.field final mPropertyId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1597
    invoke-direct {p0}, Landroid/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    .line 1598
    iput p1, p0, Landroid/databinding/ViewDataBinding$PropertyChangedInverseListener;->mPropertyId:I

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroid/databinding/Observable;I)V
    .registers 3

    .line 1603
    iget p1, p0, Landroid/databinding/ViewDataBinding$PropertyChangedInverseListener;->mPropertyId:I

    if-eq p2, p1, :cond_6

    if-nez p2, :cond_9

    .line 1604
    :cond_6
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding$PropertyChangedInverseListener;->onChange()V

    :cond_9
    return-void
.end method

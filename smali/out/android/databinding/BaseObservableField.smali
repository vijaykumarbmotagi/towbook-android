.class abstract Landroid/databinding/BaseObservableField;
.super Landroid/databinding/BaseObservable;
.source "BaseObservableField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/BaseObservableField$DependencyCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    return-void
.end method

.method public varargs constructor <init>([Landroid/databinding/Observable;)V
    .registers 5

    .line 11
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    if-eqz p1, :cond_19

    .line 12
    array-length v0, p1

    if-eqz v0, :cond_19

    .line 13
    new-instance v0, Landroid/databinding/BaseObservableField$DependencyCallback;

    invoke-direct {v0, p0}, Landroid/databinding/BaseObservableField$DependencyCallback;-><init>(Landroid/databinding/BaseObservableField;)V

    const/4 v1, 0x0

    .line 15
    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 16
    aget-object v2, p1, v1

    invoke-interface {v2, v0}, Landroid/databinding/Observable;->addOnPropertyChangedCallback(Landroid/databinding/Observable$OnPropertyChangedCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_19
    return-void
.end method

.class final Landroid/databinding/ListChangeRegistry$1;
.super Landroid/databinding/CallbackRegistry$NotifierCallback;
.source "ListChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ListChangeRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/CallbackRegistry$NotifierCallback<",
        "Landroid/databinding/ObservableList$OnListChangedCallback;",
        "Landroid/databinding/ObservableList;",
        "Landroid/databinding/ListChangeRegistry$ListChanges;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroid/databinding/CallbackRegistry$NotifierCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyCallback(Landroid/databinding/ObservableList$OnListChangedCallback;Landroid/databinding/ObservableList;ILandroid/databinding/ListChangeRegistry$ListChanges;)V
    .registers 6

    packed-switch p3, :pswitch_data_2a

    .line 58
    invoke-virtual {p1, p2}, Landroid/databinding/ObservableList$OnListChangedCallback;->onChanged(Landroid/databinding/ObservableList;)V

    goto :goto_28

    .line 55
    :pswitch_7
    iget p3, p4, Landroid/databinding/ListChangeRegistry$ListChanges;->start:I

    iget p4, p4, Landroid/databinding/ListChangeRegistry$ListChanges;->count:I

    invoke-virtual {p1, p2, p3, p4}, Landroid/databinding/ObservableList$OnListChangedCallback;->onItemRangeRemoved(Landroid/databinding/ObservableList;II)V

    goto :goto_28

    .line 51
    :pswitch_f
    iget p3, p4, Landroid/databinding/ListChangeRegistry$ListChanges;->start:I

    iget v0, p4, Landroid/databinding/ListChangeRegistry$ListChanges;->to:I

    iget p4, p4, Landroid/databinding/ListChangeRegistry$ListChanges;->count:I

    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/databinding/ObservableList$OnListChangedCallback;->onItemRangeMoved(Landroid/databinding/ObservableList;III)V

    goto :goto_28

    .line 48
    :pswitch_19
    iget p3, p4, Landroid/databinding/ListChangeRegistry$ListChanges;->start:I

    iget p4, p4, Landroid/databinding/ListChangeRegistry$ListChanges;->count:I

    invoke-virtual {p1, p2, p3, p4}, Landroid/databinding/ObservableList$OnListChangedCallback;->onItemRangeInserted(Landroid/databinding/ObservableList;II)V

    goto :goto_28

    .line 45
    :pswitch_21
    iget p3, p4, Landroid/databinding/ListChangeRegistry$ListChanges;->start:I

    iget p4, p4, Landroid/databinding/ListChangeRegistry$ListChanges;->count:I

    invoke-virtual {p1, p2, p3, p4}, Landroid/databinding/ObservableList$OnListChangedCallback;->onItemRangeChanged(Landroid/databinding/ObservableList;II)V

    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_21
        :pswitch_19
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method

.method public bridge synthetic onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5

    .line 39
    check-cast p1, Landroid/databinding/ObservableList$OnListChangedCallback;

    check-cast p2, Landroid/databinding/ObservableList;

    check-cast p4, Landroid/databinding/ListChangeRegistry$ListChanges;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/databinding/ListChangeRegistry$1;->onNotifyCallback(Landroid/databinding/ObservableList$OnListChangedCallback;Landroid/databinding/ObservableList;ILandroid/databinding/ListChangeRegistry$ListChanges;)V

    return-void
.end method

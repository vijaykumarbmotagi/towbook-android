.class final Landroid/databinding/ViewDataBinding$5;
.super Landroid/databinding/CallbackRegistry$NotifierCallback;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/CallbackRegistry$NotifierCallback<",
        "Landroid/databinding/OnRebindCallback;",
        "Landroid/databinding/ViewDataBinding;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Landroid/databinding/CallbackRegistry$NotifierCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyCallback(Landroid/databinding/OnRebindCallback;Landroid/databinding/ViewDataBinding;ILjava/lang/Void;)V
    .registers 5

    packed-switch p3, :pswitch_data_18

    goto :goto_16

    .line 142
    :pswitch_4
    invoke-virtual {p1, p2}, Landroid/databinding/OnRebindCallback;->onBound(Landroid/databinding/ViewDataBinding;)V

    goto :goto_16

    .line 139
    :pswitch_8
    invoke-virtual {p1, p2}, Landroid/databinding/OnRebindCallback;->onCanceled(Landroid/databinding/ViewDataBinding;)V

    goto :goto_16

    .line 134
    :pswitch_c
    invoke-virtual {p1, p2}, Landroid/databinding/OnRebindCallback;->onPreBind(Landroid/databinding/ViewDataBinding;)Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    .line 135
    invoke-static {p2, p1}, Landroid/databinding/ViewDataBinding;->access$002(Landroid/databinding/ViewDataBinding;Z)Z

    :cond_16
    :goto_16
    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5

    .line 128
    check-cast p1, Landroid/databinding/OnRebindCallback;

    check-cast p2, Landroid/databinding/ViewDataBinding;

    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/databinding/ViewDataBinding$5;->onNotifyCallback(Landroid/databinding/OnRebindCallback;Landroid/databinding/ViewDataBinding;ILjava/lang/Void;)V

    return-void
.end method

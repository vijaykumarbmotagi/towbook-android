.class Landroid/support/v14/preference/PreferenceFragment$1;
.super Landroid/os/Handler;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v14/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v14/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroid/support/v14/preference/PreferenceFragment;)V
    .registers 2

    .line 149
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$1;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 152
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_b

    .line 155
    :cond_6
    iget-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$1;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {p1}, Landroid/support/v14/preference/PreferenceFragment;->access$100(Landroid/support/v14/preference/PreferenceFragment;)V

    :goto_b
    return-void
.end method

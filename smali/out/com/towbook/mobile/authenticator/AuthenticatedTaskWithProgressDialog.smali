.class public abstract Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;
.super Lcom/towbook/mobile/authenticator/AuthenticatedTask;
.source "AuthenticatedTaskWithProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/towbook/mobile/authenticator/AuthenticatedTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected dialog:Landroid/app/ProgressDialog;

.field protected showDialog:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/towbook/mobile/authenticator/AuthenticatedTask;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->showDialog:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Lcom/towbook/mobile/authenticator/AuthenticatedTask;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->showDialog:Ljava/lang/Boolean;

    .line 25
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->showDialog:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method protected dismissDialog()V
    .registers 2

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 31
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dialog:Landroid/app/ProgressDialog;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method protected getString(I)Ljava/lang/String;
    .registers 3

    .line 40
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onException(Ljava/lang/Exception;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->onException(Ljava/lang/Exception;)V

    .line 97
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dismissDialog()V

    .line 98
    instance-of p1, p1, Landroid/accounts/OperationCanceledException;

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    .line 100
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_15

    .line 101
    iget-object p1, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    :cond_15
    if-eqz p1, :cond_1a

    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1a
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-super {p0, p1}, Lcom/towbook/mobile/authenticator/AuthenticatedTask;->onSuccess(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dismissDialog()V

    return-void
.end method

.method protected show(I)V
    .registers 4

    .line 72
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dismissDialog()V

    .line 73
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->showDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 74
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dialog:Landroid/app/ProgressDialog;

    .line 75
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p1, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_24
    return-void
.end method

.method protected show(Ljava/lang/CharSequence;)V
    .registers 6

    .line 49
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dismissDialog()V

    .line 51
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->showDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_43

    const-string v0, "setting_theme"

    .line 53
    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 54
    new-instance v0, Landroid/app/ProgressDialog;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x103006f

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dialog:Landroid/app/ProgressDialog;

    goto :goto_4e

    .line 56
    :cond_37
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dialog:Landroid/app/ProgressDialog;

    goto :goto_4e

    .line 58
    :cond_43
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dialog:Landroid/app/ProgressDialog;

    .line 61
    :goto_4e
    iget-object v0, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_58
    return-void
.end method

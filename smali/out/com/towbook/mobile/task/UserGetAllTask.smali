.class public Lcom/towbook/mobile/task/UserGetAllTask;
.super Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;
.source "UserGetAllTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog<",
        "Ljava/util/List<",
        "Lcom/towbook/api/User;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LoadUsersTask"


# instance fields
.field private service:Lcom/towbook/api/service/UserService;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 36
    invoke-super {p0, p1}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->onException(Ljava/lang/Exception;)V

    const-string v0, "LoadUsersTask"

    const-string v1, "Error refreshing user list: "

    .line 37
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected bridge synthetic run(Landroid/accounts/Account;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/towbook/mobile/task/UserGetAllTask;->run(Landroid/accounts/Account;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected run(Landroid/accounts/Account;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List<",
            "Lcom/towbook/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    iget-object p1, p0, Lcom/towbook/mobile/task/UserGetAllTask;->service:Lcom/towbook/api/service/UserService;

    invoke-virtual {p1}, Lcom/towbook/api/service/UserService;->getAll()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public start()Lcom/towbook/mobile/task/UserGetAllTask;
    .registers 2

    const-string v0, "Loading Users..."

    .line 24
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/task/UserGetAllTask;->show(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p0}, Lcom/towbook/mobile/task/UserGetAllTask;->execute()V

    return-object p0
.end method

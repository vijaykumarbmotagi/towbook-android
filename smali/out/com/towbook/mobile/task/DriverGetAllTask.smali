.class public Lcom/towbook/mobile/task/DriverGetAllTask;
.super Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;
.source "DriverGetAllTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog<",
        "Ljava/util/List<",
        "Lcom/towbook/api/Driver;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DriverGetAllTask"


# instance fields
.field private service:Lcom/towbook/api/service/DriverService;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 23
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

    .line 42
    invoke-super {p0, p1}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->onException(Ljava/lang/Exception;)V

    const-string v0, "DriverGetAllTask"

    const-string v1, "Error refreshing driver list: "

    .line 43
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

    .line 17
    invoke-virtual {p0, p1}, Lcom/towbook/mobile/task/DriverGetAllTask;->run(Landroid/accounts/Account;)Ljava/util/List;

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
            "Lcom/towbook/api/Driver;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    iget-object p1, p0, Lcom/towbook/mobile/task/DriverGetAllTask;->service:Lcom/towbook/api/service/DriverService;

    invoke-virtual {p1}, Lcom/towbook/api/service/DriverService;->getAll()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public start()Lcom/towbook/mobile/task/DriverGetAllTask;
    .registers 2

    const-string v0, "Loading Drivers..."

    .line 27
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/task/DriverGetAllTask;->show(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p0}, Lcom/towbook/mobile/task/DriverGetAllTask;->execute()V

    return-object p0
.end method

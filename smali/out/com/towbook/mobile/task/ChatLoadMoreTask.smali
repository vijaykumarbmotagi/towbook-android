.class public Lcom/towbook/mobile/task/ChatLoadMoreTask;
.super Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;
.source "ChatLoadMoreTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog<",
        "Ljava/util/ArrayList<",
        "Lcom/towbook/api/Chat;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ChatLoadMoreTask"


# instance fields
.field private lastPageId:I

.field private service:Lcom/towbook/api/service/ChatService;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;-><init>(Landroid/content/Context;)V

    .line 24
    iput p2, p0, Lcom/towbook/mobile/task/ChatLoadMoreTask;->lastPageId:I

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

    .line 43
    invoke-super {p0, p1}, Lcom/towbook/mobile/authenticator/AuthenticatedTaskWithProgressDialog;->onException(Ljava/lang/Exception;)V

    const-string v0, "ChatLoadMoreTask"

    const-string v1, "Error refreshing chat list: "

    .line 44
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

    .line 16
    invoke-virtual {p0, p1}, Lcom/towbook/mobile/task/ChatLoadMoreTask;->run(Landroid/accounts/Account;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected run(Landroid/accounts/Account;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/Chat;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object p1, p0, Lcom/towbook/mobile/task/ChatLoadMoreTask;->service:Lcom/towbook/api/service/ChatService;

    iget v0, p0, Lcom/towbook/mobile/task/ChatLoadMoreTask;->lastPageId:I

    invoke-virtual {p1, v0}, Lcom/towbook/api/service/ChatService;->getMore(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public start()Lcom/towbook/mobile/task/ChatLoadMoreTask;
    .registers 2

    const-string v0, "Refreshing List"

    .line 28
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/task/ChatLoadMoreTask;->show(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0}, Lcom/towbook/mobile/task/ChatLoadMoreTask;->execute()V

    return-object p0
.end method

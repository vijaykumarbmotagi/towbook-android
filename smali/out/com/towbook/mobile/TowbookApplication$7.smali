.class final Lcom/towbook/mobile/TowbookApplication$7;
.super Lcom/towbook/mobile/task/ChatLoadMoreTask;
.source "TowbookApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/towbook/mobile/TowbookApplication;->refreshCachedChats(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/Runnable;)V
    .registers 4

    .line 304
    iput-object p3, p0, Lcom/towbook/mobile/TowbookApplication$7;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Lcom/towbook/mobile/task/ChatLoadMoreTask;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/lang/Exception;)V
    .registers 2

    .line 314
    invoke-super {p0, p1}, Lcom/towbook/mobile/task/ChatLoadMoreTask;->onException(Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 304
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/towbook/mobile/TowbookApplication$7;->onSuccess(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/Chat;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    invoke-super {p0, p1}, Lcom/towbook/mobile/task/ChatLoadMoreTask;->onSuccess(Ljava/lang/Object;)V

    .line 308
    sput-object p1, Lcom/towbook/mobile/TowbookApplication;->cachedChats:Ljava/util/List;

    .line 309
    iget-object p1, p0, Lcom/towbook/mobile/TowbookApplication$7;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

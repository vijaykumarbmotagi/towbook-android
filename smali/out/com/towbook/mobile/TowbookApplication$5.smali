.class final Lcom/towbook/mobile/TowbookApplication$5;
.super Lcom/towbook/mobile/task/ChatLoadMoreTask;
.source "TowbookApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/towbook/mobile/TowbookApplication;->refreshCachedChats(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/towbook/mobile/task/ChatLoadMoreTask;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/lang/Exception;)V
    .registers 2

    .line 280
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

    .line 271
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/towbook/mobile/TowbookApplication$5;->onSuccess(Ljava/util/ArrayList;)V

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

    .line 274
    invoke-super {p0, p1}, Lcom/towbook/mobile/task/ChatLoadMoreTask;->onSuccess(Ljava/lang/Object;)V

    .line 275
    sput-object p1, Lcom/towbook/mobile/TowbookApplication;->cachedChats:Ljava/util/List;

    return-void
.end method

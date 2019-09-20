.class final Lcom/towbook/mobile/TowbookApplication$3;
.super Lcom/towbook/mobile/task/UserGetAllTask;
.source "TowbookApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/towbook/mobile/TowbookApplication;->loadUsers(Landroid/content/Context;Lcom/towbook/mobile/TowbookApplication$UsersCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/towbook/mobile/TowbookApplication$UsersCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/towbook/mobile/TowbookApplication$UsersCallback;)V
    .registers 3

    .line 226
    iput-object p2, p0, Lcom/towbook/mobile/TowbookApplication$3;->val$callback:Lcom/towbook/mobile/TowbookApplication$UsersCallback;

    invoke-direct {p0, p1}, Lcom/towbook/mobile/task/UserGetAllTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/lang/Exception;)V
    .registers 3

    .line 236
    invoke-super {p0, p1}, Lcom/towbook/mobile/task/UserGetAllTask;->onException(Ljava/lang/Exception;)V

    const-string p1, "TAG"

    const-string v0, "Unable to load list of users"

    .line 237
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/towbook/mobile/TowbookApplication$3;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    invoke-super {p0, p1}, Lcom/towbook/mobile/task/UserGetAllTask;->onSuccess(Ljava/lang/Object;)V

    .line 230
    sput-object p1, Lcom/towbook/mobile/TowbookApplication;->cachedUsers:Ljava/util/List;

    .line 231
    iget-object v0, p0, Lcom/towbook/mobile/TowbookApplication$3;->val$callback:Lcom/towbook/mobile/TowbookApplication$UsersCallback;

    invoke-interface {v0, p1}, Lcom/towbook/mobile/TowbookApplication$UsersCallback;->run(Ljava/util/List;)V

    return-void
.end method

.class final Lcom/towbook/mobile/TowbookApplication$4;
.super Lcom/towbook/mobile/task/DriverGetAllTask;
.source "TowbookApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/towbook/mobile/TowbookApplication;->loadDrivers(Landroid/content/Context;Lcom/towbook/mobile/TowbookApplication$DriversCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/towbook/mobile/TowbookApplication$DriversCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/towbook/mobile/TowbookApplication$DriversCallback;)V
    .registers 3

    .line 251
    iput-object p2, p0, Lcom/towbook/mobile/TowbookApplication$4;->val$callback:Lcom/towbook/mobile/TowbookApplication$DriversCallback;

    invoke-direct {p0, p1}, Lcom/towbook/mobile/task/DriverGetAllTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/lang/Exception;)V
    .registers 3

    .line 261
    invoke-super {p0, p1}, Lcom/towbook/mobile/task/DriverGetAllTask;->onException(Ljava/lang/Exception;)V

    const-string p1, "TAG"

    const-string v0, "Unable to load list of drivers"

    .line 262
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

    .line 251
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/towbook/mobile/TowbookApplication$4;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/towbook/api/Driver;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    invoke-super {p0, p1}, Lcom/towbook/mobile/task/DriverGetAllTask;->onSuccess(Ljava/lang/Object;)V

    .line 255
    sput-object p1, Lcom/towbook/mobile/TowbookApplication;->cachedDrivers:Ljava/util/List;

    .line 256
    iget-object v0, p0, Lcom/towbook/mobile/TowbookApplication$4;->val$callback:Lcom/towbook/mobile/TowbookApplication$DriversCallback;

    invoke-interface {v0, p1}, Lcom/towbook/mobile/TowbookApplication$DriversCallback;->run(Ljava/util/List;)V

    return-void
.end method

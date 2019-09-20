.class public Lcom/microsoft/windowsazure/notifications/NotificationsHandler;
.super Ljava/lang/Object;
.source "NotificationsHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    new-instance v1, Lcom/microsoft/windowsazure/notifications/NotificationsHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/microsoft/windowsazure/notifications/NotificationsHandler$1;-><init>(Lcom/microsoft/windowsazure/notifications/NotificationsHandler;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

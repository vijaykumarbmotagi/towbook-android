.class Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/constraints/trackers/NetworkStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;


# direct methods
.method constructor <init>(Landroidx/work/impl/constraints/trackers/NetworkStateTracker;)V
    .registers 2

    .line 160
    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_2f

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_2f

    .line 168
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 169
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    const-string v0, "Network broadcast received"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 170
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    iget-object p2, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    invoke-virtual {p2}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->getActiveNetworkState()Landroidx/work/impl/constraints/NetworkState;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->setState(Ljava/lang/Object;)V

    :cond_2e
    return-void

    :cond_2f
    :goto_2f
    return-void
.end method

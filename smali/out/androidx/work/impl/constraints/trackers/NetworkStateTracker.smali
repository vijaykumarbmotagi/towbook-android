.class public Landroidx/work/impl/constraints/trackers/NetworkStateTracker;
.super Landroidx/work/impl/constraints/trackers/ConstraintTracker;
.source "NetworkStateTracker.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;,
        Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/constraints/trackers/ConstraintTracker<",
        "Landroidx/work/impl/constraints/NetworkState;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mNetworkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "NetworkStateTracker"

    .line 52
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 65
    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;-><init>(Landroid/content/Context;)V

    .line 66
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mAppContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 68
    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->isNetworkCallbackSupported()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 69
    new-instance p1, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;

    invoke-direct {p1, p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;-><init>(Landroidx/work/impl/constraints/trackers/NetworkStateTracker;)V

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mNetworkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;

    goto :goto_24

    .line 71
    :cond_1d
    new-instance p1, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

    invoke-direct {p1, p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;-><init>(Landroidx/work/impl/constraints/trackers/NetworkStateTracker;)V

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mBroadcastReceiver:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

    :goto_24
    return-void
.end method

.method private isActiveNetworkValidated()Z
    .registers 4

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    .line 132
    :cond_8
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 133
    iget-object v2, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/16 v2, 0x10

    .line 135
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method private static isNetworkCallbackSupported()Z
    .registers 2

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method getActiveNetworkState()Landroidx/work/impl/constraints/NetworkState;
    .registers 7

    .line 120
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 121
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 122
    :goto_13
    invoke-direct {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->isActiveNetworkValidated()Z

    move-result v4

    .line 123
    iget-object v5, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v5}, Landroid/support/v4/net/ConnectivityManagerCompat;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result v5

    if-eqz v0, :cond_26

    .line 124
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v1, 0x1

    .line 125
    :cond_26
    new-instance v0, Landroidx/work/impl/constraints/NetworkState;

    invoke-direct {v0, v3, v4, v5, v1}, Landroidx/work/impl/constraints/NetworkState;-><init>(ZZZZ)V

    return-object v0
.end method

.method public getInitialState()Landroidx/work/impl/constraints/NetworkState;
    .registers 2

    .line 77
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->getActiveNetworkState()Landroidx/work/impl/constraints/NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInitialState()Ljava/lang/Object;
    .registers 2

    .line 48
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->getInitialState()Landroidx/work/impl/constraints/NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public startTracking()V
    .registers 5

    .line 82
    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->isNetworkCallbackSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 83
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "Registering network callback"

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 84
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mNetworkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_37

    .line 86
    :cond_1c
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "Registering broadcast receiver"

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 87
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mBroadcastReceiver:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_37
    return-void
.end method

.method public stopTracking()V
    .registers 7

    .line 94
    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->isNetworkCallbackSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 96
    :try_start_7
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "Unregistering network callback"

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 97
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mNetworkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_42

    :catch_1c
    move-exception v0

    .line 101
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    const-string v4, "Received exception while unregistering network callback"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object v0, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_42

    .line 107
    :cond_2e
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "Unregistering broadcast receiver"

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 108
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mBroadcastReceiver:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_42
    return-void
.end method

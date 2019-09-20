.class public Lcom/towbook/mobile/classes/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static forceConnectivityCheck(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "connectivity"

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_3b

    .line 46
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 47
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 48
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_3b

    .line 50
    :cond_20
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_3b

    .line 51
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/4 v2, 0x7

    if-eq p0, v2, :cond_3b

    const/4 v2, 0x4

    if-eq p0, v2, :cond_3b

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3b

    if-eq p0, v1, :cond_3b

    const/16 v2, 0xb

    if-eq p0, v2, :cond_3b

    if-nez p0, :cond_1e

    :cond_3b
    :goto_3b
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p2, "connectivity"

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3b

    .line 19
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_3b

    .line 20
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 21
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_3b

    .line 23
    :cond_20
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_3b

    .line 24
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p2

    const/4 v2, 0x7

    if-eq p2, v2, :cond_3b

    const/4 v2, 0x4

    if-eq p2, v2, :cond_3b

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3b

    if-eq p2, v1, :cond_3b

    const/16 v2, 0xb

    if-eq p2, v2, :cond_3b

    if-nez p2, :cond_1e

    .line 37
    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Lcom/towbook/mobile/TowbookApplication;

    if-eqz p2, :cond_4c

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {p2, v0, p1}, Lcom/towbook/mobile/TowbookApplication;->setSpeedyConnection(ZLandroid/content/Context;)V

    :cond_4c
    return-void
.end method

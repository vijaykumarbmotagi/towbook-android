.class public Lcom/towbook/mobile/BaseActivity;
.super Lcom/towbook/mobile/classes/RoboActionBarActivity;
.source "BaseActivity.java"


# static fields
.field static final CONNECTIVITY_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private errorsBar:Landroid/widget/RelativeLayout;

.field protected isInitialActivity:Z

.field public isPaused:Z

.field private final mChangeConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mTowbook:Lcom/towbook/Towbook;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/towbook/mobile/classes/RoboActionBarActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/towbook/mobile/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/BaseActivity$1;-><init>(Lcom/towbook/mobile/BaseActivity;)V

    iput-object v0, p0, Lcom/towbook/mobile/BaseActivity;->mChangeConnectionReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/towbook/mobile/BaseActivity;->isInitialActivity:Z

    return-void
.end method

.method public static restartActivity(Landroid/app/Activity;)V
    .registers 2

    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private validateUserSession()V
    .registers 4

    .line 178
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/TowbookApplication;

    .line 179
    invoke-virtual {v0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v1

    .line 180
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->getMyAccount(Landroid/app/Activity;)Lcom/towbook/api/MyAccount;

    move-result-object v2

    if-eqz v1, :cond_12

    if-nez v2, :cond_18

    .line 183
    :cond_12
    invoke-virtual {v0, p0}, Lcom/towbook/mobile/TowbookApplication;->signOut(Landroid/app/Activity;)V

    .line 184
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseActivity;->finish()V

    :cond_18
    return-void
.end method


# virtual methods
.method public checkConnectivity(Landroid/content/Context;)V
    .registers 10

    .line 139
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/towbook/mobile/classes/ConnectionHelper;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3f

    if-eqz p1, :cond_44

    .line 142
    sget-wide v2, Lcom/towbook/mobile/classes/ConnectionHelper;->lastNoConnectionTs:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    const/4 v0, 0x0

    if-nez p1, :cond_1d

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/towbook/mobile/classes/ConnectionHelper;->lastNoConnectionTs:J

    goto :goto_33

    .line 146
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/towbook/mobile/classes/ConnectionHelper;->lastNoConnectionTs:J

    sub-long v6, v2, v4

    const-wide/16 v2, 0x3e8

    cmp-long p1, v6, v2

    if-lez p1, :cond_32

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/towbook/mobile/classes/ConnectionHelper;->lastNoConnectionTs:J

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    if-eqz v1, :cond_44

    .line 152
    sget-boolean p1, Lcom/towbook/mobile/classes/ConnectionHelper;->isOnline:Z

    if-eqz p1, :cond_44

    .line 153
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseActivity;->hideConnectivityBar(Z)V

    .line 154
    sput-boolean v0, Lcom/towbook/mobile/classes/ConnectionHelper;->isOnline:Z

    goto :goto_44

    .line 158
    :cond_3f
    invoke-virtual {p0, v1}, Lcom/towbook/mobile/BaseActivity;->hideConnectivityBar(Z)V

    .line 159
    sput-boolean v1, Lcom/towbook/mobile/classes/ConnectionHelper;->isOnline:Z

    :cond_44
    :goto_44
    return-void
.end method

.method protected getConfig()Lcom/towbook/api/ConfigSettings;
    .registers 2

    .line 200
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {v0}, Lcom/towbook/mobile/TowbookApplication;->getConfig()Lcom/towbook/api/ConfigSettings;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentUser()Lcom/towbook/api/CurrentUser;
    .registers 2

    .line 204
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {v0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    return-object v0
.end method

.method protected getTowbook()Lcom/towbook/Towbook;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/towbook/mobile/BaseActivity;->mTowbook:Lcom/towbook/Towbook;

    return-object v0
.end method

.method public hideConnectivityBar(Z)V
    .registers 4

    const v0, 0x7f090471

    .line 166
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_11

    const/16 p1, 0x8

    .line 169
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e

    :cond_11
    const/4 p1, 0x0

    .line 170
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception p1

    const-string v0, "BaseActivity"

    const-string v1, "Exception"

    .line 173
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    :goto_1e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 89
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->isDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f1001b3

    .line 90
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseActivity;->setTheme(I)V

    goto :goto_13

    :cond_d
    const v0, 0x7f1001b4

    .line 92
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseActivity;->setTheme(I)V

    .line 95
    :goto_13
    invoke-super {p0, p1}, Lcom/towbook/mobile/classes/RoboActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 99
    iget-boolean v0, p0, Lcom/towbook/mobile/BaseActivity;->isInitialActivity:Z

    if-eqz v0, :cond_29

    const v0, 0x7f080153

    .line 100
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 101
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    :cond_29
    const/4 v0, 0x1

    .line 103
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 106
    :cond_2d
    invoke-direct {p0}, Lcom/towbook/mobile/BaseActivity;->validateUserSession()V

    .line 108
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/towbook/mobile/BaseActivity;->mChangeConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/towbook/mobile/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->checkBasePermissions(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 112
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->requestBasePermissions(Landroid/app/Activity;)V

    :cond_45
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 118
    invoke-super {p0}, Lcom/towbook/mobile/classes/RoboActionBarActivity;->onDestroy()V

    .line 119
    iget-object v0, p0, Lcom/towbook/mobile/BaseActivity;->mChangeConnectionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 120
    iget-object v0, p0, Lcom/towbook/mobile/BaseActivity;->mChangeConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_c
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 61
    invoke-super {p0}, Lcom/towbook/mobile/classes/RoboActionBarActivity;->onPause()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/towbook/mobile/BaseActivity;->isPaused:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 p2, 0x2de

    if-ne p1, p2, :cond_13

    .line 127
    array-length p1, p3

    if-lez p1, :cond_10

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_10

    .line 129
    invoke-static {p0}, Lcom/towbook/mobile/service/LocationService;->start(Landroid/content/Context;)V

    goto :goto_13

    .line 132
    :cond_10
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->requestBasePermissionsRationale(Landroid/app/Activity;)V

    :cond_13
    :goto_13
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 67
    invoke-super {p0}, Lcom/towbook/mobile/classes/RoboActionBarActivity;->onResume()V

    .line 69
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->checkBasePermissions(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 70
    invoke-static {p0}, Lcom/towbook/mobile/service/LocationService;->start(Landroid/content/Context;)V

    :cond_c
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/towbook/mobile/BaseActivity;->isPaused:Z

    .line 74
    invoke-virtual {p0, p0}, Lcom/towbook/mobile/BaseActivity;->checkConnectivity(Landroid/content/Context;)V

    const v0, 0x7f090471

    .line 76
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 77
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/towbook/mobile/BaseActivity;->errorsBar:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v0, p0, Lcom/towbook/mobile/BaseActivity;->errorsBar:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/towbook/mobile/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/BaseActivity$2;-><init>(Lcom/towbook/mobile/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2d
    return-void
.end method

.method protected replaceFragment(Landroid/support/v4/app/Fragment;I)V
    .registers 4

    .line 189
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

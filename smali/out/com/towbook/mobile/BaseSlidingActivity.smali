.class public Lcom/towbook/mobile/BaseSlidingActivity;
.super Lcom/slidingmenu/lib/app/SlidingFragmentActivity;
.source "BaseSlidingActivity.java"


# static fields
.field static final CONNECTIVITY_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final REQUEST_CHECK_SETTINGS:I = 0x1626

.field private static final TAG:Ljava/lang/String; = "BaseSlidingActivity"

.field private static isOverlayPermNotifierWinOpen:Z = false


# instance fields
.field private brAccountChanged:Landroid/content/BroadcastReceiver;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private broadcastReceiverExit:Landroid/content/BroadcastReceiver;

.field private errorsBar:Landroid/widget/RelativeLayout;

.field protected isInitialActivity:Z

.field private isPaused:Z

.field private mApp:Lcom/towbook/mobile/TowbookApplication;

.field private final mChangeConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentUser:Lcom/towbook/api/CurrentUser;

.field protected mFrag:Landroid/support/v4/app/ListFragment;

.field private mMyAccount:Lcom/towbook/api/MyAccount;

.field private mOverlaySetupDialog:Landroid/support/design/widget/BottomSheetDialog;

.field private mTowbook:Lcom/towbook/Towbook;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->isInitialActivity:Z

    .line 69
    new-instance v0, Lcom/towbook/mobile/BaseSlidingActivity$1;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/BaseSlidingActivity$1;-><init>(Lcom/towbook/mobile/BaseSlidingActivity;)V

    iput-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mChangeConnectionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/towbook/mobile/BaseSlidingActivity;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->isPaused:Z

    return p0
.end method

.method static final synthetic lambda$validateAppPermissions$0$BaseSlidingActivity(Landroid/content/DialogInterface;)V
    .registers 2

    .line 347
    check-cast p0, Landroid/support/design/widget/BottomSheetDialog;

    const v0, 0x7f09015f

    .line 348
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    .line 349
    invoke-static {p0}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    return-void
.end method

.method private validateAppPermissions()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_98

    .line 332
    invoke-static {p0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser(Landroid/content/Context;)Lcom/towbook/api/CurrentUser;

    move-result-object v0

    const-string v1, "OVERLAY_PERM_NOTIF_DISMISS"

    .line 334
    invoke-static {v1, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    const-string v2, "true"

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    :cond_1a
    sget-boolean v1, Lcom/towbook/mobile/BaseSlidingActivity;->isOverlayPermNotifierWinOpen:Z

    if-eqz v1, :cond_1f

    :cond_1e
    return-void

    .line 339
    :cond_1f
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8a

    if-eqz v0, :cond_8a

    .line 341
    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->isManager()Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v0}, Lcom/towbook/api/CurrentUser;->isDispatcher()Z

    move-result v0

    if-eqz v0, :cond_8a

    :cond_34
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mTowbook:Lcom/towbook/Towbook;

    .line 342
    invoke-virtual {v0}, Lcom/towbook/Towbook;->accounts()Lcom/towbook/businessModel/Accounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/towbook/businessModel/Accounts;->hasMotorClubAccounts()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 344
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mOverlaySetupDialog:Landroid/support/design/widget/BottomSheetDialog;

    .line 345
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mOverlaySetupDialog:Landroid/support/design/widget/BottomSheetDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetDialog;->setCancelable(Z)V

    .line 346
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mOverlaySetupDialog:Landroid/support/design/widget/BottomSheetDialog;

    sget-object v3, Lcom/towbook/mobile/BaseSlidingActivity$$Lambda$0;->$instance:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/BottomSheetDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const v0, 0x7f0b015a

    .line 352
    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 353
    iget-object v2, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mOverlaySetupDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    const v2, 0x7f0900ab

    .line 355
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 356
    new-instance v3, Lcom/towbook/mobile/BaseSlidingActivity$$Lambda$1;

    invoke-direct {v3, p0}, Lcom/towbook/mobile/BaseSlidingActivity$$Lambda$1;-><init>(Lcom/towbook/mobile/BaseSlidingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09019a

    .line 362
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 363
    new-instance v2, Lcom/towbook/mobile/BaseSlidingActivity$$Lambda$2;

    invoke-direct {v2, p0}, Lcom/towbook/mobile/BaseSlidingActivity$$Lambda$2;-><init>(Lcom/towbook/mobile/BaseSlidingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    sput-boolean v1, Lcom/towbook/mobile/BaseSlidingActivity;->isOverlayPermNotifierWinOpen:Z

    .line 370
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mOverlaySetupDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    goto :goto_98

    .line 371
    :cond_8a
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mOverlaySetupDialog:Landroid/support/design/widget/BottomSheetDialog;

    if-eqz v0, :cond_98

    const/4 v0, 0x0

    .line 372
    sput-boolean v0, Lcom/towbook/mobile/BaseSlidingActivity;->isOverlayPermNotifierWinOpen:Z

    .line 373
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mOverlaySetupDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->hide()V

    .line 374
    iput-object v2, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mOverlaySetupDialog:Landroid/support/design/widget/BottomSheetDialog;

    :cond_98
    :goto_98
    return-void
.end method

.method private validateUserSession()V
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mCurrentUser:Lcom/towbook/api/CurrentUser;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mMyAccount:Lcom/towbook/api/MyAccount;

    if-nez v0, :cond_10

    .line 320
    :cond_8
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mApp:Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {v0, p0}, Lcom/towbook/mobile/TowbookApplication;->signOut(Landroid/app/Activity;)V

    .line 321
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->finish()V

    :cond_10
    return-void
.end method

.method private verifyHighAccuracyForGeofencing()V
    .registers 8

    const-string v0, "GEOFENCES_POPUP_DISMISS"

    .line 380
    invoke-static {v0, p0}, Lcom/towbook/utils/AppUtils;->getData(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "true"

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    const/16 v0, 0x3e

    .line 385
    invoke-static {p0, v0}, Lcom/towbook/utils/AppUtils;->isFeatureEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->isHighAccuracyEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v2, "Geofences feature is enabled, but it requires High Accuracy Mode"

    const v0, 0x7f0f00ab

    .line 387
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseSlidingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0f00ae

    .line 388
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseSlidingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/towbook/mobile/BaseSlidingActivity$$Lambda$3;

    invoke-direct {v5, p0}, Lcom/towbook/mobile/BaseSlidingActivity$$Lambda$3;-><init>(Lcom/towbook/mobile/BaseSlidingActivity;)V

    new-instance v6, Lcom/towbook/mobile/BaseSlidingActivity$$Lambda$4;

    invoke-direct {v6, p0}, Lcom/towbook/mobile/BaseSlidingActivity$$Lambda$4;-><init>(Lcom/towbook/mobile/BaseSlidingActivity;)V

    move-object v1, p0

    .line 386
    invoke-static/range {v1 .. v6}, Lcom/towbook/common/DialogHelper;->CustomSnackbar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_3d
    return-void
.end method


# virtual methods
.method protected getTowbook()Lcom/towbook/Towbook;
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mTowbook:Lcom/towbook/Towbook;

    return-object v0
.end method

.method public hideConnectivityBar(Z)V
    .registers 4

    const v0, 0x7f090471

    .line 307
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseSlidingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_11

    const/16 p1, 0x8

    .line 310
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e

    :cond_11
    const/4 p1, 0x0

    .line 311
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception p1

    const-string v0, "BaseSlidingActivity"

    const-string v1, "Exception"

    .line 314
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    :goto_1e
    return-void
.end method

.method final synthetic lambda$validateAppPermissions$1$BaseSlidingActivity(Landroid/view/View;)V
    .registers 5

    .line 357
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v0, 0x2693

    .line 358
    invoke-virtual {p0, p1, v0}, Lcom/towbook/mobile/BaseSlidingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    .line 359
    sput-boolean p1, Lcom/towbook/mobile/BaseSlidingActivity;->isOverlayPermNotifierWinOpen:Z

    return-void
.end method

.method final synthetic lambda$validateAppPermissions$2$BaseSlidingActivity(Landroid/view/View;)V
    .registers 3

    const/4 p1, 0x0

    .line 364
    sput-boolean p1, Lcom/towbook/mobile/BaseSlidingActivity;->isOverlayPermNotifierWinOpen:Z

    const-string p1, "OVERLAY_PERM_NOTIF_DISMISS"

    const-string v0, "true"

    .line 365
    invoke-static {p1, v0, p0}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 366
    iget-object p1, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mOverlaySetupDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method final synthetic lambda$verifyHighAccuracyForGeofencing$3$BaseSlidingActivity()V
    .registers 3

    const-string v0, "GEOFENCES_POPUP_DISMISS"

    const-string v1, "true"

    .line 389
    invoke-static {v0, v1, p0}, Lcom/towbook/utils/AppUtils;->saveData(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method final synthetic lambda$verifyHighAccuracyForGeofencing$4$BaseSlidingActivity()V
    .registers 2

    const/16 v0, 0x1626

    .line 390
    invoke-static {p0, v0}, Lcom/towbook/classes/geofences/GeofenceHandler;->getGeofenceSettingsDialog(Landroid/app/Activity;I)V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 301
    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 108
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->getAppTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f1001b3

    goto :goto_13

    :cond_10
    const v0, 0x7f1001b4

    :goto_13
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseSlidingActivity;->setTheme(I)V

    .line 110
    invoke-super {p0, p1}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_24

    const-string v0, ""

    .line 115
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    :cond_24
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/towbook/mobile/TowbookApplication;

    iput-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mApp:Lcom/towbook/mobile/TowbookApplication;

    .line 118
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mApp:Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {v0}, Lcom/towbook/mobile/TowbookApplication;->getCurrentUser()Lcom/towbook/api/CurrentUser;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mCurrentUser:Lcom/towbook/api/CurrentUser;

    .line 119
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mApp:Lcom/towbook/mobile/TowbookApplication;

    invoke-virtual {v0}, Lcom/towbook/mobile/TowbookApplication;->getMyAccount()Lcom/towbook/api/MyAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mMyAccount:Lcom/towbook/api/MyAccount;

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mChangeConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/towbook/mobile/BaseSlidingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f0b00a9

    .line 126
    :try_start_4b
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseSlidingActivity;->setBehindContentView(I)V

    .line 127
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/towbook/mobile/MenuListFragment;

    invoke-direct {v1}, Lcom/towbook/mobile/MenuListFragment;-><init>()V

    iput-object v1, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mFrag:Landroid/support/v4/app/ListFragment;

    const v1, 0x7f09029e

    .line 129
    iget-object v2, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mFrag:Landroid/support/v4/app/ListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 130
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_68} :catch_69

    goto :goto_6e

    .line 132
    :catch_69
    const-class v0, Lcom/towbook/mobile/MainActivity;

    invoke-static {p0, v0}, Lcom/towbook/utils/AppUtils;->restart(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 136
    :goto_6e
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    const v1, 0x7f070114

    .line 137
    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    const v1, 0x7f080208

    .line 138
    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    const v1, 0x7f070117

    .line 139
    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffsetRes(I)V

    const v1, 0x3eb33333    # 0.35f

    .line 140
    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    if-eqz p1, :cond_a0

    .line 145
    iget-boolean v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->isInitialActivity:Z

    if-eqz v0, :cond_9d

    const v0, 0x7f080153

    .line 146
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 147
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 149
    :cond_9d
    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 152
    :cond_a0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->getNameActionForSignOut(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/towbook/mobile/BaseSlidingActivity$2;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/BaseSlidingActivity$2;-><init>(Lcom/towbook/mobile/BaseSlidingActivity;)V

    iput-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/towbook/mobile/BaseSlidingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->getNameActionForExit(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/towbook/mobile/BaseSlidingActivity$3;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/BaseSlidingActivity$3;-><init>(Lcom/towbook/mobile/BaseSlidingActivity;)V

    iput-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->broadcastReceiverExit:Landroid/content/BroadcastReceiver;

    .line 175
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->broadcastReceiverExit:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/towbook/mobile/BaseSlidingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/towbook/mobile/BaseSlidingActivity$4;

    invoke-direct {v0, p0}, Lcom/towbook/mobile/BaseSlidingActivity$4;-><init>(Lcom/towbook/mobile/BaseSlidingActivity;)V

    iput-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->brAccountChanged:Landroid/content/BroadcastReceiver;

    .line 189
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->brAccountChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/towbook/mobile/BaseSlidingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->checkBasePermissions(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_ef

    .line 192
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->requestBasePermissions(Landroid/app/Activity;)V

    :cond_ef
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseSlidingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->broadcastReceiverExit:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseSlidingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->brAccountChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseSlidingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->mChangeConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseSlidingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 266
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    invoke-virtual {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 267
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->toggle()V

    const/4 p1, 0x0

    return p1

    .line 270
    :cond_16
    invoke-super {p0, p1, p2}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x52

    if-ne p1, v0, :cond_7

    .line 259
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->toggle()V

    .line 261
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    .line 280
    invoke-super {p0, p1}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 277
    :cond_e
    invoke-virtual {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->toggle()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .registers 2

    .line 198
    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onPause()V

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->isPaused:Z

    const/4 v0, 0x0

    .line 200
    sput-boolean v0, Lcom/towbook/mobile/BaseSlidingActivity;->isOverlayPermNotifierWinOpen:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 285
    invoke-super {p0, p1, p2, p3}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string p2, "BaseSlidingActivity"

    const-string v0, "onRequestPermissionResult"

    .line 287
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x2de

    if-ne p1, p2, :cond_1d

    .line 289
    array-length p1, p3

    if-lez p1, :cond_1a

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1a

    .line 291
    invoke-static {p0}, Lcom/towbook/mobile/service/LocationService;->start(Landroid/content/Context;)V

    goto :goto_1d

    .line 294
    :cond_1a
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->requestBasePermissionsRationale(Landroid/app/Activity;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method protected onResume()V
    .registers 3

    const-string v0, "BaseSlidingActivity"

    const-string v1, "Resumed!"

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onResume()V

    .line 208
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->checkBasePermissions(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 209
    invoke-static {p0}, Lcom/towbook/mobile/service/LocationService;->start(Landroid/content/Context;)V

    :cond_13
    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->isPaused:Z

    const v0, 0x7f090471

    .line 213
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseSlidingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 214
    invoke-virtual {p0, v0}, Lcom/towbook/mobile/BaseSlidingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->errorsBar:Landroid/widget/RelativeLayout;

    .line 215
    iget-object v0, p0, Lcom/towbook/mobile/BaseSlidingActivity;->errorsBar:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/towbook/mobile/BaseSlidingActivity$5;

    invoke-direct {v1, p0}, Lcom/towbook/mobile/BaseSlidingActivity$5;-><init>(Lcom/towbook/mobile/BaseSlidingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    :cond_31
    invoke-static {p0}, Lcom/towbook/utils/AppUtils;->verifyNetworkMetered(Landroid/app/Activity;)V

    .line 225
    invoke-direct {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->validateUserSession()V

    .line 227
    invoke-direct {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->validateAppPermissions()V

    .line 229
    invoke-direct {p0}, Lcom/towbook/mobile/BaseSlidingActivity;->verifyHighAccuracyForGeofencing()V

    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 246
    :try_start_0
    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onStart()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    const-class v0, Lcom/towbook/mobile/MainActivity;

    invoke-static {p0, v0}, Lcom/towbook/utils/AppUtils;->restart(Landroid/app/Activity;Ljava/lang/Class;)V

    :goto_d
    return-void
.end method
